// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef IDBRequestReadyState = String;
typedef IDBTransactionDurability = String;
typedef IDBCursorDirection = String;
typedef IDBTransactionMode = String;
extension type IDBRequest._(JSObject _) implements EventTarget, JSObject {
  external JSAny? get result;
  external DOMException? get error;
  external JSObject? get source;
  external IDBTransaction? get transaction;
  external IDBRequestReadyState get readyState;
  external set onsuccess(EventHandler value);
  external EventHandler get onsuccess;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
extension type IDBOpenDBRequest._(JSObject _) implements IDBRequest, JSObject {
  external set onblocked(EventHandler value);
  external EventHandler get onblocked;
  external set onupgradeneeded(EventHandler value);
  external EventHandler get onupgradeneeded;
}
extension type IDBVersionChangeEvent._(JSObject _) implements Event, JSObject {
  external factory IDBVersionChangeEvent(
    String type, [
    IDBVersionChangeEventInit eventInitDict,
  ]);

  external int get oldVersion;
  external int? get newVersion;
}
extension type IDBVersionChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory IDBVersionChangeEventInit({
    int oldVersion,
    int? newVersion,
  });

  external set oldVersion(int value);
  external int get oldVersion;
  external set newVersion(int? value);
  external int? get newVersion;
}
extension type IDBFactory._(JSObject _) implements JSObject {
  external IDBOpenDBRequest open(
    String name, [
    int version,
  ]);
  external IDBOpenDBRequest deleteDatabase(String name);
  external JSPromise<JSArray<IDBDatabaseInfo>> databases();
  external int cmp(
    JSAny? first,
    JSAny? second,
  );
}
extension type IDBDatabaseInfo._(JSObject _) implements JSObject {
  external factory IDBDatabaseInfo({
    String name,
    int version,
  });

  external set name(String value);
  external String get name;
  external set version(int value);
  external int get version;
}
extension type IDBDatabase._(JSObject _) implements EventTarget, JSObject {
  external IDBTransaction transaction(
    JSAny storeNames, [
    IDBTransactionMode mode,
    IDBTransactionOptions options,
  ]);
  external void close();
  external IDBObjectStore createObjectStore(
    String name, [
    IDBObjectStoreParameters options,
  ]);
  external void deleteObjectStore(String name);
  external String get name;
  external int get version;
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
extension type IDBTransactionOptions._(JSObject _) implements JSObject {
  external factory IDBTransactionOptions({IDBTransactionDurability durability});

  external set durability(IDBTransactionDurability value);
  external IDBTransactionDurability get durability;
}
extension type IDBObjectStoreParameters._(JSObject _) implements JSObject {
  external factory IDBObjectStoreParameters({
    JSAny? keyPath,
    bool autoIncrement,
  });

  external set keyPath(JSAny? value);
  external JSAny? get keyPath;
  external set autoIncrement(bool value);
  external bool get autoIncrement;
}
extension type IDBObjectStore._(JSObject _) implements JSObject {
  external IDBRequest put(
    JSAny? value, [
    JSAny? key,
  ]);
  external IDBRequest add(
    JSAny? value, [
    JSAny? key,
  ]);
  external IDBRequest delete(JSAny? query);
  external IDBRequest clear();
  external IDBRequest get(JSAny? query);
  external IDBRequest getKey(JSAny? query);
  external IDBRequest getAll([
    JSAny? query,
    int count,
  ]);
  external IDBRequest getAllKeys([
    JSAny? query,
    int count,
  ]);
  external IDBRequest count([JSAny? query]);
  external IDBRequest openCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);
  external IDBRequest openKeyCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);
  external IDBIndex index(String name);
  external IDBIndex createIndex(
    String name,
    JSAny keyPath, [
    IDBIndexParameters options,
  ]);
  external void deleteIndex(String name);
  external set name(String value);
  external String get name;
  external JSAny? get keyPath;
  external DOMStringList get indexNames;
  external IDBTransaction get transaction;
  external bool get autoIncrement;
}
extension type IDBIndexParameters._(JSObject _) implements JSObject {
  external factory IDBIndexParameters({
    bool unique,
    bool multiEntry,
  });

  external set unique(bool value);
  external bool get unique;
  external set multiEntry(bool value);
  external bool get multiEntry;
}
extension type IDBIndex._(JSObject _) implements JSObject {
  external IDBRequest get(JSAny? query);
  external IDBRequest getKey(JSAny? query);
  external IDBRequest getAll([
    JSAny? query,
    int count,
  ]);
  external IDBRequest getAllKeys([
    JSAny? query,
    int count,
  ]);
  external IDBRequest count([JSAny? query]);
  external IDBRequest openCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);
  external IDBRequest openKeyCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);
  external set name(String value);
  external String get name;
  external IDBObjectStore get objectStore;
  external JSAny? get keyPath;
  external bool get multiEntry;
  external bool get unique;
}
extension type IDBKeyRange._(JSObject _) implements JSObject {
  external static IDBKeyRange only(JSAny? value);
  external static IDBKeyRange lowerBound(
    JSAny? lower, [
    bool open,
  ]);
  external static IDBKeyRange upperBound(
    JSAny? upper, [
    bool open,
  ]);
  external static IDBKeyRange bound(
    JSAny? lower,
    JSAny? upper, [
    bool lowerOpen,
    bool upperOpen,
  ]);
  external bool includes(JSAny? key);
  external JSAny? get lower;
  external JSAny? get upper;
  external bool get lowerOpen;
  external bool get upperOpen;
}
extension type IDBCursor._(JSObject _) implements JSObject {
  external void advance(int count);
  @JS('continue')
  external void continue_([JSAny? key]);
  external void continuePrimaryKey(
    JSAny? key,
    JSAny? primaryKey,
  );
  external IDBRequest update(JSAny? value);
  external IDBRequest delete();
  external JSObject get source;
  external IDBCursorDirection get direction;
  external JSAny? get key;
  external JSAny? get primaryKey;
  external IDBRequest get request;
}
extension type IDBCursorWithValue._(JSObject _) implements IDBCursor, JSObject {
  external JSAny? get value;
}
extension type IDBTransaction._(JSObject _) implements EventTarget, JSObject {
  external IDBObjectStore objectStore(String name);
  external void commit();
  external void abort();
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
