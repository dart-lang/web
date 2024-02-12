// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';

import '../dom.dart';
import 'events/events.dart' show XHRGetters;

/// > [!WARNING]
/// > This class is deprecated and will be
/// > removed in a future release of `package:web`.
/// >
/// > You should instead use the cross-platform
/// > [`package:http`](https://pub.dev/packages/http) and its
/// > [`BrowserClient`](https://pub.dev/documentation/http/latest/browser_client/BrowserClient-class.html)
/// > adapter on top of [XMLHttpRequest].
///
/// A helper used to make it easier to operate over [XMLHttpRequest]s.
///
/// The logic here was copied from `dart:html` to help bridge a functionality
/// gap missing in `package:web`.
///
/// HttpRequest can be used to obtain data from HTTP and FTP protocols,
/// and is useful for AJAX-style page updates.
///
/// The simplest way to get the contents of a text file, such as a
/// JSON-formatted file, is with [getString].
/// For example, the following code gets the contents of a JSON file
/// and prints its length:
///
///     var path = 'myData.json';
///     HttpRequest.getString(path).then((String fileContents) {
///       print(fileContents.length);
///     }).catchError((error) {
///       print(error.toString());
///     });
///
/// ## Fetching data from other servers
///
/// For security reasons, browsers impose restrictions on requests
/// made by embedded apps.
/// With the default behavior of this class,
/// the code making the request must be served from the same origin
/// (domain name, port, and application layer protocol)
/// as the requested resource.
/// In the example above, the myData.json file must be co-located with the
/// app that uses it.
///
/// ## Other resources
///
/// * [Fetch data dynamically](https://dart.dev/tutorials/web/fetch-data/),
///   a tutorial shows how to load data from a static file or from a server.
/// * [JS XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest)
/// * [Using XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest_API/Using_XMLHttpRequest)
@Deprecated('Instead use package:http.')
class HttpRequest {
  // The lint is ignored because these are purposely made to match the old
  // names used in `dart:html`
  // ignore:constant_identifier_names
  static const int DONE = 4;
  // ignore:constant_identifier_names
  static const int HEADERS_RECEIVED = 2;
  // ignore:constant_identifier_names
  static const int LOADING = 3;
  // ignore:constant_identifier_names
  static const int OPENED = 1;
  // ignore:constant_identifier_names
  static const int UNSENT = 0;

  /// Creates a GET request for the specified [url].
  ///
  /// This is similar to [request] but specialized for HTTP GET requests which
  /// return text content.
  ///
  /// To add query parameters, append them to the [url] following a `?`, joining
  /// each key to its value with `=` and separating key-value pairs with `&`.
  ///
  ///     var name = Uri.encodeQueryComponent('John');
  ///     var id = Uri.encodeQueryComponent('42');
  ///     HttpRequest.getString('users.json?name=$name&id=$id')
  ///       .then((String resp) {
  ///         // Do something with the response.
  ///     });
  ///
  /// See also [request].
  static Future<String> getString(String url,
          {bool? withCredentials, void Function(ProgressEvent)? onProgress}) =>
      request(url, withCredentials: withCredentials, onProgress: onProgress)
          .then((r) => r.responseText);

  /// Makes a server POST request with the specified data encoded as form data.
  ///
  /// This is roughly the POST equivalent of [getString]. This method is similar
  /// to sending a [FormData] object with broader browser support but limited to
  /// String values.
  ///
  /// If [data] is supplied, the key/value pairs are URI encoded with
  /// [Uri.encodeQueryComponent] and converted into an HTTP query string.
  ///
  /// Unless otherwise specified, this method appends the following header:
  ///
  ///     Content-Type: application/x-www-form-urlencoded; charset=UTF-8
  ///
  /// Here's an example of using this method:
  ///
  ///     var data = { 'firstName' : 'John', 'lastName' : 'Doe' };
  ///     HttpRequest.postFormData('/send', data).then((HttpRequest resp) {
  ///       // Do something with the response.
  ///     });
  ///
  /// See also [request].
  static Future<XMLHttpRequest> postFormData(
      String url, Map<String, String> data,
      {bool? withCredentials,
      String? responseType,
      Map<String, String>? requestHeaders,
      void Function(ProgressEvent)? onProgress}) {
    final parts = <String>[];
    data.forEach((key, value) {
      parts.add('${Uri.encodeQueryComponent(key)}='
          '${Uri.encodeQueryComponent(value)}');
    });
    final formData = parts.join('&');
    requestHeaders ??= <String, String>{};
    requestHeaders.putIfAbsent('Content-Type',
        () => 'application/x-www-form-urlencoded; charset=UTF-8');

    return request(url,
        method: 'POST',
        withCredentials: withCredentials,
        responseType: responseType,
        requestHeaders: requestHeaders,
        sendData: formData,
        onProgress: onProgress);
  }

  /// Creates and sends a URL request for the specified [url].
  ///
  /// By default `request` will perform an HTTP GET request, but a different
  /// method (`POST`, `PUT`, `DELETE`, etc) can be used by specifying the
  /// [method] parameter. (See also [HttpRequest.postFormData] for `POST`
  /// requests only.
  ///
  /// The Future is completed when the response is available.
  ///
  /// If specified, `sendData` will send data in the form of a [ByteBuffer],
  /// [Blob], [Document], [String], or [FormData] along with the HttpRequest.
  ///
  /// If specified, [responseType] sets the desired response format for the
  /// request. By default it is [String], but can also be 'arraybuffer', 'blob',
  /// 'document', 'json', or 'text'.
  /// for more information.
  ///
  /// The [withCredentials] parameter specified that credentials such as a
  /// cookie (already) set in the header or
  /// [authorization headers](http://tools.ietf.org/html/rfc1945#section-10.2)
  /// should be specified for the request. Details to keep in mind when using
  /// credentials:
  ///
  /// * Using credentials is only useful for cross-origin requests.
  /// * The `Access-Control-Allow-Origin` header of `url` cannot contain a
  ///   wildcard (*).
  /// * The `Access-Control-Allow-Credentials` header of `url` must be set to
  ///   true.
  /// * If `Access-Control-Expose-Headers` has not been set to true, only a
  ///   subset of all the response headers will be returned when calling
  ///   `getAllResponseHeaders`.
  ///
  /// The following is equivalent to the [getString] sample above:
  ///
  ///     var name = Uri.encodeQueryComponent('John');
  ///     var id = Uri.encodeQueryComponent('42');
  ///     HttpRequest.request('users.json?name=$name&id=$id')
  ///       .then((HttpRequest resp) {
  ///         // Do something with the response.
  ///     });
  ///
  /// Here's an example of submitting an entire form with [FormData].
  ///
  ///     var myForm = querySelector('form#myForm');
  ///     var data = new FormData(myForm);
  ///     HttpRequest.request('/submit', method: 'POST', sendData: data)
  ///       .then((HttpRequest resp) {
  ///         // Do something with the response.
  ///     });
  ///
  /// Note that requests for file:// URIs are only supported by Chrome
  /// extensions with appropriate permissions in their manifest. Requests to
  /// file:// URIs will also never fail- the Future will always complete
  /// successfully, even when the file cannot be found.
  ///
  /// See also: [authorization headers][1].
  ///
  /// [1]: http://en.wikipedia.org/wiki/Basic_access_authentication
  static Future<XMLHttpRequest> request(String url,
      {String? method,
      bool? withCredentials,
      String? responseType,
      String? mimeType,
      Map<String, String>? requestHeaders,
      Object? sendData,
      void Function(ProgressEvent)? onProgress}) {
    final completer = Completer<XMLHttpRequest>();
    final xhr = XMLHttpRequest();
    method ??= 'GET';
    xhr.open(method, url, true);

    if (withCredentials != null) {
      xhr.withCredentials = withCredentials;
    }

    if (responseType != null) {
      xhr.responseType = responseType;
    }

    if (mimeType != null) {
      xhr.overrideMimeType(mimeType);
    }

    // ignore: unnecessary_lambdas
    requestHeaders?.forEach((a, b) => xhr.setRequestHeader(a, b));

    if (onProgress != null) {
      xhr.onProgress.listen(onProgress);
    }

    xhr.onLoad.listen((ProgressEvent e) {
      final status = xhr.status;
      final accepted = status >= 200 && status < 300;
      final fileUri = status == 0; // file:// URIs have status of 0.
      final notModified = status == 304;
      // Redirect status is specified up to 307, but others have been used in
      // practice. Notably Google Drive uses 308 Resume Incomplete for
      // resumable uploads, and it's also been used as a redirect. The
      // redirect case will be handled by the browser before it gets to us,
      // so if we see it we should pass it through to the user.
      final unknownRedirect = status > 307 && status < 400;

      if (accepted || fileUri || notModified || unknownRedirect) {
        completer.complete(xhr);
      } else {
        completer.completeError(e);
      }
    });

    xhr.onError.listen(completer.completeError);

    if (sendData != null) {
      xhr.send(sendData is String ? sendData.toJS : sendData.jsify());
    } else {
      xhr.send();
    }

    return completer.future;
  }
}
