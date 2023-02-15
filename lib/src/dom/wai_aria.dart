// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';

@JS('ARIAMixin')
@staticInterop
class ARIAMixin {
  external factory ARIAMixin();
}

extension ARIAMixinExtension on ARIAMixin {
  external set role(JSString? value);
  external JSString? get role;
  external set ariaActiveDescendantElement(Element? value);
  external Element? get ariaActiveDescendantElement;
  external set ariaAtomic(JSString? value);
  external JSString? get ariaAtomic;
  external set ariaAutoComplete(JSString? value);
  external JSString? get ariaAutoComplete;
  external set ariaBusy(JSString? value);
  external JSString? get ariaBusy;
  external set ariaChecked(JSString? value);
  external JSString? get ariaChecked;
  external set ariaColCount(JSString? value);
  external JSString? get ariaColCount;
  external set ariaColIndex(JSString? value);
  external JSString? get ariaColIndex;
  external set ariaColIndexText(JSString? value);
  external JSString? get ariaColIndexText;
  external set ariaColSpan(JSString? value);
  external JSString? get ariaColSpan;
  external set ariaControlsElements(JSArray? value);
  external JSArray? get ariaControlsElements;
  external set ariaCurrent(JSString? value);
  external JSString? get ariaCurrent;
  external set ariaDescribedByElements(JSArray? value);
  external JSArray? get ariaDescribedByElements;
  external set ariaDescription(JSString? value);
  external JSString? get ariaDescription;
  external set ariaDetailsElements(JSArray? value);
  external JSArray? get ariaDetailsElements;
  external set ariaDisabled(JSString? value);
  external JSString? get ariaDisabled;
  external set ariaErrorMessageElements(JSArray? value);
  external JSArray? get ariaErrorMessageElements;
  external set ariaExpanded(JSString? value);
  external JSString? get ariaExpanded;
  external set ariaFlowToElements(JSArray? value);
  external JSArray? get ariaFlowToElements;
  external set ariaHasPopup(JSString? value);
  external JSString? get ariaHasPopup;
  external set ariaHidden(JSString? value);
  external JSString? get ariaHidden;
  external set ariaInvalid(JSString? value);
  external JSString? get ariaInvalid;
  external set ariaKeyShortcuts(JSString? value);
  external JSString? get ariaKeyShortcuts;
  external set ariaLabel(JSString? value);
  external JSString? get ariaLabel;
  external set ariaLabelledByElements(JSArray? value);
  external JSArray? get ariaLabelledByElements;
  external set ariaLevel(JSString? value);
  external JSString? get ariaLevel;
  external set ariaLive(JSString? value);
  external JSString? get ariaLive;
  external set ariaModal(JSString? value);
  external JSString? get ariaModal;
  external set ariaMultiLine(JSString? value);
  external JSString? get ariaMultiLine;
  external set ariaMultiSelectable(JSString? value);
  external JSString? get ariaMultiSelectable;
  external set ariaOrientation(JSString? value);
  external JSString? get ariaOrientation;
  external set ariaOwnsElements(JSArray? value);
  external JSArray? get ariaOwnsElements;
  external set ariaPlaceholder(JSString? value);
  external JSString? get ariaPlaceholder;
  external set ariaPosInSet(JSString? value);
  external JSString? get ariaPosInSet;
  external set ariaPressed(JSString? value);
  external JSString? get ariaPressed;
  external set ariaReadOnly(JSString? value);
  external JSString? get ariaReadOnly;
  external set ariaRequired(JSString? value);
  external JSString? get ariaRequired;
  external set ariaRoleDescription(JSString? value);
  external JSString? get ariaRoleDescription;
  external set ariaRowCount(JSString? value);
  external JSString? get ariaRowCount;
  external set ariaRowIndex(JSString? value);
  external JSString? get ariaRowIndex;
  external set ariaRowIndexText(JSString? value);
  external JSString? get ariaRowIndexText;
  external set ariaRowSpan(JSString? value);
  external JSString? get ariaRowSpan;
  external set ariaSelected(JSString? value);
  external JSString? get ariaSelected;
  external set ariaSetSize(JSString? value);
  external JSString? get ariaSetSize;
  external set ariaSort(JSString? value);
  external JSString? get ariaSort;
  external set ariaValueMax(JSString? value);
  external JSString? get ariaValueMax;
  external set ariaValueMin(JSString? value);
  external JSString? get ariaValueMin;
  external set ariaValueNow(JSString? value);
  external JSString? get ariaValueNow;
  external set ariaValueText(JSString? value);
  external JSString? get ariaValueText;
}
