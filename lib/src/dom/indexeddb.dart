// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef IDBRequestReadyState = JSString;
typedef IDBTransactionDurability = JSString;
typedef IDBCursorDirection = JSString;
typedef IDBTransactionMode = JSString;

@JS('IDBRequest')
@staticInterop
class IDBRequest implements EventTarget {}

extension IDBRequestExtension on IDBRequest {
  external JSAny get result;
  external DOMException? get error;
  external JSAny? get source;
  external IDBTransaction? get transaction;
  external IDBRequestReadyState get readyState;
  external set onsuccess(EventHandler value);
  external EventHandler get onsuccess;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('IDBOpenDBRequest')
@staticInterop
class IDBOpenDBRequest implements IDBRequest {}

extension IDBOpenDBRequestExtension on IDBOpenDBRequest {
  external set onblocked(EventHandler value);
  external EventHandler get onblocked;
  external set onupgradeneeded(EventHandler value);
  external EventHandler get onupgradeneeded;
}

@JS('IDBVersionChangeEvent')
@staticInterop
class IDBVersionChangeEvent implements Event {
  external factory IDBVersionChangeEvent(
    JSString type, [
    IDBVersionChangeEventInit eventInitDict,
  ]);
}

extension IDBVersionChangeEventExtension on IDBVersionChangeEvent {
  external JSNumber get oldVersion;
  external JSNumber? get newVersion;
}

@JS()
@staticInterop
@anonymous
class IDBVersionChangeEventInit implements EventInit {
  external factory IDBVersionChangeEventInit({
    JSNumber oldVersion = 0,
    JSNumber? newVersion,
  });
}

extension IDBVersionChangeEventInitExtension on IDBVersionChangeEventInit {
  external set oldVersion(JSNumber value);
  external JSNumber get oldVersion;
  external set newVersion(JSNumber? value);
  external JSNumber? get newVersion;
}

@JS('IDBFactory')
@staticInterop
class IDBFactory {}

extension IDBFactoryExtension on IDBFactory {
  external IDBOpenDBRequest open(
    JSString name, [
    JSNumber version,
  ]);
  external IDBOpenDBRequest deleteDatabase(JSString name);
  external JSPromise databases();
  external JSNumber cmp(
    JSAny first,
    JSAny second,
  );
}

@JS()
@staticInterop
@anonymous
class IDBDatabaseInfo {
  external factory IDBDatabaseInfo({
    JSString name,
    JSNumber version,
  });
}

extension IDBDatabaseInfoExtension on IDBDatabaseInfo {
  external set name(JSString value);
  external JSString get name;
  external set version(JSNumber value);
  external JSNumber get version;
}

@JS('IDBDatabase')
@staticInterop
class IDBDatabase implements EventTarget {}

extension IDBDatabaseExtension on IDBDatabase {
  external IDBTransaction transaction(
    JSAny storeNames, [
    IDBTransactionMode mode,
    IDBTransactionOptions options,
  ]);
  external JSVoid close();
  external IDBObjectStore createObjectStore(
    JSString name, [
    IDBObjectStoreParameters options,
  ]);
  external JSVoid deleteObjectStore(JSString name);
  external JSString get name;
  external JSNumber get version;
  external DOMStringList get objectStoreNames;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onversionchange(EventHandler value);
  external EventHandler get onversionchange;
}

@JS()
@staticInterop
@anonymous
class IDBTransactionOptions {
  external factory IDBTransactionOptions(
      {IDBTransactionDurability durability = 'default'});
}

extension IDBTransactionOptionsExtension on IDBTransactionOptions {
  external set durability(IDBTransactionDurability value);
  external IDBTransactionDurability get durability;
}

@JS()
@staticInterop
@anonymous
class IDBObjectStoreParameters {
  external factory IDBObjectStoreParameters({
    JSAny? keyPath,
    JSBoolean autoIncrement = false,
  });
}

extension IDBObjectStoreParametersExtension on IDBObjectStoreParameters {
  external set keyPath(JSAny? value);
  external JSAny? get keyPath;
  external set autoIncrement(JSBoolean value);
  external JSBoolean get autoIncrement;
}

@JS('IDBObjectStore')
@staticInterop
class IDBObjectStore {}

extension IDBObjectStoreExtension on IDBObjectStore {
  external IDBRequest put(
    JSAny value, [
    JSAny key,
  ]);
  external IDBRequest add(
    JSAny value, [
    JSAny key,
  ]);
  external IDBRequest delete(JSAny query);
  external IDBRequest clear();
  external IDBRequest get(JSAny query);
  external IDBRequest getKey(JSAny query);
  external IDBRequest getAll([
    JSAny query,
    JSNumber count,
  ]);
  external IDBRequest getAllKeys([
    JSAny query,
    JSNumber count,
  ]);
  external IDBRequest count([JSAny query]);
  external IDBRequest openCursor([
    JSAny query,
    IDBCursorDirection direction,
  ]);
  external IDBRequest openKeyCursor([
    JSAny query,
    IDBCursorDirection direction,
  ]);
  external IDBIndex index(JSString name);
  external IDBIndex createIndex(
    JSString name,
    JSAny keyPath, [
    IDBIndexParameters options,
  ]);
  external JSVoid deleteIndex(JSString name);
  external set name(JSString value);
  external JSString get name;
  external JSAny get keyPath;
  external DOMStringList get indexNames;
  external IDBTransaction get transaction;
  external JSBoolean get autoIncrement;
}

@JS()
@staticInterop
@anonymous
class IDBIndexParameters {
  external factory IDBIndexParameters({
    JSBoolean unique = false,
    JSBoolean multiEntry = false,
  });
}

extension IDBIndexParametersExtension on IDBIndexParameters {
  external set unique(JSBoolean value);
  external JSBoolean get unique;
  external set multiEntry(JSBoolean value);
  external JSBoolean get multiEntry;
}

@JS('IDBIndex')
@staticInterop
class IDBIndex {}

extension IDBIndexExtension on IDBIndex {
  external IDBRequest get(JSAny query);
  external IDBRequest getKey(JSAny query);
  external IDBRequest getAll([
    JSAny query,
    JSNumber count,
  ]);
  external IDBRequest getAllKeys([
    JSAny query,
    JSNumber count,
  ]);
  external IDBRequest count([JSAny query]);
  external IDBRequest openCursor([
    JSAny query,
    IDBCursorDirection direction,
  ]);
  external IDBRequest openKeyCursor([
    JSAny query,
    IDBCursorDirection direction,
  ]);
  external set name(JSString value);
  external JSString get name;
  external IDBObjectStore get objectStore;
  external JSAny get keyPath;
  external JSBoolean get multiEntry;
  external JSBoolean get unique;
}

@JS('IDBKeyRange')
@staticInterop
class IDBKeyRange {
  external static IDBKeyRange only(JSAny value);
  external static IDBKeyRange lowerBound(
    JSAny lower, [
    JSBoolean open,
  ]);
  external static IDBKeyRange upperBound(
    JSAny upper, [
    JSBoolean open,
  ]);
  external static IDBKeyRange bound(
    JSAny lower,
    JSAny upper, [
    JSBoolean lowerOpen,
    JSBoolean upperOpen,
  ]);
}

extension IDBKeyRangeExtension on IDBKeyRange {
  external JSBoolean includes(JSAny key);
  external JSAny get lower;
  external JSAny get upper;
  external JSBoolean get lowerOpen;
  external JSBoolean get upperOpen;
}

@JS('IDBCursor')
@staticInterop
class IDBCursor {}

extension IDBCursorExtension on IDBCursor {
  external JSVoid advance(JSNumber count);
  @JS('continue')
  external JSVoid continue_([JSAny key]);
  external JSVoid continuePrimaryKey(
    JSAny key,
    JSAny primaryKey,
  );
  external IDBRequest update(JSAny value);
  external IDBRequest delete();
  external JSAny get source;
  external IDBCursorDirection get direction;
  external JSAny get key;
  external JSAny get primaryKey;
  external IDBRequest get request;
}

@JS('IDBCursorWithValue')
@staticInterop
class IDBCursorWithValue implements IDBCursor {}

extension IDBCursorWithValueExtension on IDBCursorWithValue {
  external JSAny get value;
}

@JS('IDBTransaction')
@staticInterop
class IDBTransaction implements EventTarget {}

extension IDBTransactionExtension on IDBTransaction {
  external IDBObjectStore objectStore(JSString name);
  external JSVoid commit();
  external JSVoid abort();
  external DOMStringList get objectStoreNames;
  external IDBTransactionMode get mode;
  external IDBTransactionDurability get durability;
  external IDBDatabase get db;
  external DOMException? get error;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set oncomplete(EventHandler value);
  external EventHandler get oncomplete;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
