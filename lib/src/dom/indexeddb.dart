// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/webidl.dart';

typedef IDBRequestReadyState = JSString;
typedef IDBTransactionDurability = JSString;
typedef IDBCursorDirection = JSString;
typedef IDBTransactionMode = JSString;

@JS('IDBRequest')
@staticInterop
class IDBRequest extends EventTarget {
  external factory IDBRequest();
}

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
class IDBOpenDBRequest extends IDBRequest {
  external factory IDBOpenDBRequest();
}

extension IDBOpenDBRequestExtension on IDBOpenDBRequest {
  external set onblocked(EventHandler value);
  external EventHandler get onblocked;
  external set onupgradeneeded(EventHandler value);
  external EventHandler get onupgradeneeded;
}

@JS('IDBVersionChangeEvent')
@staticInterop
class IDBVersionChangeEvent extends Event {
  external factory IDBVersionChangeEvent();

  external factory IDBVersionChangeEvent.a1(JSString type);

  external factory IDBVersionChangeEvent.a2(
    JSString type,
    IDBVersionChangeEventInit eventInitDict,
  );
}

extension IDBVersionChangeEventExtension on IDBVersionChangeEvent {
  external JSNumber get oldVersion;
  external JSNumber? get newVersion;
}

@JS('IDBVersionChangeEventInit')
@staticInterop
class IDBVersionChangeEventInit extends EventInit {
  external factory IDBVersionChangeEventInit();
}

extension IDBVersionChangeEventInitExtension on IDBVersionChangeEventInit {}

@JS('IDBFactory')
@staticInterop
class IDBFactory {
  external factory IDBFactory();
}

extension IDBFactoryExtension on IDBFactory {
  external IDBOpenDBRequest open(JSString name);
  external IDBOpenDBRequest open1(
    JSString name,
    JSNumber version,
  );
  external IDBOpenDBRequest deleteDatabase(JSString name);
  external JSPromise databases();
  external JSNumber cmp(
    JSAny first,
    JSAny second,
  );
}

@JS('IDBDatabaseInfo')
@staticInterop
class IDBDatabaseInfo {
  external factory IDBDatabaseInfo();
}

extension IDBDatabaseInfoExtension on IDBDatabaseInfo {}

@JS('IDBDatabase')
@staticInterop
class IDBDatabase extends EventTarget {
  external factory IDBDatabase();
}

extension IDBDatabaseExtension on IDBDatabase {
  external JSString get name;
  external JSNumber get version;
  external DOMStringList get objectStoreNames;
  external IDBTransaction transaction(JSAny storeNames);
  external IDBTransaction transaction1(
    JSAny storeNames,
    IDBTransactionMode mode,
  );
  external IDBTransaction transaction2(
    JSAny storeNames,
    IDBTransactionMode mode,
    IDBTransactionOptions options,
  );
  external JSVoid close();
  external IDBObjectStore createObjectStore(JSString name);
  external IDBObjectStore createObjectStore1(
    JSString name,
    IDBObjectStoreParameters options,
  );
  external JSVoid deleteObjectStore(JSString name);
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onversionchange(EventHandler value);
  external EventHandler get onversionchange;
}

@JS('IDBTransactionOptions')
@staticInterop
class IDBTransactionOptions {
  external factory IDBTransactionOptions();
}

extension IDBTransactionOptionsExtension on IDBTransactionOptions {}

@JS('IDBObjectStoreParameters')
@staticInterop
class IDBObjectStoreParameters {
  external factory IDBObjectStoreParameters();
}

extension IDBObjectStoreParametersExtension on IDBObjectStoreParameters {}

@JS('IDBObjectStore')
@staticInterop
class IDBObjectStore {
  external factory IDBObjectStore();
}

extension IDBObjectStoreExtension on IDBObjectStore {
  external set name(JSString value);
  external JSString get name;
  external JSAny get keyPath;
  external DOMStringList get indexNames;
  external IDBTransaction get transaction;
  external JSBoolean get autoIncrement;
  external IDBRequest put(JSAny value);
  external IDBRequest put1(
    JSAny value,
    JSAny key,
  );
  external IDBRequest add(JSAny value);
  external IDBRequest add1(
    JSAny value,
    JSAny key,
  );
  external IDBRequest delete(JSAny query);
  external IDBRequest clear();
  external IDBRequest get(JSAny query);
  external IDBRequest getKey(JSAny query);
  external IDBRequest getAll();
  external IDBRequest getAll1(JSAny query);
  external IDBRequest getAll2(
    JSAny query,
    JSNumber count,
  );
  external IDBRequest getAllKeys();
  external IDBRequest getAllKeys1(JSAny query);
  external IDBRequest getAllKeys2(
    JSAny query,
    JSNumber count,
  );
  external IDBRequest count();
  external IDBRequest count1(JSAny query);
  external IDBRequest openCursor();
  external IDBRequest openCursor1(JSAny query);
  external IDBRequest openCursor2(
    JSAny query,
    IDBCursorDirection direction,
  );
  external IDBRequest openKeyCursor();
  external IDBRequest openKeyCursor1(JSAny query);
  external IDBRequest openKeyCursor2(
    JSAny query,
    IDBCursorDirection direction,
  );
  external IDBIndex index(JSString name);
  external IDBIndex createIndex(
    JSString name,
    JSAny keyPath,
  );
  external IDBIndex createIndex1(
    JSString name,
    JSAny keyPath,
    IDBIndexParameters options,
  );
  external JSVoid deleteIndex(JSString name);
}

@JS('IDBIndexParameters')
@staticInterop
class IDBIndexParameters {
  external factory IDBIndexParameters();
}

extension IDBIndexParametersExtension on IDBIndexParameters {}

@JS('IDBIndex')
@staticInterop
class IDBIndex {
  external factory IDBIndex();
}

extension IDBIndexExtension on IDBIndex {
  external set name(JSString value);
  external JSString get name;
  external IDBObjectStore get objectStore;
  external JSAny get keyPath;
  external JSBoolean get multiEntry;
  external JSBoolean get unique;
  external IDBRequest get(JSAny query);
  external IDBRequest getKey(JSAny query);
  external IDBRequest getAll();
  external IDBRequest getAll1(JSAny query);
  external IDBRequest getAll2(
    JSAny query,
    JSNumber count,
  );
  external IDBRequest getAllKeys();
  external IDBRequest getAllKeys1(JSAny query);
  external IDBRequest getAllKeys2(
    JSAny query,
    JSNumber count,
  );
  external IDBRequest count();
  external IDBRequest count1(JSAny query);
  external IDBRequest openCursor();
  external IDBRequest openCursor1(JSAny query);
  external IDBRequest openCursor2(
    JSAny query,
    IDBCursorDirection direction,
  );
  external IDBRequest openKeyCursor();
  external IDBRequest openKeyCursor1(JSAny query);
  external IDBRequest openKeyCursor2(
    JSAny query,
    IDBCursorDirection direction,
  );
}

@JS('IDBKeyRange')
@staticInterop
class IDBKeyRange {
  external factory IDBKeyRange();

  external static IDBKeyRange only(JSAny value);
  external static IDBKeyRange lowerBound(JSAny lower);
  external static IDBKeyRange lowerBound1(
    JSAny lower,
    JSBoolean open,
  );
  external static IDBKeyRange upperBound(JSAny upper);
  external static IDBKeyRange upperBound1(
    JSAny upper,
    JSBoolean open,
  );
  external static IDBKeyRange bound(
    JSAny lower,
    JSAny upper,
  );
  external static IDBKeyRange bound1(
    JSAny lower,
    JSAny upper,
    JSBoolean lowerOpen,
  );
  external static IDBKeyRange bound2(
    JSAny lower,
    JSAny upper,
    JSBoolean lowerOpen,
    JSBoolean upperOpen,
  );
}

extension IDBKeyRangeExtension on IDBKeyRange {
  external JSAny get lower;
  external JSAny get upper;
  external JSBoolean get lowerOpen;
  external JSBoolean get upperOpen;
  external JSBoolean includes(JSAny key);
}

@JS('IDBCursor')
@staticInterop
class IDBCursor {
  external factory IDBCursor();
}

extension IDBCursorExtension on IDBCursor {
  external JSAny get source;
  external IDBCursorDirection get direction;
  external JSAny get key;
  external JSAny get primaryKey;
  external IDBRequest get request;
  external JSVoid advance(JSNumber count);
  @JS('continue')
  external JSVoid continue_0_();
  @JS('continue')
  external JSVoid continue_0_1(JSAny key);
  external JSVoid continuePrimaryKey(
    JSAny key,
    JSAny primaryKey,
  );
  external IDBRequest update(JSAny value);
  external IDBRequest delete();
}

@JS('IDBCursorWithValue')
@staticInterop
class IDBCursorWithValue extends IDBCursor {
  external factory IDBCursorWithValue();
}

extension IDBCursorWithValueExtension on IDBCursorWithValue {
  external JSAny get value;
}

@JS('IDBTransaction')
@staticInterop
class IDBTransaction extends EventTarget {
  external factory IDBTransaction();
}

extension IDBTransactionExtension on IDBTransaction {
  external DOMStringList get objectStoreNames;
  external IDBTransactionMode get mode;
  external IDBTransactionDurability get durability;
  external IDBDatabase get db;
  external DOMException? get error;
  external IDBObjectStore objectStore(JSString name);
  external JSVoid commit();
  external JSVoid abort();
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set oncomplete(EventHandler value);
  external EventHandler get oncomplete;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
