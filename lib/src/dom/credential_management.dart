// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef PasswordCredentialInit = JSAny;
typedef CredentialMediationRequirement = JSString;

@JS('Credential')
@staticInterop
class Credential {
  external factory Credential();
  external static JSPromise isConditionalMediationAvailable();
}

extension CredentialExtension on Credential {
  external JSString get id;
  external JSString get type;
}

@JS('CredentialUserData')
@staticInterop
class CredentialUserData {
  external factory CredentialUserData();
}

extension CredentialUserDataExtension on CredentialUserData {
  external JSString get name;
  external JSString get iconURL;
}

@JS('CredentialsContainer')
@staticInterop
class CredentialsContainer {
  external factory CredentialsContainer();
}

extension CredentialsContainerExtension on CredentialsContainer {
  external JSPromise get();
  external JSPromise get_1(CredentialRequestOptions options);
  external JSPromise store(Credential credential);
  external JSPromise create();
  external JSPromise create_1(CredentialCreationOptions options);
  external JSPromise preventSilentAccess();
}

@JS('CredentialData')
@staticInterop
class CredentialData {
  external factory CredentialData();
}

extension CredentialDataExtension on CredentialData {
  // TODO
}

@JS('CredentialRequestOptions')
@staticInterop
class CredentialRequestOptions {
  external factory CredentialRequestOptions();
}

extension CredentialRequestOptionsExtension on CredentialRequestOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CredentialCreationOptions')
@staticInterop
class CredentialCreationOptions {
  external factory CredentialCreationOptions();
}

extension CredentialCreationOptionsExtension on CredentialCreationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PasswordCredential')
@staticInterop
class PasswordCredential extends Credential implements CredentialUserData {
  external factory PasswordCredential();
  external factory PasswordCredential.a1(HTMLFormElement form);
  external factory PasswordCredential.a2(PasswordCredentialData data);
}

extension PasswordCredentialExtension on PasswordCredential {
  external JSString get password;
}

@JS('PasswordCredentialData')
@staticInterop
class PasswordCredentialData extends CredentialData {
  external factory PasswordCredentialData();
}

extension PasswordCredentialDataExtension on PasswordCredentialData {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FederatedCredential')
@staticInterop
class FederatedCredential extends Credential implements CredentialUserData {
  external factory FederatedCredential();
  external factory FederatedCredential.a1(FederatedCredentialInit data);
}

extension FederatedCredentialExtension on FederatedCredential {
  external JSString get provider;
  external JSString? get protocol;
}

@JS('FederatedCredentialRequestOptions')
@staticInterop
class FederatedCredentialRequestOptions {
  external factory FederatedCredentialRequestOptions();
}

extension FederatedCredentialRequestOptionsExtension
    on FederatedCredentialRequestOptions {
  // TODO
  // TODO
}

@JS('FederatedCredentialInit')
@staticInterop
class FederatedCredentialInit extends CredentialData {
  external factory FederatedCredentialInit();
}

extension FederatedCredentialInitExtension on FederatedCredentialInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}
