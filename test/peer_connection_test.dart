// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'dart:js_interop';

import 'package:test/test.dart';
import 'package:web/web.dart';

// Modified from js example at https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection/createOffer#examples
void main() {
  test(
    'create Offer and setLocal',
    () async {
      final myPeerConnection = RTCPeerConnection();
      final offer = await myPeerConnection.createOffer().toDart;
      if (offer == null) {
        fail('createOffer failed');
      }
      await myPeerConnection.setLocalDescription(offer).toDart;
      expect(myPeerConnection.localDescription?.sdp, offer.sdp);
      expect(myPeerConnection.localDescription?.type, offer.type);
    },
  );
}
