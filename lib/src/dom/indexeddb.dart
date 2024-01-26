// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
  /// The **`open()`** method of the [IDBFactory] interface requests opening a
  /// [connection to a database](https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API/Basic_Terminology#database_connection).
  ///
  /// The method returns an [IDBOpenDBRequest] object immediately, and performs
  /// the open operation asynchronously.
  /// If the operation is successful, a `success` event is fired on the request
  /// object that is returned from this method, with its `result` attribute set
  /// to the new [IDBDatabase] object for the connection.
  ///
  /// May trigger `upgradeneeded`, `blocked` or `versionchange` events.
  external IDBOpenDBRequest open(
    String name, [
    int version,
  ]);

  /// The **`deleteDatabase()`** method of the
  /// [IDBFactory] interface requests the deletion of a database. The method
  /// returns an [IDBOpenDBRequest] object immediately, and performs the
  /// deletion
  /// operation asynchronously.
  ///
  /// If the database is successfully deleted, then a `success` event is fired
  /// on
  /// the request object returned from this method, with its `result` set to
  /// `undefined`. If an error occurs while the database is being deleted, then
  /// an
  /// `error` event is fired on the request object that is returned from this
  /// method.
  ///
  /// When `deleteDatabase()` is called, any other open connections to this
  /// particular database will get a
  /// [versionchange](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/versionchange_event)
  /// event.
  external IDBOpenDBRequest deleteDatabase(String name);

  /// The **`databases`** method of the [IDBFactory] interface returns a list
  /// representing all the available databases, including their names and
  /// versions.
  ///
  /// > **Note:** This method is introduced in a draft of a specifications and
  /// > browser compatibility is limited.
  external JSPromise databases();

  /// The **`cmp()`** method of the [IDBFactory]
  /// interface compares two values as keys to determine equality and ordering
  /// for IndexedDB
  /// operations, such as storing and iterating.
  ///
  /// > **Note:** Do not use this method for comparing arbitrary JavaScript
  /// > values, because many JavaScript values are either not valid IndexedDB
  /// > keys (booleans
  /// > and objects, for example) or are treated as equivalent IndexedDB keys
  /// > (for example,
  /// > since IndexedDB ignores arrays with non-numeric properties and treats
  /// > them as empty
  /// > arrays, so any non-numeric arrays are treated as equivalent). This
  /// > throws an exception
  /// > if either of the values is not a valid key.
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
  /// The **`transaction`** method of the [IDBDatabase] interface immediately
  /// returns a transaction object ([IDBTransaction]) containing the
  /// [IDBTransaction.objectStore] method, which you can use to access your
  /// object store.
  external IDBTransaction transaction(
    JSAny storeNames, [
    IDBTransactionMode mode,
    IDBTransactionOptions options,
  ]);

  /// The **`close()`** method of the [IDBDatabase]
  /// interface returns immediately and closes the connection in a separate
  /// thread.
  ///
  /// The connection is not actually closed until all transactions created using
  /// this
  /// connection are complete. No new transactions can be created for this
  /// connection once
  /// this method is called. Methods that create transactions throw an exception
  /// if a closing
  /// operation is pending.
  external void close();

  /// The **`createObjectStore()`** method of the
  /// [IDBDatabase] interface creates and returns a new [IDBObjectStore].
  ///
  /// The method takes the name of the store as well as a parameter object that
  /// lets you
  /// define important optional properties. You can use the property to uniquely
  /// identify
  /// individual objects in the store. As the property is an identifier, it
  /// should be unique
  /// to every object, and every object should have that property.
  ///
  /// This method can be called _only_ within a
  /// [`versionchange`](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction#version_change)
  /// transaction.
  external IDBObjectStore createObjectStore(
    String name, [
    IDBObjectStoreParameters options,
  ]);

  /// The **`deleteObjectStore()`** method of the
  /// [IDBDatabase] interface destroys the object store with the given name in
  /// the connected database, along with any indexes that reference it.
  ///
  /// As with [IDBDatabase.createObjectStore], this method can be called
  /// _only_ within a
  /// [`versionchange`](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction#version_change)
  /// transaction.
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
  /// The **`put()`** method of the [IDBObjectStore] interface updates a given
  /// record in a database, or inserts a new record if the given item does not
  /// already exist.
  ///
  /// It returns an [IDBRequest] object, and, in a separate thread, creates a
  /// [structured clone](https://html.spec.whatwg.org/multipage/common-dom-interfaces.html#structured-clone)
  /// of the value and stores the cloned value in the object store. This is for
  /// adding new records, or updating existing records in an object store when
  /// the transaction's mode is `readwrite`. If the record is successfully
  /// stored, then a success event is fired on the returned request object with
  /// the `result` set to the key for the stored record, and the `transaction`
  /// set to the transaction in which this object store is opened.
  ///
  /// The put method is an _update or insert_ method.
  /// See the [IDBObjectStore.add] method for an _insert only_ method.
  ///
  /// Bear in mind that if you have a [IDBCursor] to the record you
  /// want to update, updating it with [IDBCursor.update] is preferable to
  /// using [IDBObjectStore.put]. Doing so makes it clear that an existing
  /// record will be updated, instead of a new record being inserted.
  external IDBRequest put(
    JSAny? value, [
    JSAny? key,
  ]);

  /// The **`add()`** method of the [IDBObjectStore] interface returns an
  /// [IDBRequest] object, and, in a separate thread, creates a
  /// [structured clone](https://html.spec.whatwg.org/multipage/common-dom-interfaces.html#structured-clone)
  /// of the value, and stores the cloned value in the object store. This is for
  /// adding new records to an object store.
  ///
  /// To determine if the add operation has completed successfully, listen for
  /// the
  /// transaction's `complete` event in addition to the
  /// `IDBObjectStore.add` request's `success` event, because the
  /// transaction may still fail after the success event fires. In other words,
  /// the success
  /// event is only triggered when the transaction has been successfully queued.
  ///
  /// The add method is an _insert only_ method. If a
  /// record already exists in the object store with the `key` parameter as its
  /// key, then an error `ConstraintError` event is fired on the returned
  /// request
  /// object. For updating existing records, you should use the
  /// [IDBObjectStore.put] method instead.
  external IDBRequest add(
    JSAny? value, [
    JSAny? key,
  ]);

  /// The **`delete()`** method of the
  /// [IDBObjectStore] interface returns an [IDBRequest] object,
  /// and, in a separate thread, deletes the specified record or records.
  ///
  /// Either a key or an [IDBKeyRange] can be passed, allowing one or multiple
  /// records to be deleted from a store. To delete all records in a store, use
  /// [IDBObjectStore.clear].
  ///
  /// Bear in mind that if you are using a [IDBCursor], you can use
  /// the [IDBCursor.delete] method to more efficiently delete the current
  /// record — without having to explicitly look up the record's key.
  external IDBRequest delete(JSAny? query);

  /// The **`clear()`** method of the [IDBObjectStore]
  /// interface creates and immediately returns an [IDBRequest] object, and
  /// clears this object store in a separate thread. This is for deleting all
  /// the current
  /// data out of an object store.
  ///
  /// Clearing an object store consists of removing all records from the object
  /// store and
  /// removing all records in indexes that reference the object store. To remove
  /// only some of
  /// the records in a store, use [IDBObjectStore.delete] passing a key
  /// or [IDBKeyRange].
  external IDBRequest clear();

  /// The **`get()`** method of the [IDBObjectStore]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// returns the object selected by the specified key. This is for retrieving
  /// specific records from an object store.
  ///
  /// If a value is successfully found, then a structured clone of it is created
  /// and set as
  /// the
  /// [`result`](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest#attr_result)
  /// of the
  /// request object.
  ///
  /// > **Note:** This method produces the same result for: a) a record that
  /// > doesn't exist in the database and b) a record that has an undefined
  /// > value.
  /// > To tell these situations apart, call the `openCursor()` method with the
  /// > same key. That method provides a cursor if the record exists, and no
  /// > cursor if it does not.
  external IDBRequest get(JSAny? query);

  /// The **`getKey()`** method of the
  /// [IDBObjectStore] interface returns an [IDBRequest] object,
  /// and, in a separate thread, returns the key selected by the specified
  /// query. This is
  /// for retrieving specific records from an object store.
  ///
  /// If a key is successfully found, then a structured clone of it is created
  /// and set as the
  /// result of the request object.
  external IDBRequest getKey(JSAny? query);

  /// The **`getAll()`** method of the
  /// [IDBObjectStore] interface returns an [IDBRequest] object
  /// containing all objects in the object store matching the specified
  /// parameter or all
  /// objects in the store if no parameters are given.
  ///
  /// If a value is successfully found, then a structured clone of it is created
  /// and set as
  /// the result of the request object.
  ///
  /// This method produces the same result for:
  ///
  /// - a record that doesn't exist in the database
  /// - a record that has an undefined value
  ///
  /// To tell these situations apart, you either call
  ///
  /// 1. the [IDBObjectStore.openCursor] method with the same
  /// key. That method provides a cursor if the record exists, and no cursor if
  /// it does not.
  /// 2. the [IDBObjectStore.count] method with the same key, which
  /// will return 1 if the row exists and 0 if it doesn't.
  external IDBRequest getAll([
    JSAny? query,
    int count,
  ]);

  /// The `getAllKeys()` method of the [IDBObjectStore]
  /// interface returns an [IDBRequest] object retrieves record keys for all
  /// objects in the object store matching the specified parameter or all
  /// objects in the
  /// store if no parameters are given.
  ///
  /// If a value is successfully found, then a structured clone of it is created
  /// and set as
  /// the result of the request object.
  ///
  /// This method produces the same result for:
  ///
  /// - a record that doesn't exist in the database
  /// - a record that has an undefined value
  ///
  /// To tell these situations apart, you need to call the
  /// [IDBObjectStore.openCursor] method with the same key. That
  /// method provides a cursor if the record exists, and no cursor if it does
  /// not.
  external IDBRequest getAllKeys([
    JSAny? query,
    int count,
  ]);

  /// The **`count()`** method of the [IDBObjectStore]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// returns the total number of records that match the provided key or
  /// [IDBKeyRange]. If no arguments are provided, it returns the total number
  /// of records in the store.
  external IDBRequest count([JSAny? query]);

  /// The **`openCursor()`** method of the
  /// [IDBObjectStore] interface returns an [IDBRequest] object,
  /// and, in a separate thread, returns a new [IDBCursorWithValue] object.
  /// Used for iterating through an object store with a cursor.
  ///
  /// To determine if the add operation has completed successfully, listen for
  /// the results's
  /// `success` event.
  external IDBRequest openCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);

  /// The **`openKeyCursor()`** method of the
  /// [IDBObjectStore] interface returns an [IDBRequest] object
  /// whose result will be set to an [IDBCursor] that can be used to iterate
  /// through matching results. Used for iterating through the keys of an object
  /// store with
  /// a cursor.
  ///
  /// To determine if the add operation has completed successfully, listen for
  /// the
  /// results's `success` event.
  external IDBRequest openKeyCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);

  /// The **`index()`** method of the [IDBObjectStore]
  /// interface opens a named index in the current object store, after which it
  /// can be used
  /// to, for example, return a series of records sorted by that index using a
  /// cursor.
  external IDBIndex index(String name);

  /// The **`createIndex()`** method of the
  /// [IDBObjectStore] interface creates and returns a new
  /// [IDBIndex] object in the connected database. It creates a new
  /// field/column defining a new data point for each database record to
  /// contain.
  ///
  /// Bear in mind that IndexedDB indexes can contain _any_ JavaScript data
  /// type;
  /// IndexedDB uses the
  /// [structured clone algorithm](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm)
  /// to serialize stored objects, which allows for storage of simple
  /// and complex objects.
  ///
  /// Note that this method must be called only from a `VersionChange`
  /// transaction
  /// mode callback.
  external IDBIndex createIndex(
    String name,
    JSAny keyPath, [
    IDBIndexParameters options,
  ]);

  /// The **`deleteIndex()`** method of the
  /// [IDBObjectStore] interface destroys the index with the specified name in
  /// the connected database, used during a version upgrade.
  ///
  /// Note that this method must be called only from a `VersionChange`
  /// transaction
  /// mode callback. Note that this method synchronously modifies the
  /// [IDBObjectStore.indexNames] property.
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
  /// The **`get()`** method of the [IDBIndex]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// finds either the value in the referenced object store that corresponds to
  /// the given
  /// key or the first corresponding value, if `key` is set to an
  /// [IDBKeyRange].
  ///
  /// If a value is found, then a structured clone of it is created and set as
  /// the
  /// `result` of the request object: this returns the record the key is
  /// associated
  /// with.
  external IDBRequest get(JSAny? query);

  /// The **`getKey()`** method of the [IDBIndex]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// finds either the primary key that corresponds to the given key in this
  /// index or the
  /// first corresponding primary key, if `key` is set to an
  /// [IDBKeyRange].
  ///
  /// If a primary key is found, it is set as the `result` of the request
  /// object.
  /// Note that this doesn't return the whole record as [IDBIndex.get] does.
  external IDBRequest getKey(JSAny? query);

  /// The **`getAll()`** method of the [IDBIndex]
  /// interface retrieves all objects that are inside the index.
  ///
  /// There is a performance cost associated with looking at the `value`
  /// property
  /// of a cursor, because the object is created lazily. To use a feature
  /// like `getAll()`, the browser has to create all the objects at once. If you
  /// are just interested in looking at each of the keys, for instance, it is
  /// more efficient
  /// to use a
  /// [cursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor). If
  /// you are trying to get an
  /// array of all the objects in an object store, though, you should
  /// use `getAll()`.
  external IDBRequest getAll([
    JSAny? query,
    int count,
  ]);

  /// The **`getAllKeys()`** method of the [IDBIndex]
  /// interface asynchronously retrieves the primary keys of all objects inside
  /// the index,
  /// setting them as the `result` of the request object.
  external IDBRequest getAllKeys([
    JSAny? query,
    int count,
  ]);

  /// The **`count()`** method of the [IDBIndex]
  /// interface returns an [IDBRequest] object, and in a separate thread,
  /// returns the number of records within a key range.
  external IDBRequest count([JSAny? query]);

  /// The **`openCursor()`** method of the [IDBIndex]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// creates a
  /// [cursor](https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API/Basic_Terminology#cursor)
  /// over the specified key
  /// range.
  ///
  /// The method sets the position of the cursor to the appropriate record,
  /// based on the
  /// specified direction.
  ///
  /// If the key range is not specified or is null, then the range includes all
  /// the records.
  external IDBRequest openCursor([
    JSAny? query,
    IDBCursorDirection direction,
  ]);

  /// The **`openKeyCursor()`** method of the
  /// [IDBIndex] interface returns an [IDBRequest] object, and, in
  /// a separate thread, creates a cursor over the specified key range, as
  /// arranged by this
  /// index.
  ///
  /// The method sets the position of the cursor to the appropriate key, based
  /// on the
  /// specified direction.
  ///
  /// If the key range is not specified or is null, then the range includes all
  /// the keys.
  ///
  /// > **Note:** Cursors returned by `openKeyCursor()` do not
  /// > make the referenced value available as
  /// > [`IDBIndex.openCursor`](/en-US/docs/Web/API/IDBIndex/openCursor) does.
  /// > This makes obtaining a list of keys much more efficient.
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

  /// The `includes()` method of the [IDBKeyRange]
  /// interface returns a boolean indicating whether a specified key is inside
  /// the key
  /// range.
  external bool includes(JSAny? key);
  external JSAny? get lower;
  external JSAny? get upper;
  external bool get lowerOpen;
  external bool get upperOpen;
}
extension type IDBCursor._(JSObject _) implements JSObject {
  /// The **`advance()`** method of the [IDBCursor]
  /// interface sets the number of times a cursor should move
  /// its position forward.
  external void advance(int count);

  /// The **`continue()`** method of the [IDBCursor]
  /// interface advances the cursor to the next position along its direction, to
  /// the item
  /// whose key matches the optional key parameter. If no key is specified, the
  /// cursor
  /// advances to the immediate next position, based on its direction.
  @JS('continue')
  external void continue_([JSAny? key]);

  /// The **`continuePrimaryKey()`** method of the
  /// [IDBCursor] interface advances the cursor to the item whose key
  /// matches the key parameter as well as whose primary key matches the primary
  /// key
  /// parameter.
  ///
  /// A typical use case, is to resume the iteration where a previous cursor has
  /// been closed,
  /// without having to compare the keys one by one.
  ///
  /// Calling this method more than once before new cursor data has been loaded
  /// - for
  /// example, calling `continuePrimaryKey()` twice from the same onsuccess
  /// handler
  /// \- results in an `InvalidStateError` being thrown on the second call
  /// because
  /// the cursor's got value flag has been unset.
  ///
  /// This method is only valid for cursors coming from an index. Using it for
  /// cursors coming
  /// from an object store will throw an error.
  external void continuePrimaryKey(
    JSAny? key,
    JSAny? primaryKey,
  );

  /// The **`update()`** method of the [IDBCursor]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// updates the value at the current position of the cursor in the object
  /// store. If the
  /// cursor points to a record that has just been deleted, a new record is
  /// created.
  ///
  /// Be aware that you can't call `update()` (or
  /// [IDBCursor.delete]) on cursors obtained from
  /// [IDBIndex.openKeyCursor]. For such needs, you have to use
  /// [IDBIndex.openCursor] instead.
  external IDBRequest update(JSAny? value);

  /// The **`delete()`** method of the [IDBCursor]
  /// interface returns an [IDBRequest] object, and, in a separate thread,
  /// deletes the record at the cursor's position, without changing the cursor's
  /// position.
  /// Once the record is deleted, the cursor's value is set to null.
  ///
  /// Be aware that you can't call `delete()` (or
  /// [IDBCursor.update]) on cursors obtained from
  /// [IDBIndex.openKeyCursor]. For such needs, you have to use
  /// [IDBIndex.openCursor] instead.
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
  /// The **`objectStore()`** method of the
  /// [IDBTransaction] interface returns an object store that has already been
  /// added to the scope of this transaction.
  ///
  /// Every call to this method on the same transaction object, with the same
  /// name, returns
  /// the same [IDBObjectStore] instance. If this method is called on a
  /// different
  /// transaction object, a different [IDBObjectStore] instance is returned.
  external IDBObjectStore objectStore(String name);

  /// The **`commit()`** method of the [IDBTransaction] interface commits the
  /// transaction if it is called on an active transaction.
  ///
  /// Note that `commit()` doesn't normally _have_ to be called — a transaction
  /// will automatically commit when all outstanding requests have been
  /// satisfied and no new requests have been made. `commit()` can be used to
  /// start the commit process without waiting for events from outstanding
  /// requests to be dispatched.
  ///
  /// If it is called on a transaction that is not active, it throws an
  /// `InvalidStateError` [DOMException].
  external void commit();

  /// The **`abort()`** method of the [IDBTransaction]
  /// interface rolls back all the changes to objects in the database associated
  /// with this
  /// transaction.
  ///
  /// All pending [IDBRequest] objects created during this transaction have
  /// their [IDBRequest.error] attribute set to an `AbortError` [DOMException].
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
