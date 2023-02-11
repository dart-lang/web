// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:js/js.dart';

typedef GLuint64EXT = JSNumber;
typedef BlobPart = JSAny;
typedef AlgorithmIdentifier = JSAny;
typedef HashAlgorithmIdentifier = AlgorithmIdentifier;
typedef BigInteger = JSUint8Array;
typedef NamedCurve = JSString;
typedef ClipboardItemData = JSPromise;
typedef ClipboardItems = JSArray;
typedef CookieList = JSArray;
typedef PasswordCredentialInit = JSAny;
typedef BinaryData = JSAny;
typedef CSSStringSource = JSAny;
typedef CSSToken = JSAny;
typedef CSSUnparsedSegment = JSAny;
typedef CSSKeywordish = JSAny;
typedef CSSNumberish = JSAny;
typedef CSSPerspectiveValue = JSAny;
typedef CSSColorRGBComp = JSAny;
typedef CSSColorPercent = JSAny;
typedef CSSColorNumber = JSAny;
typedef CSSColorAngle = JSAny;
typedef GeometryNode = JSAny;
typedef HeadersInit = JSAny;
typedef XMLHttpRequestBodyInit = JSAny;
typedef BodyInit = JSAny;
typedef RequestInfo = JSAny;
typedef StartInDirectory = JSAny;
typedef FileSystemWriteChunkType = JSAny;
typedef DOMHighResTimeStamp = JSNumber;
typedef EpochTimeStamp = JSNumber;
typedef HTMLOrSVGScriptElement = JSAny;
typedef MediaProvider = JSAny;
typedef RenderingContext = JSAny;
typedef HTMLOrSVGImageElement = JSAny;
typedef CanvasImageSource = JSAny;
typedef OffscreenRenderingContext = JSAny;
typedef EventHandler = EventHandlerNonNull;
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull;
typedef OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull;
typedef TimerHandler = JSAny;
typedef ImageBitmapSource = JSAny;
typedef MessageEventSource = JSAny;
typedef ConstrainPoint2D = JSAny;
typedef ProfilerResource = JSString;
typedef ConstrainULong = JSAny;
typedef ConstrainDouble = JSAny;
typedef ConstrainBoolean = JSAny;
typedef ConstrainDOMString = JSAny;
typedef Megabit = JSNumber;
typedef Millisecond = JSNumber;
typedef RotationMatrixType = JSAny;
typedef PerformanceEntryList = JSArray;
typedef PushMessageDataInit = JSAny;
typedef ReportList = JSArray;
typedef AttributeMatchList = JSAny;
typedef ReadableStreamReader = JSAny;
typedef ReadableStreamController = JSAny;
typedef HTMLString = JSString;
typedef ScriptString = JSString;
typedef ScriptURLString = JSString;
typedef TrustedType = JSAny;
typedef URLPatternInput = JSAny;
typedef VibratePattern = JSAny;
typedef UUID = JSString;
typedef BluetoothServiceUUID = JSAny;
typedef BluetoothCharacteristicUUID = JSAny;
typedef BluetoothDescriptorUUID = JSAny;
typedef NDEFMessageSource = JSAny;
typedef Base64URLString = JSString;
typedef PublicKeyCredentialJSON = JSAny;
typedef COSEAlgorithmIdentifier = JSNumber;
typedef UvmEntry = JSArray;
typedef UvmEntries = JSArray;
typedef ImageBufferSource = JSAny;
typedef GLenum = JSNumber;
typedef GLboolean = JSBoolean;
typedef GLbitfield = JSNumber;
typedef GLbyte = JSNumber;
typedef GLshort = JSNumber;
typedef GLint = JSNumber;
typedef GLsizei = JSNumber;
typedef GLintptr = JSNumber;
typedef GLsizeiptr = JSNumber;
typedef GLubyte = JSNumber;
typedef GLushort = JSNumber;
typedef GLuint = JSNumber;
typedef GLfloat = JSNumber;
typedef GLclampf = JSNumber;
typedef TexImageSource = JSAny;
typedef Float32List = JSAny;
typedef Int32List = JSAny;
typedef GLint64 = JSNumber;
typedef GLuint64 = JSNumber;
typedef Uint32List = JSAny;
typedef GPUBufferUsageFlags = JSNumber;
typedef GPUMapModeFlags = JSNumber;
typedef GPUTextureUsageFlags = JSNumber;
typedef GPUShaderStageFlags = JSNumber;
typedef GPUBindingResource = JSAny;
typedef GPUPipelineConstantValue = JSNumber;
typedef GPUColorWriteFlags = JSNumber;
typedef GPUComputePassTimestampWrites = JSArray;
typedef GPURenderPassTimestampWrites = JSArray;
typedef GPUBufferDynamicOffset = JSNumber;
typedef GPUStencilValue = JSNumber;
typedef GPUSampleMask = JSNumber;
typedef GPUDepthBias = JSNumber;
typedef GPUSize64 = JSNumber;
typedef GPUIntegerCoordinate = JSNumber;
typedef GPUIndex32 = JSNumber;
typedef GPUSize32 = JSNumber;
typedef GPUSignedOffset32 = JSNumber;
typedef GPUFlagsConstant = JSNumber;
typedef GPUColor = JSAny;
typedef GPUOrigin2D = JSAny;
typedef GPUOrigin3D = JSAny;
typedef GPUExtent3D = JSAny;
typedef ArrayBufferView = JSAny;
typedef BufferSource = JSAny;
typedef DOMTimeStamp = JSNumber;
typedef MLNamedArrayBufferViews = JSAny;
typedef MLGPUResource = JSAny;
typedef MLNamedGPUResources = JSAny;
typedef MLNamedOperands = JSAny;
typedef MLBufferView = JSAny;
typedef RTCRtpTransform = JSAny;
typedef SmallCryptoKeyID = JSNumber;
typedef CryptoKeyID = JSAny;
typedef LineAndPositionSetting = JSAny;
typedef XRWebGLRenderingContext = JSAny;
typedef FormDataEntryValue = JSAny;
typedef PressureUpdateCallback = JSFunction;
typedef AnimatorInstanceConstructor = JSFunction;
typedef UpdateCallback = JSFunction;
typedef MutationCallback = JSFunction;
typedef ErrorCallback = JSFunction;
typedef FileSystemEntryCallback = JSFunction;
typedef FileSystemEntriesCallback = JSFunction;
typedef FileCallback = JSFunction;
typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;
typedef BlobCallback = JSFunction;
typedef CustomElementConstructor = JSFunction;
typedef FunctionStringCallback = JSFunction;
typedef EventHandlerNonNull = JSFunction;
typedef OnErrorEventHandlerNonNull = JSFunction;
typedef OnBeforeUnloadEventHandlerNonNull = JSFunction;
typedef FrameRequestCallback = JSFunction;
typedef IntersectionObserverCallback = JSFunction;
typedef NavigatorUserMediaSuccessCallback = JSFunction;
typedef NavigatorUserMediaErrorCallback = JSFunction;
typedef MediaSessionActionHandler = JSFunction;
typedef NavigationInterceptHandler = JSFunction;
typedef NotificationPermissionCallback = JSFunction;
typedef PerformanceObserverCallback = JSFunction;
typedef RemotePlaybackAvailabilityCallback = JSFunction;
typedef ReportingObserverCallback = JSFunction;
typedef IdleRequestCallback = JSFunction;
typedef ResizeObserverCallback = JSFunction;
typedef SchedulerPostTaskCallback = JSFunction;
typedef UnderlyingSourceStartCallback = JSFunction;
typedef UnderlyingSourcePullCallback = JSFunction;
typedef UnderlyingSourceCancelCallback = JSFunction;
typedef UnderlyingSinkStartCallback = JSFunction;
typedef UnderlyingSinkWriteCallback = JSFunction;
typedef UnderlyingSinkCloseCallback = JSFunction;
typedef UnderlyingSinkAbortCallback = JSFunction;
typedef TransformerStartCallback = JSFunction;
typedef TransformerFlushCallback = JSFunction;
typedef TransformerTransformCallback = JSFunction;
typedef QueuingStrategySize = JSFunction;
typedef CreateHTMLCallback = JSFunction;
typedef CreateScriptCallback = JSFunction;
typedef CreateScriptURLCallback = JSFunction;
typedef VideoFrameRequestCallback = JSFunction;
typedef EffectCallback = JSFunction;
typedef LaunchConsumer = JSFunction;
typedef LockGrantedCallback = JSFunction;
typedef DecodeErrorCallback = JSFunction;
typedef DecodeSuccessCallback = JSFunction;
typedef AudioWorkletProcessorConstructor = JSFunction;
typedef AudioWorkletProcessCallback = JSFunction;
typedef AudioDataOutputCallback = JSFunction;
typedef VideoFrameOutputCallback = JSFunction;
typedef EncodedAudioChunkOutputCallback = JSFunction;
typedef EncodedVideoChunkOutputCallback = JSFunction;
typedef WebCodecsErrorCallback = JSFunction;
typedef VoidFunction = JSFunction;
typedef GenerateAssertionCallback = JSFunction;
typedef ValidateAssertionCallback = JSFunction;
typedef RTCPeerConnectionErrorCallback = JSFunction;
typedef RTCSessionDescriptionCallback = JSFunction;
typedef XRFrameRequestCallback = JSFunction;
typedef EventListener = JSFunction;
typedef NodeFilter = JSFunction;
typedef XPathNSResolver = JSFunction;
typedef SecurityPolicyViolationEventDisposition = JSString;
typedef EndingType = JSString;
typedef IDBRequestReadyState = JSString;
typedef IDBTransactionDurability = JSString;
typedef IDBCursorDirection = JSString;
typedef IDBTransactionMode = JSString;
typedef KeyType = JSString;
typedef KeyUsage = JSString;
typedef KeyFormat = JSString;
typedef AccelerometerLocalCoordinateSystem = JSString;
typedef AutoplayPolicy = JSString;
typedef AutoplayPolicyMediaType = JSString;
typedef BackgroundFetchResult = JSString;
typedef BackgroundFetchFailureReason = JSString;
typedef PresentationStyle = JSString;
typedef PressureState = JSString;
typedef PressureFactor = JSString;
typedef PressureSource = JSString;
typedef ContactProperty = JSString;
typedef ContentCategory = JSString;
typedef CookieSameSite = JSString;
typedef CredentialMediationRequirement = JSString;
typedef ScriptingPolicyViolationType = JSString;
typedef FontFaceLoadStatus = JSString;
typedef FontFaceSetLoadStatus = JSString;
typedef HighlightType = JSString;
typedef ChildDisplayType = JSString;
typedef LayoutSizingMode = JSString;
typedef BlockFragmentationType = JSString;
typedef BreakType = JSString;
typedef SpatialNavigationDirection = JSString;
typedef FocusableAreaSearchMode = JSString;
typedef CSSNumericBaseType = JSString;
typedef CSSMathOperator = JSString;
typedef ScrollBehavior = JSString;
typedef ScrollLogicalPosition = JSString;
typedef CSSBoxType = JSString;
typedef DevicePostureType = JSString;
typedef ItemType = JSString;
typedef ShadowRootMode = JSString;
typedef SlotAssignmentMode = JSString;
typedef MediaKeysRequirement = JSString;
typedef MediaKeySessionType = JSString;
typedef MediaKeySessionClosedReason = JSString;
typedef MediaKeyStatus = JSString;
typedef MediaKeyMessageType = JSString;
typedef RequestDestination = JSString;
typedef RequestMode = JSString;
typedef RequestCredentials = JSString;
typedef RequestCache = JSString;
typedef RequestRedirect = JSString;
typedef RequestDuplex = JSString;
typedef RequestPriority = JSString;
typedef ResponseType = JSString;
typedef FileSystemPermissionMode = JSString;
typedef WellKnownDirectory = JSString;
typedef FileSystemHandleKind = JSString;
typedef WriteCommandType = JSString;
typedef FullscreenNavigationUI = JSString;
typedef GamepadHand = JSString;
typedef GamepadHapticsResult = JSString;
typedef GamepadHapticActuatorType = JSString;
typedef GamepadHapticEffectType = JSString;
typedef GamepadMappingType = JSString;
typedef MockSensorType = JSString;
typedef GyroscopeLocalCoordinateSystem = JSString;
typedef DocumentReadyState = JSString;
typedef DocumentVisibilityState = JSString;
typedef CanPlayTypeResult = JSString;
typedef TextTrackMode = JSString;
typedef TextTrackKind = JSString;
typedef SelectionMode = JSString;
typedef PredefinedColorSpace = JSString;
typedef CanvasFillRule = JSString;
typedef ImageSmoothingQuality = JSString;
typedef CanvasLineCap = JSString;
typedef CanvasLineJoin = JSString;
typedef CanvasTextAlign = JSString;
typedef CanvasTextBaseline = JSString;
typedef CanvasDirection = JSString;
typedef CanvasFontKerning = JSString;
typedef CanvasFontStretch = JSString;
typedef CanvasFontVariantCaps = JSString;
typedef CanvasTextRendering = JSString;
typedef OffscreenRenderingContextId = JSString;
typedef ScrollRestoration = JSString;
typedef DOMParserSupportedType = JSString;
typedef ImageOrientation = JSString;
typedef PremultiplyAlpha = JSString;
typedef ColorSpaceConversion = JSString;
typedef ResizeQuality = JSString;
typedef WorkerType = JSString;
typedef UserIdleState = JSString;
typedef ScreenIdleState = JSString;
typedef RedEyeReduction = JSString;
typedef FillLightMode = JSString;
typedef MeteringMode = JSString;
typedef MagnetometerLocalCoordinateSystem = JSString;
typedef AppBannerPromptOutcome = JSString;
typedef MediaDecodingType = JSString;
typedef MediaEncodingType = JSString;
typedef HdrMetadataType = JSString;
typedef ColorGamut = JSString;
typedef TransferFunction = JSString;
typedef ReadyState = JSString;
typedef EndOfStreamError = JSString;
typedef AppendMode = JSString;
typedef MockCapturePromptResult = JSString;
typedef CaptureAction = JSString;
typedef MediaStreamTrackState = JSString;
typedef VideoFacingModeEnum = JSString;
typedef VideoResizeModeEnum = JSString;
typedef MediaDeviceKind = JSString;
typedef MediaSessionPlaybackState = JSString;
typedef MediaSessionAction = JSString;
typedef BitrateMode = JSString;
typedef RecordingState = JSString;
typedef RTCDegradationPreference = JSString;
typedef NavigationHistoryBehavior = JSString;
typedef NavigationFocusReset = JSString;
typedef NavigationScrollBehavior = JSString;
typedef NavigationType = JSString;
typedef NavigationTimingType = JSString;
typedef ConnectionType = JSString;
typedef EffectiveConnectionType = JSString;
typedef NotificationPermission = JSString;
typedef NotificationDirection = JSString;
typedef OrientationSensorLocalCoordinateSystem = JSString;
typedef ClientLifecycleState = JSString;
typedef PaymentDelegation = JSString;
typedef PaymentShippingType = JSString;
typedef PaymentComplete = JSString;
typedef PermissionState = JSString;
typedef PresentationConnectionState = JSString;
typedef PresentationConnectionCloseReason = JSString;
typedef PushEncryptionKeyName = JSString;
typedef ReferrerPolicy = JSString;
typedef RemotePlaybackState = JSString;
typedef ResizeObserverBoxOptions = JSString;
typedef RenderBlockingStatusType = JSString;
typedef TaskPriority = JSString;
typedef CaptureStartFocusBehavior = JSString;
typedef SelfCapturePreferenceEnum = JSString;
typedef SystemAudioPreferenceEnum = JSString;
typedef SurfaceSwitchingPreferenceEnum = JSString;
typedef DisplayCaptureSurfaceType = JSString;
typedef CursorCaptureConstraint = JSString;
typedef OrientationLockType = JSString;
typedef OrientationType = JSString;
typedef WakeLockType = JSString;
typedef ScrollAxis = JSString;
typedef ParityType = JSString;
typedef FlowControlType = JSString;
typedef ServiceWorkerState = JSString;
typedef ServiceWorkerUpdateViaCache = JSString;
typedef FrameType = JSString;
typedef ClientType = JSString;
typedef LandmarkType = JSString;
typedef BarcodeFormat = JSString;
typedef SpeechRecognitionErrorCode = JSString;
typedef SpeechSynthesisErrorCode = JSString;
typedef ReadableStreamReaderMode = JSString;
typedef ReadableStreamType = JSString;
typedef TouchType = JSString;
typedef ImportExportKind = JSString;
typedef TableKind = JSString;
typedef ValueType = JSString;
typedef IterationCompositeOperation = JSString;
typedef AnimationPlayState = JSString;
typedef AnimationReplaceState = JSString;
typedef FillMode = JSString;
typedef PlaybackDirection = JSString;
typedef CompositeOperation = JSString;
typedef CompositeOperationOrAuto = JSString;
typedef LockMode = JSString;
typedef OTPCredentialTransportType = JSString;
typedef AudioContextState = JSString;
typedef AudioContextLatencyCategory = JSString;
typedef AudioSinkType = JSString;
typedef ChannelCountMode = JSString;
typedef ChannelInterpretation = JSString;
typedef AutomationRate = JSString;
typedef BiquadFilterType = JSString;
typedef OscillatorType = JSString;
typedef PanningModelType = JSString;
typedef DistanceModelType = JSString;
typedef OverSampleType = JSString;
typedef AuthenticatorAttachment = JSString;
typedef ResidentKeyRequirement = JSString;
typedef AttestationConveyancePreference = JSString;
typedef TokenBindingStatus = JSString;
typedef PublicKeyCredentialType = JSString;
typedef AuthenticatorTransport = JSString;
typedef UserVerificationRequirement = JSString;
typedef LargeBlobSupport = JSString;
typedef AacBitstreamFormat = JSString;
typedef AvcBitstreamFormat = JSString;
typedef HevcBitstreamFormat = JSString;
typedef OpusBitstreamFormat = JSString;
typedef HardwareAcceleration = JSString;
typedef AlphaOption = JSString;
typedef LatencyMode = JSString;
typedef CodecState = JSString;
typedef EncodedAudioChunkType = JSString;
typedef EncodedVideoChunkType = JSString;
typedef AudioSampleFormat = JSString;
typedef VideoPixelFormat = JSString;
typedef VideoColorPrimaries = JSString;
typedef VideoTransferCharacteristics = JSString;
typedef VideoMatrixCoefficients = JSString;
typedef WebGLPowerPreference = JSString;
typedef GPUPowerPreference = JSString;
typedef GPUFeatureName = JSString;
typedef GPUBufferMapState = JSString;
typedef GPUTextureDimension = JSString;
typedef GPUTextureViewDimension = JSString;
typedef GPUTextureAspect = JSString;
typedef GPUTextureFormat = JSString;
typedef GPUAddressMode = JSString;
typedef GPUFilterMode = JSString;
typedef GPUMipmapFilterMode = JSString;
typedef GPUCompareFunction = JSString;
typedef GPUBufferBindingType = JSString;
typedef GPUSamplerBindingType = JSString;
typedef GPUTextureSampleType = JSString;
typedef GPUStorageTextureAccess = JSString;
typedef GPUCompilationMessageType = JSString;
typedef GPUPipelineErrorReason = JSString;
typedef GPUAutoLayoutMode = JSString;
typedef GPUPrimitiveTopology = JSString;
typedef GPUFrontFace = JSString;
typedef GPUCullMode = JSString;
typedef GPUBlendFactor = JSString;
typedef GPUBlendOperation = JSString;
typedef GPUStencilOperation = JSString;
typedef GPUIndexFormat = JSString;
typedef GPUVertexFormat = JSString;
typedef GPUVertexStepMode = JSString;
typedef GPUComputePassTimestampLocation = JSString;
typedef GPURenderPassTimestampLocation = JSString;
typedef GPULoadOp = JSString;
typedef GPUStoreOp = JSString;
typedef GPUQueryType = JSString;
typedef GPUCanvasAlphaMode = JSString;
typedef GPUDeviceLostReason = JSString;
typedef GPUErrorFilter = JSString;
typedef HIDUnitSystem = JSString;
typedef MIDIPortType = JSString;
typedef MIDIPortDeviceState = JSString;
typedef MIDIPortConnectionState = JSString;
typedef MLDeviceType = JSString;
typedef MLPowerPreference = JSString;
typedef MLInputOperandLayout = JSString;
typedef MLOperandType = JSString;
typedef MLConv2dFilterOperandLayout = JSString;
typedef MLAutoPad = JSString;
typedef MLConvTranspose2dFilterOperandLayout = JSString;
typedef MLGruWeightLayout = JSString;
typedef MLRecurrentNetworkDirection = JSString;
typedef MLLstmWeightLayout = JSString;
typedef MLPaddingMode = JSString;
typedef MLRoundingType = JSString;
typedef MLInterpolationMode = JSString;
typedef SFrameTransformRole = JSString;
typedef SFrameTransformErrorEventType = JSString;
typedef RTCEncodedVideoFrameType = JSString;
typedef RTCErrorDetailTypeIdp = JSString;
typedef RTCPriorityType = JSString;
typedef RTCStatsType = JSString;
typedef RTCQualityLimitationReason = JSString;
typedef RTCDtlsRole = JSString;
typedef RTCStatsIceCandidatePairState = JSString;
typedef RTCIceTransportPolicy = JSString;
typedef RTCBundlePolicy = JSString;
typedef RTCRtcpMuxPolicy = JSString;
typedef RTCSignalingState = JSString;
typedef RTCIceGatheringState = JSString;
typedef RTCPeerConnectionState = JSString;
typedef RTCIceConnectionState = JSString;
typedef RTCSdpType = JSString;
typedef RTCIceProtocol = JSString;
typedef RTCIceTcpCandidateType = JSString;
typedef RTCIceCandidateType = JSString;
typedef RTCIceServerTransportProtocol = JSString;
typedef RTCRtpTransceiverDirection = JSString;
typedef RTCDtlsTransportState = JSString;
typedef RTCIceGathererState = JSString;
typedef RTCIceTransportState = JSString;
typedef RTCIceRole = JSString;
typedef RTCIceComponent = JSString;
typedef RTCSctpTransportState = JSString;
typedef RTCDataChannelState = JSString;
typedef RTCErrorDetailType = JSString;
typedef BinaryType = JSString;
typedef WebTransportReliabilityMode = JSString;
typedef WebTransportCongestionControl = JSString;
typedef WebTransportErrorSource = JSString;
typedef USBTransferStatus = JSString;
typedef USBRequestType = JSString;
typedef USBRecipient = JSString;
typedef USBDirection = JSString;
typedef USBEndpointType = JSString;
typedef AutoKeyword = JSString;
typedef DirectionSetting = JSString;
typedef LineAlignSetting = JSString;
typedef PositionAlignSetting = JSString;
typedef AlignSetting = JSString;
typedef ScrollSetting = JSString;
typedef XREnvironmentBlendMode = JSString;
typedef XRInteractionMode = JSString;
typedef XRDepthUsage = JSString;
typedef XRDepthDataFormat = JSString;
typedef XRDOMOverlayType = JSString;
typedef XRHandJoint = JSString;
typedef XRHitTestTrackableType = JSString;
typedef XRReflectionFormat = JSString;
typedef XRSessionMode = JSString;
typedef XRVisibilityState = JSString;
typedef XRReferenceSpaceType = JSString;
typedef XREye = JSString;
typedef XRHandedness = JSString;
typedef XRTargetRayMode = JSString;
typedef XRLayerLayout = JSString;
typedef XRTextureType = JSString;
typedef XMLHttpRequestResponseType = JSString;

@JS('ANGLE_instanced_arrays')
@staticInterop
class ANGLE_instanced_arrays {
  external factory ANGLE_instanced_arrays();
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;
}

extension ANGLE_instanced_arraysExtension on ANGLE_instanced_arrays {
  external JSUndefined drawArraysInstancedANGLE(
      GLenum mode, GLint first, GLsizei count, GLsizei primcount);
  external JSUndefined drawElementsInstancedANGLE(GLenum mode, GLsizei count,
      GLenum type, GLintptr offset, GLsizei primcount);
  external JSUndefined vertexAttribDivisorANGLE(GLuint index, GLuint divisor);
}

@JS('CSPViolationReportBody')
@staticInterop
class CSPViolationReportBody extends ReportBody {
  external factory CSPViolationReportBody();
}

extension CSPViolationReportBodyExtension on CSPViolationReportBody {
  external JSObject toJSON();
  external JSString get documentURL;
  external JSString? get referrer;
  external JSString? get blockedURL;
  external JSString get effectiveDirective;
  external JSString get originalPolicy;
  external JSString? get sourceFile;
  external JSString? get sample;
  external SecurityPolicyViolationEventDisposition get disposition;
  external JSNumber get statusCode;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
}

@JS('SecurityPolicyViolationEvent')
@staticInterop
class SecurityPolicyViolationEvent extends Event {
  external factory SecurityPolicyViolationEvent();
  external factory SecurityPolicyViolationEvent.a1(JSString type);
  external factory SecurityPolicyViolationEvent.a1_1(
      JSString type, SecurityPolicyViolationEventInit eventInitDict);
}

extension SecurityPolicyViolationEventExtension
    on SecurityPolicyViolationEvent {
  external JSString get documentURI;
  external JSString get referrer;
  external JSString get blockedURI;
  external JSString get effectiveDirective;
  external JSString get violatedDirective;
  external JSString get originalPolicy;
  external JSString get sourceFile;
  external JSString get sample;
  external SecurityPolicyViolationEventDisposition get disposition;
  external JSNumber get statusCode;
  external JSNumber get lineNumber;
  external JSNumber get columnNumber;
}

@JS('SecurityPolicyViolationEventInit')
@staticInterop
class SecurityPolicyViolationEventInit extends EventInit {
  external factory SecurityPolicyViolationEventInit();
}

extension SecurityPolicyViolationEventInitExtension
    on SecurityPolicyViolationEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XMLSerializer')
@staticInterop
class XMLSerializer {
  external factory XMLSerializer();
}

extension XMLSerializerExtension on XMLSerializer {
  external JSString serializeToString(Node root);
}

@JS('InnerHTML')
@staticInterop
class InnerHTML {
  external factory InnerHTML();
}

extension InnerHTMLExtension on InnerHTML {
  external JSString get innerHTML;
  external set innerHTML(JSString value);
}

@JS('Element')
@staticInterop
class Element extends Node
    implements
        InnerHTML,
        Region,
        GeometryUtils,
        ParentNode,
        NonDocumentTypeChildNode,
        ChildNode,
        Slottable,
        ARIAMixin,
        Animatable {
  external factory Element();
}

extension ElementExtension on Element {
  external JSString get outerHTML;
  external set outerHTML(JSString value);
  external JSUndefined insertAdjacentHTML(JSString position, JSString text);
  external Node getSpatialNavigationContainer();
  external JSArray focusableAreas();
  external JSArray focusableAreas_1(FocusableAreasOption option);
  external Node? spatialNavigationSearch(SpatialNavigationDirection dir);
  external Node? spatialNavigationSearch_1(
      SpatialNavigationDirection dir, SpatialNavigationSearchOptions options);
  external CSSPseudoElement? pseudo(JSString type);
  external DOMTokenList get part;
  external StylePropertyMapReadOnly computedStyleMap();
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external JSBoolean checkVisibility();
  external JSBoolean checkVisibility_1(CheckVisibilityOptions options);
  external JSUndefined scrollIntoView();
  external JSUndefined scrollIntoView_1(JSAny arg);
  external JSUndefined scroll();
  external JSUndefined scroll_1(ScrollToOptions options);
  @JS('scroll')
  external JSUndefined scroll1(JSNumber x, JSNumber y);
  external JSUndefined scrollTo();
  external JSUndefined scrollTo_1(ScrollToOptions options);
  @JS('scrollTo')
  external JSUndefined scrollTo1(JSNumber x, JSNumber y);
  external JSUndefined scrollBy();
  external JSUndefined scrollBy_1(ScrollToOptions options);
  @JS('scrollBy')
  external JSUndefined scrollBy1(JSNumber x, JSNumber y);
  external JSNumber get scrollTop;
  external set scrollTop(JSNumber value);
  external JSNumber get scrollLeft;
  external set scrollLeft(JSNumber value);
  external JSNumber get scrollWidth;
  external JSNumber get scrollHeight;
  external JSNumber get clientTop;
  external JSNumber get clientLeft;
  external JSNumber get clientWidth;
  external JSNumber get clientHeight;
  external JSString? get namespaceURI;
  external JSString? get prefix;
  external JSString get localName;
  external JSString get tagName;
  external JSString get id;
  external set id(JSString value);
  external JSString get className;
  external set className(JSString value);
  external DOMTokenList get classList;
  external JSString get slot;
  external set slot(JSString value);
  external JSBoolean hasAttributes();
  external NamedNodeMap get attributes;
  external JSArray getAttributeNames();
  external JSString? getAttribute(JSString qualifiedName);
  external JSString? getAttributeNS(JSString? namespace, JSString localName);
  external JSUndefined setAttribute(JSString qualifiedName, JSString value);
  external JSUndefined setAttributeNS(
      JSString? namespace, JSString qualifiedName, JSString value);
  external JSUndefined removeAttribute(JSString qualifiedName);
  external JSUndefined removeAttributeNS(
      JSString? namespace, JSString localName);
  external JSBoolean toggleAttribute(JSString qualifiedName);
  external JSBoolean toggleAttribute_1(JSString qualifiedName, JSBoolean force);
  external JSBoolean hasAttribute(JSString qualifiedName);
  external JSBoolean hasAttributeNS(JSString? namespace, JSString localName);
  external Attr? getAttributeNode(JSString qualifiedName);
  external Attr? getAttributeNodeNS(JSString? namespace, JSString localName);
  external Attr? setAttributeNode(Attr attr);
  external Attr? setAttributeNodeNS(Attr attr);
  external Attr removeAttributeNode(Attr attr);
  external ShadowRoot attachShadow(ShadowRootInit init);
  external ShadowRoot? get shadowRoot;
  external Element? closest(JSString selectors);
  external JSBoolean matches(JSString selectors);
  external JSBoolean webkitMatchesSelector(JSString selectors);
  external HTMLCollection getElementsByTagName(JSString qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
      JSString? namespace, JSString localName);
  external HTMLCollection getElementsByClassName(JSString classNames);
  external Element? insertAdjacentElement(JSString where, Element element);
  external JSUndefined insertAdjacentText(JSString where, JSString data);
  external EditContext? get editContext;
  external set editContext(EditContext? value);
  external JSString get elementTiming;
  external set elementTiming(JSString value);
  external JSPromise requestFullscreen();
  external JSPromise requestFullscreen_1(FullscreenOptions options);
  external EventHandler get onfullscreenchange;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenerror;
  external set onfullscreenerror(EventHandler value);
  external JSUndefined setPointerCapture(JSNumber pointerId);
  external JSUndefined releasePointerCapture(JSNumber pointerId);
  external JSBoolean hasPointerCapture(JSNumber pointerId);
  external JSUndefined requestPointerLock();
  external JSUndefined setHTML(JSString input);
  external JSUndefined setHTML_1(JSString input, SetHTMLOptions options);
}

@JS('Range')
@staticInterop
class Range extends AbstractRange {
  external factory Range();
  external static JSNumber get START_TO_START;
  external static JSNumber get START_TO_END;
  external static JSNumber get END_TO_END;
  external static JSNumber get END_TO_START;
}

extension RangeExtension on Range {
  external DocumentFragment createContextualFragment(JSString fragment);
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external Node get commonAncestorContainer;
  external JSUndefined setStart(Node node, JSNumber offset);
  external JSUndefined setEnd(Node node, JSNumber offset);
  external JSUndefined setStartBefore(Node node);
  external JSUndefined setStartAfter(Node node);
  external JSUndefined setEndBefore(Node node);
  external JSUndefined setEndAfter(Node node);
  external JSUndefined collapse();
  external JSUndefined collapse_1(JSBoolean toStart);
  external JSUndefined selectNode(Node node);
  external JSUndefined selectNodeContents(Node node);
  external JSNumber compareBoundaryPoints(JSNumber how, Range sourceRange);
  external JSUndefined deleteContents();
  external DocumentFragment extractContents();
  external DocumentFragment cloneContents();
  external JSUndefined insertNode(Node node);
  external JSUndefined surroundContents(Node newParent);
  external Range cloneRange();
  external JSUndefined detach();
  external JSBoolean isPointInRange(Node node, JSNumber offset);
  external JSNumber comparePoint(Node node, JSNumber offset);
  external JSBoolean intersectsNode(Node node);
}

@JS('EXT_blend_minmax')
@staticInterop
class EXT_blend_minmax {
  external factory EXT_blend_minmax();
  external static GLenum get MIN_EXT;
  external static GLenum get MAX_EXT;
}

@JS('EXT_color_buffer_float')
@staticInterop
class EXT_color_buffer_float {
  external factory EXT_color_buffer_float();
}

@JS('EXT_color_buffer_half_float')
@staticInterop
class EXT_color_buffer_half_float {
  external factory EXT_color_buffer_half_float();
  external static GLenum get RGBA16F_EXT;
  external static GLenum get RGB16F_EXT;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT;
  external static GLenum get UNSIGNED_NORMALIZED_EXT;
}

@JS('WebGLTimerQueryEXT')
@staticInterop
class WebGLTimerQueryEXT extends WebGLObject {
  external factory WebGLTimerQueryEXT();
}

@JS('EXT_disjoint_timer_query')
@staticInterop
class EXT_disjoint_timer_query {
  external factory EXT_disjoint_timer_query();
  external static GLenum get QUERY_COUNTER_BITS_EXT;
  external static GLenum get CURRENT_QUERY_EXT;
  external static GLenum get QUERY_RESULT_EXT;
  external static GLenum get QUERY_RESULT_AVAILABLE_EXT;
  external static GLenum get TIME_ELAPSED_EXT;
  external static GLenum get TIMESTAMP_EXT;
  external static GLenum get GPU_DISJOINT_EXT;
}

extension EXT_disjoint_timer_queryExtension on EXT_disjoint_timer_query {
  external WebGLTimerQueryEXT? createQueryEXT();
  external JSUndefined deleteQueryEXT(WebGLTimerQueryEXT? query);
  external JSBoolean isQueryEXT(WebGLTimerQueryEXT? query);
  external JSUndefined beginQueryEXT(GLenum target, WebGLTimerQueryEXT query);
  external JSUndefined endQueryEXT(GLenum target);
  external JSUndefined queryCounterEXT(WebGLTimerQueryEXT query, GLenum target);
  external JSAny getQueryEXT(GLenum target, GLenum pname);
  external JSAny getQueryObjectEXT(WebGLTimerQueryEXT query, GLenum pname);
}

@JS('EXT_disjoint_timer_query_webgl2')
@staticInterop
class EXT_disjoint_timer_query_webgl2 {
  external factory EXT_disjoint_timer_query_webgl2();
  external static GLenum get QUERY_COUNTER_BITS_EXT;
  external static GLenum get TIME_ELAPSED_EXT;
  external static GLenum get TIMESTAMP_EXT;
  external static GLenum get GPU_DISJOINT_EXT;
}

extension EXT_disjoint_timer_query_webgl2Extension
    on EXT_disjoint_timer_query_webgl2 {
  external JSUndefined queryCounterEXT(WebGLQuery query, GLenum target);
}

@JS('EXT_float_blend')
@staticInterop
class EXT_float_blend {
  external factory EXT_float_blend();
}

@JS('EXT_frag_depth')
@staticInterop
class EXT_frag_depth {
  external factory EXT_frag_depth();
}

@JS('EXT_sRGB')
@staticInterop
class EXT_sRGB {
  external factory EXT_sRGB();
  external static GLenum get SRGB_EXT;
  external static GLenum get SRGB_ALPHA_EXT;
  external static GLenum get SRGB8_ALPHA8_EXT;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT;
}

@JS('EXT_shader_texture_lod')
@staticInterop
class EXT_shader_texture_lod {
  external factory EXT_shader_texture_lod();
}

@JS('EXT_texture_compression_bptc')
@staticInterop
class EXT_texture_compression_bptc {
  external factory EXT_texture_compression_bptc();
  external static GLenum get COMPRESSED_RGBA_BPTC_UNORM_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT;
  external static GLenum get COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT;
  external static GLenum get COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT;
}

@JS('EXT_texture_compression_rgtc')
@staticInterop
class EXT_texture_compression_rgtc {
  external factory EXT_texture_compression_rgtc();
  external static GLenum get COMPRESSED_RED_RGTC1_EXT;
  external static GLenum get COMPRESSED_SIGNED_RED_RGTC1_EXT;
  external static GLenum get COMPRESSED_RED_GREEN_RGTC2_EXT;
  external static GLenum get COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT;
}

@JS('EXT_texture_filter_anisotropic')
@staticInterop
class EXT_texture_filter_anisotropic {
  external factory EXT_texture_filter_anisotropic();
  external static GLenum get TEXTURE_MAX_ANISOTROPY_EXT;
  external static GLenum get MAX_TEXTURE_MAX_ANISOTROPY_EXT;
}

@JS('EXT_texture_norm16')
@staticInterop
class EXT_texture_norm16 {
  external factory EXT_texture_norm16();
  external static GLenum get R16_EXT;
  external static GLenum get RG16_EXT;
  external static GLenum get RGB16_EXT;
  external static GLenum get RGBA16_EXT;
  external static GLenum get R16_SNORM_EXT;
  external static GLenum get RG16_SNORM_EXT;
  external static GLenum get RGB16_SNORM_EXT;
  external static GLenum get RGBA16_SNORM_EXT;
}

@JS('IdentityProviderWellKnown')
@staticInterop
class IdentityProviderWellKnown {
  external factory IdentityProviderWellKnown();
}

extension IdentityProviderWellKnownExtension on IdentityProviderWellKnown {
  // TODO
}

@JS('IdentityProviderIcon')
@staticInterop
class IdentityProviderIcon {
  external factory IdentityProviderIcon();
}

extension IdentityProviderIconExtension on IdentityProviderIcon {
  // TODO
  // TODO
}

@JS('IdentityProviderBranding')
@staticInterop
class IdentityProviderBranding {
  external factory IdentityProviderBranding();
}

extension IdentityProviderBrandingExtension on IdentityProviderBranding {
  // TODO
  // TODO
  // TODO
}

@JS('IdentityProviderAPIConfig')
@staticInterop
class IdentityProviderAPIConfig {
  external factory IdentityProviderAPIConfig();
}

extension IdentityProviderAPIConfigExtension on IdentityProviderAPIConfig {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('IdentityProviderAccount')
@staticInterop
class IdentityProviderAccount {
  external factory IdentityProviderAccount();
}

extension IdentityProviderAccountExtension on IdentityProviderAccount {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('IdentityProviderAccountList')
@staticInterop
class IdentityProviderAccountList {
  external factory IdentityProviderAccountList();
}

extension IdentityProviderAccountListExtension on IdentityProviderAccountList {
  // TODO
}

@JS('IdentityProviderClientMetadata')
@staticInterop
class IdentityProviderClientMetadata {
  external factory IdentityProviderClientMetadata();
}

extension IdentityProviderClientMetadataExtension
    on IdentityProviderClientMetadata {
  // TODO
  // TODO
}

@JS('IdentityProviderToken')
@staticInterop
class IdentityProviderToken {
  external factory IdentityProviderToken();
}

extension IdentityProviderTokenExtension on IdentityProviderToken {
  // TODO
}

@JS('IdentityCredential')
@staticInterop
class IdentityCredential extends Credential {
  external factory IdentityCredential();
  external static JSPromise logoutRPs(JSArray logoutRequests);
}

extension IdentityCredentialExtension on IdentityCredential {
  external JSString? get token;
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

@JS('IdentityCredentialRequestOptions')
@staticInterop
class IdentityCredentialRequestOptions {
  external factory IdentityCredentialRequestOptions();
}

extension IdentityCredentialRequestOptionsExtension
    on IdentityCredentialRequestOptions {
  // TODO
}

@JS('IdentityProviderConfig')
@staticInterop
class IdentityProviderConfig {
  external factory IdentityProviderConfig();
}

extension IdentityProviderConfigExtension on IdentityProviderConfig {
  // TODO
  // TODO
  // TODO
}

@JS('IdentityCredentialLogoutRPsRequest')
@staticInterop
class IdentityCredentialLogoutRPsRequest {
  external factory IdentityCredentialLogoutRPsRequest();
}

extension IdentityCredentialLogoutRPsRequestExtension
    on IdentityCredentialLogoutRPsRequest {
  // TODO
  // TODO
}

@JS('IdentityProvider')
@staticInterop
class IdentityProvider {
  external factory IdentityProvider();
  external static JSUndefined login();
  external static JSUndefined logout();
}

@JS('Blob')
@staticInterop
class Blob {
  external factory Blob();
  external factory Blob.a1();
  external factory Blob.a1_1(JSArray blobParts);
  external factory Blob.a1_2(JSArray blobParts, BlobPropertyBag options);
}

extension BlobExtension on Blob {
  external JSNumber get size;
  external JSString get type;
  external Blob slice();
  external Blob slice_1(JSNumber start);
  external Blob slice_2(JSNumber start, JSNumber end);
  external Blob slice_3(JSNumber start, JSNumber end, JSString contentType);
  external ReadableStream stream();
  external JSPromise text();
  external JSPromise arrayBuffer();
}

@JS('BlobPropertyBag')
@staticInterop
class BlobPropertyBag {
  external factory BlobPropertyBag();
}

extension BlobPropertyBagExtension on BlobPropertyBag {
  // TODO
  // TODO
}

@JS('File')
@staticInterop
class File extends Blob {
  external factory File();
  external factory File.a1(JSArray fileBits, JSString fileName);
  external factory File.a1_1(
      JSArray fileBits, JSString fileName, FilePropertyBag options);
}

extension FileExtension on File {
  external JSString get name;
  external JSNumber get lastModified;
  external JSString get webkitRelativePath;
}

@JS('FilePropertyBag')
@staticInterop
class FilePropertyBag extends BlobPropertyBag {
  external factory FilePropertyBag();
}

extension FilePropertyBagExtension on FilePropertyBag {
  // TODO
}

@JS('FileList')
@staticInterop
class FileList {
  external factory FileList();
}

extension FileListExtension on FileList {
  external File? item(JSNumber index);
  external JSNumber get length;
}

@JS('FileReader')
@staticInterop
class FileReader extends EventTarget {
  external factory FileReader();
  external static JSNumber get EMPTY;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension FileReaderExtension on FileReader {
  external JSUndefined readAsArrayBuffer(Blob blob);
  external JSUndefined readAsBinaryString(Blob blob);
  external JSUndefined readAsText(Blob blob);
  external JSUndefined readAsText_1(Blob blob, JSString encoding);
  external JSUndefined readAsDataURL(Blob blob);
  external JSUndefined abort();
  external JSNumber get readyState;
  external JSAny? get result;
  external DOMException? get error;
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onloadend;
  external set onloadend(EventHandler value);
}

@JS('FileReaderSync')
@staticInterop
class FileReaderSync {
  external factory FileReaderSync();
}

extension FileReaderSyncExtension on FileReaderSync {
  external JSArrayBuffer readAsArrayBuffer(Blob blob);
  external JSString readAsBinaryString(Blob blob);
  external JSString readAsText(Blob blob);
  external JSString readAsText_1(Blob blob, JSString encoding);
  external JSString readAsDataURL(Blob blob);
}

@JS('URL')
@staticInterop
class URL {
  external factory URL();
  external factory URL.a1(JSString url);
  external factory URL.a1_1(JSString url, JSString base);
  external static JSString createObjectURL(JSAny obj);
  external static JSUndefined revokeObjectURL(JSString url);
}

extension URLExtension on URL {
  external JSString get href;
  external set href(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get username;
  external set username(JSString value);
  external JSString get password;
  external set password(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external URLSearchParams get searchParams;
  external JSString get hash;
  external set hash(JSString value);
  external JSString toJSON();
}

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
  external EventHandler get onsuccess;
  external set onsuccess(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('IDBOpenDBRequest')
@staticInterop
class IDBOpenDBRequest extends IDBRequest {
  external factory IDBOpenDBRequest();
}

extension IDBOpenDBRequestExtension on IDBOpenDBRequest {
  external EventHandler get onblocked;
  external set onblocked(EventHandler value);
  external EventHandler get onupgradeneeded;
  external set onupgradeneeded(EventHandler value);
}

@JS('IDBVersionChangeEvent')
@staticInterop
class IDBVersionChangeEvent extends Event {
  external factory IDBVersionChangeEvent();
  external factory IDBVersionChangeEvent.a1(JSString type);
  external factory IDBVersionChangeEvent.a1_1(
      JSString type, IDBVersionChangeEventInit eventInitDict);
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

extension IDBVersionChangeEventInitExtension on IDBVersionChangeEventInit {
  // TODO
  // TODO
}

@JS('WindowOrWorkerGlobalScope')
@staticInterop
class WindowOrWorkerGlobalScope {
  external factory WindowOrWorkerGlobalScope();
}

extension WindowOrWorkerGlobalScopeExtension on WindowOrWorkerGlobalScope {
  external IDBFactory get indexedDB;
  external Crypto get crypto;
  external JSPromise fetch(RequestInfo input);
  external JSPromise fetch_1(RequestInfo input, RequestInit init);
  external Performance get performance;
  external JSString get origin;
  external JSBoolean get isSecureContext;
  external JSBoolean get crossOriginIsolated;
  external JSUndefined reportError(JSAny e);
  external JSString btoa(JSString data);
  external JSString atob(JSString data);
  external JSNumber setTimeout(TimerHandler handler);
  external JSNumber setTimeout_1(
      TimerHandler handler, JSNumber timeout, JSAny arguments);
  external JSUndefined clearTimeout();
  external JSUndefined clearTimeout_1(JSNumber id);
  external JSNumber setInterval(TimerHandler handler);
  external JSNumber setInterval_1(
      TimerHandler handler, JSNumber timeout, JSAny arguments);
  external JSUndefined clearInterval();
  external JSUndefined clearInterval_1(JSNumber id);
  external JSUndefined queueMicrotask(VoidFunction callback);
  external JSPromise createImageBitmap(ImageBitmapSource image);
  external JSPromise createImageBitmap_1(
      ImageBitmapSource image, ImageBitmapOptions options);
  @JS('createImageBitmap')
  external JSPromise createImageBitmap1(ImageBitmapSource image, JSNumber sx,
      JSNumber sy, JSNumber sw, JSNumber sh);
  @JS('createImageBitmap')
  external JSPromise createImageBitmap1_1(ImageBitmapSource image, JSNumber sx,
      JSNumber sy, JSNumber sw, JSNumber sh, ImageBitmapOptions options);
  external JSAny structuredClone(JSAny value);
  external JSAny structuredClone_1(
      JSAny value, StructuredSerializeOptions options);
  external Scheduler get scheduler;
  external CacheStorage get caches;
  external TrustedTypePolicyFactory get trustedTypes;
}

@JS('IDBFactory')
@staticInterop
class IDBFactory {
  external factory IDBFactory();
}

extension IDBFactoryExtension on IDBFactory {
  external IDBOpenDBRequest open(JSString name);
  external IDBOpenDBRequest open_1(JSString name, JSNumber version);
  external IDBOpenDBRequest deleteDatabase(JSString name);
  external JSPromise databases();
  external JSNumber cmp(JSAny first, JSAny second);
}

@JS('IDBDatabaseInfo')
@staticInterop
class IDBDatabaseInfo {
  external factory IDBDatabaseInfo();
}

extension IDBDatabaseInfoExtension on IDBDatabaseInfo {
  // TODO
  // TODO
}

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
  external IDBTransaction transaction_1(
      JSAny storeNames, IDBTransactionMode mode);
  external IDBTransaction transaction_2(
      JSAny storeNames, IDBTransactionMode mode, IDBTransactionOptions options);
  external JSUndefined close();
  external IDBObjectStore createObjectStore(JSString name);
  external IDBObjectStore createObjectStore_1(
      JSString name, IDBObjectStoreParameters options);
  external JSUndefined deleteObjectStore(JSString name);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onversionchange;
  external set onversionchange(EventHandler value);
}

@JS('IDBTransactionOptions')
@staticInterop
class IDBTransactionOptions {
  external factory IDBTransactionOptions();
}

extension IDBTransactionOptionsExtension on IDBTransactionOptions {
  // TODO
}

@JS('IDBObjectStoreParameters')
@staticInterop
class IDBObjectStoreParameters {
  external factory IDBObjectStoreParameters();
}

extension IDBObjectStoreParametersExtension on IDBObjectStoreParameters {
  // TODO
  // TODO
}

@JS('IDBObjectStore')
@staticInterop
class IDBObjectStore {
  external factory IDBObjectStore();
}

extension IDBObjectStoreExtension on IDBObjectStore {
  external JSString get name;
  external set name(JSString value);
  external JSAny get keyPath;
  external DOMStringList get indexNames;
  external IDBTransaction get transaction;
  external JSBoolean get autoIncrement;
  external IDBRequest put(JSAny value);
  external IDBRequest put_1(JSAny value, JSAny key);
  external IDBRequest add(JSAny value);
  external IDBRequest add_1(JSAny value, JSAny key);
  external IDBRequest delete(JSAny query);
  external IDBRequest clear();
  external IDBRequest get(JSAny query);
  external IDBRequest getKey(JSAny query);
  external IDBRequest getAll();
  external IDBRequest getAll_1(JSAny query);
  external IDBRequest getAll_2(JSAny query, JSNumber count);
  external IDBRequest getAllKeys();
  external IDBRequest getAllKeys_1(JSAny query);
  external IDBRequest getAllKeys_2(JSAny query, JSNumber count);
  external IDBRequest count();
  external IDBRequest count_1(JSAny query);
  external IDBRequest openCursor();
  external IDBRequest openCursor_1(JSAny query);
  external IDBRequest openCursor_2(JSAny query, IDBCursorDirection direction);
  external IDBRequest openKeyCursor();
  external IDBRequest openKeyCursor_1(JSAny query);
  external IDBRequest openKeyCursor_2(
      JSAny query, IDBCursorDirection direction);
  external IDBIndex index(JSString name);
  external IDBIndex createIndex(JSString name, JSAny keyPath);
  external IDBIndex createIndex_1(
      JSString name, JSAny keyPath, IDBIndexParameters options);
  external JSUndefined deleteIndex(JSString name);
}

@JS('IDBIndexParameters')
@staticInterop
class IDBIndexParameters {
  external factory IDBIndexParameters();
}

extension IDBIndexParametersExtension on IDBIndexParameters {
  // TODO
  // TODO
}

@JS('IDBIndex')
@staticInterop
class IDBIndex {
  external factory IDBIndex();
}

extension IDBIndexExtension on IDBIndex {
  external JSString get name;
  external set name(JSString value);
  external IDBObjectStore get objectStore;
  external JSAny get keyPath;
  external JSBoolean get multiEntry;
  external JSBoolean get unique;
  external IDBRequest get(JSAny query);
  external IDBRequest getKey(JSAny query);
  external IDBRequest getAll();
  external IDBRequest getAll_1(JSAny query);
  external IDBRequest getAll_2(JSAny query, JSNumber count);
  external IDBRequest getAllKeys();
  external IDBRequest getAllKeys_1(JSAny query);
  external IDBRequest getAllKeys_2(JSAny query, JSNumber count);
  external IDBRequest count();
  external IDBRequest count_1(JSAny query);
  external IDBRequest openCursor();
  external IDBRequest openCursor_1(JSAny query);
  external IDBRequest openCursor_2(JSAny query, IDBCursorDirection direction);
  external IDBRequest openKeyCursor();
  external IDBRequest openKeyCursor_1(JSAny query);
  external IDBRequest openKeyCursor_2(
      JSAny query, IDBCursorDirection direction);
}

@JS('IDBKeyRange')
@staticInterop
class IDBKeyRange {
  external factory IDBKeyRange();
  external static IDBKeyRange only(JSAny value);
  external static IDBKeyRange lowerBound(JSAny lower);
  external static IDBKeyRange lowerBound_1(JSAny lower, JSBoolean open);
  external static IDBKeyRange upperBound(JSAny upper);
  external static IDBKeyRange upperBound_1(JSAny upper, JSBoolean open);
  external static IDBKeyRange bound(JSAny lower, JSAny upper);
  external static IDBKeyRange bound_1(
      JSAny lower, JSAny upper, JSBoolean lowerOpen);
  external static IDBKeyRange bound_2(
      JSAny lower, JSAny upper, JSBoolean lowerOpen, JSBoolean upperOpen);
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
  external JSUndefined advance(JSNumber count);
  @JS('continue')
  external JSUndefined continue0();
  @JS('continue')
  external JSUndefined continue0_1(JSAny key);
  external JSUndefined continuePrimaryKey(JSAny key, JSAny primaryKey);
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
  external JSUndefined commit();
  external JSUndefined abort();
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get oncomplete;
  external set oncomplete(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('KHR_parallel_shader_compile')
@staticInterop
class KHR_parallel_shader_compile {
  external factory KHR_parallel_shader_compile();
  external static GLenum get COMPLETION_STATUS_KHR;
}

@JS('OES_draw_buffers_indexed')
@staticInterop
class OES_draw_buffers_indexed {
  external factory OES_draw_buffers_indexed();
}

extension OES_draw_buffers_indexedExtension on OES_draw_buffers_indexed {
  external JSUndefined enableiOES(GLenum target, GLuint index);
  external JSUndefined disableiOES(GLenum target, GLuint index);
  external JSUndefined blendEquationiOES(GLuint buf, GLenum mode);
  external JSUndefined blendEquationSeparateiOES(
      GLuint buf, GLenum modeRGB, GLenum modeAlpha);
  external JSUndefined blendFunciOES(GLuint buf, GLenum src, GLenum dst);
  external JSUndefined blendFuncSeparateiOES(GLuint buf, GLenum srcRGB,
      GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
  external JSUndefined colorMaskiOES(
      GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
}

@JS('OES_element_index_uint')
@staticInterop
class OES_element_index_uint {
  external factory OES_element_index_uint();
}

@JS('OES_fbo_render_mipmap')
@staticInterop
class OES_fbo_render_mipmap {
  external factory OES_fbo_render_mipmap();
}

@JS('OES_standard_derivatives')
@staticInterop
class OES_standard_derivatives {
  external factory OES_standard_derivatives();
  external static GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT_OES;
}

@JS('OES_texture_float')
@staticInterop
class OES_texture_float {
  external factory OES_texture_float();
}

@JS('OES_texture_float_linear')
@staticInterop
class OES_texture_float_linear {
  external factory OES_texture_float_linear();
}

@JS('OES_texture_half_float')
@staticInterop
class OES_texture_half_float {
  external factory OES_texture_half_float();
  external static GLenum get HALF_FLOAT_OES;
}

@JS('OES_texture_half_float_linear')
@staticInterop
class OES_texture_half_float_linear {
  external factory OES_texture_half_float_linear();
}

@JS('WebGLVertexArrayObjectOES')
@staticInterop
class WebGLVertexArrayObjectOES extends WebGLObject {
  external factory WebGLVertexArrayObjectOES();
}

@JS('OES_vertex_array_object')
@staticInterop
class OES_vertex_array_object {
  external factory OES_vertex_array_object();
  external static GLenum get VERTEX_ARRAY_BINDING_OES;
}

extension OES_vertex_array_objectExtension on OES_vertex_array_object {
  external WebGLVertexArrayObjectOES? createVertexArrayOES();
  external JSUndefined deleteVertexArrayOES(
      WebGLVertexArrayObjectOES? arrayObject);
  external GLboolean isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
  external JSUndefined bindVertexArrayOES(
      WebGLVertexArrayObjectOES? arrayObject);
}

@JS('OVR_multiview2')
@staticInterop
class OVR_multiview2 {
  external factory OVR_multiview2();
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR;
  external static GLenum get MAX_VIEWS_OVR;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR;
}

extension OVR_multiview2Extension on OVR_multiview2 {
  external JSUndefined framebufferTextureMultiviewOVR(
      GLenum target,
      GLenum attachment,
      WebGLTexture? texture,
      GLint level,
      GLint baseViewIndex,
      GLsizei numViews);
}

@JS('SVGElement')
@staticInterop
class SVGElement extends Element
    implements
        GlobalEventHandlers,
        SVGElementInstance,
        HTMLOrSVGElement,
        ElementCSSInlineStyle {
  external factory SVGElement();
}

extension SVGElementExtension on SVGElement {
  external SVGAnimatedString get className;
  external SVGSVGElement? get ownerSVGElement;
  external SVGElement? get viewportElement;
}

@JS('SVGBoundingBoxOptions')
@staticInterop
class SVGBoundingBoxOptions {
  external factory SVGBoundingBoxOptions();
}

extension SVGBoundingBoxOptionsExtension on SVGBoundingBoxOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('SVGGraphicsElement')
@staticInterop
class SVGGraphicsElement extends SVGElement implements SVGTests {
  external factory SVGGraphicsElement();
}

extension SVGGraphicsElementExtension on SVGGraphicsElement {
  external SVGAnimatedTransformList get transform;
  external DOMRect getBBox();
  external DOMRect getBBox_1(SVGBoundingBoxOptions options);
  external DOMMatrix? getCTM();
  external DOMMatrix? getScreenCTM();
}

@JS('SVGGeometryElement')
@staticInterop
class SVGGeometryElement extends SVGGraphicsElement {
  external factory SVGGeometryElement();
}

extension SVGGeometryElementExtension on SVGGeometryElement {
  external SVGAnimatedNumber get pathLength;
  external JSBoolean isPointInFill();
  external JSBoolean isPointInFill_1(DOMPointInit point);
  external JSBoolean isPointInStroke();
  external JSBoolean isPointInStroke_1(DOMPointInit point);
  external JSNumber getTotalLength();
  external DOMPoint getPointAtLength(JSNumber distance);
}

@JS('SVGNumber')
@staticInterop
class SVGNumber {
  external factory SVGNumber();
}

extension SVGNumberExtension on SVGNumber {
  external JSNumber get value;
  external set value(JSNumber value);
}

@JS('SVGLength')
@staticInterop
class SVGLength {
  external factory SVGLength();
  external static JSNumber get SVG_LENGTHTYPE_UNKNOWN;
  external static JSNumber get SVG_LENGTHTYPE_NUMBER;
  external static JSNumber get SVG_LENGTHTYPE_PERCENTAGE;
  external static JSNumber get SVG_LENGTHTYPE_EMS;
  external static JSNumber get SVG_LENGTHTYPE_EXS;
  external static JSNumber get SVG_LENGTHTYPE_PX;
  external static JSNumber get SVG_LENGTHTYPE_CM;
  external static JSNumber get SVG_LENGTHTYPE_MM;
  external static JSNumber get SVG_LENGTHTYPE_IN;
  external static JSNumber get SVG_LENGTHTYPE_PT;
  external static JSNumber get SVG_LENGTHTYPE_PC;
}

extension SVGLengthExtension on SVGLength {
  external JSNumber get unitType;
  external JSNumber get value;
  external set value(JSNumber value);
  external JSNumber get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(JSNumber value);
  external JSString get valueAsString;
  external set valueAsString(JSString value);
  external JSUndefined newValueSpecifiedUnits(
      JSNumber unitType, JSNumber valueInSpecifiedUnits);
  external JSUndefined convertToSpecifiedUnits(JSNumber unitType);
}

@JS('SVGAngle')
@staticInterop
class SVGAngle {
  external factory SVGAngle();
  external static JSNumber get SVG_ANGLETYPE_UNKNOWN;
  external static JSNumber get SVG_ANGLETYPE_UNSPECIFIED;
  external static JSNumber get SVG_ANGLETYPE_DEG;
  external static JSNumber get SVG_ANGLETYPE_RAD;
  external static JSNumber get SVG_ANGLETYPE_GRAD;
}

extension SVGAngleExtension on SVGAngle {
  external JSNumber get unitType;
  external JSNumber get value;
  external set value(JSNumber value);
  external JSNumber get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(JSNumber value);
  external JSString get valueAsString;
  external set valueAsString(JSString value);
  external JSUndefined newValueSpecifiedUnits(
      JSNumber unitType, JSNumber valueInSpecifiedUnits);
  external JSUndefined convertToSpecifiedUnits(JSNumber unitType);
}

@JS('SVGNumberList')
@staticInterop
class SVGNumberList {
  external factory SVGNumberList();
}

extension SVGNumberListExtension on SVGNumberList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
  external JSUndefined clear();
  external SVGNumber initialize(SVGNumber newItem);
  external SVGNumber getItem(JSNumber index);
  external SVGNumber insertItemBefore(SVGNumber newItem, JSNumber index);
  external SVGNumber replaceItem(SVGNumber newItem, JSNumber index);
  external SVGNumber removeItem(JSNumber index);
  external SVGNumber appendItem(SVGNumber newItem);
}

@JS('SVGLengthList')
@staticInterop
class SVGLengthList {
  external factory SVGLengthList();
}

extension SVGLengthListExtension on SVGLengthList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
  external JSUndefined clear();
  external SVGLength initialize(SVGLength newItem);
  external SVGLength getItem(JSNumber index);
  external SVGLength insertItemBefore(SVGLength newItem, JSNumber index);
  external SVGLength replaceItem(SVGLength newItem, JSNumber index);
  external SVGLength removeItem(JSNumber index);
  external SVGLength appendItem(SVGLength newItem);
}

@JS('SVGStringList')
@staticInterop
class SVGStringList {
  external factory SVGStringList();
}

extension SVGStringListExtension on SVGStringList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
  external JSUndefined clear();
  external JSString initialize(JSString newItem);
  external JSString getItem(JSNumber index);
  external JSString insertItemBefore(JSString newItem, JSNumber index);
  external JSString replaceItem(JSString newItem, JSNumber index);
  external JSString removeItem(JSNumber index);
  external JSString appendItem(JSString newItem);
}

@JS('SVGAnimatedBoolean')
@staticInterop
class SVGAnimatedBoolean {
  external factory SVGAnimatedBoolean();
}

extension SVGAnimatedBooleanExtension on SVGAnimatedBoolean {
  external JSBoolean get baseVal;
  external set baseVal(JSBoolean value);
  external JSBoolean get animVal;
}

@JS('SVGAnimatedEnumeration')
@staticInterop
class SVGAnimatedEnumeration {
  external factory SVGAnimatedEnumeration();
}

extension SVGAnimatedEnumerationExtension on SVGAnimatedEnumeration {
  external JSNumber get baseVal;
  external set baseVal(JSNumber value);
  external JSNumber get animVal;
}

@JS('SVGAnimatedInteger')
@staticInterop
class SVGAnimatedInteger {
  external factory SVGAnimatedInteger();
}

extension SVGAnimatedIntegerExtension on SVGAnimatedInteger {
  external JSNumber get baseVal;
  external set baseVal(JSNumber value);
  external JSNumber get animVal;
}

@JS('SVGAnimatedNumber')
@staticInterop
class SVGAnimatedNumber {
  external factory SVGAnimatedNumber();
}

extension SVGAnimatedNumberExtension on SVGAnimatedNumber {
  external JSNumber get baseVal;
  external set baseVal(JSNumber value);
  external JSNumber get animVal;
}

@JS('SVGAnimatedLength')
@staticInterop
class SVGAnimatedLength {
  external factory SVGAnimatedLength();
}

extension SVGAnimatedLengthExtension on SVGAnimatedLength {
  external SVGLength get baseVal;
  external SVGLength get animVal;
}

@JS('SVGAnimatedAngle')
@staticInterop
class SVGAnimatedAngle {
  external factory SVGAnimatedAngle();
}

extension SVGAnimatedAngleExtension on SVGAnimatedAngle {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;
}

@JS('SVGAnimatedString')
@staticInterop
class SVGAnimatedString {
  external factory SVGAnimatedString();
}

extension SVGAnimatedStringExtension on SVGAnimatedString {
  external JSString get baseVal;
  external set baseVal(JSString value);
  external JSString get animVal;
}

@JS('SVGAnimatedRect')
@staticInterop
class SVGAnimatedRect {
  external factory SVGAnimatedRect();
}

extension SVGAnimatedRectExtension on SVGAnimatedRect {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}

@JS('SVGAnimatedNumberList')
@staticInterop
class SVGAnimatedNumberList {
  external factory SVGAnimatedNumberList();
}

extension SVGAnimatedNumberListExtension on SVGAnimatedNumberList {
  external SVGNumberList get baseVal;
  external SVGNumberList get animVal;
}

@JS('SVGAnimatedLengthList')
@staticInterop
class SVGAnimatedLengthList {
  external factory SVGAnimatedLengthList();
}

extension SVGAnimatedLengthListExtension on SVGAnimatedLengthList {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;
}

@JS('SVGUnitTypes')
@staticInterop
class SVGUnitTypes {
  external factory SVGUnitTypes();
  external static JSNumber get SVG_UNIT_TYPE_UNKNOWN;
  external static JSNumber get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static JSNumber get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
}

@JS('SVGTests')
@staticInterop
class SVGTests {
  external factory SVGTests();
}

extension SVGTestsExtension on SVGTests {
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}

@JS('SVGFitToViewBox')
@staticInterop
class SVGFitToViewBox {
  external factory SVGFitToViewBox();
}

extension SVGFitToViewBoxExtension on SVGFitToViewBox {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

@JS('SVGURIReference')
@staticInterop
class SVGURIReference {
  external factory SVGURIReference();
}

extension SVGURIReferenceExtension on SVGURIReference {
  external SVGAnimatedString get href;
}

@JS()
external Document get document;

@JS('Document')
@staticInterop
class Document extends Node
    implements
        FontFaceSource,
        GeometryUtils,
        NonElementParentNode,
        DocumentOrShadowRoot,
        ParentNode,
        XPathEvaluatorBase,
        GlobalEventHandlers {
  external factory Document();
}

extension DocumentExtension on Document {
  external SVGSVGElement? get rootElement;
  external NamedFlowMap get namedFlows;
  external ViewTransition startViewTransition();
  external ViewTransition startViewTransition_1(UpdateCallback? updateCallback);
  external Element? elementFromPoint(JSNumber x, JSNumber y);
  external JSArray elementsFromPoint(JSNumber x, JSNumber y);
  external CaretPosition? caretPositionFromPoint(JSNumber x, JSNumber y);
  external Element? get scrollingElement;
  external DOMImplementation get implementation;
  external JSString get URL;
  external JSString get documentURI;
  external JSString get compatMode;
  external JSString get characterSet;
  external JSString get charset;
  external JSString get inputEncoding;
  external JSString get contentType;
  external DocumentType? get doctype;
  external Element? get documentElement;
  external HTMLCollection getElementsByTagName(JSString qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
      JSString? namespace, JSString localName);
  external HTMLCollection getElementsByClassName(JSString classNames);
  external Element createElement(JSString localName);
  external Element createElement_1(JSString localName, JSAny options);
  external Element createElementNS(JSString? namespace, JSString qualifiedName);
  external Element createElementNS_1(
      JSString? namespace, JSString qualifiedName, JSAny options);
  external DocumentFragment createDocumentFragment();
  external Text createTextNode(JSString data);
  external CDATASection createCDATASection(JSString data);
  external Comment createComment(JSString data);
  external ProcessingInstruction createProcessingInstruction(
      JSString target, JSString data);
  external Node importNode(Node node);
  external Node importNode_1(Node node, JSBoolean deep);
  external Node adoptNode(Node node);
  external Attr createAttribute(JSString localName);
  external Attr createAttributeNS(JSString? namespace, JSString qualifiedName);
  external Event createEvent(JSString interface);
  external Range createRange();
  external NodeIterator createNodeIterator(Node root);
  external NodeIterator createNodeIterator_1(Node root, JSNumber whatToShow);
  external NodeIterator createNodeIterator_2(
      Node root, JSNumber whatToShow, NodeFilter? filter);
  external TreeWalker createTreeWalker(Node root);
  external TreeWalker createTreeWalker_1(Node root, JSNumber whatToShow);
  external TreeWalker createTreeWalker_2(
      Node root, JSNumber whatToShow, NodeFilter? filter);
  external FontMetrics measureElement(Element element);
  external FontMetrics measureText(
      JSString text, StylePropertyMapReadOnly styleMap);
  external JSBoolean get fullscreenEnabled;
  external JSBoolean get fullscreen;
  external JSPromise exitFullscreen();
  external EventHandler get onfullscreenchange;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenerror;
  external set onfullscreenerror(EventHandler value);
  external Location? get location;
  external JSString get domain;
  external set domain(JSString value);
  external JSString get referrer;
  external JSString get cookie;
  external set cookie(JSString value);
  external JSString get lastModified;
  external DocumentReadyState get readyState;
  external JSString get title;
  external set title(JSString value);
  external JSString get dir;
  external set dir(JSString value);
  external HTMLElement? get body;
  external set body(HTMLElement? value);
  external HTMLHeadElement? get head;
  external HTMLCollection get images;
  external HTMLCollection get embeds;
  external HTMLCollection get plugins;
  external HTMLCollection get links;
  external HTMLCollection get forms;
  external HTMLCollection get scripts;
  external NodeList getElementsByName(JSString elementName);
  external HTMLOrSVGScriptElement? get currentScript;
  external Document open();
  external Document open_1(JSString unused1);
  external Document open_2(JSString unused1, JSString unused2);
  @JS('open')
  external Window? open1(JSString url, JSString name, JSString features);
  external JSUndefined close();
  external JSUndefined write(JSString text);
  external JSUndefined writeln(JSString text);
  external Window? get defaultView;
  external JSBoolean hasFocus();
  external JSString get designMode;
  external set designMode(JSString value);
  external JSBoolean execCommand(JSString commandId);
  external JSBoolean execCommand_1(JSString commandId, JSBoolean showUI);
  external JSBoolean execCommand_2(
      JSString commandId, JSBoolean showUI, JSString value);
  external JSBoolean queryCommandEnabled(JSString commandId);
  external JSBoolean queryCommandIndeterm(JSString commandId);
  external JSBoolean queryCommandState(JSString commandId);
  external JSBoolean queryCommandSupported(JSString commandId);
  external JSString queryCommandValue(JSString commandId);
  external JSBoolean get hidden;
  external DocumentVisibilityState get visibilityState;
  external EventHandler get onreadystatechange;
  external set onreadystatechange(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set onvisibilitychange(EventHandler value);
  external JSString get fgColor;
  external set fgColor(JSString value);
  external JSString get linkColor;
  external set linkColor(JSString value);
  external JSString get vlinkColor;
  external set vlinkColor(JSString value);
  external JSString get alinkColor;
  external set alinkColor(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external HTMLCollection get anchors;
  external HTMLCollection get applets;
  external JSUndefined clear();
  external JSUndefined captureEvents();
  external JSUndefined releaseEvents();
  external HTMLAllCollection get all;
  external EventHandler get onfreeze;
  external set onfreeze(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external JSBoolean get wasDiscarded;
  external PermissionsPolicy get permissionsPolicy;
  external JSBoolean get pictureInPictureEnabled;
  external JSPromise exitPictureInPicture();
  external EventHandler get onpointerlockchange;
  external set onpointerlockchange(EventHandler value);
  external EventHandler get onpointerlockerror;
  external set onpointerlockerror(EventHandler value);
  external JSUndefined exitPointerLock();
  external JSBoolean get prerendering;
  external EventHandler get onprerenderingchange;
  external set onprerenderingchange(EventHandler value);
  external JSPromise requestStorageAccessForOrigin(JSString origin);
  external FragmentDirective get fragmentDirective;
  external Selection? getSelection();
  external JSPromise hasStorageAccess();
  external JSPromise requestStorageAccess();
  external DocumentTimeline get timeline;
}

@JS('SVGSVGElement')
@staticInterop
class SVGSVGElement extends SVGGraphicsElement
    implements SVGFitToViewBox, WindowEventHandlers {
  external factory SVGSVGElement();
}

extension SVGSVGElementExtension on SVGSVGElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external JSNumber get currentScale;
  external set currentScale(JSNumber value);
  external DOMPointReadOnly get currentTranslate;
  external NodeList getIntersectionList(
      DOMRectReadOnly rect, SVGElement? referenceElement);
  external NodeList getEnclosureList(
      DOMRectReadOnly rect, SVGElement? referenceElement);
  external JSBoolean checkIntersection(
      SVGElement element, DOMRectReadOnly rect);
  external JSBoolean checkEnclosure(SVGElement element, DOMRectReadOnly rect);
  external JSUndefined deselectAll();
  external SVGNumber createSVGNumber();
  external SVGLength createSVGLength();
  external SVGAngle createSVGAngle();
  external DOMPoint createSVGPoint();
  external DOMMatrix createSVGMatrix();
  external DOMRect createSVGRect();
  external SVGTransform createSVGTransform();
  external SVGTransform createSVGTransformFromMatrix();
  external SVGTransform createSVGTransformFromMatrix_1(DOMMatrix2DInit matrix);
  external Element getElementById(JSString elementId);
  external JSNumber suspendRedraw(JSNumber maxWaitMilliseconds);
  external JSUndefined unsuspendRedraw(JSNumber suspendHandleID);
  external JSUndefined unsuspendRedrawAll();
  external JSUndefined forceRedraw();
  external JSUndefined pauseAnimations();
  external JSUndefined unpauseAnimations();
  external JSBoolean animationsPaused();
  external JSNumber getCurrentTime();
  external JSUndefined setCurrentTime(JSNumber seconds);
}

@JS('SVGGElement')
@staticInterop
class SVGGElement extends SVGGraphicsElement {
  external factory SVGGElement();
}

@JS('SVGDefsElement')
@staticInterop
class SVGDefsElement extends SVGGraphicsElement {
  external factory SVGDefsElement();
}

@JS('SVGDescElement')
@staticInterop
class SVGDescElement extends SVGElement {
  external factory SVGDescElement();
}

@JS('SVGMetadataElement')
@staticInterop
class SVGMetadataElement extends SVGElement {
  external factory SVGMetadataElement();
}

@JS('SVGTitleElement')
@staticInterop
class SVGTitleElement extends SVGElement {
  external factory SVGTitleElement();
}

@JS('SVGSymbolElement')
@staticInterop
class SVGSymbolElement extends SVGGraphicsElement implements SVGFitToViewBox {
  external factory SVGSymbolElement();
}

@JS('SVGUseElement')
@staticInterop
class SVGUseElement extends SVGGraphicsElement implements SVGURIReference {
  external factory SVGUseElement();
}

extension SVGUseElementExtension on SVGUseElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGElement? get instanceRoot;
  external SVGElement? get animatedInstanceRoot;
}

@JS('SVGUseElementShadowRoot')
@staticInterop
class SVGUseElementShadowRoot extends ShadowRoot {
  external factory SVGUseElementShadowRoot();
}

@JS('SVGElementInstance')
@staticInterop
class SVGElementInstance {
  external factory SVGElementInstance();
}

extension SVGElementInstanceExtension on SVGElementInstance {
  external SVGElement? get correspondingElement;
  external SVGUseElement? get correspondingUseElement;
}

@JS('ShadowAnimation')
@staticInterop
class ShadowAnimation extends Animation {
  external factory ShadowAnimation();
  external factory ShadowAnimation.a1(Animation source, JSAny newTarget);
}

extension ShadowAnimationExtension on ShadowAnimation {
  external Animation get sourceAnimation;
}

@JS('SVGSwitchElement')
@staticInterop
class SVGSwitchElement extends SVGGraphicsElement {
  external factory SVGSwitchElement();
}

@JS('GetSVGDocument')
@staticInterop
class GetSVGDocument {
  external factory GetSVGDocument();
}

extension GetSVGDocumentExtension on GetSVGDocument {
  external Document getSVGDocument();
}

@JS('SVGStyleElement')
@staticInterop
class SVGStyleElement extends SVGElement implements LinkStyle {
  external factory SVGStyleElement();
}

extension SVGStyleElementExtension on SVGStyleElement {
  external JSString get type;
  external set type(JSString value);
  external JSString get media;
  external set media(JSString value);
  external JSString get title;
  external set title(JSString value);
}

@JS('SVGTransform')
@staticInterop
class SVGTransform {
  external factory SVGTransform();
  external static JSNumber get SVG_TRANSFORM_UNKNOWN;
  external static JSNumber get SVG_TRANSFORM_MATRIX;
  external static JSNumber get SVG_TRANSFORM_TRANSLATE;
  external static JSNumber get SVG_TRANSFORM_SCALE;
  external static JSNumber get SVG_TRANSFORM_ROTATE;
  external static JSNumber get SVG_TRANSFORM_SKEWX;
  external static JSNumber get SVG_TRANSFORM_SKEWY;
}

extension SVGTransformExtension on SVGTransform {
  external JSNumber get type;
  external DOMMatrix get matrix;
  external JSNumber get angle;
  external JSUndefined setMatrix();
  external JSUndefined setMatrix_1(DOMMatrix2DInit matrix);
  external JSUndefined setTranslate(JSNumber tx, JSNumber ty);
  external JSUndefined setScale(JSNumber sx, JSNumber sy);
  external JSUndefined setRotate(JSNumber angle, JSNumber cx, JSNumber cy);
  external JSUndefined setSkewX(JSNumber angle);
  external JSUndefined setSkewY(JSNumber angle);
}

@JS('SVGTransformList')
@staticInterop
class SVGTransformList {
  external factory SVGTransformList();
}

extension SVGTransformListExtension on SVGTransformList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
  external JSUndefined clear();
  external SVGTransform initialize(SVGTransform newItem);
  external SVGTransform getItem(JSNumber index);
  external SVGTransform insertItemBefore(SVGTransform newItem, JSNumber index);
  external SVGTransform replaceItem(SVGTransform newItem, JSNumber index);
  external SVGTransform removeItem(JSNumber index);
  external SVGTransform appendItem(SVGTransform newItem);
  external SVGTransform createSVGTransformFromMatrix();
  external SVGTransform createSVGTransformFromMatrix_1(DOMMatrix2DInit matrix);
  external SVGTransform? consolidate();
}

@JS('SVGAnimatedTransformList')
@staticInterop
class SVGAnimatedTransformList {
  external factory SVGAnimatedTransformList();
}

extension SVGAnimatedTransformListExtension on SVGAnimatedTransformList {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;
}

@JS('SVGPreserveAspectRatio')
@staticInterop
class SVGPreserveAspectRatio {
  external factory SVGPreserveAspectRatio();
  external static JSNumber get SVG_PRESERVEASPECTRATIO_UNKNOWN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_NONE;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMINYMIN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMIDYMIN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMAXYMIN;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMINYMID;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMIDYMID;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMAXYMID;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMINYMAX;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMIDYMAX;
  external static JSNumber get SVG_PRESERVEASPECTRATIO_XMAXYMAX;
  external static JSNumber get SVG_MEETORSLICE_UNKNOWN;
  external static JSNumber get SVG_MEETORSLICE_MEET;
  external static JSNumber get SVG_MEETORSLICE_SLICE;
}

extension SVGPreserveAspectRatioExtension on SVGPreserveAspectRatio {
  external JSNumber get align;
  external set align(JSNumber value);
  external JSNumber get meetOrSlice;
  external set meetOrSlice(JSNumber value);
}

@JS('SVGAnimatedPreserveAspectRatio')
@staticInterop
class SVGAnimatedPreserveAspectRatio {
  external factory SVGAnimatedPreserveAspectRatio();
}

extension SVGAnimatedPreserveAspectRatioExtension
    on SVGAnimatedPreserveAspectRatio {
  external SVGPreserveAspectRatio get baseVal;
  external SVGPreserveAspectRatio get animVal;
}

@JS('SVGPathElement')
@staticInterop
class SVGPathElement extends SVGGeometryElement {
  external factory SVGPathElement();
}

@JS('SVGRectElement')
@staticInterop
class SVGRectElement extends SVGGeometryElement {
  external factory SVGRectElement();
}

extension SVGRectElementExtension on SVGRectElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}

@JS('SVGCircleElement')
@staticInterop
class SVGCircleElement extends SVGGeometryElement {
  external factory SVGCircleElement();
}

extension SVGCircleElementExtension on SVGCircleElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
}

@JS('SVGEllipseElement')
@staticInterop
class SVGEllipseElement extends SVGGeometryElement {
  external factory SVGEllipseElement();
}

extension SVGEllipseElementExtension on SVGEllipseElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get rx;
  external SVGAnimatedLength get ry;
}

@JS('SVGLineElement')
@staticInterop
class SVGLineElement extends SVGGeometryElement {
  external factory SVGLineElement();
}

extension SVGLineElementExtension on SVGLineElement {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}

@JS('SVGAnimatedPoints')
@staticInterop
class SVGAnimatedPoints {
  external factory SVGAnimatedPoints();
}

extension SVGAnimatedPointsExtension on SVGAnimatedPoints {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
}

@JS('SVGPointList')
@staticInterop
class SVGPointList {
  external factory SVGPointList();
}

extension SVGPointListExtension on SVGPointList {
  external JSNumber get length;
  external JSNumber get numberOfItems;
  external JSUndefined clear();
  external DOMPoint initialize(DOMPoint newItem);
  external DOMPoint getItem(JSNumber index);
  external DOMPoint insertItemBefore(DOMPoint newItem, JSNumber index);
  external DOMPoint replaceItem(DOMPoint newItem, JSNumber index);
  external DOMPoint removeItem(JSNumber index);
  external DOMPoint appendItem(DOMPoint newItem);
}

@JS('SVGPolylineElement')
@staticInterop
class SVGPolylineElement extends SVGGeometryElement
    implements SVGAnimatedPoints {
  external factory SVGPolylineElement();
}

@JS('SVGPolygonElement')
@staticInterop
class SVGPolygonElement extends SVGGeometryElement
    implements SVGAnimatedPoints {
  external factory SVGPolygonElement();
}

@JS('SVGTextContentElement')
@staticInterop
class SVGTextContentElement extends SVGGraphicsElement {
  external factory SVGTextContentElement();
  external static JSNumber get LENGTHADJUST_UNKNOWN;
  external static JSNumber get LENGTHADJUST_SPACING;
  external static JSNumber get LENGTHADJUST_SPACINGANDGLYPHS;
}

extension SVGTextContentElementExtension on SVGTextContentElement {
  external SVGAnimatedLength get textLength;
  external SVGAnimatedEnumeration get lengthAdjust;
  external JSNumber getNumberOfChars();
  external JSNumber getComputedTextLength();
  external JSNumber getSubStringLength(JSNumber charnum, JSNumber nchars);
  external DOMPoint getStartPositionOfChar(JSNumber charnum);
  external DOMPoint getEndPositionOfChar(JSNumber charnum);
  external DOMRect getExtentOfChar(JSNumber charnum);
  external JSNumber getRotationOfChar(JSNumber charnum);
  external JSNumber getCharNumAtPosition();
  external JSNumber getCharNumAtPosition_1(DOMPointInit point);
  external JSUndefined selectSubString(JSNumber charnum, JSNumber nchars);
}

@JS('SVGTextPositioningElement')
@staticInterop
class SVGTextPositioningElement extends SVGTextContentElement {
  external factory SVGTextPositioningElement();
}

extension SVGTextPositioningElementExtension on SVGTextPositioningElement {
  external SVGAnimatedLengthList get x;
  external SVGAnimatedLengthList get y;
  external SVGAnimatedLengthList get dx;
  external SVGAnimatedLengthList get dy;
  external SVGAnimatedNumberList get rotate;
}

@JS('SVGTextElement')
@staticInterop
class SVGTextElement extends SVGTextPositioningElement {
  external factory SVGTextElement();
}

@JS('SVGTSpanElement')
@staticInterop
class SVGTSpanElement extends SVGTextPositioningElement {
  external factory SVGTSpanElement();
}

@JS('SVGTextPathElement')
@staticInterop
class SVGTextPathElement extends SVGTextContentElement
    implements SVGURIReference {
  external factory SVGTextPathElement();
  external static JSNumber get TEXTPATH_METHODTYPE_UNKNOWN;
  external static JSNumber get TEXTPATH_METHODTYPE_ALIGN;
  external static JSNumber get TEXTPATH_METHODTYPE_STRETCH;
  external static JSNumber get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external static JSNumber get TEXTPATH_SPACINGTYPE_AUTO;
  external static JSNumber get TEXTPATH_SPACINGTYPE_EXACT;
}

extension SVGTextPathElementExtension on SVGTextPathElement {
  external SVGAnimatedLength get startOffset;
  external SVGAnimatedEnumeration get method;
  external SVGAnimatedEnumeration get spacing;
}

@JS('SVGImageElement')
@staticInterop
class SVGImageElement extends SVGGraphicsElement implements SVGURIReference {
  external factory SVGImageElement();
}

extension SVGImageElementExtension on SVGImageElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
}

@JS('SVGForeignObjectElement')
@staticInterop
class SVGForeignObjectElement extends SVGGraphicsElement {
  external factory SVGForeignObjectElement();
}

extension SVGForeignObjectElementExtension on SVGForeignObjectElement {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGMarkerElement')
@staticInterop
class SVGMarkerElement extends SVGElement implements SVGFitToViewBox {
  external factory SVGMarkerElement();
  external static JSNumber get SVG_MARKERUNITS_UNKNOWN;
  external static JSNumber get SVG_MARKERUNITS_USERSPACEONUSE;
  external static JSNumber get SVG_MARKERUNITS_STROKEWIDTH;
  external static JSNumber get SVG_MARKER_ORIENT_UNKNOWN;
  external static JSNumber get SVG_MARKER_ORIENT_AUTO;
  external static JSNumber get SVG_MARKER_ORIENT_ANGLE;
}

extension SVGMarkerElementExtension on SVGMarkerElement {
  external SVGAnimatedLength get refX;
  external SVGAnimatedLength get refY;
  external SVGAnimatedEnumeration get markerUnits;
  external SVGAnimatedLength get markerWidth;
  external SVGAnimatedLength get markerHeight;
  external SVGAnimatedEnumeration get orientType;
  external SVGAnimatedAngle get orientAngle;
  external JSString get orient;
  external set orient(JSString value);
  external JSUndefined setOrientToAuto();
  external JSUndefined setOrientToAngle(SVGAngle angle);
}

@JS('SVGGradientElement')
@staticInterop
class SVGGradientElement extends SVGElement implements SVGURIReference {
  external factory SVGGradientElement();
  external static JSNumber get SVG_SPREADMETHOD_UNKNOWN;
  external static JSNumber get SVG_SPREADMETHOD_PAD;
  external static JSNumber get SVG_SPREADMETHOD_REFLECT;
  external static JSNumber get SVG_SPREADMETHOD_REPEAT;
}

extension SVGGradientElementExtension on SVGGradientElement {
  external SVGAnimatedEnumeration get gradientUnits;
  external SVGAnimatedTransformList get gradientTransform;
  external SVGAnimatedEnumeration get spreadMethod;
}

@JS('SVGLinearGradientElement')
@staticInterop
class SVGLinearGradientElement extends SVGGradientElement {
  external factory SVGLinearGradientElement();
}

extension SVGLinearGradientElementExtension on SVGLinearGradientElement {
  external SVGAnimatedLength get x1;
  external SVGAnimatedLength get y1;
  external SVGAnimatedLength get x2;
  external SVGAnimatedLength get y2;
}

@JS('SVGRadialGradientElement')
@staticInterop
class SVGRadialGradientElement extends SVGGradientElement {
  external factory SVGRadialGradientElement();
}

extension SVGRadialGradientElementExtension on SVGRadialGradientElement {
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;
  external SVGAnimatedLength get r;
  external SVGAnimatedLength get fx;
  external SVGAnimatedLength get fy;
  external SVGAnimatedLength get fr;
}

@JS('SVGStopElement')
@staticInterop
class SVGStopElement extends SVGElement {
  external factory SVGStopElement();
}

extension SVGStopElementExtension on SVGStopElement {
  external SVGAnimatedNumber get offset;
}

@JS('SVGPatternElement')
@staticInterop
class SVGPatternElement extends SVGElement
    implements SVGFitToViewBox, SVGURIReference {
  external factory SVGPatternElement();
}

extension SVGPatternElementExtension on SVGPatternElement {
  external SVGAnimatedEnumeration get patternUnits;
  external SVGAnimatedEnumeration get patternContentUnits;
  external SVGAnimatedTransformList get patternTransform;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGScriptElement')
@staticInterop
class SVGScriptElement extends SVGElement implements SVGURIReference {
  external factory SVGScriptElement();
}

extension SVGScriptElementExtension on SVGScriptElement {
  external JSString get type;
  external set type(JSString value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
}

@JS('SVGAElement')
@staticInterop
class SVGAElement extends SVGGraphicsElement implements SVGURIReference {
  external factory SVGAElement();
}

extension SVGAElementExtension on SVGAElement {
  external SVGAnimatedString get target;
  external JSString get download;
  external set download(JSString value);
  external JSString get ping;
  external set ping(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external JSString get hreflang;
  external set hreflang(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get text;
  external set text(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get username;
  external set username(JSString value);
  external JSString get password;
  external set password(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external JSString get hash;
  external set hash(JSString value);
}

@JS('SVGViewElement')
@staticInterop
class SVGViewElement extends SVGElement implements SVGFitToViewBox {
  external factory SVGViewElement();
}

@JS('WEBGL_blend_equation_advanced_coherent')
@staticInterop
class WEBGL_blend_equation_advanced_coherent {
  external factory WEBGL_blend_equation_advanced_coherent();
  external static GLenum get MULTIPLY;
  external static GLenum get SCREEN;
  external static GLenum get OVERLAY;
  external static GLenum get DARKEN;
  external static GLenum get LIGHTEN;
  external static GLenum get COLORDODGE;
  external static GLenum get COLORBURN;
  external static GLenum get HARDLIGHT;
  external static GLenum get SOFTLIGHT;
  external static GLenum get DIFFERENCE;
  external static GLenum get EXCLUSION;
  external static GLenum get HSL_HUE;
  external static GLenum get HSL_SATURATION;
  external static GLenum get HSL_COLOR;
  external static GLenum get HSL_LUMINOSITY;
}

@JS('WEBGL_clip_cull_distance')
@staticInterop
class WEBGL_clip_cull_distance {
  external factory WEBGL_clip_cull_distance();
  external static GLenum get MAX_CLIP_DISTANCES_WEBGL;
  external static GLenum get MAX_CULL_DISTANCES_WEBGL;
  external static GLenum get MAX_COMBINED_CLIP_AND_CULL_DISTANCES_WEBGL;
  external static GLenum get CLIP_DISTANCE0_WEBGL;
  external static GLenum get CLIP_DISTANCE1_WEBGL;
  external static GLenum get CLIP_DISTANCE2_WEBGL;
  external static GLenum get CLIP_DISTANCE3_WEBGL;
  external static GLenum get CLIP_DISTANCE4_WEBGL;
  external static GLenum get CLIP_DISTANCE5_WEBGL;
  external static GLenum get CLIP_DISTANCE6_WEBGL;
  external static GLenum get CLIP_DISTANCE7_WEBGL;
}

@JS('WEBGL_color_buffer_float')
@staticInterop
class WEBGL_color_buffer_float {
  external factory WEBGL_color_buffer_float();
  external static GLenum get RGBA32F_EXT;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT;
  external static GLenum get UNSIGNED_NORMALIZED_EXT;
}

@JS('WEBGL_compressed_texture_astc')
@staticInterop
class WEBGL_compressed_texture_astc {
  external factory WEBGL_compressed_texture_astc();
  external static GLenum get COMPRESSED_RGBA_ASTC_4x4_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_5x4_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_5x5_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_6x5_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_6x6_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_8x5_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_8x6_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_8x8_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_10x5_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_10x6_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_10x8_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_10x10_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_12x10_KHR;
  external static GLenum get COMPRESSED_RGBA_ASTC_12x12_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR;
}

extension WEBGL_compressed_texture_astcExtension
    on WEBGL_compressed_texture_astc {
  external JSArray getSupportedProfiles();
}

@JS('WEBGL_compressed_texture_etc')
@staticInterop
class WEBGL_compressed_texture_etc {
  external factory WEBGL_compressed_texture_etc();
  external static GLenum get COMPRESSED_R11_EAC;
  external static GLenum get COMPRESSED_SIGNED_R11_EAC;
  external static GLenum get COMPRESSED_RG11_EAC;
  external static GLenum get COMPRESSED_SIGNED_RG11_EAC;
  external static GLenum get COMPRESSED_RGB8_ETC2;
  external static GLenum get COMPRESSED_SRGB8_ETC2;
  external static GLenum get COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
  external static GLenum get COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
  external static GLenum get COMPRESSED_RGBA8_ETC2_EAC;
  external static GLenum get COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
}

@JS('WEBGL_compressed_texture_etc1')
@staticInterop
class WEBGL_compressed_texture_etc1 {
  external factory WEBGL_compressed_texture_etc1();
  external static GLenum get COMPRESSED_RGB_ETC1_WEBGL;
}

@JS('WEBGL_compressed_texture_pvrtc')
@staticInterop
class WEBGL_compressed_texture_pvrtc {
  external factory WEBGL_compressed_texture_pvrtc();
  external static GLenum get COMPRESSED_RGB_PVRTC_4BPPV1_IMG;
  external static GLenum get COMPRESSED_RGB_PVRTC_2BPPV1_IMG;
  external static GLenum get COMPRESSED_RGBA_PVRTC_4BPPV1_IMG;
  external static GLenum get COMPRESSED_RGBA_PVRTC_2BPPV1_IMG;
}

@JS('WEBGL_compressed_texture_s3tc')
@staticInterop
class WEBGL_compressed_texture_s3tc {
  external factory WEBGL_compressed_texture_s3tc();
  external static GLenum get COMPRESSED_RGB_S3TC_DXT1_EXT;
  external static GLenum get COMPRESSED_RGBA_S3TC_DXT1_EXT;
  external static GLenum get COMPRESSED_RGBA_S3TC_DXT3_EXT;
  external static GLenum get COMPRESSED_RGBA_S3TC_DXT5_EXT;
}

@JS('WEBGL_compressed_texture_s3tc_srgb')
@staticInterop
class WEBGL_compressed_texture_s3tc_srgb {
  external factory WEBGL_compressed_texture_s3tc_srgb();
  external static GLenum get COMPRESSED_SRGB_S3TC_DXT1_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT;
  external static GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT;
}

@JS('WEBGL_debug_renderer_info')
@staticInterop
class WEBGL_debug_renderer_info {
  external factory WEBGL_debug_renderer_info();
  external static GLenum get UNMASKED_VENDOR_WEBGL;
  external static GLenum get UNMASKED_RENDERER_WEBGL;
}

@JS('WEBGL_debug_shaders')
@staticInterop
class WEBGL_debug_shaders {
  external factory WEBGL_debug_shaders();
}

extension WEBGL_debug_shadersExtension on WEBGL_debug_shaders {
  external JSString getTranslatedShaderSource(WebGLShader shader);
}

@JS('WEBGL_depth_texture')
@staticInterop
class WEBGL_depth_texture {
  external factory WEBGL_depth_texture();
  external static GLenum get UNSIGNED_INT_24_8_WEBGL;
}

@JS('WEBGL_draw_buffers')
@staticInterop
class WEBGL_draw_buffers {
  external factory WEBGL_draw_buffers();
  external static GLenum get COLOR_ATTACHMENT0_WEBGL;
  external static GLenum get COLOR_ATTACHMENT1_WEBGL;
  external static GLenum get COLOR_ATTACHMENT2_WEBGL;
  external static GLenum get COLOR_ATTACHMENT3_WEBGL;
  external static GLenum get COLOR_ATTACHMENT4_WEBGL;
  external static GLenum get COLOR_ATTACHMENT5_WEBGL;
  external static GLenum get COLOR_ATTACHMENT6_WEBGL;
  external static GLenum get COLOR_ATTACHMENT7_WEBGL;
  external static GLenum get COLOR_ATTACHMENT8_WEBGL;
  external static GLenum get COLOR_ATTACHMENT9_WEBGL;
  external static GLenum get COLOR_ATTACHMENT10_WEBGL;
  external static GLenum get COLOR_ATTACHMENT11_WEBGL;
  external static GLenum get COLOR_ATTACHMENT12_WEBGL;
  external static GLenum get COLOR_ATTACHMENT13_WEBGL;
  external static GLenum get COLOR_ATTACHMENT14_WEBGL;
  external static GLenum get COLOR_ATTACHMENT15_WEBGL;
  external static GLenum get DRAW_BUFFER0_WEBGL;
  external static GLenum get DRAW_BUFFER1_WEBGL;
  external static GLenum get DRAW_BUFFER2_WEBGL;
  external static GLenum get DRAW_BUFFER3_WEBGL;
  external static GLenum get DRAW_BUFFER4_WEBGL;
  external static GLenum get DRAW_BUFFER5_WEBGL;
  external static GLenum get DRAW_BUFFER6_WEBGL;
  external static GLenum get DRAW_BUFFER7_WEBGL;
  external static GLenum get DRAW_BUFFER8_WEBGL;
  external static GLenum get DRAW_BUFFER9_WEBGL;
  external static GLenum get DRAW_BUFFER10_WEBGL;
  external static GLenum get DRAW_BUFFER11_WEBGL;
  external static GLenum get DRAW_BUFFER12_WEBGL;
  external static GLenum get DRAW_BUFFER13_WEBGL;
  external static GLenum get DRAW_BUFFER14_WEBGL;
  external static GLenum get DRAW_BUFFER15_WEBGL;
  external static GLenum get MAX_COLOR_ATTACHMENTS_WEBGL;
  external static GLenum get MAX_DRAW_BUFFERS_WEBGL;
}

extension WEBGL_draw_buffersExtension on WEBGL_draw_buffers {
  external JSUndefined drawBuffersWEBGL(JSArray buffers);
}

@JS('WEBGL_draw_instanced_base_vertex_base_instance')
@staticInterop
class WEBGL_draw_instanced_base_vertex_base_instance {
  external factory WEBGL_draw_instanced_base_vertex_base_instance();
}

extension WEBGL_draw_instanced_base_vertex_base_instanceExtension
    on WEBGL_draw_instanced_base_vertex_base_instance {
  external JSUndefined drawArraysInstancedBaseInstanceWEBGL(GLenum mode,
      GLint first, GLsizei count, GLsizei instanceCount, GLuint baseInstance);
  external JSUndefined drawElementsInstancedBaseVertexBaseInstanceWEBGL(
      GLenum mode,
      GLsizei count,
      GLenum type,
      GLintptr offset,
      GLsizei instanceCount,
      GLint baseVertex,
      GLuint baseInstance);
}

@JS('WEBGL_lose_context')
@staticInterop
class WEBGL_lose_context {
  external factory WEBGL_lose_context();
}

extension WEBGL_lose_contextExtension on WEBGL_lose_context {
  external JSUndefined loseContext();
  external JSUndefined restoreContext();
}

@JS('WEBGL_multi_draw')
@staticInterop
class WEBGL_multi_draw {
  external factory WEBGL_multi_draw();
}

extension WEBGL_multi_drawExtension on WEBGL_multi_draw {
  external JSUndefined multiDrawArraysWEBGL(
      GLenum mode,
      JSAny firstsList,
      GLuint firstsOffset,
      JSAny countsList,
      GLuint countsOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawElementsWEBGL(
      GLenum mode,
      JSAny countsList,
      GLuint countsOffset,
      GLenum type,
      JSAny offsetsList,
      GLuint offsetsOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawArraysInstancedWEBGL(
      GLenum mode,
      JSAny firstsList,
      GLuint firstsOffset,
      JSAny countsList,
      GLuint countsOffset,
      JSAny instanceCountsList,
      GLuint instanceCountsOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawElementsInstancedWEBGL(
      GLenum mode,
      JSAny countsList,
      GLuint countsOffset,
      GLenum type,
      JSAny offsetsList,
      GLuint offsetsOffset,
      JSAny instanceCountsList,
      GLuint instanceCountsOffset,
      GLsizei drawcount);
}

@JS('WEBGL_multi_draw_instanced_base_vertex_base_instance')
@staticInterop
class WEBGL_multi_draw_instanced_base_vertex_base_instance {
  external factory WEBGL_multi_draw_instanced_base_vertex_base_instance();
}

extension WEBGL_multi_draw_instanced_base_vertex_base_instanceExtension
    on WEBGL_multi_draw_instanced_base_vertex_base_instance {
  external JSUndefined multiDrawArraysInstancedBaseInstanceWEBGL(
      GLenum mode,
      JSAny firstsList,
      GLuint firstsOffset,
      JSAny countsList,
      GLuint countsOffset,
      JSAny instanceCountsList,
      GLuint instanceCountsOffset,
      JSAny baseInstancesList,
      GLuint baseInstancesOffset,
      GLsizei drawcount);
  external JSUndefined multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(
      GLenum mode,
      JSAny countsList,
      GLuint countsOffset,
      GLenum type,
      JSAny offsetsList,
      GLuint offsetsOffset,
      JSAny instanceCountsList,
      GLuint instanceCountsOffset,
      JSAny baseVerticesList,
      GLuint baseVerticesOffset,
      JSAny baseInstancesList,
      GLuint baseInstancesOffset,
      GLsizei drawcount);
}

@JS('WEBGL_provoking_vertex')
@staticInterop
class WEBGL_provoking_vertex {
  external factory WEBGL_provoking_vertex();
  external static GLenum get FIRST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get LAST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get PROVOKING_VERTEX_WEBGL;
}

extension WEBGL_provoking_vertexExtension on WEBGL_provoking_vertex {
  external JSUndefined provokingVertexWEBGL(GLenum provokeMode);
}

@JS('Crypto')
@staticInterop
class Crypto {
  external factory Crypto();
}

extension CryptoExtension on Crypto {
  external SubtleCrypto get subtle;
  external ArrayBufferView getRandomValues(ArrayBufferView array);
  external JSString randomUUID();
}

@JS('Algorithm')
@staticInterop
class Algorithm {
  external factory Algorithm();
}

extension AlgorithmExtension on Algorithm {
  // TODO
}

@JS('KeyAlgorithm')
@staticInterop
class KeyAlgorithm {
  external factory KeyAlgorithm();
}

extension KeyAlgorithmExtension on KeyAlgorithm {
  // TODO
}

@JS('CryptoKey')
@staticInterop
class CryptoKey {
  external factory CryptoKey();
}

extension CryptoKeyExtension on CryptoKey {
  external KeyType get type;
  external JSBoolean get extractable;
  external JSObject get algorithm;
  external JSObject get usages;
}

@JS('SubtleCrypto')
@staticInterop
class SubtleCrypto {
  external factory SubtleCrypto();
}

extension SubtleCryptoExtension on SubtleCrypto {
  external JSPromise encrypt(
      AlgorithmIdentifier algorithm, CryptoKey key, BufferSource data);
  external JSPromise decrypt(
      AlgorithmIdentifier algorithm, CryptoKey key, BufferSource data);
  external JSPromise sign(
      AlgorithmIdentifier algorithm, CryptoKey key, BufferSource data);
  external JSPromise verify(AlgorithmIdentifier algorithm, CryptoKey key,
      BufferSource signature, BufferSource data);
  external JSPromise digest(AlgorithmIdentifier algorithm, BufferSource data);
  external JSPromise generateKey(
      AlgorithmIdentifier algorithm, JSBoolean extractable, JSArray keyUsages);
  external JSPromise deriveKey(
      AlgorithmIdentifier algorithm,
      CryptoKey baseKey,
      AlgorithmIdentifier derivedKeyType,
      JSBoolean extractable,
      JSArray keyUsages);
  external JSPromise deriveBits(
      AlgorithmIdentifier algorithm, CryptoKey baseKey, JSNumber length);
  external JSPromise importKey(KeyFormat format, JSAny keyData,
      AlgorithmIdentifier algorithm, JSBoolean extractable, JSArray keyUsages);
  external JSPromise exportKey(KeyFormat format, CryptoKey key);
  external JSPromise wrapKey(KeyFormat format, CryptoKey key,
      CryptoKey wrappingKey, AlgorithmIdentifier wrapAlgorithm);
  external JSPromise unwrapKey(
      KeyFormat format,
      BufferSource wrappedKey,
      CryptoKey unwrappingKey,
      AlgorithmIdentifier unwrapAlgorithm,
      AlgorithmIdentifier unwrappedKeyAlgorithm,
      JSBoolean extractable,
      JSArray keyUsages);
}

@JS('RsaOtherPrimesInfo')
@staticInterop
class RsaOtherPrimesInfo {
  external factory RsaOtherPrimesInfo();
}

extension RsaOtherPrimesInfoExtension on RsaOtherPrimesInfo {
  // TODO
  // TODO
  // TODO
}

@JS('JsonWebKey')
@staticInterop
class JsonWebKey {
  external factory JsonWebKey();
}

extension JsonWebKeyExtension on JsonWebKey {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CryptoKeyPair')
@staticInterop
class CryptoKeyPair {
  external factory CryptoKeyPair();
}

extension CryptoKeyPairExtension on CryptoKeyPair {
  // TODO
  // TODO
}

@JS('RsaKeyGenParams')
@staticInterop
class RsaKeyGenParams extends Algorithm {
  external factory RsaKeyGenParams();
}

extension RsaKeyGenParamsExtension on RsaKeyGenParams {
  // TODO
  // TODO
}

@JS('RsaHashedKeyGenParams')
@staticInterop
class RsaHashedKeyGenParams extends RsaKeyGenParams {
  external factory RsaHashedKeyGenParams();
}

extension RsaHashedKeyGenParamsExtension on RsaHashedKeyGenParams {
  // TODO
}

@JS('RsaKeyAlgorithm')
@staticInterop
class RsaKeyAlgorithm extends KeyAlgorithm {
  external factory RsaKeyAlgorithm();
}

extension RsaKeyAlgorithmExtension on RsaKeyAlgorithm {
  // TODO
  // TODO
}

@JS('RsaHashedKeyAlgorithm')
@staticInterop
class RsaHashedKeyAlgorithm extends RsaKeyAlgorithm {
  external factory RsaHashedKeyAlgorithm();
}

extension RsaHashedKeyAlgorithmExtension on RsaHashedKeyAlgorithm {
  // TODO
}

@JS('RsaHashedImportParams')
@staticInterop
class RsaHashedImportParams extends Algorithm {
  external factory RsaHashedImportParams();
}

extension RsaHashedImportParamsExtension on RsaHashedImportParams {
  // TODO
}

@JS('RsaPssParams')
@staticInterop
class RsaPssParams extends Algorithm {
  external factory RsaPssParams();
}

extension RsaPssParamsExtension on RsaPssParams {
  // TODO
}

@JS('RsaOaepParams')
@staticInterop
class RsaOaepParams extends Algorithm {
  external factory RsaOaepParams();
}

extension RsaOaepParamsExtension on RsaOaepParams {
  // TODO
}

@JS('EcdsaParams')
@staticInterop
class EcdsaParams extends Algorithm {
  external factory EcdsaParams();
}

extension EcdsaParamsExtension on EcdsaParams {
  // TODO
}

@JS('EcKeyGenParams')
@staticInterop
class EcKeyGenParams extends Algorithm {
  external factory EcKeyGenParams();
}

extension EcKeyGenParamsExtension on EcKeyGenParams {
  // TODO
}

@JS('EcKeyAlgorithm')
@staticInterop
class EcKeyAlgorithm extends KeyAlgorithm {
  external factory EcKeyAlgorithm();
}

extension EcKeyAlgorithmExtension on EcKeyAlgorithm {
  // TODO
}

@JS('EcKeyImportParams')
@staticInterop
class EcKeyImportParams extends Algorithm {
  external factory EcKeyImportParams();
}

extension EcKeyImportParamsExtension on EcKeyImportParams {
  // TODO
}

@JS('EcdhKeyDeriveParams')
@staticInterop
class EcdhKeyDeriveParams extends Algorithm {
  external factory EcdhKeyDeriveParams();
}

extension EcdhKeyDeriveParamsExtension on EcdhKeyDeriveParams {
  // TODO
}

@JS('AesCtrParams')
@staticInterop
class AesCtrParams extends Algorithm {
  external factory AesCtrParams();
}

extension AesCtrParamsExtension on AesCtrParams {
  // TODO
  // TODO
}

@JS('AesKeyAlgorithm')
@staticInterop
class AesKeyAlgorithm extends KeyAlgorithm {
  external factory AesKeyAlgorithm();
}

extension AesKeyAlgorithmExtension on AesKeyAlgorithm {
  // TODO
}

@JS('AesKeyGenParams')
@staticInterop
class AesKeyGenParams extends Algorithm {
  external factory AesKeyGenParams();
}

extension AesKeyGenParamsExtension on AesKeyGenParams {
  // TODO
}

@JS('AesDerivedKeyParams')
@staticInterop
class AesDerivedKeyParams extends Algorithm {
  external factory AesDerivedKeyParams();
}

extension AesDerivedKeyParamsExtension on AesDerivedKeyParams {
  // TODO
}

@JS('AesCbcParams')
@staticInterop
class AesCbcParams extends Algorithm {
  external factory AesCbcParams();
}

extension AesCbcParamsExtension on AesCbcParams {
  // TODO
}

@JS('AesGcmParams')
@staticInterop
class AesGcmParams extends Algorithm {
  external factory AesGcmParams();
}

extension AesGcmParamsExtension on AesGcmParams {
  // TODO
  // TODO
  // TODO
}

@JS('HmacImportParams')
@staticInterop
class HmacImportParams extends Algorithm {
  external factory HmacImportParams();
}

extension HmacImportParamsExtension on HmacImportParams {
  // TODO
  // TODO
}

@JS('HmacKeyAlgorithm')
@staticInterop
class HmacKeyAlgorithm extends KeyAlgorithm {
  external factory HmacKeyAlgorithm();
}

extension HmacKeyAlgorithmExtension on HmacKeyAlgorithm {
  // TODO
  // TODO
}

@JS('HmacKeyGenParams')
@staticInterop
class HmacKeyGenParams extends Algorithm {
  external factory HmacKeyGenParams();
}

extension HmacKeyGenParamsExtension on HmacKeyGenParams {
  // TODO
  // TODO
}

@JS('HkdfParams')
@staticInterop
class HkdfParams extends Algorithm {
  external factory HkdfParams();
}

extension HkdfParamsExtension on HkdfParams {
  // TODO
  // TODO
  // TODO
}

@JS('Pbkdf2Params')
@staticInterop
class Pbkdf2Params extends Algorithm {
  external factory Pbkdf2Params();
}

extension Pbkdf2ParamsExtension on Pbkdf2Params {
  // TODO
  // TODO
  // TODO
}

@JS('Accelerometer')
@staticInterop
class Accelerometer extends Sensor {
  external factory Accelerometer();
  external factory Accelerometer.a1();
  external factory Accelerometer.a1_1(AccelerometerSensorOptions options);
}

extension AccelerometerExtension on Accelerometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('AccelerometerSensorOptions')
@staticInterop
class AccelerometerSensorOptions extends SensorOptions {
  external factory AccelerometerSensorOptions();
}

extension AccelerometerSensorOptionsExtension on AccelerometerSensorOptions {
  // TODO
}

@JS('LinearAccelerationSensor')
@staticInterop
class LinearAccelerationSensor extends Accelerometer {
  external factory LinearAccelerationSensor();
  external factory LinearAccelerationSensor.a1();
  external factory LinearAccelerationSensor.a1_1(
      AccelerometerSensorOptions options);
}

@JS('GravitySensor')
@staticInterop
class GravitySensor extends Accelerometer {
  external factory GravitySensor();
  external factory GravitySensor.a1();
  external factory GravitySensor.a1_1(AccelerometerSensorOptions options);
}

@JS('AccelerometerReadingValues')
@staticInterop
class AccelerometerReadingValues {
  external factory AccelerometerReadingValues();
}

extension AccelerometerReadingValuesExtension on AccelerometerReadingValues {
  // TODO
  // TODO
  // TODO
}

@JS('LinearAccelerationReadingValues')
@staticInterop
class LinearAccelerationReadingValues extends AccelerometerReadingValues {
  external factory LinearAccelerationReadingValues();
}

@JS('GravityReadingValues')
@staticInterop
class GravityReadingValues extends AccelerometerReadingValues {
  external factory GravityReadingValues();
}

@JS('AmbientLightSensor')
@staticInterop
class AmbientLightSensor extends Sensor {
  external factory AmbientLightSensor();
  external factory AmbientLightSensor.a1();
  external factory AmbientLightSensor.a1_1(SensorOptions sensorOptions);
}

extension AmbientLightSensorExtension on AmbientLightSensor {
  external JSNumber? get illuminance;
}

@JS('AmbientLightReadingValues')
@staticInterop
class AmbientLightReadingValues {
  external factory AmbientLightReadingValues();
}

extension AmbientLightReadingValuesExtension on AmbientLightReadingValues {
  // TODO
}

@JS('XRAnchor')
@staticInterop
class XRAnchor {
  external factory XRAnchor();
}

extension XRAnchorExtension on XRAnchor {
  external XRSpace get anchorSpace;
  external JSPromise requestPersistentHandle();
  external JSUndefined delete();
}

@JS('XRFrame')
@staticInterop
class XRFrame {
  external factory XRFrame();
}

extension XRFrameExtension on XRFrame {
  external JSPromise createAnchor(XRRigidTransform pose, XRSpace space);
  external XRAnchorSet get trackedAnchors;
  external XRCPUDepthInformation? getDepthInformation(XRView view);
  external XRJointPose? getJointPose(XRJointSpace joint, XRSpace baseSpace);
  external JSBoolean fillJointRadii(JSArray jointSpaces, JSFloat32Array radii);
  external JSBoolean fillPoses(
      JSArray spaces, XRSpace baseSpace, JSFloat32Array transforms);
  external JSArray getHitTestResults(XRHitTestSource hitTestSource);
  external JSArray getHitTestResultsForTransientInput(
      XRTransientInputHitTestSource hitTestSource);
  external XRLightEstimate? getLightEstimate(XRLightProbe lightProbe);
  external XRSession get session;
  external DOMHighResTimeStamp get predictedDisplayTime;
  external XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);
  external XRPose? getPose(XRSpace space, XRSpace baseSpace);
}

@JS('XRSession')
@staticInterop
class XRSession extends EventTarget {
  external factory XRSession();
}

extension XRSessionExtension on XRSession {
  external JSPromise restorePersistentAnchor(JSString uuid);
  external JSPromise deletePersistentAnchor(JSString uuid);
  external XREnvironmentBlendMode get environmentBlendMode;
  external XRInteractionMode get interactionMode;
  external XRDepthUsage get depthUsage;
  external XRDepthDataFormat get depthDataFormat;
  external XRDOMOverlayState? get domOverlayState;
  external JSPromise requestHitTestSource(XRHitTestOptionsInit options);
  external JSPromise requestHitTestSourceForTransientInput(
      XRTransientInputHitTestOptionsInit options);
  external JSPromise requestLightProbe();
  external JSPromise requestLightProbe_1(XRLightProbeInit options);
  external XRReflectionFormat get preferredReflectionFormat;
  external XRVisibilityState get visibilityState;
  external JSNumber? get frameRate;
  external JSFloat32Array? get supportedFrameRates;
  external XRRenderState get renderState;
  external XRInputSourceArray get inputSources;
  external JSArray get enabledFeatures;
  external JSUndefined updateRenderState();
  external JSUndefined updateRenderState_1(XRRenderStateInit state);
  external JSPromise updateTargetFrameRate(JSNumber rate);
  external JSPromise requestReferenceSpace(XRReferenceSpaceType type);
  external JSNumber requestAnimationFrame(XRFrameRequestCallback callback);
  external JSUndefined cancelAnimationFrame(JSNumber handle);
  external JSPromise end();
  external EventHandler get onend;
  external set onend(EventHandler value);
  external EventHandler get oninputsourceschange;
  external set oninputsourceschange(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectend;
  external set onselectend(EventHandler value);
  external EventHandler get onsqueeze;
  external set onsqueeze(EventHandler value);
  external EventHandler get onsqueezestart;
  external set onsqueezestart(EventHandler value);
  external EventHandler get onsqueezeend;
  external set onsqueezeend(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set onvisibilitychange(EventHandler value);
  external EventHandler get onframeratechange;
  external set onframeratechange(EventHandler value);
}

@JS('XRHitTestResult')
@staticInterop
class XRHitTestResult {
  external factory XRHitTestResult();
}

extension XRHitTestResultExtension on XRHitTestResult {
  external JSPromise createAnchor();
  external XRPose? getPose(XRSpace baseSpace);
}

@JS('XRAnchorSet')
@staticInterop
class XRAnchorSet {
  external factory XRAnchorSet();
}

extension XRAnchorSetExtension on XRAnchorSet {
  // TODO
}

@JS('HTMLAttributionSrcElementUtils')
@staticInterop
class HTMLAttributionSrcElementUtils {
  external factory HTMLAttributionSrcElementUtils();
}

extension HTMLAttributionSrcElementUtilsExtension
    on HTMLAttributionSrcElementUtils {
  external JSString get attributionSrc;
  external set attributionSrc(JSString value);
}

@JS('HTMLMediaElement')
@staticInterop
class HTMLMediaElement extends HTMLElement {
  external factory HTMLMediaElement();
  external static JSNumber get NETWORK_EMPTY;
  external static JSNumber get NETWORK_IDLE;
  external static JSNumber get NETWORK_LOADING;
  external static JSNumber get NETWORK_NO_SOURCE;
  external static JSNumber get HAVE_NOTHING;
  external static JSNumber get HAVE_METADATA;
  external static JSNumber get HAVE_CURRENT_DATA;
  external static JSNumber get HAVE_FUTURE_DATA;
  external static JSNumber get HAVE_ENOUGH_DATA;
}

extension HTMLMediaElementExtension on HTMLMediaElement {
  external JSString get sinkId;
  external JSPromise setSinkId(JSString sinkId);
  external MediaKeys? get mediaKeys;
  external EventHandler get onencrypted;
  external set onencrypted(EventHandler value);
  external EventHandler get onwaitingforkey;
  external set onwaitingforkey(EventHandler value);
  external JSPromise setMediaKeys(MediaKeys? mediaKeys);
  external MediaError? get error;
  external JSString get src;
  external set src(JSString value);
  external MediaProvider? get srcObject;
  external set srcObject(MediaProvider? value);
  external JSString get currentSrc;
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSNumber get networkState;
  external JSString get preload;
  external set preload(JSString value);
  external TimeRanges get buffered;
  external JSUndefined load();
  external CanPlayTypeResult canPlayType(JSString type);
  external JSNumber get readyState;
  external JSBoolean get seeking;
  external JSNumber get currentTime;
  external set currentTime(JSNumber value);
  external JSUndefined fastSeek(JSNumber time);
  external JSNumber get duration;
  external JSObject getStartDate();
  external JSBoolean get paused;
  external JSNumber get defaultPlaybackRate;
  external set defaultPlaybackRate(JSNumber value);
  external JSNumber get playbackRate;
  external set playbackRate(JSNumber value);
  external JSBoolean get preservesPitch;
  external set preservesPitch(JSBoolean value);
  external TimeRanges get played;
  external TimeRanges get seekable;
  external JSBoolean get ended;
  external JSBoolean get autoplay;
  external set autoplay(JSBoolean value);
  external JSBoolean get loop;
  external set loop(JSBoolean value);
  external JSPromise play();
  external JSUndefined pause();
  external JSBoolean get controls;
  external set controls(JSBoolean value);
  external JSNumber get volume;
  external set volume(JSNumber value);
  external JSBoolean get muted;
  external set muted(JSBoolean value);
  external JSBoolean get defaultMuted;
  external set defaultMuted(JSBoolean value);
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external TextTrack addTextTrack(TextTrackKind kind);
  external TextTrack addTextTrack_1(TextTrackKind kind, JSString label);
  external TextTrack addTextTrack_2(
      TextTrackKind kind, JSString label, JSString language);
  external MediaStream captureStream();
  external RemotePlayback get remote;
  external JSBoolean get disableRemotePlayback;
  external set disableRemotePlayback(JSBoolean value);
}

@JS('MediaDevices')
@staticInterop
class MediaDevices extends EventTarget {
  external factory MediaDevices();
}

extension MediaDevicesExtension on MediaDevices {
  external JSPromise selectAudioOutput();
  external JSPromise selectAudioOutput_1(AudioOutputOptions options);
  external JSUndefined setCaptureHandleConfig();
  external JSUndefined setCaptureHandleConfig_1(CaptureHandleConfig config);
  external JSUndefined setSupportedCaptureActions(JSArray actions);
  external EventHandler get oncaptureaction;
  external set oncaptureaction(EventHandler value);
  external EventHandler get ondevicechange;
  external set ondevicechange(EventHandler value);
  external JSPromise enumerateDevices();
  external MediaTrackSupportedConstraints getSupportedConstraints();
  external JSPromise getUserMedia();
  external JSPromise getUserMedia_1(MediaStreamConstraints constraints);
  external JSPromise getViewportMedia();
  external JSPromise getViewportMedia_1(
      ViewportMediaStreamConstraints constraints);
  external JSPromise getDisplayMedia();
  external JSPromise getDisplayMedia_1(DisplayMediaStreamOptions options);
}

@JS('AudioOutputOptions')
@staticInterop
class AudioOutputOptions {
  external factory AudioOutputOptions();
}

extension AudioOutputOptionsExtension on AudioOutputOptions {
  // TODO
}

@JS('Navigator')
@staticInterop
class Navigator
    implements
        NavigatorBadge,
        NavigatorDeviceMemory,
        GlobalPrivacyControl,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorContentUtils,
        NavigatorCookies,
        NavigatorPlugins,
        NavigatorConcurrentHardware,
        NavigatorNetworkInformation,
        NavigatorStorage,
        NavigatorUA,
        NavigatorLocks,
        NavigatorAutomationInformation,
        NavigatorGPU,
        NavigatorML {
  external factory Navigator();
}

extension NavigatorExtension on Navigator {
  external AutoplayPolicy getAutoplayPolicy(AutoplayPolicyMediaType type);
  @JS('getAutoplayPolicy')
  external AutoplayPolicy getAutoplayPolicy1(HTMLMediaElement element);
  @JS('getAutoplayPolicy')
  external AutoplayPolicy getAutoplayPolicy2(AudioContext context);
  external JSPromise setClientBadge();
  external JSPromise setClientBadge_1(JSNumber contents);
  external JSPromise clearClientBadge();
  external JSPromise getBattery();
  external JSBoolean sendBeacon(JSString url);
  external JSBoolean sendBeacon_1(JSString url, BodyInit? data);
  external Clipboard get clipboard;
  external ContactsManager get contacts;
  external CredentialsContainer get credentials;
  external DevicePosture get devicePosture;
  external JSPromise requestMediaKeySystemAccess(
      JSString keySystem, JSArray supportedConfigurations);
  external JSArray getGamepads();
  external Geolocation get geolocation;
  external JSPromise getInstalledRelatedApps();
  external UserActivation get userActivation;
  external Ink get ink;
  external Scheduling get scheduling;
  external Keyboard get keyboard;
  external MediaCapabilities get mediaCapabilities;
  external MediaDevices get mediaDevices;
  external JSUndefined getUserMedia(
      MediaStreamConstraints constraints,
      NavigatorUserMediaSuccessCallback successCallback,
      NavigatorUserMediaErrorCallback errorCallback);
  external MediaSession get mediaSession;
  external Permissions get permissions;
  external JSNumber get maxTouchPoints;
  external Presentation get presentation;
  external WakeLock get wakeLock;
  external Serial get serial;
  external ServiceWorkerContainer get serviceWorker;
  external JSBoolean vibrate(VibratePattern pattern);
  external VirtualKeyboard get virtualKeyboard;
  external Bluetooth get bluetooth;
  external JSPromise share();
  external JSPromise share_1(ShareData data);
  external JSBoolean canShare();
  external JSBoolean canShare_1(ShareData data);
  external HID get hid;
  external JSPromise requestMIDIAccess();
  external JSPromise requestMIDIAccess_1(MIDIOptions options);
  external USB get usb;
  external XRSystem get xr;
  external WindowControlsOverlay get windowControlsOverlay;
}

@JS('ServiceWorkerGlobalScope')
@staticInterop
class ServiceWorkerGlobalScope extends WorkerGlobalScope {
  external factory ServiceWorkerGlobalScope();
}

extension ServiceWorkerGlobalScopeExtension on ServiceWorkerGlobalScope {
  external EventHandler get onbackgroundfetchsuccess;
  external set onbackgroundfetchsuccess(EventHandler value);
  external EventHandler get onbackgroundfetchfail;
  external set onbackgroundfetchfail(EventHandler value);
  external EventHandler get onbackgroundfetchabort;
  external set onbackgroundfetchabort(EventHandler value);
  external EventHandler get onbackgroundfetchclick;
  external set onbackgroundfetchclick(EventHandler value);
  external EventHandler get onsync;
  external set onsync(EventHandler value);
  external EventHandler get oncontentdelete;
  external set oncontentdelete(EventHandler value);
  external CookieStore get cookieStore;
  external EventHandler get oncookiechange;
  external set oncookiechange(EventHandler value);
  external EventHandler get onnotificationclick;
  external set onnotificationclick(EventHandler value);
  external EventHandler get onnotificationclose;
  external set onnotificationclose(EventHandler value);
  external EventHandler get oncanmakepayment;
  external set oncanmakepayment(EventHandler value);
  external EventHandler get onpaymentrequest;
  external set onpaymentrequest(EventHandler value);
  external EventHandler get onperiodicsync;
  external set onperiodicsync(EventHandler value);
  external EventHandler get onpush;
  external set onpush(EventHandler value);
  external EventHandler get onpushsubscriptionchange;
  external set onpushsubscriptionchange(EventHandler value);
  external Clients get clients;
  external ServiceWorkerRegistration get registration;
  external ServiceWorker get serviceWorker;
  external JSPromise skipWaiting();
  external EventHandler get oninstall;
  external set oninstall(EventHandler value);
  external EventHandler get onactivate;
  external set onactivate(EventHandler value);
  external EventHandler get onfetch;
  external set onfetch(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('ServiceWorkerRegistration')
@staticInterop
class ServiceWorkerRegistration extends EventTarget {
  external factory ServiceWorkerRegistration();
}

extension ServiceWorkerRegistrationExtension on ServiceWorkerRegistration {
  external BackgroundFetchManager get backgroundFetch;
  external SyncManager get sync;
  external ContentIndex get index;
  external CookieStoreManager get cookies;
  external JSPromise showNotification(JSString title);
  external JSPromise showNotification_1(
      JSString title, NotificationOptions options);
  external JSPromise getNotifications();
  external JSPromise getNotifications_1(GetNotificationOptions filter);
  external PaymentManager get paymentManager;
  external PeriodicSyncManager get periodicSync;
  external PushManager get pushManager;
  external ServiceWorker? get installing;
  external ServiceWorker? get waiting;
  external ServiceWorker? get active;
  external NavigationPreloadManager get navigationPreload;
  external JSString get scope;
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external JSPromise update();
  external JSPromise unregister();
  external EventHandler get onupdatefound;
  external set onupdatefound(EventHandler value);
}

@JS('BackgroundFetchManager')
@staticInterop
class BackgroundFetchManager {
  external factory BackgroundFetchManager();
}

extension BackgroundFetchManagerExtension on BackgroundFetchManager {
  external JSPromise fetch(JSString id, JSAny requests);
  external JSPromise fetch_1(
      JSString id, JSAny requests, BackgroundFetchOptions options);
  external JSPromise get(JSString id);
  external JSPromise getIds();
}

@JS('BackgroundFetchUIOptions')
@staticInterop
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions();
}

extension BackgroundFetchUIOptionsExtension on BackgroundFetchUIOptions {
  // TODO
  // TODO
}

@JS('BackgroundFetchOptions')
@staticInterop
class BackgroundFetchOptions extends BackgroundFetchUIOptions {
  external factory BackgroundFetchOptions();
}

extension BackgroundFetchOptionsExtension on BackgroundFetchOptions {
  // TODO
}

@JS('BackgroundFetchRegistration')
@staticInterop
class BackgroundFetchRegistration extends EventTarget {
  external factory BackgroundFetchRegistration();
}

extension BackgroundFetchRegistrationExtension on BackgroundFetchRegistration {
  external JSString get id;
  external JSNumber get uploadTotal;
  external JSNumber get uploaded;
  external JSNumber get downloadTotal;
  external JSNumber get downloaded;
  external BackgroundFetchResult get result;
  external BackgroundFetchFailureReason get failureReason;
  external JSBoolean get recordsAvailable;
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external JSPromise abort();
  external JSPromise match(RequestInfo request);
  external JSPromise match_1(RequestInfo request, CacheQueryOptions options);
  external JSPromise matchAll();
  external JSPromise matchAll_1(RequestInfo request);
  external JSPromise matchAll_2(RequestInfo request, CacheQueryOptions options);
}

@JS('BackgroundFetchRecord')
@staticInterop
class BackgroundFetchRecord {
  external factory BackgroundFetchRecord();
}

extension BackgroundFetchRecordExtension on BackgroundFetchRecord {
  external Request get request;
  external JSPromise get responseReady;
}

@JS('BackgroundFetchEvent')
@staticInterop
class BackgroundFetchEvent extends ExtendableEvent {
  external factory BackgroundFetchEvent();
  external factory BackgroundFetchEvent.a1(
      JSString type, BackgroundFetchEventInit init);
}

extension BackgroundFetchEventExtension on BackgroundFetchEvent {
  external BackgroundFetchRegistration get registration;
}

@JS('BackgroundFetchEventInit')
@staticInterop
class BackgroundFetchEventInit extends ExtendableEventInit {
  external factory BackgroundFetchEventInit();
}

extension BackgroundFetchEventInitExtension on BackgroundFetchEventInit {
  // TODO
}

@JS('BackgroundFetchUpdateUIEvent')
@staticInterop
class BackgroundFetchUpdateUIEvent extends BackgroundFetchEvent {
  external factory BackgroundFetchUpdateUIEvent();
  external factory BackgroundFetchUpdateUIEvent.a1(
      JSString type, BackgroundFetchEventInit init);
}

extension BackgroundFetchUpdateUIEventExtension
    on BackgroundFetchUpdateUIEvent {
  external JSPromise updateUI();
  external JSPromise updateUI_1(BackgroundFetchUIOptions options);
}

@JS('SyncManager')
@staticInterop
class SyncManager {
  external factory SyncManager();
}

extension SyncManagerExtension on SyncManager {
  external JSPromise register(JSString tag);
  external JSPromise getTags();
}

@JS('SyncEvent')
@staticInterop
class SyncEvent extends ExtendableEvent {
  external factory SyncEvent();
  external factory SyncEvent.a1(JSString type, SyncEventInit init);
}

extension SyncEventExtension on SyncEvent {
  external JSString get tag;
  external JSBoolean get lastChance;
}

@JS('SyncEventInit')
@staticInterop
class SyncEventInit extends ExtendableEventInit {
  external factory SyncEventInit();
}

extension SyncEventInitExtension on SyncEventInit {
  // TODO
  // TODO
}

@JS('NavigatorBadge')
@staticInterop
class NavigatorBadge {
  external factory NavigatorBadge();
}

extension NavigatorBadgeExtension on NavigatorBadge {
  external JSPromise setAppBadge();
  external JSPromise setAppBadge_1(JSNumber contents);
  external JSPromise clearAppBadge();
}

@JS('BatteryManager')
@staticInterop
class BatteryManager extends EventTarget {
  external factory BatteryManager();
}

extension BatteryManagerExtension on BatteryManager {
  external JSBoolean get charging;
  external JSNumber get chargingTime;
  external JSNumber get dischargingTime;
  external JSNumber get level;
  external EventHandler get onchargingchange;
  external set onchargingchange(EventHandler value);
  external EventHandler get onchargingtimechange;
  external set onchargingtimechange(EventHandler value);
  external EventHandler get ondischargingtimechange;
  external set ondischargingtimechange(EventHandler value);
  external EventHandler get onlevelchange;
  external set onlevelchange(EventHandler value);
}

@JS('CaptureHandleConfig')
@staticInterop
class CaptureHandleConfig {
  external factory CaptureHandleConfig();
}

extension CaptureHandleConfigExtension on CaptureHandleConfig {
  // TODO
  // TODO
  // TODO
}

@JS('CaptureHandle')
@staticInterop
class CaptureHandle {
  external factory CaptureHandle();
}

extension CaptureHandleExtension on CaptureHandle {
  // TODO
  // TODO
}

@JS('MediaStreamTrack')
@staticInterop
class MediaStreamTrack extends EventTarget {
  external factory MediaStreamTrack();
}

extension MediaStreamTrackExtension on MediaStreamTrack {
  external CaptureHandle? getCaptureHandle();
  external EventHandler get oncapturehandlechange;
  external set oncapturehandlechange(EventHandler value);
  external JSArray getSupportedCaptureActions();
  external JSPromise sendCaptureAction(CaptureAction action);
  external JSString get kind;
  external JSString get id;
  external JSString get label;
  external JSBoolean get enabled;
  external set enabled(JSBoolean value);
  external JSBoolean get muted;
  external EventHandler get onmute;
  external set onmute(EventHandler value);
  external EventHandler get onunmute;
  external set onunmute(EventHandler value);
  external MediaStreamTrackState get readyState;
  external EventHandler get onended;
  external set onended(EventHandler value);
  external MediaStreamTrack clone();
  external JSUndefined stop();
  external MediaTrackCapabilities getCapabilities();
  external MediaTrackConstraints getConstraints();
  external MediaTrackSettings getSettings();
  external JSPromise applyConstraints();
  external JSPromise applyConstraints_1(MediaTrackConstraints constraints);
  external JSString get contentHint;
  external set contentHint(JSString value);
  external JSBoolean get isolated;
  external EventHandler get onisolationchange;
  external set onisolationchange(EventHandler value);
}

@JS('ClipboardEventInit')
@staticInterop
class ClipboardEventInit extends EventInit {
  external factory ClipboardEventInit();
}

extension ClipboardEventInitExtension on ClipboardEventInit {
  // TODO
}

@JS('ClipboardEvent')
@staticInterop
class ClipboardEvent extends Event {
  external factory ClipboardEvent();
  external factory ClipboardEvent.a1(JSString type);
  external factory ClipboardEvent.a1_1(
      JSString type, ClipboardEventInit eventInitDict);
}

extension ClipboardEventExtension on ClipboardEvent {
  external DataTransfer? get clipboardData;
}

@JS('ClipboardItem')
@staticInterop
class ClipboardItem {
  external factory ClipboardItem();
  external factory ClipboardItem.a1(JSAny items);
  external factory ClipboardItem.a1_1(
      JSAny items, ClipboardItemOptions options);
}

extension ClipboardItemExtension on ClipboardItem {
  external PresentationStyle get presentationStyle;
  external JSArray get types;
  external JSPromise getType(JSString type);
}

@JS('ClipboardItemOptions')
@staticInterop
class ClipboardItemOptions {
  external factory ClipboardItemOptions();
}

extension ClipboardItemOptionsExtension on ClipboardItemOptions {
  // TODO
}

@JS('Clipboard')
@staticInterop
class Clipboard extends EventTarget {
  external factory Clipboard();
}

extension ClipboardExtension on Clipboard {
  external JSPromise read();
  external JSPromise readText();
  external JSPromise write(ClipboardItems data);
  external JSPromise writeText(JSString data);
}

@JS('ClipboardPermissionDescriptor')
@staticInterop
class ClipboardPermissionDescriptor extends PermissionDescriptor {
  external factory ClipboardPermissionDescriptor();
}

extension ClipboardPermissionDescriptorExtension
    on ClipboardPermissionDescriptor {
  // TODO
}

@JS('CloseWatcher')
@staticInterop
class CloseWatcher extends EventTarget {
  external factory CloseWatcher();
  external factory CloseWatcher.a1();
  external factory CloseWatcher.a1_1(CloseWatcherOptions options);
}

extension CloseWatcherExtension on CloseWatcher {
  external JSUndefined destroy();
  external JSUndefined close();
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
}

@JS('CloseWatcherOptions')
@staticInterop
class CloseWatcherOptions {
  external factory CloseWatcherOptions();
}

extension CloseWatcherOptionsExtension on CloseWatcherOptions {
  // TODO
}

@JS()
external Window get window;

@JS('Window')
@staticInterop
class Window extends EventTarget
    implements
        GlobalEventHandlers,
        WindowEventHandlers,
        WindowOrWorkerGlobalScope,
        AnimationFrameProvider,
        WindowSessionStorage,
        WindowLocalStorage {
  external factory Window();
}

extension WindowExtension on Window {
  external JSNumber get orientation;
  external EventHandler get onorientationchange;
  external set onorientationchange(EventHandler value);
  external CookieStore get cookieStore;
  external JSUndefined navigate(SpatialNavigationDirection dir);
  external MediaQueryList matchMedia(JSString query);
  external Screen get screen;
  external VisualViewport? get visualViewport;
  external JSUndefined moveTo(JSNumber x, JSNumber y);
  external JSUndefined moveBy(JSNumber x, JSNumber y);
  external JSUndefined resizeTo(JSNumber width, JSNumber height);
  external JSUndefined resizeBy(JSNumber x, JSNumber y);
  external JSNumber get innerWidth;
  external JSNumber get innerHeight;
  external JSNumber get scrollX;
  external JSNumber get pageXOffset;
  external JSNumber get scrollY;
  external JSNumber get pageYOffset;
  external JSUndefined scroll();
  external JSUndefined scroll_1(ScrollToOptions options);
  @JS('scroll')
  external JSUndefined scroll1(JSNumber x, JSNumber y);
  external JSUndefined scrollTo();
  external JSUndefined scrollTo_1(ScrollToOptions options);
  @JS('scrollTo')
  external JSUndefined scrollTo1(JSNumber x, JSNumber y);
  external JSUndefined scrollBy();
  external JSUndefined scrollBy_1(ScrollToOptions options);
  @JS('scrollBy')
  external JSUndefined scrollBy1(JSNumber x, JSNumber y);
  external JSNumber get screenX;
  external JSNumber get screenLeft;
  external JSNumber get screenY;
  external JSNumber get screenTop;
  external JSNumber get outerWidth;
  external JSNumber get outerHeight;
  external JSNumber get devicePixelRatio;
  external CSSStyleDeclaration getComputedStyle(Element elt);
  external CSSStyleDeclaration getComputedStyle_1(
      Element elt, JSString? pseudoElt);
  external JSPromise getDigitalGoodsService(JSString serviceProvider);
  external JSAny get event;
  external JSPromise showOpenFilePicker();
  external JSPromise showOpenFilePicker_1(OpenFilePickerOptions options);
  external JSPromise showSaveFilePicker();
  external JSPromise showSaveFilePicker_1(SaveFilePickerOptions options);
  external JSPromise showDirectoryPicker();
  external JSPromise showDirectoryPicker_1(DirectoryPickerOptions options);
  external Window get window;
  external Window get self;
  external Document get document;
  external JSString get name;
  external set name(JSString value);
  external Location get location;
  external History get history;
  external CustomElementRegistry get customElements;
  external BarProp get locationbar;
  external BarProp get menubar;
  external BarProp get personalbar;
  external BarProp get scrollbars;
  external BarProp get statusbar;
  external BarProp get toolbar;
  external JSString get status;
  external set status(JSString value);
  external JSUndefined close();
  external JSBoolean get closed;
  external JSUndefined stop();
  external JSUndefined focus();
  external JSUndefined blur();
  external Window get frames;
  external JSNumber get length;
  external Window? get top;
  external JSAny get opener;
  external set opener(JSAny value);
  external Window? get parent;
  external Element? get frameElement;
  external Window? open();
  external Window? open_1(JSString url);
  external Window? open_2(JSString url, JSString target);
  external Window? open_3(JSString url, JSString target, JSString features);
  external Navigator get navigator;
  external Navigator get clientInformation;
  external JSBoolean get originAgentCluster;
  external JSUndefined alert();
  @JS('alert')
  external JSUndefined alert1(JSString message);
  external JSBoolean confirm();
  external JSBoolean confirm_1(JSString message);
  external JSString? prompt();
  external JSString? prompt_1(JSString message);
  external JSString? prompt_2(JSString message, JSString default_);
  external JSUndefined print();
  external JSUndefined postMessage(JSAny message, JSString targetOrigin);
  external JSUndefined postMessage_1(
      JSAny message, JSString targetOrigin, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, WindowPostMessageOptions options);
  external JSUndefined captureEvents();
  external JSUndefined releaseEvents();
  external External get external;
  external JSPromise queryLocalFonts();
  external JSPromise queryLocalFonts_1(QueryOptions options);
  external EventHandler get onappinstalled;
  external set onappinstalled(EventHandler value);
  external EventHandler get onbeforeinstallprompt;
  external set onbeforeinstallprompt(EventHandler value);
  external Navigation get navigation;
  external EventHandler get ondeviceorientation;
  external set ondeviceorientation(EventHandler value);
  external EventHandler get ondeviceorientationabsolute;
  external set ondeviceorientationabsolute(EventHandler value);
  external EventHandler get oncompassneedscalibration;
  external set oncompassneedscalibration(EventHandler value);
  external EventHandler get ondevicemotion;
  external set ondevicemotion(EventHandler value);
  external PortalHost? get portalHost;
  external JSNumber requestIdleCallback(IdleRequestCallback callback);
  external JSNumber requestIdleCallback_1(
      IdleRequestCallback callback, IdleRequestOptions options);
  external JSUndefined cancelIdleCallback(JSNumber handle);
  external Selection? getSelection();
  external SpeechSynthesis get speechSynthesis;
  external LaunchQueue get launchQueue;
  external JSPromise getScreenDetails();
}

@JS('HTMLBodyElement')
@staticInterop
class HTMLBodyElement extends HTMLElement implements WindowEventHandlers {
  external factory HTMLBodyElement();
}

extension HTMLBodyElementExtension on HTMLBodyElement {
  external EventHandler get onorientationchange;
  external set onorientationchange(EventHandler value);
  external JSString get text;
  external set text(JSString value);
  external JSString get link;
  external set link(JSString value);
  external JSString get vLink;
  external set vLink(JSString value);
  external JSString get aLink;
  external set aLink(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external JSString get background;
  external set background(JSString value);
}

@JS('CompressionStream')
@staticInterop
class CompressionStream implements GenericTransformStream {
  external factory CompressionStream();
  external factory CompressionStream.a1(JSString format);
}

@JS('DecompressionStream')
@staticInterop
class DecompressionStream implements GenericTransformStream {
  external factory DecompressionStream();
  external factory DecompressionStream.a1(JSString format);
}

@JS('PressureObserver')
@staticInterop
class PressureObserver {
  external factory PressureObserver();
  external factory PressureObserver.a1(PressureUpdateCallback callback);
  external factory PressureObserver.a1_1(
      PressureUpdateCallback callback, PressureObserverOptions options);
  external static JSArray get supportedSources;
}

extension PressureObserverExtension on PressureObserver {
  external JSPromise observe(PressureSource source);
  external JSUndefined unobserve(PressureSource source);
  external JSUndefined disconnect();
  external JSArray takeRecords();
}

@JS('PressureRecord')
@staticInterop
class PressureRecord {
  external factory PressureRecord();
}

extension PressureRecordExtension on PressureRecord {
  external PressureSource get source;
  external PressureState get state;
  external JSArray get factors;
  external DOMHighResTimeStamp get time;
  external JSObject toJSON();
}

@JS('PressureObserverOptions')
@staticInterop
class PressureObserverOptions {
  external factory PressureObserverOptions();
}

extension PressureObserverOptionsExtension on PressureObserverOptions {
  // TODO
}

@JS()
external _Console get console;

@JS('console')
@staticInterop
class _Console {
  external factory _Console();
}

extension _ConsoleExtension on _Console {
  @JS('assert')
  external JSUndefined assert0();
  @JS('assert')
  external JSUndefined assert0_1(JSBoolean condition, JSAny data);
  external JSUndefined clear();
  external JSUndefined debug(JSAny data);
  external JSUndefined error(JSAny data);
  external JSUndefined info(JSAny data);
  external JSUndefined log(JSAny data);
  external JSUndefined table();
  external JSUndefined table_1(JSAny tabularData);
  external JSUndefined table_2(JSAny tabularData, JSArray properties);
  external JSUndefined trace(JSAny data);
  external JSUndefined warn(JSAny data);
  external JSUndefined dir();
  external JSUndefined dir_1(JSAny item);
  external JSUndefined dir_2(JSAny item, JSObject? options);
  external JSUndefined dirxml(JSAny data);
  external JSUndefined count();
  external JSUndefined count_1(JSString label);
  external JSUndefined countReset();
  external JSUndefined countReset_1(JSString label);
  external JSUndefined group(JSAny data);
  external JSUndefined groupCollapsed(JSAny data);
  external JSUndefined groupEnd();
  external JSUndefined time();
  external JSUndefined time_1(JSString label);
  external JSUndefined timeLog();
  external JSUndefined timeLog_1(JSString label, JSAny data);
  external JSUndefined timeEnd();
  external JSUndefined timeEnd_1(JSString label);
}

@JS('ContactAddress')
@staticInterop
class ContactAddress {
  external factory ContactAddress();
}

extension ContactAddressExtension on ContactAddress {
  external JSObject toJSON();
  external JSString get city;
  external JSString get country;
  external JSString get dependentLocality;
  external JSString get organization;
  external JSString get phone;
  external JSString get postalCode;
  external JSString get recipient;
  external JSString get region;
  external JSString get sortingCode;
  external JSArray get addressLine;
}

@JS('ContactInfo')
@staticInterop
class ContactInfo {
  external factory ContactInfo();
}

extension ContactInfoExtension on ContactInfo {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ContactsSelectOptions')
@staticInterop
class ContactsSelectOptions {
  external factory ContactsSelectOptions();
}

extension ContactsSelectOptionsExtension on ContactsSelectOptions {
  // TODO
}

@JS('ContactsManager')
@staticInterop
class ContactsManager {
  external factory ContactsManager();
}

extension ContactsManagerExtension on ContactsManager {
  external JSPromise getProperties();
  external JSPromise select(JSArray properties);
  external JSPromise select_1(
      JSArray properties, ContactsSelectOptions options);
}

@JS('ContentDescription')
@staticInterop
class ContentDescription {
  external factory ContentDescription();
}

extension ContentDescriptionExtension on ContentDescription {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ContentIndex')
@staticInterop
class ContentIndex {
  external factory ContentIndex();
}

extension ContentIndexExtension on ContentIndex {
  external JSPromise add(ContentDescription description);
  external JSPromise delete(JSString id);
  external JSPromise getAll();
}

@JS('ContentIndexEventInit')
@staticInterop
class ContentIndexEventInit extends ExtendableEventInit {
  external factory ContentIndexEventInit();
}

extension ContentIndexEventInitExtension on ContentIndexEventInit {
  // TODO
}

@JS('ContentIndexEvent')
@staticInterop
class ContentIndexEvent extends ExtendableEvent {
  external factory ContentIndexEvent();
  external factory ContentIndexEvent.a1(
      JSString type, ContentIndexEventInit init);
}

extension ContentIndexEventExtension on ContentIndexEvent {
  external JSString get id;
}

@JS('CookieStore')
@staticInterop
class CookieStore extends EventTarget {
  external factory CookieStore();
}

extension CookieStoreExtension on CookieStore {
  external JSPromise get(JSString name);
  @JS('get')
  external JSPromise get1();
  @JS('get')
  external JSPromise get1_1(CookieStoreGetOptions options);
  external JSPromise getAll(JSString name);
  @JS('getAll')
  external JSPromise getAll1();
  @JS('getAll')
  external JSPromise getAll1_1(CookieStoreGetOptions options);
  external JSPromise set(JSString name, JSString value);
  @JS('set')
  external JSPromise set1(CookieInit options);
  external JSPromise delete(JSString name);
  @JS('delete')
  external JSPromise delete1(CookieStoreDeleteOptions options);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('CookieStoreGetOptions')
@staticInterop
class CookieStoreGetOptions {
  external factory CookieStoreGetOptions();
}

extension CookieStoreGetOptionsExtension on CookieStoreGetOptions {
  // TODO
  // TODO
}

@JS('CookieInit')
@staticInterop
class CookieInit {
  external factory CookieInit();
}

extension CookieInitExtension on CookieInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CookieStoreDeleteOptions')
@staticInterop
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions();
}

extension CookieStoreDeleteOptionsExtension on CookieStoreDeleteOptions {
  // TODO
  // TODO
  // TODO
}

@JS('CookieListItem')
@staticInterop
class CookieListItem {
  external factory CookieListItem();
}

extension CookieListItemExtension on CookieListItem {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CookieStoreManager')
@staticInterop
class CookieStoreManager {
  external factory CookieStoreManager();
}

extension CookieStoreManagerExtension on CookieStoreManager {
  external JSPromise subscribe(JSArray subscriptions);
  external JSPromise getSubscriptions();
  external JSPromise unsubscribe(JSArray subscriptions);
}

@JS('CookieChangeEvent')
@staticInterop
class CookieChangeEvent extends Event {
  external factory CookieChangeEvent();
  external factory CookieChangeEvent.a1(JSString type);
  external factory CookieChangeEvent.a1_1(
      JSString type, CookieChangeEventInit eventInitDict);
}

extension CookieChangeEventExtension on CookieChangeEvent {
  external JSArray get changed;
  external JSArray get deleted;
}

@JS('CookieChangeEventInit')
@staticInterop
class CookieChangeEventInit extends EventInit {
  external factory CookieChangeEventInit();
}

extension CookieChangeEventInitExtension on CookieChangeEventInit {
  // TODO
  // TODO
}

@JS('ExtendableCookieChangeEvent')
@staticInterop
class ExtendableCookieChangeEvent extends ExtendableEvent {
  external factory ExtendableCookieChangeEvent();
  external factory ExtendableCookieChangeEvent.a1(JSString type);
  external factory ExtendableCookieChangeEvent.a1_1(
      JSString type, ExtendableCookieChangeEventInit eventInitDict);
}

extension ExtendableCookieChangeEventExtension on ExtendableCookieChangeEvent {
  external JSArray get changed;
  external JSArray get deleted;
}

@JS('ExtendableCookieChangeEventInit')
@staticInterop
class ExtendableCookieChangeEventInit extends ExtendableEventInit {
  external factory ExtendableCookieChangeEventInit();
}

extension ExtendableCookieChangeEventInitExtension
    on ExtendableCookieChangeEventInit {
  // TODO
  // TODO
}

@JS('CrashReportBody')
@staticInterop
class CrashReportBody extends ReportBody {
  external factory CrashReportBody();
}

extension CrashReportBodyExtension on CrashReportBody {
  external JSObject toJSON();
  external JSString? get reason;
}

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

@JS('HTMLIFrameElement')
@staticInterop
class HTMLIFrameElement extends HTMLElement {
  external factory HTMLIFrameElement();
}

extension HTMLIFrameElementExtension on HTMLIFrameElement {
  external JSString get csp;
  external set csp(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get srcdoc;
  external set srcdoc(JSString value);
  external JSString get name;
  external set name(JSString value);
  external DOMTokenList get sandbox;
  external JSString get allow;
  external set allow(JSString value);
  external JSBoolean get allowFullscreen;
  external set allowFullscreen(JSBoolean value);
  external JSString get width;
  external set width(JSString value);
  external JSString get height;
  external set height(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get loading;
  external set loading(JSString value);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external JSString get align;
  external set align(JSString value);
  external JSString get scrolling;
  external set scrolling(JSString value);
  external JSString get frameBorder;
  external set frameBorder(JSString value);
  external JSString get longDesc;
  external set longDesc(JSString value);
  external JSString get marginHeight;
  external set marginHeight(JSString value);
  external JSString get marginWidth;
  external set marginWidth(JSString value);
  external PermissionsPolicy get permissionsPolicy;
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('ScriptingPolicyReportBody')
@staticInterop
class ScriptingPolicyReportBody extends ReportBody {
  external factory ScriptingPolicyReportBody();
}

extension ScriptingPolicyReportBodyExtension on ScriptingPolicyReportBody {
  external JSObject toJSON();
  external JSString get violationType;
  external JSString? get violationURL;
  external JSString? get violationSample;
  external JSNumber get lineno;
  external JSNumber get colno;
}

@JS()
external _CSS get CSS;

@JS('CSS')
@staticInterop
class _CSS {
  external factory _CSS();
}

extension _CSSExtension on _CSS {
  external Worklet get animationWorklet;
  external JSBoolean supports(JSString property, JSString value);
  @JS('supports')
  external JSBoolean supports1(JSString conditionText);
  external HighlightRegistry get highlights;
  external JSAny get elementSources;
  external Worklet get layoutWorklet;
  external Worklet get paintWorklet;
  external JSPromise parseStylesheet(CSSStringSource css);
  external JSPromise parseStylesheet_1(
      CSSStringSource css, CSSParserOptions options);
  external JSPromise parseRuleList(CSSStringSource css);
  external JSPromise parseRuleList_1(
      CSSStringSource css, CSSParserOptions options);
  external JSPromise parseRule(CSSStringSource css);
  external JSPromise parseRule_1(CSSStringSource css, CSSParserOptions options);
  external JSPromise parseDeclarationList(CSSStringSource css);
  external JSPromise parseDeclarationList_1(
      CSSStringSource css, CSSParserOptions options);
  external CSSParserDeclaration parseDeclaration(JSString css);
  external CSSParserDeclaration parseDeclaration_1(
      JSString css, CSSParserOptions options);
  external CSSToken parseValue(JSString css);
  external JSArray parseValueList(JSString css);
  external JSArray parseCommaValueList(JSString css);
  external JSUndefined registerProperty(PropertyDefinition definition);
  external CSSUnitValue number(JSNumber value);
  external CSSUnitValue percent(JSNumber value);
  external CSSUnitValue em(JSNumber value);
  external CSSUnitValue ex(JSNumber value);
  external CSSUnitValue ch(JSNumber value);
  external CSSUnitValue ic(JSNumber value);
  external CSSUnitValue rem(JSNumber value);
  external CSSUnitValue lh(JSNumber value);
  external CSSUnitValue rlh(JSNumber value);
  external CSSUnitValue vw(JSNumber value);
  external CSSUnitValue vh(JSNumber value);
  external CSSUnitValue vi(JSNumber value);
  external CSSUnitValue vb(JSNumber value);
  external CSSUnitValue vmin(JSNumber value);
  external CSSUnitValue vmax(JSNumber value);
  external CSSUnitValue svw(JSNumber value);
  external CSSUnitValue svh(JSNumber value);
  external CSSUnitValue svi(JSNumber value);
  external CSSUnitValue svb(JSNumber value);
  external CSSUnitValue svmin(JSNumber value);
  external CSSUnitValue svmax(JSNumber value);
  external CSSUnitValue lvw(JSNumber value);
  external CSSUnitValue lvh(JSNumber value);
  external CSSUnitValue lvi(JSNumber value);
  external CSSUnitValue lvb(JSNumber value);
  external CSSUnitValue lvmin(JSNumber value);
  external CSSUnitValue lvmax(JSNumber value);
  external CSSUnitValue dvw(JSNumber value);
  external CSSUnitValue dvh(JSNumber value);
  external CSSUnitValue dvi(JSNumber value);
  external CSSUnitValue dvb(JSNumber value);
  external CSSUnitValue dvmin(JSNumber value);
  external CSSUnitValue dvmax(JSNumber value);
  external CSSUnitValue cqw(JSNumber value);
  external CSSUnitValue cqh(JSNumber value);
  external CSSUnitValue cqi(JSNumber value);
  external CSSUnitValue cqb(JSNumber value);
  external CSSUnitValue cqmin(JSNumber value);
  external CSSUnitValue cqmax(JSNumber value);
  external CSSUnitValue cm(JSNumber value);
  external CSSUnitValue mm(JSNumber value);
  external CSSUnitValue Q(JSNumber value);
  @JS('in')
  external CSSUnitValue in0(JSNumber value);
  external CSSUnitValue pt(JSNumber value);
  external CSSUnitValue pc(JSNumber value);
  external CSSUnitValue px(JSNumber value);
  external CSSUnitValue deg(JSNumber value);
  external CSSUnitValue grad(JSNumber value);
  external CSSUnitValue rad(JSNumber value);
  external CSSUnitValue turn(JSNumber value);
  external CSSUnitValue s(JSNumber value);
  external CSSUnitValue ms(JSNumber value);
  external CSSUnitValue Hz(JSNumber value);
  external CSSUnitValue kHz(JSNumber value);
  external CSSUnitValue dpi(JSNumber value);
  external CSSUnitValue dpcm(JSNumber value);
  external CSSUnitValue dppx(JSNumber value);
  external CSSUnitValue fr(JSNumber value);
  external JSString escape(JSString ident);
}

@JS('AnimationWorkletGlobalScope')
@staticInterop
class AnimationWorkletGlobalScope extends WorkletGlobalScope {
  external factory AnimationWorkletGlobalScope();
}

extension AnimationWorkletGlobalScopeExtension on AnimationWorkletGlobalScope {
  external JSUndefined registerAnimator(
      JSString name, AnimatorInstanceConstructor animatorCtor);
}

@JS('WorkletAnimationEffect')
@staticInterop
class WorkletAnimationEffect {
  external factory WorkletAnimationEffect();
}

extension WorkletAnimationEffectExtension on WorkletAnimationEffect {
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external JSNumber? get localTime;
  external set localTime(JSNumber? value);
}

@JS('WorkletAnimation')
@staticInterop
class WorkletAnimation extends Animation {
  external factory WorkletAnimation();
  external factory WorkletAnimation.a1(JSString animatorName);
  external factory WorkletAnimation.a1_1(JSString animatorName, JSAny? effects);
  external factory WorkletAnimation.a1_2(
      JSString animatorName, JSAny? effects, AnimationTimeline? timeline);
  external factory WorkletAnimation.a1_3(JSString animatorName, JSAny? effects,
      AnimationTimeline? timeline, JSAny options);
}

extension WorkletAnimationExtension on WorkletAnimation {
  external JSString get animatorName;
}

@JS('WorkletGroupEffect')
@staticInterop
class WorkletGroupEffect {
  external factory WorkletGroupEffect();
}

extension WorkletGroupEffectExtension on WorkletGroupEffect {
  external JSArray getChildren();
}

@JS('CSSAnimation')
@staticInterop
class CSSAnimation extends Animation {
  external factory CSSAnimation();
}

extension CSSAnimationExtension on CSSAnimation {
  external JSString get animationName;
}

@JS('AnimationEvent')
@staticInterop
class AnimationEvent extends Event {
  external factory AnimationEvent();
  external factory AnimationEvent.a1(JSString type);
  external factory AnimationEvent.a1_1(
      JSString type, AnimationEventInit animationEventInitDict);
}

extension AnimationEventExtension on AnimationEvent {
  external JSString get animationName;
  external JSNumber get elapsedTime;
  external JSString get pseudoElement;
}

@JS('AnimationEventInit')
@staticInterop
class AnimationEventInit extends EventInit {
  external factory AnimationEventInit();
}

extension AnimationEventInitExtension on AnimationEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('CSSRule')
@staticInterop
class CSSRule {
  external factory CSSRule();
  external static JSNumber get KEYFRAMES_RULE;
  external static JSNumber get KEYFRAME_RULE;
  external static JSNumber get SUPPORTS_RULE;
  external static JSNumber get COUNTER_STYLE_RULE;
  external static JSNumber get FONT_FEATURE_VALUES_RULE;
  external static JSNumber get STYLE_RULE;
  external static JSNumber get CHARSET_RULE;
  external static JSNumber get IMPORT_RULE;
  external static JSNumber get MEDIA_RULE;
  external static JSNumber get FONT_FACE_RULE;
  external static JSNumber get PAGE_RULE;
  external static JSNumber get MARGIN_RULE;
  external static JSNumber get NAMESPACE_RULE;
}

extension CSSRuleExtension on CSSRule {
  external JSString get cssText;
  external set cssText(JSString value);
  external CSSRule? get parentRule;
  external CSSStyleSheet? get parentStyleSheet;
  external JSNumber get type;
}

@JS('CSSKeyframeRule')
@staticInterop
class CSSKeyframeRule extends CSSRule {
  external factory CSSKeyframeRule();
}

extension CSSKeyframeRuleExtension on CSSKeyframeRule {
  external JSString get keyText;
  external set keyText(JSString value);
  external CSSStyleDeclaration get style;
}

@JS('CSSKeyframesRule')
@staticInterop
class CSSKeyframesRule extends CSSRule {
  external factory CSSKeyframesRule();
}

extension CSSKeyframesRuleExtension on CSSKeyframesRule {
  external JSString get name;
  external set name(JSString value);
  external CSSRuleList get cssRules;
  external JSNumber get length;
  external JSUndefined appendRule(JSString rule);
  external JSUndefined deleteRule(JSString select);
  external CSSKeyframeRule? findRule(JSString select);
}

@JS('GlobalEventHandlers')
@staticInterop
class GlobalEventHandlers {
  external factory GlobalEventHandlers();
}

extension GlobalEventHandlersExtension on GlobalEventHandlers {
  external EventHandler get onanimationstart;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationcancel;
  external set onanimationcancel(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onauxclick;
  external set onauxclick(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforematch;
  external set onbeforematch(EventHandler value);
  external EventHandler get onblur;
  external set onblur(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncopy;
  external set oncopy(EventHandler value);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external EventHandler get oncut;
  external set oncut(EventHandler value);
  external EventHandler get ondblclick;
  external set ondblclick(EventHandler value);
  external EventHandler get ondrag;
  external set ondrag(EventHandler value);
  external EventHandler get ondragend;
  external set ondragend(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragover;
  external set ondragover(EventHandler value);
  external EventHandler get ondragstart;
  external set ondragstart(EventHandler value);
  external EventHandler get ondrop;
  external set ondrop(EventHandler value);
  external EventHandler get ondurationchange;
  external set ondurationchange(EventHandler value);
  external EventHandler get onemptied;
  external set onemptied(EventHandler value);
  external EventHandler get onended;
  external set onended(EventHandler value);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onfocus;
  external set onfocus(EventHandler value);
  external EventHandler get onformdata;
  external set onformdata(EventHandler value);
  external EventHandler get oninput;
  external set oninput(EventHandler value);
  external EventHandler get oninvalid;
  external set oninvalid(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeyup;
  external set onkeyup(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onmousedown;
  external set onmousedown(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmousemove;
  external set onmousemove(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseup;
  external set onmouseup(EventHandler value);
  external EventHandler get onpaste;
  external set onpaste(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onplay;
  external set onplay(EventHandler value);
  external EventHandler get onplaying;
  external set onplaying(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onratechange;
  external set onratechange(EventHandler value);
  external EventHandler get onreset;
  external set onreset(EventHandler value);
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onseeked;
  external set onseeked(EventHandler value);
  external EventHandler get onseeking;
  external set onseeking(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
  external EventHandler get onstalled;
  external set onstalled(EventHandler value);
  external EventHandler get onsubmit;
  external set onsubmit(EventHandler value);
  external EventHandler get onsuspend;
  external set onsuspend(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontoggle;
  external set ontoggle(EventHandler value);
  external EventHandler get onvolumechange;
  external set onvolumechange(EventHandler value);
  external EventHandler get onwaiting;
  external set onwaiting(EventHandler value);
  external EventHandler get onwebkitanimationend;
  external set onwebkitanimationend(EventHandler value);
  external EventHandler get onwebkitanimationiteration;
  external set onwebkitanimationiteration(EventHandler value);
  external EventHandler get onwebkitanimationstart;
  external set onwebkitanimationstart(EventHandler value);
  external EventHandler get onwebkittransitionend;
  external set onwebkittransitionend(EventHandler value);
  external EventHandler get onwheel;
  external set onwheel(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointerrawupdate;
  external set onpointerrawupdate(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerleave;
  external set onpointerleave(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectionchange;
  external set onselectionchange(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchcancel;
  external set ontouchcancel(EventHandler value);
  external EventHandler get onbeforexrselect;
  external set onbeforexrselect(EventHandler value);
}

@JS('CSSImportRule')
@staticInterop
class CSSImportRule extends CSSRule {
  external factory CSSImportRule();
}

extension CSSImportRuleExtension on CSSImportRule {
  external JSString? get layerName;
  external JSString get href;
  external MediaList get media;
  external CSSStyleSheet get styleSheet;
}

@JS('CSSLayerBlockRule')
@staticInterop
class CSSLayerBlockRule extends CSSGroupingRule {
  external factory CSSLayerBlockRule();
}

extension CSSLayerBlockRuleExtension on CSSLayerBlockRule {
  external JSString get name;
}

@JS('CSSLayerStatementRule')
@staticInterop
class CSSLayerStatementRule extends CSSRule {
  external factory CSSLayerStatementRule();
}

extension CSSLayerStatementRuleExtension on CSSLayerStatementRule {
  external JSArray get nameList;
}

@JS('CSSColorProfileRule')
@staticInterop
class CSSColorProfileRule extends CSSRule {
  external factory CSSColorProfileRule();
}

extension CSSColorProfileRuleExtension on CSSColorProfileRule {
  external JSString get name;
  external JSString get src;
  external JSString get renderingIntent;
  external JSString get components;
}

@JS('CSSConditionRule')
@staticInterop
class CSSConditionRule extends CSSGroupingRule {
  external factory CSSConditionRule();
}

extension CSSConditionRuleExtension on CSSConditionRule {
  external JSString get conditionText;
}

@JS('CSSMediaRule')
@staticInterop
class CSSMediaRule extends CSSConditionRule {
  external factory CSSMediaRule();
}

extension CSSMediaRuleExtension on CSSMediaRule {
  external MediaList get media;
}

@JS('CSSSupportsRule')
@staticInterop
class CSSSupportsRule extends CSSConditionRule {
  external factory CSSSupportsRule();
}

@JS('CSSContainerRule')
@staticInterop
class CSSContainerRule extends CSSConditionRule {
  external factory CSSContainerRule();
}

extension CSSContainerRuleExtension on CSSContainerRule {
  external JSString get containerName;
  external JSString get containerQuery;
}

@JS('ContentVisibilityAutoStateChangedEvent')
@staticInterop
class ContentVisibilityAutoStateChangedEvent extends Event {
  external factory ContentVisibilityAutoStateChangedEvent();
  external factory ContentVisibilityAutoStateChangedEvent.a1(JSString type);
  external factory ContentVisibilityAutoStateChangedEvent.a1_1(
      JSString type, ContentVisibilityAutoStateChangedEventInit eventInitDict);
}

extension ContentVisibilityAutoStateChangedEventExtension
    on ContentVisibilityAutoStateChangedEvent {
  external JSBoolean get skipped;
}

@JS('ContentVisibilityAutoStateChangedEventInit')
@staticInterop
class ContentVisibilityAutoStateChangedEventInit extends EventInit {
  external factory ContentVisibilityAutoStateChangedEventInit();
}

extension ContentVisibilityAutoStateChangedEventInitExtension
    on ContentVisibilityAutoStateChangedEventInit {
  // TODO
}

@JS('CSSCounterStyleRule')
@staticInterop
class CSSCounterStyleRule extends CSSRule {
  external factory CSSCounterStyleRule();
}

extension CSSCounterStyleRuleExtension on CSSCounterStyleRule {
  external JSString get name;
  external set name(JSString value);
  external JSString get system;
  external set system(JSString value);
  external JSString get symbols;
  external set symbols(JSString value);
  external JSString get additiveSymbols;
  external set additiveSymbols(JSString value);
  external JSString get negative;
  external set negative(JSString value);
  external JSString get prefix;
  external set prefix(JSString value);
  external JSString get suffix;
  external set suffix(JSString value);
  external JSString get range;
  external set range(JSString value);
  external JSString get pad;
  external set pad(JSString value);
  external JSString get speakAs;
  external set speakAs(JSString value);
  external JSString get fallback;
  external set fallback(JSString value);
}

@JS('FontFaceDescriptors')
@staticInterop
class FontFaceDescriptors {
  external factory FontFaceDescriptors();
}

extension FontFaceDescriptorsExtension on FontFaceDescriptors {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FontFace')
@staticInterop
class FontFace {
  external factory FontFace();
  external factory FontFace.a1(JSString family, JSAny source);
  external factory FontFace.a1_1(
      JSString family, JSAny source, FontFaceDescriptors descriptors);
}

extension FontFaceExtension on FontFace {
  external JSString get family;
  external set family(JSString value);
  external JSString get style;
  external set style(JSString value);
  external JSString get weight;
  external set weight(JSString value);
  external JSString get stretch;
  external set stretch(JSString value);
  external JSString get unicodeRange;
  external set unicodeRange(JSString value);
  external JSString get variant;
  external set variant(JSString value);
  external JSString get featureSettings;
  external set featureSettings(JSString value);
  external JSString get variationSettings;
  external set variationSettings(JSString value);
  external JSString get display;
  external set display(JSString value);
  external JSString get ascentOverride;
  external set ascentOverride(JSString value);
  external JSString get descentOverride;
  external set descentOverride(JSString value);
  external JSString get lineGapOverride;
  external set lineGapOverride(JSString value);
  external FontFaceLoadStatus get status;
  external JSPromise load();
  external JSPromise get loaded;
  external FontFaceFeatures get features;
  external FontFaceVariations get variations;
  external FontFacePalettes get palettes;
}

@JS('FontFaceFeatures')
@staticInterop
class FontFaceFeatures {
  external factory FontFaceFeatures();
}

@JS('FontFaceVariationAxis')
@staticInterop
class FontFaceVariationAxis {
  external factory FontFaceVariationAxis();
}

extension FontFaceVariationAxisExtension on FontFaceVariationAxis {
  external JSString get name;
  external JSString get axisTag;
  external JSNumber get minimumValue;
  external JSNumber get maximumValue;
  external JSNumber get defaultValue;
}

@JS('FontFaceVariations')
@staticInterop
class FontFaceVariations {
  external factory FontFaceVariations();
}

extension FontFaceVariationsExtension on FontFaceVariations {
  // TODO
}

@JS('FontFacePalette')
@staticInterop
class FontFacePalette {
  external factory FontFacePalette();
}

extension FontFacePaletteExtension on FontFacePalette {
  // TODO
  external JSNumber get length;
  external JSBoolean get usableWithLightBackground;
  external JSBoolean get usableWithDarkBackground;
}

@JS('FontFacePalettes')
@staticInterop
class FontFacePalettes {
  external factory FontFacePalettes();
}

extension FontFacePalettesExtension on FontFacePalettes {
  // TODO
  external JSNumber get length;
}

@JS('FontFaceSetLoadEventInit')
@staticInterop
class FontFaceSetLoadEventInit extends EventInit {
  external factory FontFaceSetLoadEventInit();
}

extension FontFaceSetLoadEventInitExtension on FontFaceSetLoadEventInit {
  // TODO
}

@JS('FontFaceSetLoadEvent')
@staticInterop
class FontFaceSetLoadEvent extends Event {
  external factory FontFaceSetLoadEvent();
  external factory FontFaceSetLoadEvent.a1(JSString type);
  external factory FontFaceSetLoadEvent.a1_1(
      JSString type, FontFaceSetLoadEventInit eventInitDict);
}

extension FontFaceSetLoadEventExtension on FontFaceSetLoadEvent {
  external JSArray get fontfaces;
}

@JS('FontFaceSet')
@staticInterop
class FontFaceSet extends EventTarget {
  external factory FontFaceSet();
  external factory FontFaceSet.a1(JSArray initialFaces);
}

extension FontFaceSetExtension on FontFaceSet {
  // TODO
  external FontFaceSet add(FontFace font);
  external JSBoolean delete(FontFace font);
  external JSUndefined clear();
  external EventHandler get onloading;
  external set onloading(EventHandler value);
  external EventHandler get onloadingdone;
  external set onloadingdone(EventHandler value);
  external EventHandler get onloadingerror;
  external set onloadingerror(EventHandler value);
  external JSPromise load(JSString font);
  external JSPromise load_1(JSString font, JSString text);
  external JSBoolean check(JSString font);
  external JSBoolean check_1(JSString font, JSString text);
  external JSPromise get ready;
  external FontFaceSetLoadStatus get status;
}

@JS('FontFaceSource')
@staticInterop
class FontFaceSource {
  external factory FontFaceSource();
}

extension FontFaceSourceExtension on FontFaceSource {
  external FontFaceSet get fonts;
}

@JS('CSSFontFaceRule')
@staticInterop
class CSSFontFaceRule extends CSSRule {
  external factory CSSFontFaceRule();
}

extension CSSFontFaceRuleExtension on CSSFontFaceRule {
  external CSSStyleDeclaration get style;
}

@JS('CSSFontFeatureValuesRule')
@staticInterop
class CSSFontFeatureValuesRule extends CSSRule {
  external factory CSSFontFeatureValuesRule();
}

extension CSSFontFeatureValuesRuleExtension on CSSFontFeatureValuesRule {
  external JSString get fontFamily;
  external set fontFamily(JSString value);
  external CSSFontFeatureValuesMap get annotation;
  external CSSFontFeatureValuesMap get ornaments;
  external CSSFontFeatureValuesMap get stylistic;
  external CSSFontFeatureValuesMap get swash;
  external CSSFontFeatureValuesMap get characterVariant;
  external CSSFontFeatureValuesMap get styleset;
}

@JS('CSSFontFeatureValuesMap')
@staticInterop
class CSSFontFeatureValuesMap {
  external factory CSSFontFeatureValuesMap();
}

extension CSSFontFeatureValuesMapExtension on CSSFontFeatureValuesMap {
  // TODO
  external JSUndefined set(JSString featureValueName, JSAny values);
}

@JS('CSSFontPaletteValuesRule')
@staticInterop
class CSSFontPaletteValuesRule extends CSSRule {
  external factory CSSFontPaletteValuesRule();
}

extension CSSFontPaletteValuesRuleExtension on CSSFontPaletteValuesRule {
  external JSString get name;
  external JSString get fontFamily;
  external JSString get basePalette;
  external JSString get overrideColors;
}

@JS('Highlight')
@staticInterop
class Highlight {
  external factory Highlight();
  external factory Highlight.a1(AbstractRange initialRanges);
}

extension HighlightExtension on Highlight {
  // TODO
  external JSNumber get priority;
  external set priority(JSNumber value);
  external HighlightType get type;
  external set type(HighlightType value);
}

@JS('HighlightRegistry')
@staticInterop
class HighlightRegistry {
  external factory HighlightRegistry();
}

extension HighlightRegistryExtension on HighlightRegistry {
  // TODO
}

@JS('LayoutWorkletGlobalScope')
@staticInterop
class LayoutWorkletGlobalScope extends WorkletGlobalScope {
  external factory LayoutWorkletGlobalScope();
}

extension LayoutWorkletGlobalScopeExtension on LayoutWorkletGlobalScope {
  external JSUndefined registerLayout(JSString name, VoidFunction layoutCtor);
}

@JS('LayoutOptions')
@staticInterop
class LayoutOptions {
  external factory LayoutOptions();
}

extension LayoutOptionsExtension on LayoutOptions {
  // TODO
  // TODO
}

@JS('LayoutChild')
@staticInterop
class LayoutChild {
  external factory LayoutChild();
}

extension LayoutChildExtension on LayoutChild {
  external StylePropertyMapReadOnly get styleMap;
  external JSPromise intrinsicSizes();
  external JSPromise layoutNextFragment(
      LayoutConstraintsOptions constraints, ChildBreakToken breakToken);
}

@JS('LayoutFragment')
@staticInterop
class LayoutFragment {
  external factory LayoutFragment();
}

extension LayoutFragmentExtension on LayoutFragment {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
  external JSNumber get inlineOffset;
  external set inlineOffset(JSNumber value);
  external JSNumber get blockOffset;
  external set blockOffset(JSNumber value);
  external JSAny get data;
  external ChildBreakToken? get breakToken;
}

@JS('IntrinsicSizes')
@staticInterop
class IntrinsicSizes {
  external factory IntrinsicSizes();
}

extension IntrinsicSizesExtension on IntrinsicSizes {
  external JSNumber get minContentSize;
  external JSNumber get maxContentSize;
}

@JS('LayoutConstraints')
@staticInterop
class LayoutConstraints {
  external factory LayoutConstraints();
}

extension LayoutConstraintsExtension on LayoutConstraints {
  external JSNumber get availableInlineSize;
  external JSNumber get availableBlockSize;
  external JSNumber? get fixedInlineSize;
  external JSNumber? get fixedBlockSize;
  external JSNumber get percentageInlineSize;
  external JSNumber get percentageBlockSize;
  external JSNumber? get blockFragmentationOffset;
  external BlockFragmentationType get blockFragmentationType;
  external JSAny get data;
}

@JS('LayoutConstraintsOptions')
@staticInterop
class LayoutConstraintsOptions {
  external factory LayoutConstraintsOptions();
}

extension LayoutConstraintsOptionsExtension on LayoutConstraintsOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ChildBreakToken')
@staticInterop
class ChildBreakToken {
  external factory ChildBreakToken();
}

extension ChildBreakTokenExtension on ChildBreakToken {
  external BreakType get breakType;
  external LayoutChild get child;
}

@JS('BreakToken')
@staticInterop
class BreakToken {
  external factory BreakToken();
}

extension BreakTokenExtension on BreakToken {
  external JSArray get childBreakTokens;
  external JSAny get data;
}

@JS('BreakTokenOptions')
@staticInterop
class BreakTokenOptions {
  external factory BreakTokenOptions();
}

extension BreakTokenOptionsExtension on BreakTokenOptions {
  // TODO
  // TODO
}

@JS('LayoutEdges')
@staticInterop
class LayoutEdges {
  external factory LayoutEdges();
}

extension LayoutEdgesExtension on LayoutEdges {
  external JSNumber get inlineStart;
  external JSNumber get inlineEnd;
  external JSNumber get blockStart;
  external JSNumber get blockEnd;
  external JSNumber get inline;
  external JSNumber get block;
}

@JS('FragmentResultOptions')
@staticInterop
class FragmentResultOptions {
  external factory FragmentResultOptions();
}

extension FragmentResultOptionsExtension on FragmentResultOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FragmentResult')
@staticInterop
class FragmentResult {
  external factory FragmentResult();
  external factory FragmentResult.a1();
  external factory FragmentResult.a1_1(FragmentResultOptions options);
}

extension FragmentResultExtension on FragmentResult {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
}

@JS('IntrinsicSizesResultOptions')
@staticInterop
class IntrinsicSizesResultOptions {
  external factory IntrinsicSizesResultOptions();
}

extension IntrinsicSizesResultOptionsExtension on IntrinsicSizesResultOptions {
  // TODO
  // TODO
}

@JS('SVGClipPathElement')
@staticInterop
class SVGClipPathElement extends SVGElement {
  external factory SVGClipPathElement();
}

extension SVGClipPathElementExtension on SVGClipPathElement {
  external SVGAnimatedEnumeration get clipPathUnits;
  external SVGAnimatedTransformList get transform;
}

@JS('SVGMaskElement')
@staticInterop
class SVGMaskElement extends SVGElement {
  external factory SVGMaskElement();
}

extension SVGMaskElementExtension on SVGMaskElement {
  external SVGAnimatedEnumeration get maskUnits;
  external SVGAnimatedEnumeration get maskContentUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('FocusableAreasOption')
@staticInterop
class FocusableAreasOption {
  external factory FocusableAreasOption();
}

extension FocusableAreasOptionExtension on FocusableAreasOption {
  // TODO
}

@JS('SpatialNavigationSearchOptions')
@staticInterop
class SpatialNavigationSearchOptions {
  external factory SpatialNavigationSearchOptions();
}

extension SpatialNavigationSearchOptionsExtension
    on SpatialNavigationSearchOptions {
  // TODO
  // TODO
}

@JS('NavigationEvent')
@staticInterop
class NavigationEvent extends UIEvent {
  external factory NavigationEvent();
  external factory NavigationEvent.a1(JSString type);
  external factory NavigationEvent.a1_1(
      JSString type, NavigationEventInit eventInitDict);
}

extension NavigationEventExtension on NavigationEvent {
  external SpatialNavigationDirection get dir;
  external EventTarget? get relatedTarget;
}

@JS('NavigationEventInit')
@staticInterop
class NavigationEventInit extends UIEventInit {
  external factory NavigationEventInit();
}

extension NavigationEventInitExtension on NavigationEventInit {
  // TODO
  // TODO
}

@JS('CSSStyleRule')
@staticInterop
class CSSStyleRule extends CSSRule {
  external factory CSSStyleRule();
}

extension CSSStyleRuleExtension on CSSStyleRule {
  external CSSRuleList get cssRules;
  external JSNumber insertRule(JSString rule);
  external JSNumber insertRule_1(JSString rule, JSNumber index);
  external JSUndefined deleteRule(JSNumber index);
  external StylePropertyMap get styleMap;
  external JSString get selectorText;
  external set selectorText(JSString value);
  external CSSStyleDeclaration get style;
}

@JS('PaintWorkletGlobalScope')
@staticInterop
class PaintWorkletGlobalScope extends WorkletGlobalScope {
  external factory PaintWorkletGlobalScope();
}

extension PaintWorkletGlobalScopeExtension on PaintWorkletGlobalScope {
  external JSUndefined registerPaint(JSString name, VoidFunction paintCtor);
  external JSNumber get devicePixelRatio;
}

@JS('PaintRenderingContext2DSettings')
@staticInterop
class PaintRenderingContext2DSettings {
  external factory PaintRenderingContext2DSettings();
}

extension PaintRenderingContext2DSettingsExtension
    on PaintRenderingContext2DSettings {
  // TODO
}

@JS('PaintRenderingContext2D')
@staticInterop
class PaintRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasRect,
        CanvasDrawPath,
        CanvasDrawImage,
        CanvasPathDrawingStyles,
        CanvasPath {
  external factory PaintRenderingContext2D();
}

@JS('PaintSize')
@staticInterop
class PaintSize {
  external factory PaintSize();
}

extension PaintSizeExtension on PaintSize {
  external JSNumber get width;
  external JSNumber get height;
}

@JS('CSSParserOptions')
@staticInterop
class CSSParserOptions {
  external factory CSSParserOptions();
}

extension CSSParserOptionsExtension on CSSParserOptions {
  // TODO
}

@JS('CSSParserRule')
@staticInterop
class CSSParserRule {
  external factory CSSParserRule();
}

@JS('CSSParserAtRule')
@staticInterop
class CSSParserAtRule extends CSSParserRule {
  external factory CSSParserAtRule();
  external factory CSSParserAtRule.a1(JSString name, JSArray prelude);
  external factory CSSParserAtRule.a1_1(
      JSString name, JSArray prelude, JSArray? body);
}

extension CSSParserAtRuleExtension on CSSParserAtRule {
  external JSString get name;
  external JSArray get prelude;
  external JSArray? get body;
}

@JS('CSSParserQualifiedRule')
@staticInterop
class CSSParserQualifiedRule extends CSSParserRule {
  external factory CSSParserQualifiedRule();
  external factory CSSParserQualifiedRule.a1(JSArray prelude);
  external factory CSSParserQualifiedRule.a1_1(JSArray prelude, JSArray? body);
}

extension CSSParserQualifiedRuleExtension on CSSParserQualifiedRule {
  external JSArray get prelude;
  external JSArray get body;
}

@JS('CSSParserDeclaration')
@staticInterop
class CSSParserDeclaration extends CSSParserRule {
  external factory CSSParserDeclaration();
  external factory CSSParserDeclaration.a1(JSString name);
  external factory CSSParserDeclaration.a1_1(JSString name, JSArray body);
}

extension CSSParserDeclarationExtension on CSSParserDeclaration {
  external JSString get name;
  external JSArray get body;
}

@JS('CSSParserValue')
@staticInterop
class CSSParserValue {
  external factory CSSParserValue();
}

@JS('CSSParserBlock')
@staticInterop
class CSSParserBlock extends CSSParserValue {
  external factory CSSParserBlock();
  external factory CSSParserBlock.a1(JSString name, JSArray body);
}

extension CSSParserBlockExtension on CSSParserBlock {
  external JSString get name;
  external JSArray get body;
}

@JS('CSSParserFunction')
@staticInterop
class CSSParserFunction extends CSSParserValue {
  external factory CSSParserFunction();
  external factory CSSParserFunction.a1(JSString name, JSArray args);
}

extension CSSParserFunctionExtension on CSSParserFunction {
  external JSString get name;
  external JSArray get args;
}

@JS('PropertyDefinition')
@staticInterop
class PropertyDefinition {
  external factory PropertyDefinition();
}

extension PropertyDefinitionExtension on PropertyDefinition {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CSSPropertyRule')
@staticInterop
class CSSPropertyRule extends CSSRule {
  external factory CSSPropertyRule();
}

extension CSSPropertyRuleExtension on CSSPropertyRule {
  external JSString get name;
  external JSString get syntax;
  external JSBoolean get inherits;
  external JSString? get initialValue;
}

@JS('CSSPseudoElement')
@staticInterop
class CSSPseudoElement extends EventTarget implements GeometryUtils {
  external factory CSSPseudoElement();
}

extension CSSPseudoElementExtension on CSSPseudoElement {
  external JSString get type;
  external Element get element;
  external JSAny get parent;
  external CSSPseudoElement? pseudo(JSString type);
}

@JS('NamedFlowMap')
@staticInterop
class NamedFlowMap {
  external factory NamedFlowMap();
}

extension NamedFlowMapExtension on NamedFlowMap {
  // TODO
}

@JS('NamedFlow')
@staticInterop
class NamedFlow extends EventTarget {
  external factory NamedFlow();
}

extension NamedFlowExtension on NamedFlow {
  external JSString get name;
  external JSBoolean get overset;
  external JSArray getRegions();
  external JSNumber get firstEmptyRegionIndex;
  external JSArray getContent();
  external JSArray getRegionsByContent(Node node);
}

@JS('Region')
@staticInterop
class Region {
  external factory Region();
}

extension RegionExtension on Region {
  external JSString get regionOverset;
  external JSArray? getRegionFlowRanges();
}

@JS('CSSTransition')
@staticInterop
class CSSTransition extends Animation {
  external factory CSSTransition();
}

extension CSSTransitionExtension on CSSTransition {
  external JSString get transitionProperty;
}

@JS('TransitionEvent')
@staticInterop
class TransitionEvent extends Event {
  external factory TransitionEvent();
  external factory TransitionEvent.a1(JSString type);
  external factory TransitionEvent.a1_1(
      JSString type, TransitionEventInit transitionEventInitDict);
}

extension TransitionEventExtension on TransitionEvent {
  external JSString get propertyName;
  external JSNumber get elapsedTime;
  external JSString get pseudoElement;
}

@JS('TransitionEventInit')
@staticInterop
class TransitionEventInit extends EventInit {
  external factory TransitionEventInit();
}

extension TransitionEventInitExtension on TransitionEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('CSSStyleValue')
@staticInterop
class CSSStyleValue {
  external factory CSSStyleValue();
  external static CSSStyleValue parse(JSString property, JSString cssText);
  external static JSArray parseAll(JSString property, JSString cssText);
}

@JS('StylePropertyMapReadOnly')
@staticInterop
class StylePropertyMapReadOnly {
  external factory StylePropertyMapReadOnly();
}

extension StylePropertyMapReadOnlyExtension on StylePropertyMapReadOnly {
  // TODO
  external JSAny get(JSString property);
  external JSArray getAll(JSString property);
  external JSBoolean has(JSString property);
  external JSNumber get size;
}

@JS('StylePropertyMap')
@staticInterop
class StylePropertyMap extends StylePropertyMapReadOnly {
  external factory StylePropertyMap();
}

extension StylePropertyMapExtension on StylePropertyMap {
  external JSUndefined set(JSString property, JSAny values);
  external JSUndefined append(JSString property, JSAny values);
  external JSUndefined delete(JSString property);
  external JSUndefined clear();
}

@JS('ElementCSSInlineStyle')
@staticInterop
class ElementCSSInlineStyle {
  external factory ElementCSSInlineStyle();
}

extension ElementCSSInlineStyleExtension on ElementCSSInlineStyle {
  external StylePropertyMap get attributeStyleMap;
  external CSSStyleDeclaration get style;
}

@JS('CSSUnparsedValue')
@staticInterop
class CSSUnparsedValue extends CSSStyleValue {
  external factory CSSUnparsedValue();
  external factory CSSUnparsedValue.a1(JSArray members);
}

extension CSSUnparsedValueExtension on CSSUnparsedValue {
  // TODO
  external JSNumber get length;
}

@JS('CSSVariableReferenceValue')
@staticInterop
class CSSVariableReferenceValue {
  external factory CSSVariableReferenceValue();
  external factory CSSVariableReferenceValue.a1(JSString variable);
  external factory CSSVariableReferenceValue.a1_1(
      JSString variable, CSSUnparsedValue? fallback);
}

extension CSSVariableReferenceValueExtension on CSSVariableReferenceValue {
  external JSString get variable;
  external set variable(JSString value);
  external CSSUnparsedValue? get fallback;
}

@JS('CSSKeywordValue')
@staticInterop
class CSSKeywordValue extends CSSStyleValue {
  external factory CSSKeywordValue();
  external factory CSSKeywordValue.a1(JSString value);
}

extension CSSKeywordValueExtension on CSSKeywordValue {
  external JSString get value;
  external set value(JSString value);
}

@JS('CSSNumericType')
@staticInterop
class CSSNumericType {
  external factory CSSNumericType();
}

extension CSSNumericTypeExtension on CSSNumericType {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CSSNumericValue')
@staticInterop
class CSSNumericValue extends CSSStyleValue {
  external factory CSSNumericValue();
  external static CSSNumericValue parse(JSString cssText);
}

extension CSSNumericValueExtension on CSSNumericValue {
  external CSSNumericValue add(CSSNumberish values);
  external CSSNumericValue sub(CSSNumberish values);
  external CSSNumericValue mul(CSSNumberish values);
  external CSSNumericValue div(CSSNumberish values);
  external CSSNumericValue min(CSSNumberish values);
  external CSSNumericValue max(CSSNumberish values);
  external JSBoolean equals(CSSNumberish value);
  external CSSUnitValue to(JSString unit);
  external CSSMathSum toSum(JSString units);
  external CSSNumericType type();
}

@JS('CSSUnitValue')
@staticInterop
class CSSUnitValue extends CSSNumericValue {
  external factory CSSUnitValue();
  external factory CSSUnitValue.a1(JSNumber value, JSString unit);
}

extension CSSUnitValueExtension on CSSUnitValue {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSString get unit;
}

@JS('CSSMathValue')
@staticInterop
class CSSMathValue extends CSSNumericValue {
  external factory CSSMathValue();
}

extension CSSMathValueExtension on CSSMathValue {
  external CSSMathOperator get operator;
}

@JS('CSSMathSum')
@staticInterop
class CSSMathSum extends CSSMathValue {
  external factory CSSMathSum();
  external factory CSSMathSum.a1(CSSNumberish args);
}

extension CSSMathSumExtension on CSSMathSum {
  external CSSNumericArray get values;
}

@JS('CSSMathProduct')
@staticInterop
class CSSMathProduct extends CSSMathValue {
  external factory CSSMathProduct();
  external factory CSSMathProduct.a1(CSSNumberish args);
}

extension CSSMathProductExtension on CSSMathProduct {
  external CSSNumericArray get values;
}

@JS('CSSMathNegate')
@staticInterop
class CSSMathNegate extends CSSMathValue {
  external factory CSSMathNegate();
  external factory CSSMathNegate.a1(CSSNumberish arg);
}

extension CSSMathNegateExtension on CSSMathNegate {
  external CSSNumericValue get value;
}

@JS('CSSMathInvert')
@staticInterop
class CSSMathInvert extends CSSMathValue {
  external factory CSSMathInvert();
  external factory CSSMathInvert.a1(CSSNumberish arg);
}

extension CSSMathInvertExtension on CSSMathInvert {
  external CSSNumericValue get value;
}

@JS('CSSMathMin')
@staticInterop
class CSSMathMin extends CSSMathValue {
  external factory CSSMathMin();
  external factory CSSMathMin.a1(CSSNumberish args);
}

extension CSSMathMinExtension on CSSMathMin {
  external CSSNumericArray get values;
}

@JS('CSSMathMax')
@staticInterop
class CSSMathMax extends CSSMathValue {
  external factory CSSMathMax();
  external factory CSSMathMax.a1(CSSNumberish args);
}

extension CSSMathMaxExtension on CSSMathMax {
  external CSSNumericArray get values;
}

@JS('CSSMathClamp')
@staticInterop
class CSSMathClamp extends CSSMathValue {
  external factory CSSMathClamp();
  external factory CSSMathClamp.a1(
      CSSNumberish lower, CSSNumberish value, CSSNumberish upper);
}

extension CSSMathClampExtension on CSSMathClamp {
  external CSSNumericValue get lower;
  external CSSNumericValue get value;
  external CSSNumericValue get upper;
}

@JS('CSSNumericArray')
@staticInterop
class CSSNumericArray {
  external factory CSSNumericArray();
}

extension CSSNumericArrayExtension on CSSNumericArray {
  // TODO
  external JSNumber get length;
}

@JS('CSSTransformValue')
@staticInterop
class CSSTransformValue extends CSSStyleValue {
  external factory CSSTransformValue();
  external factory CSSTransformValue.a1(JSArray transforms);
}

extension CSSTransformValueExtension on CSSTransformValue {
  // TODO
  external JSNumber get length;
  external JSBoolean get is2D;
  external DOMMatrix toMatrix();
}

@JS('CSSTransformComponent')
@staticInterop
class CSSTransformComponent {
  external factory CSSTransformComponent();
}

extension CSSTransformComponentExtension on CSSTransformComponent {
  external JSBoolean get is2D;
  external set is2D(JSBoolean value);
  external DOMMatrix toMatrix();
}

@JS('CSSTranslate')
@staticInterop
class CSSTranslate extends CSSTransformComponent {
  external factory CSSTranslate();
  external factory CSSTranslate.a1(CSSNumericValue x, CSSNumericValue y);
  external factory CSSTranslate.a1_1(
      CSSNumericValue x, CSSNumericValue y, CSSNumericValue z);
}

extension CSSTranslateExtension on CSSTranslate {
  external CSSNumericValue get x;
  external set x(CSSNumericValue value);
  external CSSNumericValue get y;
  external set y(CSSNumericValue value);
  external CSSNumericValue get z;
  external set z(CSSNumericValue value);
}

@JS('CSSRotate')
@staticInterop
class CSSRotate extends CSSTransformComponent {
  external factory CSSRotate();
  external factory CSSRotate.a1(CSSNumericValue angle);
  external factory CSSRotate.a2(
      CSSNumberish x, CSSNumberish y, CSSNumberish z, CSSNumericValue angle);
}

extension CSSRotateExtension on CSSRotate {
  external CSSNumberish get x;
  external set x(CSSNumberish value);
  external CSSNumberish get y;
  external set y(CSSNumberish value);
  external CSSNumberish get z;
  external set z(CSSNumberish value);
  external CSSNumericValue get angle;
  external set angle(CSSNumericValue value);
}

@JS('CSSScale')
@staticInterop
class CSSScale extends CSSTransformComponent {
  external factory CSSScale();
  external factory CSSScale.a1(CSSNumberish x, CSSNumberish y);
  external factory CSSScale.a1_1(
      CSSNumberish x, CSSNumberish y, CSSNumberish z);
}

extension CSSScaleExtension on CSSScale {
  external CSSNumberish get x;
  external set x(CSSNumberish value);
  external CSSNumberish get y;
  external set y(CSSNumberish value);
  external CSSNumberish get z;
  external set z(CSSNumberish value);
}

@JS('CSSSkew')
@staticInterop
class CSSSkew extends CSSTransformComponent {
  external factory CSSSkew();
  external factory CSSSkew.a1(CSSNumericValue ax, CSSNumericValue ay);
}

extension CSSSkewExtension on CSSSkew {
  external CSSNumericValue get ax;
  external set ax(CSSNumericValue value);
  external CSSNumericValue get ay;
  external set ay(CSSNumericValue value);
}

@JS('CSSSkewX')
@staticInterop
class CSSSkewX extends CSSTransformComponent {
  external factory CSSSkewX();
  external factory CSSSkewX.a1(CSSNumericValue ax);
}

extension CSSSkewXExtension on CSSSkewX {
  external CSSNumericValue get ax;
  external set ax(CSSNumericValue value);
}

@JS('CSSSkewY')
@staticInterop
class CSSSkewY extends CSSTransformComponent {
  external factory CSSSkewY();
  external factory CSSSkewY.a1(CSSNumericValue ay);
}

extension CSSSkewYExtension on CSSSkewY {
  external CSSNumericValue get ay;
  external set ay(CSSNumericValue value);
}

@JS('CSSPerspective')
@staticInterop
class CSSPerspective extends CSSTransformComponent {
  external factory CSSPerspective();
  external factory CSSPerspective.a1(CSSPerspectiveValue length);
}

extension CSSPerspectiveExtension on CSSPerspective {
  external CSSPerspectiveValue get length;
  external set length(CSSPerspectiveValue value);
}

@JS('CSSMatrixComponent')
@staticInterop
class CSSMatrixComponent extends CSSTransformComponent {
  external factory CSSMatrixComponent();
  external factory CSSMatrixComponent.a1(DOMMatrixReadOnly matrix);
  external factory CSSMatrixComponent.a1_1(
      DOMMatrixReadOnly matrix, CSSMatrixComponentOptions options);
}

extension CSSMatrixComponentExtension on CSSMatrixComponent {
  external DOMMatrix get matrix;
  external set matrix(DOMMatrix value);
}

@JS('CSSMatrixComponentOptions')
@staticInterop
class CSSMatrixComponentOptions {
  external factory CSSMatrixComponentOptions();
}

extension CSSMatrixComponentOptionsExtension on CSSMatrixComponentOptions {
  // TODO
}

@JS('CSSImageValue')
@staticInterop
class CSSImageValue extends CSSStyleValue {
  external factory CSSImageValue();
}

@JS('CSSColorValue')
@staticInterop
class CSSColorValue extends CSSStyleValue {
  external factory CSSColorValue();
  external static JSAny parse(JSString cssText);
}

@JS('CSSRGB')
@staticInterop
class CSSRGB extends CSSColorValue {
  external factory CSSRGB();
  external factory CSSRGB.a1(
      CSSColorRGBComp r, CSSColorRGBComp g, CSSColorRGBComp b);
  external factory CSSRGB.a1_1(CSSColorRGBComp r, CSSColorRGBComp g,
      CSSColorRGBComp b, CSSColorPercent alpha);
}

extension CSSRGBExtension on CSSRGB {
  external CSSColorRGBComp get r;
  external set r(CSSColorRGBComp value);
  external CSSColorRGBComp get g;
  external set g(CSSColorRGBComp value);
  external CSSColorRGBComp get b;
  external set b(CSSColorRGBComp value);
  external CSSColorPercent get alpha;
  external set alpha(CSSColorPercent value);
}

@JS('CSSHSL')
@staticInterop
class CSSHSL extends CSSColorValue {
  external factory CSSHSL();
  external factory CSSHSL.a1(
      CSSColorAngle h, CSSColorPercent s, CSSColorPercent l);
  external factory CSSHSL.a1_1(CSSColorAngle h, CSSColorPercent s,
      CSSColorPercent l, CSSColorPercent alpha);
}

extension CSSHSLExtension on CSSHSL {
  external CSSColorAngle get h;
  external set h(CSSColorAngle value);
  external CSSColorPercent get s;
  external set s(CSSColorPercent value);
  external CSSColorPercent get l;
  external set l(CSSColorPercent value);
  external CSSColorPercent get alpha;
  external set alpha(CSSColorPercent value);
}

@JS('CSSHWB')
@staticInterop
class CSSHWB extends CSSColorValue {
  external factory CSSHWB();
  external factory CSSHWB.a1(CSSNumericValue h, CSSNumberish w, CSSNumberish b);
  external factory CSSHWB.a1_1(
      CSSNumericValue h, CSSNumberish w, CSSNumberish b, CSSNumberish alpha);
}

extension CSSHWBExtension on CSSHWB {
  external CSSNumericValue get h;
  external set h(CSSNumericValue value);
  external CSSNumberish get w;
  external set w(CSSNumberish value);
  external CSSNumberish get b;
  external set b(CSSNumberish value);
  external CSSNumberish get alpha;
  external set alpha(CSSNumberish value);
}

@JS('CSSLab')
@staticInterop
class CSSLab extends CSSColorValue {
  external factory CSSLab();
  external factory CSSLab.a1(
      CSSColorPercent l, CSSColorNumber a, CSSColorNumber b);
  external factory CSSLab.a1_1(CSSColorPercent l, CSSColorNumber a,
      CSSColorNumber b, CSSColorPercent alpha);
}

extension CSSLabExtension on CSSLab {
  external CSSColorPercent get l;
  external set l(CSSColorPercent value);
  external CSSColorNumber get a;
  external set a(CSSColorNumber value);
  external CSSColorNumber get b;
  external set b(CSSColorNumber value);
  external CSSColorPercent get alpha;
  external set alpha(CSSColorPercent value);
}

@JS('CSSLCH')
@staticInterop
class CSSLCH extends CSSColorValue {
  external factory CSSLCH();
  external factory CSSLCH.a1(
      CSSColorPercent l, CSSColorPercent c, CSSColorAngle h);
  external factory CSSLCH.a1_1(CSSColorPercent l, CSSColorPercent c,
      CSSColorAngle h, CSSColorPercent alpha);
}

extension CSSLCHExtension on CSSLCH {
  external CSSColorPercent get l;
  external set l(CSSColorPercent value);
  external CSSColorPercent get c;
  external set c(CSSColorPercent value);
  external CSSColorAngle get h;
  external set h(CSSColorAngle value);
  external CSSColorPercent get alpha;
  external set alpha(CSSColorPercent value);
}

@JS('CSSOKLab')
@staticInterop
class CSSOKLab extends CSSColorValue {
  external factory CSSOKLab();
  external factory CSSOKLab.a1(
      CSSColorPercent l, CSSColorNumber a, CSSColorNumber b);
  external factory CSSOKLab.a1_1(CSSColorPercent l, CSSColorNumber a,
      CSSColorNumber b, CSSColorPercent alpha);
}

extension CSSOKLabExtension on CSSOKLab {
  external CSSColorPercent get l;
  external set l(CSSColorPercent value);
  external CSSColorNumber get a;
  external set a(CSSColorNumber value);
  external CSSColorNumber get b;
  external set b(CSSColorNumber value);
  external CSSColorPercent get alpha;
  external set alpha(CSSColorPercent value);
}

@JS('CSSOKLCH')
@staticInterop
class CSSOKLCH extends CSSColorValue {
  external factory CSSOKLCH();
  external factory CSSOKLCH.a1(
      CSSColorPercent l, CSSColorPercent c, CSSColorAngle h);
  external factory CSSOKLCH.a1_1(CSSColorPercent l, CSSColorPercent c,
      CSSColorAngle h, CSSColorPercent alpha);
}

extension CSSOKLCHExtension on CSSOKLCH {
  external CSSColorPercent get l;
  external set l(CSSColorPercent value);
  external CSSColorPercent get c;
  external set c(CSSColorPercent value);
  external CSSColorAngle get h;
  external set h(CSSColorAngle value);
  external CSSColorPercent get alpha;
  external set alpha(CSSColorPercent value);
}

@JS('CSSColor')
@staticInterop
class CSSColor extends CSSColorValue {
  external factory CSSColor();
  external factory CSSColor.a1(CSSKeywordish colorSpace, JSArray channels);
  external factory CSSColor.a1_1(
      CSSKeywordish colorSpace, JSArray channels, CSSNumberish alpha);
}

extension CSSColorExtension on CSSColor {
  external CSSKeywordish get colorSpace;
  external set colorSpace(CSSKeywordish value);
  external JSArray get channels;
  external set channels(JSArray value);
  external CSSNumberish get alpha;
  external set alpha(CSSNumberish value);
}

@JS('ViewTransition')
@staticInterop
class ViewTransition {
  external factory ViewTransition();
}

extension ViewTransitionExtension on ViewTransition {
  external JSPromise get updateCallbackDone;
  external JSPromise get ready;
  external JSPromise get finished;
  external JSUndefined skipTransition();
}

@JS('ScrollOptions')
@staticInterop
class ScrollOptions {
  external factory ScrollOptions();
}

extension ScrollOptionsExtension on ScrollOptions {
  // TODO
}

@JS('ScrollToOptions')
@staticInterop
class ScrollToOptions extends ScrollOptions {
  external factory ScrollToOptions();
}

extension ScrollToOptionsExtension on ScrollToOptions {
  // TODO
  // TODO
}

@JS('MediaQueryList')
@staticInterop
class MediaQueryList extends EventTarget {
  external factory MediaQueryList();
}

extension MediaQueryListExtension on MediaQueryList {
  external JSString get media;
  external JSBoolean get matches;
  external JSUndefined addListener(EventListener? callback);
  external JSUndefined removeListener(EventListener? callback);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('MediaQueryListEvent')
@staticInterop
class MediaQueryListEvent extends Event {
  external factory MediaQueryListEvent();
  external factory MediaQueryListEvent.a1(JSString type);
  external factory MediaQueryListEvent.a1_1(
      JSString type, MediaQueryListEventInit eventInitDict);
}

extension MediaQueryListEventExtension on MediaQueryListEvent {
  external JSString get media;
  external JSBoolean get matches;
}

@JS('MediaQueryListEventInit')
@staticInterop
class MediaQueryListEventInit extends EventInit {
  external factory MediaQueryListEventInit();
}

extension MediaQueryListEventInitExtension on MediaQueryListEventInit {
  // TODO
  // TODO
}

@JS('Screen')
@staticInterop
class Screen {
  external factory Screen();
}

extension ScreenExtension on Screen {
  external JSNumber get availWidth;
  external JSNumber get availHeight;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get colorDepth;
  external JSNumber get pixelDepth;
  external ScreenOrientation get orientation;
  external JSBoolean get isExtended;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('CaretPosition')
@staticInterop
class CaretPosition {
  external factory CaretPosition();
}

extension CaretPositionExtension on CaretPosition {
  external Node get offsetNode;
  external JSNumber get offset;
  external DOMRect? getClientRect();
}

@JS('ScrollIntoViewOptions')
@staticInterop
class ScrollIntoViewOptions extends ScrollOptions {
  external factory ScrollIntoViewOptions();
}

extension ScrollIntoViewOptionsExtension on ScrollIntoViewOptions {
  // TODO
  // TODO
}

@JS('CheckVisibilityOptions')
@staticInterop
class CheckVisibilityOptions {
  external factory CheckVisibilityOptions();
}

extension CheckVisibilityOptionsExtension on CheckVisibilityOptions {
  // TODO
  // TODO
}

@JS('HTMLElement')
@staticInterop
class HTMLElement extends Element
    implements
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        ElementContentEditable,
        HTMLOrSVGElement {
  external factory HTMLElement();
}

extension HTMLElementExtension on HTMLElement {
  external Element? get offsetParent;
  external JSNumber get offsetTop;
  external JSNumber get offsetLeft;
  external JSNumber get offsetWidth;
  external JSNumber get offsetHeight;
  external JSString get title;
  external set title(JSString value);
  external JSString get lang;
  external set lang(JSString value);
  external JSBoolean get translate;
  external set translate(JSBoolean value);
  external JSString get dir;
  external set dir(JSString value);
  external JSAny? get hidden;
  external set hidden(JSAny? value);
  external JSBoolean get inert;
  external set inert(JSBoolean value);
  external JSUndefined click();
  external JSString get accessKey;
  external set accessKey(JSString value);
  external JSString get accessKeyLabel;
  external JSBoolean get draggable;
  external set draggable(JSBoolean value);
  external JSBoolean get spellcheck;
  external set spellcheck(JSBoolean value);
  external JSString get autocapitalize;
  external set autocapitalize(JSString value);
  external JSString get innerText;
  external set innerText(JSString value);
  external JSString get outerText;
  external set outerText(JSString value);
  external ElementInternals attachInternals();
  external JSUndefined showPopover();
  external JSUndefined hidePopover();
  external JSUndefined togglePopover();
  external JSUndefined togglePopover_1(JSBoolean force);
  external JSString? get popover;
  external set popover(JSString? value);
}

@JS('HTMLImageElement')
@staticInterop
class HTMLImageElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils {
  external factory HTMLImageElement();
}

extension HTMLImageElementExtension on HTMLImageElement {
  external JSNumber get x;
  external JSNumber get y;
  external JSString get alt;
  external set alt(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get srcset;
  external set srcset(JSString value);
  external JSString get sizes;
  external set sizes(JSString value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSString get useMap;
  external set useMap(JSString value);
  external JSBoolean get isMap;
  external set isMap(JSBoolean value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external JSNumber get naturalWidth;
  external JSNumber get naturalHeight;
  external JSBoolean get complete;
  external JSString get currentSrc;
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get decoding;
  external set decoding(JSString value);
  external JSString get loading;
  external set loading(JSString value);
  external JSPromise decode();
  external JSString get name;
  external set name(JSString value);
  external JSString get lowsrc;
  external set lowsrc(JSString value);
  external JSString get align;
  external set align(JSString value);
  external JSNumber get hspace;
  external set hspace(JSNumber value);
  external JSNumber get vspace;
  external set vspace(JSNumber value);
  external JSString get longDesc;
  external set longDesc(JSString value);
  external JSString get border;
  external set border(JSString value);
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('MouseEvent')
@staticInterop
class MouseEvent extends UIEvent {
  external factory MouseEvent();
  external factory MouseEvent.a1(JSString type);
  external factory MouseEvent.a1_1(JSString type, MouseEventInit eventInitDict);
}

extension MouseEventExtension on MouseEvent {
  external JSNumber get pageX;
  external JSNumber get pageY;
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get offsetX;
  external JSNumber get offsetY;
  external JSNumber get movementX;
  external JSNumber get movementY;
  external JSNumber get screenX;
  external JSNumber get screenY;
  external JSNumber get clientX;
  external JSNumber get clientY;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSNumber get button;
  external JSNumber get buttons;
  external EventTarget? get relatedTarget;
  external JSBoolean getModifierState(JSString keyArg);
  external JSUndefined initMouseEvent(JSString typeArg);
  external JSUndefined initMouseEvent_1(JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initMouseEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initMouseEvent_3(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initMouseEvent_4(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg, JSNumber detailArg);
  external JSUndefined initMouseEvent_5(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg);
  external JSUndefined initMouseEvent_6(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg);
  external JSUndefined initMouseEvent_7(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg);
  external JSUndefined initMouseEvent_8(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg);
  external JSUndefined initMouseEvent_9(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg);
  external JSUndefined initMouseEvent_10(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg,
      JSBoolean altKeyArg);
  external JSUndefined initMouseEvent_11(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg,
      JSBoolean altKeyArg,
      JSBoolean shiftKeyArg);
  external JSUndefined initMouseEvent_12(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg,
      JSBoolean altKeyArg,
      JSBoolean shiftKeyArg,
      JSBoolean metaKeyArg);
  external JSUndefined initMouseEvent_13(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg,
      JSBoolean altKeyArg,
      JSBoolean shiftKeyArg,
      JSBoolean metaKeyArg,
      JSNumber buttonArg);
  external JSUndefined initMouseEvent_14(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSNumber detailArg,
      JSNumber screenXArg,
      JSNumber screenYArg,
      JSNumber clientXArg,
      JSNumber clientYArg,
      JSBoolean ctrlKeyArg,
      JSBoolean altKeyArg,
      JSBoolean shiftKeyArg,
      JSBoolean metaKeyArg,
      JSNumber buttonArg,
      EventTarget? relatedTargetArg);
}

@JS('BoxQuadOptions')
@staticInterop
class BoxQuadOptions {
  external factory BoxQuadOptions();
}

extension BoxQuadOptionsExtension on BoxQuadOptions {
  // TODO
  // TODO
}

@JS('ConvertCoordinateOptions')
@staticInterop
class ConvertCoordinateOptions {
  external factory ConvertCoordinateOptions();
}

extension ConvertCoordinateOptionsExtension on ConvertCoordinateOptions {
  // TODO
  // TODO
}

@JS('GeometryUtils')
@staticInterop
class GeometryUtils {
  external factory GeometryUtils();
}

extension GeometryUtilsExtension on GeometryUtils {
  external JSArray getBoxQuads();
  external JSArray getBoxQuads_1(BoxQuadOptions options);
  external DOMQuad convertQuadFromNode(DOMQuadInit quad, GeometryNode from);
  external DOMQuad convertQuadFromNode_1(
      DOMQuadInit quad, GeometryNode from, ConvertCoordinateOptions options);
  external DOMQuad convertRectFromNode(DOMRectReadOnly rect, GeometryNode from);
  external DOMQuad convertRectFromNode_1(DOMRectReadOnly rect,
      GeometryNode from, ConvertCoordinateOptions options);
  external DOMPoint convertPointFromNode(DOMPointInit point, GeometryNode from);
  external DOMPoint convertPointFromNode_1(
      DOMPointInit point, GeometryNode from, ConvertCoordinateOptions options);
}

@JS('VisualViewport')
@staticInterop
class VisualViewport extends EventTarget {
  external factory VisualViewport();
}

extension VisualViewportExtension on VisualViewport {
  external JSNumber get offsetLeft;
  external JSNumber get offsetTop;
  external JSNumber get pageLeft;
  external JSNumber get pageTop;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get scale;
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
}

@JS('MediaList')
@staticInterop
class MediaList {
  external factory MediaList();
}

extension MediaListExtension on MediaList {
  external JSString get mediaText;
  external set mediaText(JSString value);
  external JSNumber get length;
  external JSString? item(JSNumber index);
  external JSUndefined appendMedium(JSString medium);
  external JSUndefined deleteMedium(JSString medium);
}

@JS('StyleSheet')
@staticInterop
class StyleSheet {
  external factory StyleSheet();
}

extension StyleSheetExtension on StyleSheet {
  external JSString get type;
  external JSString? get href;
  external JSAny? get ownerNode;
  external CSSStyleSheet? get parentStyleSheet;
  external JSString? get title;
  external MediaList get media;
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
}

@JS('CSSStyleSheet')
@staticInterop
class CSSStyleSheet extends StyleSheet {
  external factory CSSStyleSheet();
  external factory CSSStyleSheet.a1();
  external factory CSSStyleSheet.a1_1(CSSStyleSheetInit options);
}

extension CSSStyleSheetExtension on CSSStyleSheet {
  external CSSRule? get ownerRule;
  external CSSRuleList get cssRules;
  external JSNumber insertRule(JSString rule);
  external JSNumber insertRule_1(JSString rule, JSNumber index);
  external JSUndefined deleteRule(JSNumber index);
  external JSPromise replace(JSString text);
  external JSUndefined replaceSync(JSString text);
  external CSSRuleList get rules;
  external JSNumber addRule();
  external JSNumber addRule_1(JSString selector);
  external JSNumber addRule_2(JSString selector, JSString style);
  external JSNumber addRule_3(
      JSString selector, JSString style, JSNumber index);
  external JSUndefined removeRule();
  external JSUndefined removeRule_1(JSNumber index);
}

@JS('CSSStyleSheetInit')
@staticInterop
class CSSStyleSheetInit {
  external factory CSSStyleSheetInit();
}

extension CSSStyleSheetInitExtension on CSSStyleSheetInit {
  // TODO
  // TODO
  // TODO
}

@JS('StyleSheetList')
@staticInterop
class StyleSheetList {
  external factory StyleSheetList();
}

extension StyleSheetListExtension on StyleSheetList {
  external CSSStyleSheet? item(JSNumber index);
  external JSNumber get length;
}

@JS('DocumentOrShadowRoot')
@staticInterop
class DocumentOrShadowRoot {
  external factory DocumentOrShadowRoot();
}

extension DocumentOrShadowRootExtension on DocumentOrShadowRoot {
  external StyleSheetList get styleSheets;
  external JSArray get adoptedStyleSheets;
  external set adoptedStyleSheets(JSArray value);
  external Element? get fullscreenElement;
  external Element? get activeElement;
  external Element? get pictureInPictureElement;
  external Element? get pointerLockElement;
  external JSArray getAnimations();
}

@JS('LinkStyle')
@staticInterop
class LinkStyle {
  external factory LinkStyle();
}

extension LinkStyleExtension on LinkStyle {
  external CSSStyleSheet? get sheet;
}

@JS('CSSRuleList')
@staticInterop
class CSSRuleList {
  external factory CSSRuleList();
}

extension CSSRuleListExtension on CSSRuleList {
  external CSSRule? item(JSNumber index);
  external JSNumber get length;
}

@JS('CSSGroupingRule')
@staticInterop
class CSSGroupingRule extends CSSRule {
  external factory CSSGroupingRule();
}

extension CSSGroupingRuleExtension on CSSGroupingRule {
  external CSSRuleList get cssRules;
  external JSNumber insertRule(JSString rule);
  external JSNumber insertRule_1(JSString rule, JSNumber index);
  external JSUndefined deleteRule(JSNumber index);
}

@JS('CSSPageRule')
@staticInterop
class CSSPageRule extends CSSGroupingRule {
  external factory CSSPageRule();
}

extension CSSPageRuleExtension on CSSPageRule {
  external JSString get selectorText;
  external set selectorText(JSString value);
  external CSSStyleDeclaration get style;
}

@JS('CSSMarginRule')
@staticInterop
class CSSMarginRule extends CSSRule {
  external factory CSSMarginRule();
}

extension CSSMarginRuleExtension on CSSMarginRule {
  external JSString get name;
  external CSSStyleDeclaration get style;
}

@JS('CSSNamespaceRule')
@staticInterop
class CSSNamespaceRule extends CSSRule {
  external factory CSSNamespaceRule();
}

extension CSSNamespaceRuleExtension on CSSNamespaceRule {
  external JSString get namespaceURI;
  external JSString get prefix;
}

@JS('CSSStyleDeclaration')
@staticInterop
class CSSStyleDeclaration {
  external factory CSSStyleDeclaration();
}

extension CSSStyleDeclarationExtension on CSSStyleDeclaration {
  external JSString get cssText;
  external set cssText(JSString value);
  external JSNumber get length;
  external JSString item(JSNumber index);
  external JSString getPropertyValue(JSString property);
  external JSString getPropertyPriority(JSString property);
  external JSUndefined setProperty(JSString property, JSString value);
  external JSUndefined setProperty_1(
      JSString property, JSString value, JSString priority);
  external JSString removeProperty(JSString property);
  external CSSRule? get parentRule;
  external JSString get cssFloat;
  external set cssFloat(JSString value);
}

@JS('ElementInternals')
@staticInterop
class ElementInternals implements ARIAMixin {
  external factory ElementInternals();
}

extension ElementInternalsExtension on ElementInternals {
  external CustomStateSet get states;
  external ShadowRoot? get shadowRoot;
  external JSUndefined setFormValue(JSAny? value);
  external JSUndefined setFormValue_1(JSAny? value, JSAny? state);
  external HTMLFormElement? get form;
  external JSUndefined setValidity();
  external JSUndefined setValidity_1(ValidityStateFlags flags);
  external JSUndefined setValidity_2(
      ValidityStateFlags flags, JSString message);
  external JSUndefined setValidity_3(
      ValidityStateFlags flags, JSString message, HTMLElement anchor);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external NodeList get labels;
}

@JS('CustomStateSet')
@staticInterop
class CustomStateSet {
  external factory CustomStateSet();
}

extension CustomStateSetExtension on CustomStateSet {
  // TODO
  external JSUndefined add(JSString value);
}

@JS('DataCue')
@staticInterop
class DataCue extends TextTrackCue {
  external factory DataCue();
  external factory DataCue.a1(
      JSNumber startTime, JSNumber endTime, JSAny value);
  external factory DataCue.a1_1(
      JSNumber startTime, JSNumber endTime, JSAny value, JSString type);
}

extension DataCueExtension on DataCue {
  external JSAny get value;
  external set value(JSAny value);
  external JSString get type;
}

@JS('DeprecationReportBody')
@staticInterop
class DeprecationReportBody extends ReportBody {
  external factory DeprecationReportBody();
}

extension DeprecationReportBodyExtension on DeprecationReportBody {
  external JSObject toJSON();
  external JSString get id;
  external JSObject? get anticipatedRemoval;
  external JSString get message;
  external JSString? get sourceFile;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
}

@JS('NavigatorDeviceMemory')
@staticInterop
class NavigatorDeviceMemory {
  external factory NavigatorDeviceMemory();
}

extension NavigatorDeviceMemoryExtension on NavigatorDeviceMemory {
  external JSNumber get deviceMemory;
}

@JS('DevicePosture')
@staticInterop
class DevicePosture extends EventTarget {
  external factory DevicePosture();
}

extension DevicePostureExtension on DevicePosture {
  external DevicePostureType get type;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('DigitalGoodsService')
@staticInterop
class DigitalGoodsService {
  external factory DigitalGoodsService();
}

extension DigitalGoodsServiceExtension on DigitalGoodsService {
  external JSPromise getDetails(JSArray itemIds);
  external JSPromise listPurchases();
  external JSPromise listPurchaseHistory();
  external JSPromise consume(JSString purchaseToken);
}

@JS('ItemDetails')
@staticInterop
class ItemDetails {
  external factory ItemDetails();
}

extension ItemDetailsExtension on ItemDetails {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PurchaseDetails')
@staticInterop
class PurchaseDetails {
  external factory PurchaseDetails();
}

extension PurchaseDetailsExtension on PurchaseDetails {
  // TODO
  // TODO
}

@JS('Event')
@staticInterop
class Event {
  external factory Event();
  external factory Event.a1(JSString type);
  external factory Event.a1_1(JSString type, EventInit eventInitDict);
  external static JSNumber get NONE;
  external static JSNumber get CAPTURING_PHASE;
  external static JSNumber get AT_TARGET;
  external static JSNumber get BUBBLING_PHASE;
}

extension EventExtension on Event {
  external JSString get type;
  external EventTarget? get target;
  external EventTarget? get srcElement;
  external EventTarget? get currentTarget;
  external JSArray composedPath();
  external JSNumber get eventPhase;
  external JSUndefined stopPropagation();
  external JSBoolean get cancelBubble;
  external set cancelBubble(JSBoolean value);
  external JSUndefined stopImmediatePropagation();
  external JSBoolean get bubbles;
  external JSBoolean get cancelable;
  external JSBoolean get returnValue;
  external set returnValue(JSBoolean value);
  external JSUndefined preventDefault();
  external JSBoolean get defaultPrevented;
  external JSBoolean get composed;
  external JSBoolean get isTrusted;
  external DOMHighResTimeStamp get timeStamp;
  external JSUndefined initEvent(JSString type);
  external JSUndefined initEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
}

@JS('EventInit')
@staticInterop
class EventInit {
  external factory EventInit();
}

extension EventInitExtension on EventInit {
  // TODO
  // TODO
  // TODO
}

@JS('CustomEvent')
@staticInterop
class CustomEvent extends Event {
  external factory CustomEvent();
  external factory CustomEvent.a1(JSString type);
  external factory CustomEvent.a1_1(
      JSString type, CustomEventInit eventInitDict);
}

extension CustomEventExtension on CustomEvent {
  external JSAny get detail;
  external JSUndefined initCustomEvent(JSString type);
  external JSUndefined initCustomEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initCustomEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
  external JSUndefined initCustomEvent_3(
      JSString type, JSBoolean bubbles, JSBoolean cancelable, JSAny detail);
}

@JS('CustomEventInit')
@staticInterop
class CustomEventInit extends EventInit {
  external factory CustomEventInit();
}

extension CustomEventInitExtension on CustomEventInit {
  // TODO
}

@JS('EventTarget')
@staticInterop
class EventTarget {
  external factory EventTarget();
}

extension EventTargetExtension on EventTarget {
  external JSUndefined addEventListener(JSString type, EventListener? callback);
  external JSUndefined addEventListener_1(
      JSString type, EventListener? callback, JSAny options);
  external JSUndefined removeEventListener(
      JSString type, EventListener? callback);
  external JSUndefined removeEventListener_1(
      JSString type, EventListener? callback, JSAny options);
  external JSBoolean dispatchEvent(Event event);
}

@JS('EventListenerOptions')
@staticInterop
class EventListenerOptions {
  external factory EventListenerOptions();
}

extension EventListenerOptionsExtension on EventListenerOptions {
  // TODO
}

@JS('AddEventListenerOptions')
@staticInterop
class AddEventListenerOptions extends EventListenerOptions {
  external factory AddEventListenerOptions();
}

extension AddEventListenerOptionsExtension on AddEventListenerOptions {
  // TODO
  // TODO
  // TODO
}

@JS('AbortController')
@staticInterop
class AbortController {
  external factory AbortController();
}

extension AbortControllerExtension on AbortController {
  external AbortSignal get signal;
  external JSUndefined abort();
  external JSUndefined abort_1(JSAny reason);
}

@JS('AbortSignal')
@staticInterop
class AbortSignal extends EventTarget {
  external factory AbortSignal();
  external static AbortSignal abort();
  external static AbortSignal abort_1(JSAny reason);
  external static AbortSignal timeout(JSNumber milliseconds);
}

extension AbortSignalExtension on AbortSignal {
  external JSBoolean get aborted;
  external JSAny get reason;
  external JSUndefined throwIfAborted();
  external EventHandler get onabort;
  external set onabort(EventHandler value);
}

@JS('NonElementParentNode')
@staticInterop
class NonElementParentNode {
  external factory NonElementParentNode();
}

extension NonElementParentNodeExtension on NonElementParentNode {
  external Element? getElementById(JSString elementId);
}

@JS('ParentNode')
@staticInterop
class ParentNode {
  external factory ParentNode();
}

extension ParentNodeExtension on ParentNode {
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external JSNumber get childElementCount;
  external JSUndefined prepend(JSAny nodes);
  external JSUndefined append(JSAny nodes);
  external JSUndefined replaceChildren(JSAny nodes);
  external Element? querySelector(JSString selectors);
  external NodeList querySelectorAll(JSString selectors);
}

@JS('NonDocumentTypeChildNode')
@staticInterop
class NonDocumentTypeChildNode {
  external factory NonDocumentTypeChildNode();
}

extension NonDocumentTypeChildNodeExtension on NonDocumentTypeChildNode {
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
}

@JS('ChildNode')
@staticInterop
class ChildNode {
  external factory ChildNode();
}

extension ChildNodeExtension on ChildNode {
  external JSUndefined before(JSAny nodes);
  external JSUndefined after(JSAny nodes);
  external JSUndefined replaceWith(JSAny nodes);
  external JSUndefined remove();
}

@JS('Slottable')
@staticInterop
class Slottable {
  external factory Slottable();
}

extension SlottableExtension on Slottable {
  external HTMLSlotElement? get assignedSlot;
}

@JS('NodeList')
@staticInterop
class NodeList {
  external factory NodeList();
}

extension NodeListExtension on NodeList {
  external Node? item(JSNumber index);
  external JSNumber get length;
  // TODO
}

@JS('HTMLCollection')
@staticInterop
class HTMLCollection {
  external factory HTMLCollection();
}

extension HTMLCollectionExtension on HTMLCollection {
  external JSNumber get length;
  external Element? item(JSNumber index);
  external Element? namedItem(JSString name);
}

@JS('MutationObserver')
@staticInterop
class MutationObserver {
  external factory MutationObserver();
  external factory MutationObserver.a1(MutationCallback callback);
}

extension MutationObserverExtension on MutationObserver {
  external JSUndefined observe(Node target);
  external JSUndefined observe_1(Node target, MutationObserverInit options);
  external JSUndefined disconnect();
  external JSArray takeRecords();
}

@JS('MutationObserverInit')
@staticInterop
class MutationObserverInit {
  external factory MutationObserverInit();
}

extension MutationObserverInitExtension on MutationObserverInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MutationRecord')
@staticInterop
class MutationRecord {
  external factory MutationRecord();
}

extension MutationRecordExtension on MutationRecord {
  external JSString get type;
  external Node get target;
  external NodeList get addedNodes;
  external NodeList get removedNodes;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external JSString? get attributeName;
  external JSString? get attributeNamespace;
  external JSString? get oldValue;
}

@JS('Node')
@staticInterop
class Node extends EventTarget {
  external factory Node();
  external static JSNumber get ELEMENT_NODE;
  external static JSNumber get ATTRIBUTE_NODE;
  external static JSNumber get TEXT_NODE;
  external static JSNumber get CDATA_SECTION_NODE;
  external static JSNumber get ENTITY_REFERENCE_NODE;
  external static JSNumber get ENTITY_NODE;
  external static JSNumber get PROCESSING_INSTRUCTION_NODE;
  external static JSNumber get COMMENT_NODE;
  external static JSNumber get DOCUMENT_NODE;
  external static JSNumber get DOCUMENT_TYPE_NODE;
  external static JSNumber get DOCUMENT_FRAGMENT_NODE;
  external static JSNumber get NOTATION_NODE;
  external static JSNumber get DOCUMENT_POSITION_DISCONNECTED;
  external static JSNumber get DOCUMENT_POSITION_PRECEDING;
  external static JSNumber get DOCUMENT_POSITION_FOLLOWING;
  external static JSNumber get DOCUMENT_POSITION_CONTAINS;
  external static JSNumber get DOCUMENT_POSITION_CONTAINED_BY;
  external static JSNumber get DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;
}

extension NodeExtension on Node {
  external JSNumber get nodeType;
  external JSString get nodeName;
  external JSString get baseURI;
  external JSBoolean get isConnected;
  external Document? get ownerDocument;
  external Node getRootNode();
  external Node getRootNode_1(GetRootNodeOptions options);
  external Node? get parentNode;
  external Element? get parentElement;
  external JSBoolean hasChildNodes();
  external NodeList get childNodes;
  external Node? get firstChild;
  external Node? get lastChild;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external JSString? get nodeValue;
  external set nodeValue(JSString? value);
  external JSString? get textContent;
  external set textContent(JSString? value);
  external JSUndefined normalize();
  external Node cloneNode();
  external Node cloneNode_1(JSBoolean deep);
  external JSBoolean isEqualNode(Node? otherNode);
  external JSBoolean isSameNode(Node? otherNode);
  external JSNumber compareDocumentPosition(Node other);
  external JSBoolean contains(Node? other);
  external JSString? lookupPrefix(JSString? namespace);
  external JSString? lookupNamespaceURI(JSString? prefix);
  external JSBoolean isDefaultNamespace(JSString? namespace);
  external Node insertBefore(Node node, Node? child);
  external Node appendChild(Node node);
  external Node replaceChild(Node node, Node child);
  external Node removeChild(Node child);
}

@JS('GetRootNodeOptions')
@staticInterop
class GetRootNodeOptions {
  external factory GetRootNodeOptions();
}

extension GetRootNodeOptionsExtension on GetRootNodeOptions {
  // TODO
}

@JS('XMLDocument')
@staticInterop
class XMLDocument extends Document {
  external factory XMLDocument();
}

@JS('ElementCreationOptions')
@staticInterop
class ElementCreationOptions {
  external factory ElementCreationOptions();
}

extension ElementCreationOptionsExtension on ElementCreationOptions {
  // TODO
}

@JS('DOMImplementation')
@staticInterop
class DOMImplementation {
  external factory DOMImplementation();
}

extension DOMImplementationExtension on DOMImplementation {
  external DocumentType createDocumentType(
      JSString qualifiedName, JSString publicId, JSString systemId);
  external XMLDocument createDocument(
      JSString? namespace, JSString qualifiedName);
  external XMLDocument createDocument_1(
      JSString? namespace, JSString qualifiedName, DocumentType? doctype);
  external Document createHTMLDocument();
  external Document createHTMLDocument_1(JSString title);
  external JSBoolean hasFeature();
}

@JS('DocumentType')
@staticInterop
class DocumentType extends Node implements ChildNode {
  external factory DocumentType();
}

extension DocumentTypeExtension on DocumentType {
  external JSString get name;
  external JSString get publicId;
  external JSString get systemId;
}

@JS('DocumentFragment')
@staticInterop
class DocumentFragment extends Node
    implements NonElementParentNode, ParentNode {
  external factory DocumentFragment();
}

@JS('ShadowRoot')
@staticInterop
class ShadowRoot extends DocumentFragment
    implements InnerHTML, DocumentOrShadowRoot {
  external factory ShadowRoot();
}

extension ShadowRootExtension on ShadowRoot {
  external ShadowRootMode get mode;
  external JSBoolean get delegatesFocus;
  external SlotAssignmentMode get slotAssignment;
  external Element get host;
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
}

@JS('ShadowRootInit')
@staticInterop
class ShadowRootInit {
  external factory ShadowRootInit();
}

extension ShadowRootInitExtension on ShadowRootInit {
  // TODO
  // TODO
  // TODO
}

@JS('NamedNodeMap')
@staticInterop
class NamedNodeMap {
  external factory NamedNodeMap();
}

extension NamedNodeMapExtension on NamedNodeMap {
  external JSNumber get length;
  external Attr? item(JSNumber index);
  external Attr? getNamedItem(JSString qualifiedName);
  external Attr? getNamedItemNS(JSString? namespace, JSString localName);
  external Attr? setNamedItem(Attr attr);
  external Attr? setNamedItemNS(Attr attr);
  external Attr removeNamedItem(JSString qualifiedName);
  external Attr removeNamedItemNS(JSString? namespace, JSString localName);
}

@JS('Attr')
@staticInterop
class Attr extends Node {
  external factory Attr();
}

extension AttrExtension on Attr {
  external JSString? get namespaceURI;
  external JSString? get prefix;
  external JSString get localName;
  external JSString get name;
  external JSString get value;
  external set value(JSString value);
  external Element? get ownerElement;
  external JSBoolean get specified;
}

@JS('CharacterData')
@staticInterop
class CharacterData extends Node
    implements NonDocumentTypeChildNode, ChildNode {
  external factory CharacterData();
}

extension CharacterDataExtension on CharacterData {
  external JSString get data;
  external set data(JSString value);
  external JSNumber get length;
  external JSString substringData(JSNumber offset, JSNumber count);
  external JSUndefined appendData(JSString data);
  external JSUndefined insertData(JSNumber offset, JSString data);
  external JSUndefined deleteData(JSNumber offset, JSNumber count);
  external JSUndefined replaceData(
      JSNumber offset, JSNumber count, JSString data);
}

@JS('Text')
@staticInterop
class Text extends CharacterData implements GeometryUtils, Slottable {
  external factory Text();
  external factory Text.a1();
  external factory Text.a1_1(JSString data);
}

extension TextExtension on Text {
  external Text splitText(JSNumber offset);
  external JSString get wholeText;
}

@JS('CDATASection')
@staticInterop
class CDATASection extends Text {
  external factory CDATASection();
}

@JS('ProcessingInstruction')
@staticInterop
class ProcessingInstruction extends CharacterData implements LinkStyle {
  external factory ProcessingInstruction();
}

extension ProcessingInstructionExtension on ProcessingInstruction {
  external JSString get target;
}

@JS('Comment')
@staticInterop
class Comment extends CharacterData {
  external factory Comment();
  external factory Comment.a1();
  external factory Comment.a1_1(JSString data);
}

@JS('AbstractRange')
@staticInterop
class AbstractRange {
  external factory AbstractRange();
}

extension AbstractRangeExtension on AbstractRange {
  external Node get startContainer;
  external JSNumber get startOffset;
  external Node get endContainer;
  external JSNumber get endOffset;
  external JSBoolean get collapsed;
}

@JS('StaticRangeInit')
@staticInterop
class StaticRangeInit {
  external factory StaticRangeInit();
}

extension StaticRangeInitExtension on StaticRangeInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('StaticRange')
@staticInterop
class StaticRange extends AbstractRange {
  external factory StaticRange();
  external factory StaticRange.a1(StaticRangeInit init);
}

@JS('NodeIterator')
@staticInterop
class NodeIterator {
  external factory NodeIterator();
}

extension NodeIteratorExtension on NodeIterator {
  external Node get root;
  external Node get referenceNode;
  external JSBoolean get pointerBeforeReferenceNode;
  external JSNumber get whatToShow;
  external NodeFilter? get filter;
  external Node? nextNode();
  external Node? previousNode();
  external JSUndefined detach();
}

@JS('TreeWalker')
@staticInterop
class TreeWalker {
  external factory TreeWalker();
}

extension TreeWalkerExtension on TreeWalker {
  external Node get root;
  external JSNumber get whatToShow;
  external NodeFilter? get filter;
  external Node get currentNode;
  external set currentNode(Node value);
  external Node? parentNode();
  external Node? firstChild();
  external Node? lastChild();
  external Node? previousSibling();
  external Node? nextSibling();
  external Node? previousNode();
  external Node? nextNode();
}

@JS('DOMTokenList')
@staticInterop
class DOMTokenList {
  external factory DOMTokenList();
}

extension DOMTokenListExtension on DOMTokenList {
  external JSNumber get length;
  external JSString? item(JSNumber index);
  external JSBoolean contains(JSString token);
  external JSUndefined add(JSString tokens);
  external JSUndefined remove(JSString tokens);
  external JSBoolean toggle(JSString token);
  external JSBoolean toggle_1(JSString token, JSBoolean force);
  external JSBoolean replace(JSString token, JSString newToken);
  external JSBoolean supports(JSString token);
  external JSString get value;
  external set value(JSString value);
  // TODO
}

@JS('XPathResult')
@staticInterop
class XPathResult {
  external factory XPathResult();
  external static JSNumber get ANY_TYPE;
  external static JSNumber get NUMBER_TYPE;
  external static JSNumber get STRING_TYPE;
  external static JSNumber get BOOLEAN_TYPE;
  external static JSNumber get UNORDERED_NODE_ITERATOR_TYPE;
  external static JSNumber get ORDERED_NODE_ITERATOR_TYPE;
  external static JSNumber get UNORDERED_NODE_SNAPSHOT_TYPE;
  external static JSNumber get ORDERED_NODE_SNAPSHOT_TYPE;
  external static JSNumber get ANY_UNORDERED_NODE_TYPE;
  external static JSNumber get FIRST_ORDERED_NODE_TYPE;
}

extension XPathResultExtension on XPathResult {
  external JSNumber get resultType;
  external JSNumber get numberValue;
  external JSString get stringValue;
  external JSBoolean get booleanValue;
  external Node? get singleNodeValue;
  external JSBoolean get invalidIteratorState;
  external JSNumber get snapshotLength;
  external Node? iterateNext();
  external Node? snapshotItem(JSNumber index);
}

@JS('XPathExpression')
@staticInterop
class XPathExpression {
  external factory XPathExpression();
}

extension XPathExpressionExtension on XPathExpression {
  external XPathResult evaluate(Node contextNode);
  external XPathResult evaluate_1(Node contextNode, JSNumber type);
  external XPathResult evaluate_2(
      Node contextNode, JSNumber type, XPathResult? result);
}

@JS('XPathEvaluatorBase')
@staticInterop
class XPathEvaluatorBase {
  external factory XPathEvaluatorBase();
}

extension XPathEvaluatorBaseExtension on XPathEvaluatorBase {
  external XPathExpression createExpression(JSString expression);
  external XPathExpression createExpression_1(
      JSString expression, XPathNSResolver? resolver);
  external XPathNSResolver createNSResolver(Node nodeResolver);
  external XPathResult evaluate(JSString expression, Node contextNode);
  external XPathResult evaluate_1(
      JSString expression, Node contextNode, XPathNSResolver? resolver);
  external XPathResult evaluate_2(JSString expression, Node contextNode,
      XPathNSResolver? resolver, JSNumber type);
  external XPathResult evaluate_3(JSString expression, Node contextNode,
      XPathNSResolver? resolver, JSNumber type, XPathResult? result);
}

@JS('XPathEvaluator')
@staticInterop
class XPathEvaluator implements XPathEvaluatorBase {
  external factory XPathEvaluator();
}

@JS('XSLTProcessor')
@staticInterop
class XSLTProcessor {
  external factory XSLTProcessor();
}

extension XSLTProcessorExtension on XSLTProcessor {
  external JSUndefined importStylesheet(Node style);
  external DocumentFragment transformToFragment(Node source, Document output);
  external Document transformToDocument(Node source);
  external JSUndefined setParameter(
      JSString namespaceURI, JSString localName, JSAny value);
  external JSAny getParameter(JSString namespaceURI, JSString localName);
  external JSUndefined removeParameter(
      JSString namespaceURI, JSString localName);
  external JSUndefined clearParameters();
  external JSUndefined reset();
}

@JS('EditContextInit')
@staticInterop
class EditContextInit {
  external factory EditContextInit();
}

extension EditContextInitExtension on EditContextInit {
  // TODO
  // TODO
  // TODO
}

@JS('EditContext')
@staticInterop
class EditContext extends EventTarget {
  external factory EditContext();
  external factory EditContext.a1();
  external factory EditContext.a1_1(EditContextInit options);
}

extension EditContextExtension on EditContext {
  external JSUndefined updateText(
      JSNumber rangeStart, JSNumber rangeEnd, JSString text);
  external JSUndefined updateSelection(JSNumber start, JSNumber end);
  external JSUndefined updateControlBound(DOMRect controlBound);
  external JSUndefined updateSelectionBound(DOMRect selectionBound);
  external JSUndefined updateCharacterBounds(
      JSNumber rangeStart, JSArray characterBounds);
  external JSArray attachedElements();
  external JSString get text;
  external JSNumber get selectionStart;
  external JSNumber get selectionEnd;
  external JSNumber get compositionRangeStart;
  external JSNumber get compositionRangeEnd;
  external JSBoolean get isInComposition;
  external DOMRect get controlBound;
  external DOMRect get selectionBound;
  external JSNumber get characterBoundsRangeStart;
  external JSArray characterBounds();
  external EventHandler get ontextupdate;
  external set ontextupdate(EventHandler value);
  external EventHandler get ontextformatupdate;
  external set ontextformatupdate(EventHandler value);
  external EventHandler get oncharacterboundsupdate;
  external set oncharacterboundsupdate(EventHandler value);
  external EventHandler get oncompositionstart;
  external set oncompositionstart(EventHandler value);
  external EventHandler get oncompositionend;
  external set oncompositionend(EventHandler value);
}

@JS('TextUpdateEventInit')
@staticInterop
class TextUpdateEventInit {
  external factory TextUpdateEventInit();
}

extension TextUpdateEventInitExtension on TextUpdateEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TextUpdateEvent')
@staticInterop
class TextUpdateEvent extends Event {
  external factory TextUpdateEvent();
  external factory TextUpdateEvent.a1();
  external factory TextUpdateEvent.a1_1(TextUpdateEventInit options);
}

extension TextUpdateEventExtension on TextUpdateEvent {
  external JSNumber get updateRangeStart;
  external JSNumber get updateRangeEnd;
  external JSString get text;
  external JSNumber get selectionStart;
  external JSNumber get selectionEnd;
  external JSNumber get compositionStart;
  external JSNumber get compositionEnd;
}

@JS('TextFormatInit')
@staticInterop
class TextFormatInit {
  external factory TextFormatInit();
}

extension TextFormatInitExtension on TextFormatInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TextFormat')
@staticInterop
class TextFormat {
  external factory TextFormat();
  external factory TextFormat.a1();
  external factory TextFormat.a1_1(TextFormatInit options);
}

extension TextFormatExtension on TextFormat {
  external JSNumber get rangeStart;
  external set rangeStart(JSNumber value);
  external JSNumber get rangeEnd;
  external set rangeEnd(JSNumber value);
  external JSString get textColor;
  external set textColor(JSString value);
  external JSString get backgroundColor;
  external set backgroundColor(JSString value);
  external JSString get underlineStyle;
  external set underlineStyle(JSString value);
  external JSString get underlineThickness;
  external set underlineThickness(JSString value);
  external JSString get underlineColor;
  external set underlineColor(JSString value);
}

@JS('TextFormatUpdateEventInit')
@staticInterop
class TextFormatUpdateEventInit {
  external factory TextFormatUpdateEventInit();
}

extension TextFormatUpdateEventInitExtension on TextFormatUpdateEventInit {
  // TODO
}

@JS('TextFormatUpdateEvent')
@staticInterop
class TextFormatUpdateEvent extends Event {
  external factory TextFormatUpdateEvent();
  external factory TextFormatUpdateEvent.a1();
  external factory TextFormatUpdateEvent.a1_1(
      TextFormatUpdateEventInit options);
}

extension TextFormatUpdateEventExtension on TextFormatUpdateEvent {
  external JSArray getTextFormats();
}

@JS('CharacterBoundsUpdateEventInit')
@staticInterop
class CharacterBoundsUpdateEventInit {
  external factory CharacterBoundsUpdateEventInit();
}

extension CharacterBoundsUpdateEventInitExtension
    on CharacterBoundsUpdateEventInit {
  // TODO
  // TODO
}

@JS('CharacterBoundsUpdateEvent')
@staticInterop
class CharacterBoundsUpdateEvent extends Event {
  external factory CharacterBoundsUpdateEvent();
  external factory CharacterBoundsUpdateEvent.a1();
  external factory CharacterBoundsUpdateEvent.a1_1(
      CharacterBoundsUpdateEventInit options);
}

extension CharacterBoundsUpdateEventExtension on CharacterBoundsUpdateEvent {
  external JSNumber get rangeStart;
  external JSNumber get rangeEnd;
}

@JS('PerformanceElementTiming')
@staticInterop
class PerformanceElementTiming extends PerformanceEntry {
  external factory PerformanceElementTiming();
}

extension PerformanceElementTimingExtension on PerformanceElementTiming {
  external DOMHighResTimeStamp get renderTime;
  external DOMHighResTimeStamp get loadTime;
  external DOMRectReadOnly get intersectionRect;
  external JSString get identifier;
  external JSNumber get naturalWidth;
  external JSNumber get naturalHeight;
  external JSString get id;
  external Element? get element;
  external JSString get url;
  external JSObject toJSON();
}

@JS('TextDecoderCommon')
@staticInterop
class TextDecoderCommon {
  external factory TextDecoderCommon();
}

extension TextDecoderCommonExtension on TextDecoderCommon {
  external JSString get encoding;
  external JSBoolean get fatal;
  external JSBoolean get ignoreBOM;
}

@JS('TextDecoderOptions')
@staticInterop
class TextDecoderOptions {
  external factory TextDecoderOptions();
}

extension TextDecoderOptionsExtension on TextDecoderOptions {
  // TODO
  // TODO
}

@JS('TextDecodeOptions')
@staticInterop
class TextDecodeOptions {
  external factory TextDecodeOptions();
}

extension TextDecodeOptionsExtension on TextDecodeOptions {
  // TODO
}

@JS('TextDecoder')
@staticInterop
class TextDecoder implements TextDecoderCommon {
  external factory TextDecoder();
  external factory TextDecoder.a1();
  external factory TextDecoder.a1_1(JSString label);
  external factory TextDecoder.a1_2(JSString label, TextDecoderOptions options);
}

extension TextDecoderExtension on TextDecoder {
  external JSString decode();
  external JSString decode_1(BufferSource input);
  external JSString decode_2(BufferSource input, TextDecodeOptions options);
}

@JS('TextEncoderCommon')
@staticInterop
class TextEncoderCommon {
  external factory TextEncoderCommon();
}

extension TextEncoderCommonExtension on TextEncoderCommon {
  external JSString get encoding;
}

@JS('TextEncoderEncodeIntoResult')
@staticInterop
class TextEncoderEncodeIntoResult {
  external factory TextEncoderEncodeIntoResult();
}

extension TextEncoderEncodeIntoResultExtension on TextEncoderEncodeIntoResult {
  // TODO
  // TODO
}

@JS('TextEncoder')
@staticInterop
class TextEncoder implements TextEncoderCommon {
  external factory TextEncoder();
}

extension TextEncoderExtension on TextEncoder {
  external JSUint8Array encode();
  external JSUint8Array encode_1(JSString input);
  external TextEncoderEncodeIntoResult encodeInto(
      JSString source, JSUint8Array destination);
}

@JS('TextDecoderStream')
@staticInterop
class TextDecoderStream implements TextDecoderCommon, GenericTransformStream {
  external factory TextDecoderStream();
  external factory TextDecoderStream.a1();
  external factory TextDecoderStream.a1_1(JSString label);
  external factory TextDecoderStream.a1_2(
      JSString label, TextDecoderOptions options);
}

@JS('TextEncoderStream')
@staticInterop
class TextEncoderStream implements TextEncoderCommon, GenericTransformStream {
  external factory TextEncoderStream();
}

@JS('MediaKeySystemConfiguration')
@staticInterop
class MediaKeySystemConfiguration {
  external factory MediaKeySystemConfiguration();
}

extension MediaKeySystemConfigurationExtension on MediaKeySystemConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaKeySystemMediaCapability')
@staticInterop
class MediaKeySystemMediaCapability {
  external factory MediaKeySystemMediaCapability();
}

extension MediaKeySystemMediaCapabilityExtension
    on MediaKeySystemMediaCapability {
  // TODO
  // TODO
  // TODO
}

@JS('MediaKeySystemAccess')
@staticInterop
class MediaKeySystemAccess {
  external factory MediaKeySystemAccess();
}

extension MediaKeySystemAccessExtension on MediaKeySystemAccess {
  external JSString get keySystem;
  external MediaKeySystemConfiguration getConfiguration();
  external JSPromise createMediaKeys();
}

@JS('MediaKeys')
@staticInterop
class MediaKeys {
  external factory MediaKeys();
}

extension MediaKeysExtension on MediaKeys {
  external MediaKeySession createSession();
  external MediaKeySession createSession_1(MediaKeySessionType sessionType);
  external JSPromise setServerCertificate(BufferSource serverCertificate);
}

@JS('MediaKeySession')
@staticInterop
class MediaKeySession extends EventTarget {
  external factory MediaKeySession();
}

extension MediaKeySessionExtension on MediaKeySession {
  external JSString get sessionId;
  external JSNumber get expiration;
  external JSPromise get closed;
  external MediaKeyStatusMap get keyStatuses;
  external EventHandler get onkeystatuseschange;
  external set onkeystatuseschange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external JSPromise generateRequest(
      JSString initDataType, BufferSource initData);
  external JSPromise load(JSString sessionId);
  external JSPromise update(BufferSource response);
  external JSPromise close();
  external JSPromise remove();
}

@JS('MediaKeyStatusMap')
@staticInterop
class MediaKeyStatusMap {
  external factory MediaKeyStatusMap();
}

extension MediaKeyStatusMapExtension on MediaKeyStatusMap {
  // TODO
  external JSNumber get size;
  external JSBoolean has(BufferSource keyId);
  external JSAny get(BufferSource keyId);
}

@JS('MediaKeyMessageEvent')
@staticInterop
class MediaKeyMessageEvent extends Event {
  external factory MediaKeyMessageEvent();
  external factory MediaKeyMessageEvent.a1(
      JSString type, MediaKeyMessageEventInit eventInitDict);
}

extension MediaKeyMessageEventExtension on MediaKeyMessageEvent {
  external MediaKeyMessageType get messageType;
  external JSArrayBuffer get message;
}

@JS('MediaKeyMessageEventInit')
@staticInterop
class MediaKeyMessageEventInit extends EventInit {
  external factory MediaKeyMessageEventInit();
}

extension MediaKeyMessageEventInitExtension on MediaKeyMessageEventInit {
  // TODO
  // TODO
}

@JS('MediaEncryptedEvent')
@staticInterop
class MediaEncryptedEvent extends Event {
  external factory MediaEncryptedEvent();
  external factory MediaEncryptedEvent.a1(JSString type);
  external factory MediaEncryptedEvent.a1_1(
      JSString type, MediaEncryptedEventInit eventInitDict);
}

extension MediaEncryptedEventExtension on MediaEncryptedEvent {
  external JSString get initDataType;
  external JSArrayBuffer? get initData;
}

@JS('MediaEncryptedEventInit')
@staticInterop
class MediaEncryptedEventInit extends EventInit {
  external factory MediaEncryptedEventInit();
}

extension MediaEncryptedEventInitExtension on MediaEncryptedEventInit {
  // TODO
  // TODO
}

@JS('HTMLInputElement')
@staticInterop
class HTMLInputElement extends HTMLElement implements PopoverTargetElement {
  external factory HTMLInputElement();
}

extension HTMLInputElementExtension on HTMLInputElement {
  external JSBoolean get webkitdirectory;
  external set webkitdirectory(JSBoolean value);
  external JSArray get webkitEntries;
  external JSString get capture;
  external set capture(JSString value);
  external JSString get accept;
  external set accept(JSString value);
  external JSString get alt;
  external set alt(JSString value);
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSBoolean get defaultChecked;
  external set defaultChecked(JSBoolean value);
  external JSBoolean get checked;
  external set checked(JSBoolean value);
  external JSString get dirName;
  external set dirName(JSString value);
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external FileList? get files;
  external set files(FileList? value);
  external JSString get formAction;
  external set formAction(JSString value);
  external JSString get formEnctype;
  external set formEnctype(JSString value);
  external JSString get formMethod;
  external set formMethod(JSString value);
  external JSBoolean get formNoValidate;
  external set formNoValidate(JSBoolean value);
  external JSString get formTarget;
  external set formTarget(JSString value);
  external JSNumber get height;
  external set height(JSNumber value);
  external JSBoolean get indeterminate;
  external set indeterminate(JSBoolean value);
  external HTMLDataListElement? get list;
  external JSString get max;
  external set max(JSString value);
  external JSNumber get maxLength;
  external set maxLength(JSNumber value);
  external JSString get min;
  external set min(JSString value);
  external JSNumber get minLength;
  external set minLength(JSNumber value);
  external JSBoolean get multiple;
  external set multiple(JSBoolean value);
  external JSString get name;
  external set name(JSString value);
  external JSString get pattern;
  external set pattern(JSString value);
  external JSString get placeholder;
  external set placeholder(JSString value);
  external JSBoolean get readOnly;
  external set readOnly(JSBoolean value);
  external JSBoolean get required;
  external set required(JSBoolean value);
  external JSNumber get size;
  external set size(JSNumber value);
  external JSString get src;
  external set src(JSString value);
  external JSString get step;
  external set step(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get defaultValue;
  external set defaultValue(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSObject? get valueAsDate;
  external set valueAsDate(JSObject? value);
  external JSNumber get valueAsNumber;
  external set valueAsNumber(JSNumber value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSUndefined stepUp();
  external JSUndefined stepUp_1(JSNumber n);
  external JSUndefined stepDown();
  external JSUndefined stepDown_1(JSNumber n);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList? get labels;
  external JSUndefined select();
  external JSNumber? get selectionStart;
  external set selectionStart(JSNumber? value);
  external JSNumber? get selectionEnd;
  external set selectionEnd(JSNumber? value);
  external JSString? get selectionDirection;
  external set selectionDirection(JSString? value);
  external JSUndefined setRangeText(JSString replacement);
  @JS('setRangeText')
  external JSUndefined setRangeText1(
      JSString replacement, JSNumber start, JSNumber end);
  @JS('setRangeText')
  external JSUndefined setRangeText1_1(JSString replacement, JSNumber start,
      JSNumber end, SelectionMode selectionMode);
  external JSUndefined setSelectionRange(JSNumber start, JSNumber end);
  external JSUndefined setSelectionRange_1(
      JSNumber start, JSNumber end, JSString direction);
  external JSUndefined showPicker();
  external JSString get align;
  external set align(JSString value);
  external JSString get useMap;
  external set useMap(JSString value);
}

@JS('DataTransferItem')
@staticInterop
class DataTransferItem {
  external factory DataTransferItem();
}

extension DataTransferItemExtension on DataTransferItem {
  external FileSystemEntry? webkitGetAsEntry();
  external JSPromise getAsFileSystemHandle();
  external JSString get kind;
  external JSString get type;
  external JSUndefined getAsString(FunctionStringCallback? callback);
  external File? getAsFile();
}

@JS('FileSystemEntry')
@staticInterop
class FileSystemEntry {
  external factory FileSystemEntry();
}

extension FileSystemEntryExtension on FileSystemEntry {
  external JSBoolean get isFile;
  external JSBoolean get isDirectory;
  external JSString get name;
  external JSString get fullPath;
  external FileSystem get filesystem;
  external JSUndefined getParent();
  external JSUndefined getParent_1(FileSystemEntryCallback successCallback);
  external JSUndefined getParent_2(
      FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystemDirectoryEntry')
@staticInterop
class FileSystemDirectoryEntry extends FileSystemEntry {
  external factory FileSystemDirectoryEntry();
}

extension FileSystemDirectoryEntryExtension on FileSystemDirectoryEntry {
  external FileSystemDirectoryReader createReader();
  external JSUndefined getFile();
  external JSUndefined getFile_1(JSString? path);
  external JSUndefined getFile_2(JSString? path, FileSystemFlags options);
  external JSUndefined getFile_3(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback);
  external JSUndefined getFile_4(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
  external JSUndefined getDirectory();
  external JSUndefined getDirectory_1(JSString? path);
  external JSUndefined getDirectory_2(JSString? path, FileSystemFlags options);
  external JSUndefined getDirectory_3(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback);
  external JSUndefined getDirectory_4(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystemFlags')
@staticInterop
class FileSystemFlags {
  external factory FileSystemFlags();
}

extension FileSystemFlagsExtension on FileSystemFlags {
  // TODO
  // TODO
}

@JS('FileSystemDirectoryReader')
@staticInterop
class FileSystemDirectoryReader {
  external factory FileSystemDirectoryReader();
}

extension FileSystemDirectoryReaderExtension on FileSystemDirectoryReader {
  external JSUndefined readEntries(FileSystemEntriesCallback successCallback);
  external JSUndefined readEntries_1(
      FileSystemEntriesCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystemFileEntry')
@staticInterop
class FileSystemFileEntry extends FileSystemEntry {
  external factory FileSystemFileEntry();
}

extension FileSystemFileEntryExtension on FileSystemFileEntry {
  external JSUndefined file(FileCallback successCallback);
  external JSUndefined file_1(
      FileCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystem')
@staticInterop
class FileSystem {
  external factory FileSystem();
}

extension FileSystemExtension on FileSystem {
  external JSString get name;
  external FileSystemDirectoryEntry get root;
}

@JS('PerformanceEventTiming')
@staticInterop
class PerformanceEventTiming extends PerformanceEntry {
  external factory PerformanceEventTiming();
}

extension PerformanceEventTimingExtension on PerformanceEventTiming {
  external DOMHighResTimeStamp get processingStart;
  external DOMHighResTimeStamp get processingEnd;
  external JSBoolean get cancelable;
  external Node? get target;
  external JSNumber get interactionId;
  external JSObject toJSON();
}

@JS('EventCounts')
@staticInterop
class EventCounts {
  external factory EventCounts();
}

extension EventCountsExtension on EventCounts {
  // TODO
}

@JS('Performance')
@staticInterop
class Performance extends EventTarget {
  external factory Performance();
}

extension PerformanceExtension on Performance {
  external EventCounts get eventCounts;
  external JSNumber get interactionCount;
  external DOMHighResTimeStamp now();
  external DOMHighResTimeStamp get timeOrigin;
  external JSObject toJSON();
  external PerformanceTiming get timing;
  external PerformanceNavigation get navigation;
  external JSPromise measureUserAgentSpecificMemory();
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(JSString type);
  external PerformanceEntryList getEntriesByName(JSString name);
  external PerformanceEntryList getEntriesByName_1(
      JSString name, JSString type);
  external JSUndefined clearResourceTimings();
  external JSUndefined setResourceTimingBufferSize(JSNumber maxSize);
  external EventHandler get onresourcetimingbufferfull;
  external set onresourcetimingbufferfull(EventHandler value);
  external PerformanceMark mark(JSString markName);
  external PerformanceMark mark_1(
      JSString markName, PerformanceMarkOptions markOptions);
  external JSUndefined clearMarks();
  external JSUndefined clearMarks_1(JSString markName);
  external PerformanceMeasure measure(JSString measureName);
  external PerformanceMeasure measure_1(
      JSString measureName, JSAny startOrMeasureOptions);
  external PerformanceMeasure measure_2(
      JSString measureName, JSAny startOrMeasureOptions, JSString endMark);
  external JSUndefined clearMeasures();
  external JSUndefined clearMeasures_1(JSString measureName);
}

@JS('PerformanceObserverInit')
@staticInterop
class PerformanceObserverInit {
  external factory PerformanceObserverInit();
}

extension PerformanceObserverInitExtension on PerformanceObserverInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ColorSelectionResult')
@staticInterop
class ColorSelectionResult {
  external factory ColorSelectionResult();
}

extension ColorSelectionResultExtension on ColorSelectionResult {
  // TODO
}

@JS('ColorSelectionOptions')
@staticInterop
class ColorSelectionOptions {
  external factory ColorSelectionOptions();
}

extension ColorSelectionOptionsExtension on ColorSelectionOptions {
  // TODO
}

@JS('EyeDropper')
@staticInterop
class EyeDropper {
  external factory EyeDropper();
}

extension EyeDropperExtension on EyeDropper {
  external JSPromise open();
  external JSPromise open_1(ColorSelectionOptions options);
}

@JS('Headers')
@staticInterop
class Headers {
  external factory Headers();
  external factory Headers.a1();
  external factory Headers.a1_1(HeadersInit init);
}

extension HeadersExtension on Headers {
  external JSUndefined append(JSString name, JSString value);
  external JSUndefined delete(JSString name);
  external JSString? get(JSString name);
  external JSBoolean has(JSString name);
  external JSUndefined set(JSString name, JSString value);
  // TODO
}

@JS('Body')
@staticInterop
class Body {
  external factory Body();
}

extension BodyExtension on Body {
  external ReadableStream? get body;
  external JSBoolean get bodyUsed;
  external JSPromise arrayBuffer();
  external JSPromise blob();
  external JSPromise formData();
  external JSPromise json();
  external JSPromise text();
}

@JS('Request')
@staticInterop
class Request implements Body {
  external factory Request();
  external factory Request.a1(RequestInfo input);
  external factory Request.a1_1(RequestInfo input, RequestInit init);
}

extension RequestExtension on Request {
  external JSString get method;
  external JSString get url;
  external Headers get headers;
  external RequestDestination get destination;
  external JSString get referrer;
  external ReferrerPolicy get referrerPolicy;
  external RequestMode get mode;
  external RequestCredentials get credentials;
  external RequestCache get cache;
  external RequestRedirect get redirect;
  external JSString get integrity;
  external JSBoolean get keepalive;
  external JSBoolean get isReloadNavigation;
  external JSBoolean get isHistoryNavigation;
  external AbortSignal get signal;
  external RequestDuplex get duplex;
  external Request clone();
}

@JS('RequestInit')
@staticInterop
class RequestInit {
  external factory RequestInit();
}

extension RequestInitExtension on RequestInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Response')
@staticInterop
class Response implements Body {
  external factory Response();
  external factory Response.a1();
  external factory Response.a1_1(BodyInit? body);
  external factory Response.a1_2(BodyInit? body, ResponseInit init);
  external static Response error();
  external static Response redirect(JSString url);
  external static Response redirect_1(JSString url, JSNumber status);
  external static Response json(JSAny data);
  external static Response json_1(JSAny data, ResponseInit init);
}

extension ResponseExtension on Response {
  external ResponseType get type;
  external JSString get url;
  external JSBoolean get redirected;
  external JSNumber get status;
  external JSBoolean get ok;
  external JSString get statusText;
  external Headers get headers;
  external Response clone();
}

@JS('ResponseInit')
@staticInterop
class ResponseInit {
  external factory ResponseInit();
}

extension ResponseInitExtension on ResponseInit {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientInputs')
@staticInterop
class AuthenticationExtensionsClientInputs {
  external factory AuthenticationExtensionsClientInputs();
}

extension AuthenticationExtensionsClientInputsExtension
    on AuthenticationExtensionsClientInputs {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HMACGetSecretInput')
@staticInterop
class HMACGetSecretInput {
  external factory HMACGetSecretInput();
}

extension HMACGetSecretInputExtension on HMACGetSecretInput {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientOutputs')
@staticInterop
class AuthenticationExtensionsClientOutputs {
  external factory AuthenticationExtensionsClientOutputs();
}

extension AuthenticationExtensionsClientOutputsExtension
    on AuthenticationExtensionsClientOutputs {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HMACGetSecretOutput')
@staticInterop
class HMACGetSecretOutput {
  external factory HMACGetSecretOutput();
}

extension HMACGetSecretOutputExtension on HMACGetSecretOutput {
  // TODO
  // TODO
}

@JS('FileSystemPermissionDescriptor')
@staticInterop
class FileSystemPermissionDescriptor extends PermissionDescriptor {
  external factory FileSystemPermissionDescriptor();
}

extension FileSystemPermissionDescriptorExtension
    on FileSystemPermissionDescriptor {
  // TODO
  // TODO
}

@JS('FileSystemHandlePermissionDescriptor')
@staticInterop
class FileSystemHandlePermissionDescriptor {
  external factory FileSystemHandlePermissionDescriptor();
}

extension FileSystemHandlePermissionDescriptorExtension
    on FileSystemHandlePermissionDescriptor {
  // TODO
}

@JS('FileSystemHandle')
@staticInterop
class FileSystemHandle {
  external factory FileSystemHandle();
}

extension FileSystemHandleExtension on FileSystemHandle {
  external JSPromise queryPermission();
  external JSPromise queryPermission_1(
      FileSystemHandlePermissionDescriptor descriptor);
  external JSPromise requestPermission();
  external JSPromise requestPermission_1(
      FileSystemHandlePermissionDescriptor descriptor);
  external FileSystemHandleKind get kind;
  external JSString get name;
  external JSPromise isSameEntry(FileSystemHandle other);
}

@JS('FilePickerAcceptType')
@staticInterop
class FilePickerAcceptType {
  external factory FilePickerAcceptType();
}

extension FilePickerAcceptTypeExtension on FilePickerAcceptType {
  // TODO
  // TODO
}

@JS('FilePickerOptions')
@staticInterop
class FilePickerOptions {
  external factory FilePickerOptions();
}

extension FilePickerOptionsExtension on FilePickerOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('OpenFilePickerOptions')
@staticInterop
class OpenFilePickerOptions extends FilePickerOptions {
  external factory OpenFilePickerOptions();
}

extension OpenFilePickerOptionsExtension on OpenFilePickerOptions {
  // TODO
}

@JS('SaveFilePickerOptions')
@staticInterop
class SaveFilePickerOptions extends FilePickerOptions {
  external factory SaveFilePickerOptions();
}

extension SaveFilePickerOptionsExtension on SaveFilePickerOptions {
  // TODO
}

@JS('DirectoryPickerOptions')
@staticInterop
class DirectoryPickerOptions {
  external factory DirectoryPickerOptions();
}

extension DirectoryPickerOptionsExtension on DirectoryPickerOptions {
  // TODO
  // TODO
  // TODO
}

@JS('SVGFilterElement')
@staticInterop
class SVGFilterElement extends SVGElement implements SVGURIReference {
  external factory SVGFilterElement();
}

extension SVGFilterElementExtension on SVGFilterElement {
  external SVGAnimatedEnumeration get filterUnits;
  external SVGAnimatedEnumeration get primitiveUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGFilterPrimitiveStandardAttributes')
@staticInterop
class SVGFilterPrimitiveStandardAttributes {
  external factory SVGFilterPrimitiveStandardAttributes();
}

extension SVGFilterPrimitiveStandardAttributesExtension
    on SVGFilterPrimitiveStandardAttributes {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}

@JS('SVGFEBlendElement')
@staticInterop
class SVGFEBlendElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEBlendElement();
  external static JSNumber get SVG_FEBLEND_MODE_UNKNOWN;
  external static JSNumber get SVG_FEBLEND_MODE_NORMAL;
  external static JSNumber get SVG_FEBLEND_MODE_MULTIPLY;
  external static JSNumber get SVG_FEBLEND_MODE_SCREEN;
  external static JSNumber get SVG_FEBLEND_MODE_DARKEN;
  external static JSNumber get SVG_FEBLEND_MODE_LIGHTEN;
  external static JSNumber get SVG_FEBLEND_MODE_OVERLAY;
  external static JSNumber get SVG_FEBLEND_MODE_COLOR_DODGE;
  external static JSNumber get SVG_FEBLEND_MODE_COLOR_BURN;
  external static JSNumber get SVG_FEBLEND_MODE_HARD_LIGHT;
  external static JSNumber get SVG_FEBLEND_MODE_SOFT_LIGHT;
  external static JSNumber get SVG_FEBLEND_MODE_DIFFERENCE;
  external static JSNumber get SVG_FEBLEND_MODE_EXCLUSION;
  external static JSNumber get SVG_FEBLEND_MODE_HUE;
  external static JSNumber get SVG_FEBLEND_MODE_SATURATION;
  external static JSNumber get SVG_FEBLEND_MODE_COLOR;
  external static JSNumber get SVG_FEBLEND_MODE_LUMINOSITY;
}

extension SVGFEBlendElementExtension on SVGFEBlendElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get mode;
}

@JS('SVGFEColorMatrixElement')
@staticInterop
class SVGFEColorMatrixElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEColorMatrixElement();
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;
}

extension SVGFEColorMatrixElementExtension on SVGFEColorMatrixElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get values;
}

@JS('SVGFEComponentTransferElement')
@staticInterop
class SVGFEComponentTransferElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEComponentTransferElement();
}

extension SVGFEComponentTransferElementExtension
    on SVGFEComponentTransferElement {
  external SVGAnimatedString get in1;
}

@JS('SVGComponentTransferFunctionElement')
@staticInterop
class SVGComponentTransferFunctionElement extends SVGElement {
  external factory SVGComponentTransferFunctionElement();
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;
}

extension SVGComponentTransferFunctionElementExtension
    on SVGComponentTransferFunctionElement {
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get tableValues;
  external SVGAnimatedNumber get slope;
  external SVGAnimatedNumber get intercept;
  external SVGAnimatedNumber get amplitude;
  external SVGAnimatedNumber get exponent;
  external SVGAnimatedNumber get offset;
}

@JS('SVGFEFuncRElement')
@staticInterop
class SVGFEFuncRElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncRElement();
}

@JS('SVGFEFuncGElement')
@staticInterop
class SVGFEFuncGElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncGElement();
}

@JS('SVGFEFuncBElement')
@staticInterop
class SVGFEFuncBElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncBElement();
}

@JS('SVGFEFuncAElement')
@staticInterop
class SVGFEFuncAElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncAElement();
}

@JS('SVGFECompositeElement')
@staticInterop
class SVGFECompositeElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFECompositeElement();
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_OVER;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_IN;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_OUT;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_XOR;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;
}

extension SVGFECompositeElementExtension on SVGFECompositeElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get operator;
  external SVGAnimatedNumber get k1;
  external SVGAnimatedNumber get k2;
  external SVGAnimatedNumber get k3;
  external SVGAnimatedNumber get k4;
}

@JS('SVGFEConvolveMatrixElement')
@staticInterop
class SVGFEConvolveMatrixElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEConvolveMatrixElement();
  external static JSNumber get SVG_EDGEMODE_UNKNOWN;
  external static JSNumber get SVG_EDGEMODE_DUPLICATE;
  external static JSNumber get SVG_EDGEMODE_WRAP;
  external static JSNumber get SVG_EDGEMODE_NONE;
}

extension SVGFEConvolveMatrixElementExtension on SVGFEConvolveMatrixElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedInteger get orderX;
  external SVGAnimatedInteger get orderY;
  external SVGAnimatedNumberList get kernelMatrix;
  external SVGAnimatedNumber get divisor;
  external SVGAnimatedNumber get bias;
  external SVGAnimatedInteger get targetX;
  external SVGAnimatedInteger get targetY;
  external SVGAnimatedEnumeration get edgeMode;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
  external SVGAnimatedBoolean get preserveAlpha;
}

@JS('SVGFEDiffuseLightingElement')
@staticInterop
class SVGFEDiffuseLightingElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDiffuseLightingElement();
}

extension SVGFEDiffuseLightingElementExtension on SVGFEDiffuseLightingElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get surfaceScale;
  external SVGAnimatedNumber get diffuseConstant;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
}

@JS('SVGFEDistantLightElement')
@staticInterop
class SVGFEDistantLightElement extends SVGElement {
  external factory SVGFEDistantLightElement();
}

extension SVGFEDistantLightElementExtension on SVGFEDistantLightElement {
  external SVGAnimatedNumber get azimuth;
  external SVGAnimatedNumber get elevation;
}

@JS('SVGFEPointLightElement')
@staticInterop
class SVGFEPointLightElement extends SVGElement {
  external factory SVGFEPointLightElement();
}

extension SVGFEPointLightElementExtension on SVGFEPointLightElement {
  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
  external SVGAnimatedNumber get z;
}

@JS('SVGFESpotLightElement')
@staticInterop
class SVGFESpotLightElement extends SVGElement {
  external factory SVGFESpotLightElement();
}

extension SVGFESpotLightElementExtension on SVGFESpotLightElement {
  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
  external SVGAnimatedNumber get z;
  external SVGAnimatedNumber get pointsAtX;
  external SVGAnimatedNumber get pointsAtY;
  external SVGAnimatedNumber get pointsAtZ;
  external SVGAnimatedNumber get specularExponent;
  external SVGAnimatedNumber get limitingConeAngle;
}

@JS('SVGFEDisplacementMapElement')
@staticInterop
class SVGFEDisplacementMapElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDisplacementMapElement();
  external static JSNumber get SVG_CHANNEL_UNKNOWN;
  external static JSNumber get SVG_CHANNEL_R;
  external static JSNumber get SVG_CHANNEL_G;
  external static JSNumber get SVG_CHANNEL_B;
  external static JSNumber get SVG_CHANNEL_A;
}

extension SVGFEDisplacementMapElementExtension on SVGFEDisplacementMapElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedNumber get scale;
  external SVGAnimatedEnumeration get xChannelSelector;
  external SVGAnimatedEnumeration get yChannelSelector;
}

@JS('SVGFEDropShadowElement')
@staticInterop
class SVGFEDropShadowElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDropShadowElement();
}

extension SVGFEDropShadowElementExtension on SVGFEDropShadowElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get dx;
  external SVGAnimatedNumber get dy;
  external SVGAnimatedNumber get stdDeviationX;
  external SVGAnimatedNumber get stdDeviationY;
  external JSUndefined setStdDeviation(
      JSNumber stdDeviationX, JSNumber stdDeviationY);
}

@JS('SVGFEFloodElement')
@staticInterop
class SVGFEFloodElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEFloodElement();
}

@JS('SVGFEGaussianBlurElement')
@staticInterop
class SVGFEGaussianBlurElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEGaussianBlurElement();
  external static JSNumber get SVG_EDGEMODE_UNKNOWN;
  external static JSNumber get SVG_EDGEMODE_DUPLICATE;
  external static JSNumber get SVG_EDGEMODE_WRAP;
  external static JSNumber get SVG_EDGEMODE_NONE;
}

extension SVGFEGaussianBlurElementExtension on SVGFEGaussianBlurElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get stdDeviationX;
  external SVGAnimatedNumber get stdDeviationY;
  external SVGAnimatedEnumeration get edgeMode;
  external JSUndefined setStdDeviation(
      JSNumber stdDeviationX, JSNumber stdDeviationY);
}

@JS('SVGFEImageElement')
@staticInterop
class SVGFEImageElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes, SVGURIReference {
  external factory SVGFEImageElement();
}

extension SVGFEImageElementExtension on SVGFEImageElement {
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external SVGAnimatedString get crossOrigin;
}

@JS('SVGFEMergeElement')
@staticInterop
class SVGFEMergeElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEMergeElement();
}

@JS('SVGFEMergeNodeElement')
@staticInterop
class SVGFEMergeNodeElement extends SVGElement {
  external factory SVGFEMergeNodeElement();
}

extension SVGFEMergeNodeElementExtension on SVGFEMergeNodeElement {
  external SVGAnimatedString get in1;
}

@JS('SVGFEMorphologyElement')
@staticInterop
class SVGFEMorphologyElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEMorphologyElement();
  external static JSNumber get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
  external static JSNumber get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external static JSNumber get SVG_MORPHOLOGY_OPERATOR_DILATE;
}

extension SVGFEMorphologyElementExtension on SVGFEMorphologyElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get operator;
  external SVGAnimatedNumber get radiusX;
  external SVGAnimatedNumber get radiusY;
}

@JS('SVGFEOffsetElement')
@staticInterop
class SVGFEOffsetElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEOffsetElement();
}

extension SVGFEOffsetElementExtension on SVGFEOffsetElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get dx;
  external SVGAnimatedNumber get dy;
}

@JS('SVGFESpecularLightingElement')
@staticInterop
class SVGFESpecularLightingElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFESpecularLightingElement();
}

extension SVGFESpecularLightingElementExtension
    on SVGFESpecularLightingElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get surfaceScale;
  external SVGAnimatedNumber get specularConstant;
  external SVGAnimatedNumber get specularExponent;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
}

@JS('SVGFETileElement')
@staticInterop
class SVGFETileElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFETileElement();
}

extension SVGFETileElementExtension on SVGFETileElement {
  external SVGAnimatedString get in1;
}

@JS('SVGFETurbulenceElement')
@staticInterop
class SVGFETurbulenceElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFETurbulenceElement();
  external static JSNumber get SVG_TURBULENCE_TYPE_UNKNOWN;
  external static JSNumber get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external static JSNumber get SVG_TURBULENCE_TYPE_TURBULENCE;
  external static JSNumber get SVG_STITCHTYPE_UNKNOWN;
  external static JSNumber get SVG_STITCHTYPE_STITCH;
  external static JSNumber get SVG_STITCHTYPE_NOSTITCH;
}

extension SVGFETurbulenceElementExtension on SVGFETurbulenceElement {
  external SVGAnimatedNumber get baseFrequencyX;
  external SVGAnimatedNumber get baseFrequencyY;
  external SVGAnimatedInteger get numOctaves;
  external SVGAnimatedNumber get seed;
  external SVGAnimatedEnumeration get stitchTiles;
  external SVGAnimatedEnumeration get type;
}

@JS('FontMetrics')
@staticInterop
class FontMetrics {
  external factory FontMetrics();
}

extension FontMetricsExtension on FontMetrics {
  external JSNumber get width;
  external JSArray get advances;
  external JSNumber get boundingBoxLeft;
  external JSNumber get boundingBoxRight;
  external JSNumber get height;
  external JSNumber get emHeightAscent;
  external JSNumber get emHeightDescent;
  external JSNumber get boundingBoxAscent;
  external JSNumber get boundingBoxDescent;
  external JSNumber get fontBoundingBoxAscent;
  external JSNumber get fontBoundingBoxDescent;
  external Baseline get dominantBaseline;
  external JSArray get baselines;
  external JSArray get fonts;
}

@JS('Baseline')
@staticInterop
class Baseline {
  external factory Baseline();
}

extension BaselineExtension on Baseline {
  external JSString get name;
  external JSNumber get value;
}

@JS('Font')
@staticInterop
class Font {
  external factory Font();
}

extension FontExtension on Font {
  external JSString get name;
  external JSNumber get glyphsRendered;
}

@JS('FileSystemCreateWritableOptions')
@staticInterop
class FileSystemCreateWritableOptions {
  external factory FileSystemCreateWritableOptions();
}

extension FileSystemCreateWritableOptionsExtension
    on FileSystemCreateWritableOptions {
  // TODO
}

@JS('FileSystemFileHandle')
@staticInterop
class FileSystemFileHandle extends FileSystemHandle {
  external factory FileSystemFileHandle();
}

extension FileSystemFileHandleExtension on FileSystemFileHandle {
  external JSPromise getFile();
  external JSPromise createWritable();
  external JSPromise createWritable_1(FileSystemCreateWritableOptions options);
  external JSPromise createSyncAccessHandle();
}

@JS('FileSystemGetFileOptions')
@staticInterop
class FileSystemGetFileOptions {
  external factory FileSystemGetFileOptions();
}

extension FileSystemGetFileOptionsExtension on FileSystemGetFileOptions {
  // TODO
}

@JS('FileSystemGetDirectoryOptions')
@staticInterop
class FileSystemGetDirectoryOptions {
  external factory FileSystemGetDirectoryOptions();
}

extension FileSystemGetDirectoryOptionsExtension
    on FileSystemGetDirectoryOptions {
  // TODO
}

@JS('FileSystemRemoveOptions')
@staticInterop
class FileSystemRemoveOptions {
  external factory FileSystemRemoveOptions();
}

extension FileSystemRemoveOptionsExtension on FileSystemRemoveOptions {
  // TODO
}

@JS('FileSystemDirectoryHandle')
@staticInterop
class FileSystemDirectoryHandle extends FileSystemHandle {
  external factory FileSystemDirectoryHandle();
}

extension FileSystemDirectoryHandleExtension on FileSystemDirectoryHandle {
  // TODO
  external JSPromise getFileHandle(JSString name);
  external JSPromise getFileHandle_1(
      JSString name, FileSystemGetFileOptions options);
  external JSPromise getDirectoryHandle(JSString name);
  external JSPromise getDirectoryHandle_1(
      JSString name, FileSystemGetDirectoryOptions options);
  external JSPromise removeEntry(JSString name);
  external JSPromise removeEntry_1(
      JSString name, FileSystemRemoveOptions options);
  external JSPromise resolve(FileSystemHandle possibleDescendant);
}

@JS('WriteParams')
@staticInterop
class WriteParams {
  external factory WriteParams();
}

extension WriteParamsExtension on WriteParams {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FileSystemWritableFileStream')
@staticInterop
class FileSystemWritableFileStream extends WritableStream {
  external factory FileSystemWritableFileStream();
}

extension FileSystemWritableFileStreamExtension
    on FileSystemWritableFileStream {
  external JSPromise write(FileSystemWriteChunkType data);
  external JSPromise seek(JSNumber position);
  external JSPromise truncate(JSNumber size);
}

@JS('FileSystemReadWriteOptions')
@staticInterop
class FileSystemReadWriteOptions {
  external factory FileSystemReadWriteOptions();
}

extension FileSystemReadWriteOptionsExtension on FileSystemReadWriteOptions {
  // TODO
}

@JS('FileSystemSyncAccessHandle')
@staticInterop
class FileSystemSyncAccessHandle {
  external factory FileSystemSyncAccessHandle();
}

extension FileSystemSyncAccessHandleExtension on FileSystemSyncAccessHandle {
  external JSNumber read(BufferSource buffer);
  external JSNumber read_1(
      BufferSource buffer, FileSystemReadWriteOptions options);
  external JSNumber write(BufferSource buffer);
  external JSNumber write_1(
      BufferSource buffer, FileSystemReadWriteOptions options);
  external JSUndefined truncate(JSNumber newSize);
  external JSNumber getSize();
  external JSUndefined flush();
  external JSUndefined close();
}

@JS('StorageManager')
@staticInterop
class StorageManager {
  external factory StorageManager();
}

extension StorageManagerExtension on StorageManager {
  external JSPromise getDirectory();
  external JSPromise persisted();
  external JSPromise persist();
  external JSPromise estimate();
}

@JS('FullscreenOptions')
@staticInterop
class FullscreenOptions {
  external factory FullscreenOptions();
}

extension FullscreenOptionsExtension on FullscreenOptions {
  // TODO
  // TODO
}

@JS('GamepadHapticActuator')
@staticInterop
class GamepadHapticActuator {
  external factory GamepadHapticActuator();
}

extension GamepadHapticActuatorExtension on GamepadHapticActuator {
  external GamepadHapticActuatorType get type;
  external JSBoolean canPlayEffectType(GamepadHapticEffectType type);
  external JSPromise playEffect(GamepadHapticEffectType type);
  external JSPromise playEffect_1(
      GamepadHapticEffectType type, GamepadEffectParameters params);
  external JSPromise pulse(JSNumber value, JSNumber duration);
  external JSPromise reset();
}

@JS('GamepadEffectParameters')
@staticInterop
class GamepadEffectParameters {
  external factory GamepadEffectParameters();
}

extension GamepadEffectParametersExtension on GamepadEffectParameters {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GamepadPose')
@staticInterop
class GamepadPose {
  external factory GamepadPose();
}

extension GamepadPoseExtension on GamepadPose {
  external JSBoolean get hasOrientation;
  external JSBoolean get hasPosition;
  external JSFloat32Array? get position;
  external JSFloat32Array? get linearVelocity;
  external JSFloat32Array? get linearAcceleration;
  external JSFloat32Array? get orientation;
  external JSFloat32Array? get angularVelocity;
  external JSFloat32Array? get angularAcceleration;
}

@JS('GamepadTouch')
@staticInterop
class GamepadTouch {
  external factory GamepadTouch();
}

extension GamepadTouchExtension on GamepadTouch {
  external JSNumber get touchId;
  external JSNumber get surfaceId;
  external JSFloat32Array get position;
  external JSUint32Array? get surfaceDimensions;
}

@JS('Gamepad')
@staticInterop
class Gamepad {
  external factory Gamepad();
}

extension GamepadExtension on Gamepad {
  external GamepadHand get hand;
  external JSArray get hapticActuators;
  external GamepadPose? get pose;
  external JSArray? get touchEvents;
  external GamepadHapticActuator get vibrationActuator;
  external JSString get id;
  external JSNumber get index;
  external JSBoolean get connected;
  external DOMHighResTimeStamp get timestamp;
  external GamepadMappingType get mapping;
  external JSArray get axes;
  external JSArray get buttons;
}

@JS('GamepadButton')
@staticInterop
class GamepadButton {
  external factory GamepadButton();
}

extension GamepadButtonExtension on GamepadButton {
  external JSBoolean get pressed;
  external JSBoolean get touched;
  external JSNumber get value;
}

@JS('GamepadEvent')
@staticInterop
class GamepadEvent extends Event {
  external factory GamepadEvent();
  external factory GamepadEvent.a1(
      JSString type, GamepadEventInit eventInitDict);
}

extension GamepadEventExtension on GamepadEvent {
  external Gamepad get gamepad;
}

@JS('GamepadEventInit')
@staticInterop
class GamepadEventInit extends EventInit {
  external factory GamepadEventInit();
}

extension GamepadEventInitExtension on GamepadEventInit {
  // TODO
}

@JS('WindowEventHandlers')
@staticInterop
class WindowEventHandlers {
  external factory WindowEventHandlers();
}

extension WindowEventHandlersExtension on WindowEventHandlers {
  external EventHandler get ongamepadconnected;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set ongamepaddisconnected(EventHandler value);
  external EventHandler get onafterprint;
  external set onafterprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeprint(EventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external EventHandler get onhashchange;
  external set onhashchange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onoffline;
  external set onoffline(EventHandler value);
  external EventHandler get ononline;
  external set ononline(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagehide(EventHandler value);
  external EventHandler get onpageshow;
  external set onpageshow(EventHandler value);
  external EventHandler get onpopstate;
  external set onpopstate(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onstorage;
  external set onstorage(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunload;
  external set onunload(EventHandler value);
  external EventHandler get onportalactivate;
  external set onportalactivate(EventHandler value);
}

@JS('Sensor')
@staticInterop
class Sensor extends EventTarget {
  external factory Sensor();
}

extension SensorExtension on Sensor {
  external JSBoolean get activated;
  external JSBoolean get hasReading;
  external DOMHighResTimeStamp? get timestamp;
  external JSUndefined start();
  external JSUndefined stop();
  external EventHandler get onreading;
  external set onreading(EventHandler value);
  external EventHandler get onactivate;
  external set onactivate(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('SensorOptions')
@staticInterop
class SensorOptions {
  external factory SensorOptions();
}

extension SensorOptionsExtension on SensorOptions {
  // TODO
}

@JS('SensorErrorEvent')
@staticInterop
class SensorErrorEvent extends Event {
  external factory SensorErrorEvent();
  external factory SensorErrorEvent.a1(
      JSString type, SensorErrorEventInit errorEventInitDict);
}

extension SensorErrorEventExtension on SensorErrorEvent {
  external DOMException get error;
}

@JS('SensorErrorEventInit')
@staticInterop
class SensorErrorEventInit extends EventInit {
  external factory SensorErrorEventInit();
}

extension SensorErrorEventInitExtension on SensorErrorEventInit {
  // TODO
}

@JS('MockSensorConfiguration')
@staticInterop
class MockSensorConfiguration {
  external factory MockSensorConfiguration();
}

extension MockSensorConfigurationExtension on MockSensorConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MockSensor')
@staticInterop
class MockSensor {
  external factory MockSensor();
}

extension MockSensorExtension on MockSensor {
  // TODO
  // TODO
  // TODO
}

@JS('MockSensorReadingValues')
@staticInterop
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}

@JS('GeolocationSensor')
@staticInterop
class GeolocationSensor extends Sensor {
  external factory GeolocationSensor();
  external factory GeolocationSensor.a1();
  external factory GeolocationSensor.a1_1(GeolocationSensorOptions options);
  external static JSPromise read();
  external static JSPromise read_1(ReadOptions readOptions);
}

extension GeolocationSensorExtension on GeolocationSensor {
  external JSNumber? get latitude;
  external JSNumber? get longitude;
  external JSNumber? get altitude;
  external JSNumber? get accuracy;
  external JSNumber? get altitudeAccuracy;
  external JSNumber? get heading;
  external JSNumber? get speed;
}

@JS('GeolocationSensorOptions')
@staticInterop
class GeolocationSensorOptions extends SensorOptions {
  external factory GeolocationSensorOptions();
}

@JS('ReadOptions')
@staticInterop
class ReadOptions extends GeolocationSensorOptions {
  external factory ReadOptions();
}

extension ReadOptionsExtension on ReadOptions {
  // TODO
}

@JS('GeolocationSensorReading')
@staticInterop
class GeolocationSensorReading {
  external factory GeolocationSensorReading();
}

extension GeolocationSensorReadingExtension on GeolocationSensorReading {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GeolocationReadingValues')
@staticInterop
class GeolocationReadingValues {
  external factory GeolocationReadingValues();
}

extension GeolocationReadingValuesExtension on GeolocationReadingValues {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Geolocation')
@staticInterop
class Geolocation {
  external factory Geolocation();
}

extension GeolocationExtension on Geolocation {
  external JSUndefined getCurrentPosition(PositionCallback successCallback);
  external JSUndefined getCurrentPosition_1(
      PositionCallback successCallback, PositionErrorCallback? errorCallback);
  external JSUndefined getCurrentPosition_2(PositionCallback successCallback,
      PositionErrorCallback? errorCallback, PositionOptions options);
  external JSNumber watchPosition(PositionCallback successCallback);
  external JSNumber watchPosition_1(
      PositionCallback successCallback, PositionErrorCallback? errorCallback);
  external JSNumber watchPosition_2(PositionCallback successCallback,
      PositionErrorCallback? errorCallback, PositionOptions options);
  external JSUndefined clearWatch(JSNumber watchId);
}

@JS('PositionOptions')
@staticInterop
class PositionOptions {
  external factory PositionOptions();
}

extension PositionOptionsExtension on PositionOptions {
  // TODO
  // TODO
  // TODO
}

@JS('GeolocationPosition')
@staticInterop
class GeolocationPosition {
  external factory GeolocationPosition();
}

extension GeolocationPositionExtension on GeolocationPosition {
  external GeolocationCoordinates get coords;
  external EpochTimeStamp get timestamp;
}

@JS('GeolocationCoordinates')
@staticInterop
class GeolocationCoordinates {
  external factory GeolocationCoordinates();
}

extension GeolocationCoordinatesExtension on GeolocationCoordinates {
  external JSNumber get accuracy;
  external JSNumber get latitude;
  external JSNumber get longitude;
  external JSNumber? get altitude;
  external JSNumber? get altitudeAccuracy;
  external JSNumber? get heading;
  external JSNumber? get speed;
}

@JS('GeolocationPositionError')
@staticInterop
class GeolocationPositionError {
  external factory GeolocationPositionError();
  external static JSNumber get PERMISSION_DENIED;
  external static JSNumber get POSITION_UNAVAILABLE;
  external static JSNumber get TIMEOUT;
}

extension GeolocationPositionErrorExtension on GeolocationPositionError {
  external JSNumber get code;
  external JSString get message;
}

@JS('DOMPointReadOnly')
@staticInterop
class DOMPointReadOnly {
  external factory DOMPointReadOnly();
  external factory DOMPointReadOnly.a1();
  external factory DOMPointReadOnly.a1_1(JSNumber x);
  external factory DOMPointReadOnly.a1_2(JSNumber x, JSNumber y);
  external factory DOMPointReadOnly.a1_3(JSNumber x, JSNumber y, JSNumber z);
  external factory DOMPointReadOnly.a1_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber w);
  external static DOMPointReadOnly fromPoint();
  external static DOMPointReadOnly fromPoint_1(DOMPointInit other);
}

extension DOMPointReadOnlyExtension on DOMPointReadOnly {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get z;
  external JSNumber get w;
  external DOMPoint matrixTransform();
  external DOMPoint matrixTransform_1(DOMMatrixInit matrix);
  external JSObject toJSON();
}

@JS('DOMPoint')
@staticInterop
class DOMPoint extends DOMPointReadOnly {
  external factory DOMPoint();
  external factory DOMPoint.a1();
  external factory DOMPoint.a1_1(JSNumber x);
  external factory DOMPoint.a1_2(JSNumber x, JSNumber y);
  external factory DOMPoint.a1_3(JSNumber x, JSNumber y, JSNumber z);
  external factory DOMPoint.a1_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber w);
  external static DOMPoint fromPoint();
  external static DOMPoint fromPoint_1(DOMPointInit other);
}

extension DOMPointExtension on DOMPoint {
  external JSNumber get x;
  external set x(JSNumber value);
  external JSNumber get y;
  external set y(JSNumber value);
  external JSNumber get z;
  external set z(JSNumber value);
  external JSNumber get w;
  external set w(JSNumber value);
}

@JS('DOMPointInit')
@staticInterop
class DOMPointInit {
  external factory DOMPointInit();
}

extension DOMPointInitExtension on DOMPointInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMRectReadOnly')
@staticInterop
class DOMRectReadOnly {
  external factory DOMRectReadOnly();
  external factory DOMRectReadOnly.a1();
  external factory DOMRectReadOnly.a1_1(JSNumber x);
  external factory DOMRectReadOnly.a1_2(JSNumber x, JSNumber y);
  external factory DOMRectReadOnly.a1_3(JSNumber x, JSNumber y, JSNumber width);
  external factory DOMRectReadOnly.a1_4(
      JSNumber x, JSNumber y, JSNumber width, JSNumber height);
  external static DOMRectReadOnly fromRect();
  external static DOMRectReadOnly fromRect_1(DOMRectInit other);
}

extension DOMRectReadOnlyExtension on DOMRectReadOnly {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get top;
  external JSNumber get right;
  external JSNumber get bottom;
  external JSNumber get left;
  external JSObject toJSON();
}

@JS('DOMRect')
@staticInterop
class DOMRect extends DOMRectReadOnly {
  external factory DOMRect();
  external factory DOMRect.a1();
  external factory DOMRect.a1_1(JSNumber x);
  external factory DOMRect.a1_2(JSNumber x, JSNumber y);
  external factory DOMRect.a1_3(JSNumber x, JSNumber y, JSNumber width);
  external factory DOMRect.a1_4(
      JSNumber x, JSNumber y, JSNumber width, JSNumber height);
  external static DOMRect fromRect();
  external static DOMRect fromRect_1(DOMRectInit other);
}

extension DOMRectExtension on DOMRect {
  external JSNumber get x;
  external set x(JSNumber value);
  external JSNumber get y;
  external set y(JSNumber value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
}

@JS('DOMRectInit')
@staticInterop
class DOMRectInit {
  external factory DOMRectInit();
}

extension DOMRectInitExtension on DOMRectInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMRectList')
@staticInterop
class DOMRectList {
  external factory DOMRectList();
}

extension DOMRectListExtension on DOMRectList {
  external JSNumber get length;
  external DOMRect? item(JSNumber index);
}

@JS('DOMQuad')
@staticInterop
class DOMQuad {
  external factory DOMQuad();
  external factory DOMQuad.a1();
  external factory DOMQuad.a1_1(DOMPointInit p1);
  external factory DOMQuad.a1_2(DOMPointInit p1, DOMPointInit p2);
  external factory DOMQuad.a1_3(
      DOMPointInit p1, DOMPointInit p2, DOMPointInit p3);
  external factory DOMQuad.a1_4(
      DOMPointInit p1, DOMPointInit p2, DOMPointInit p3, DOMPointInit p4);
  external static DOMQuad fromRect();
  external static DOMQuad fromRect_1(DOMRectInit other);
  external static DOMQuad fromQuad();
  external static DOMQuad fromQuad_1(DOMQuadInit other);
}

extension DOMQuadExtension on DOMQuad {
  external DOMPoint get p1;
  external DOMPoint get p2;
  external DOMPoint get p3;
  external DOMPoint get p4;
  external DOMRect getBounds();
  external JSObject toJSON();
}

@JS('DOMQuadInit')
@staticInterop
class DOMQuadInit {
  external factory DOMQuadInit();
}

extension DOMQuadInitExtension on DOMQuadInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMMatrixReadOnly')
@staticInterop
class DOMMatrixReadOnly {
  external factory DOMMatrixReadOnly();
  external factory DOMMatrixReadOnly.a1();
  external factory DOMMatrixReadOnly.a1_1(JSAny init);
  external static DOMMatrixReadOnly fromMatrix();
  external static DOMMatrixReadOnly fromMatrix_1(DOMMatrixInit other);
  external static DOMMatrixReadOnly fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrixReadOnly fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixReadOnlyExtension on DOMMatrixReadOnly {
  external JSNumber get a;
  external JSNumber get b;
  external JSNumber get c;
  external JSNumber get d;
  external JSNumber get e;
  external JSNumber get f;
  external JSNumber get m11;
  external JSNumber get m12;
  external JSNumber get m13;
  external JSNumber get m14;
  external JSNumber get m21;
  external JSNumber get m22;
  external JSNumber get m23;
  external JSNumber get m24;
  external JSNumber get m31;
  external JSNumber get m32;
  external JSNumber get m33;
  external JSNumber get m34;
  external JSNumber get m41;
  external JSNumber get m42;
  external JSNumber get m43;
  external JSNumber get m44;
  external JSBoolean get is2D;
  external JSBoolean get isIdentity;
  external DOMMatrix translate();
  external DOMMatrix translate_1(JSNumber tx);
  external DOMMatrix translate_2(JSNumber tx, JSNumber ty);
  external DOMMatrix translate_3(JSNumber tx, JSNumber ty, JSNumber tz);
  external DOMMatrix scale();
  external DOMMatrix scale_1(JSNumber scaleX);
  external DOMMatrix scale_2(JSNumber scaleX, JSNumber scaleY);
  external DOMMatrix scale_3(JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ);
  external DOMMatrix scale_4(
      JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ, JSNumber originX);
  external DOMMatrix scale_5(JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ,
      JSNumber originX, JSNumber originY);
  external DOMMatrix scale_6(JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ,
      JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix scaleNonUniform();
  external DOMMatrix scaleNonUniform_1(JSNumber scaleX);
  external DOMMatrix scaleNonUniform_2(JSNumber scaleX, JSNumber scaleY);
  external DOMMatrix scale3d();
  external DOMMatrix scale3d_1(JSNumber scale);
  external DOMMatrix scale3d_2(JSNumber scale, JSNumber originX);
  external DOMMatrix scale3d_3(
      JSNumber scale, JSNumber originX, JSNumber originY);
  external DOMMatrix scale3d_4(
      JSNumber scale, JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix rotate();
  external DOMMatrix rotate_1(JSNumber rotX);
  external DOMMatrix rotate_2(JSNumber rotX, JSNumber rotY);
  external DOMMatrix rotate_3(JSNumber rotX, JSNumber rotY, JSNumber rotZ);
  external DOMMatrix rotateFromVector();
  external DOMMatrix rotateFromVector_1(JSNumber x);
  external DOMMatrix rotateFromVector_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngle();
  external DOMMatrix rotateAxisAngle_1(JSNumber x);
  external DOMMatrix rotateAxisAngle_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngle_3(JSNumber x, JSNumber y, JSNumber z);
  external DOMMatrix rotateAxisAngle_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber angle);
  external DOMMatrix skewX();
  external DOMMatrix skewX_1(JSNumber sx);
  external DOMMatrix skewY();
  external DOMMatrix skewY_1(JSNumber sy);
  external DOMMatrix multiply();
  external DOMMatrix multiply_1(DOMMatrixInit other);
  external DOMMatrix flipX();
  external DOMMatrix flipY();
  external DOMMatrix inverse();
  external DOMPoint transformPoint();
  external DOMPoint transformPoint_1(DOMPointInit point);
  external JSFloat32Array toFloat32Array();
  external JSFloat64Array toFloat64Array();
  external JSObject toJSON();
}

@JS('DOMMatrix')
@staticInterop
class DOMMatrix extends DOMMatrixReadOnly {
  external factory DOMMatrix();
  external factory DOMMatrix.a1();
  external factory DOMMatrix.a1_1(JSAny init);
  external static DOMMatrix fromMatrix();
  external static DOMMatrix fromMatrix_1(DOMMatrixInit other);
  external static DOMMatrix fromFloat32Array(JSFloat32Array array32);
  external static DOMMatrix fromFloat64Array(JSFloat64Array array64);
}

extension DOMMatrixExtension on DOMMatrix {
  external JSNumber get a;
  external set a(JSNumber value);
  external JSNumber get b;
  external set b(JSNumber value);
  external JSNumber get c;
  external set c(JSNumber value);
  external JSNumber get d;
  external set d(JSNumber value);
  external JSNumber get e;
  external set e(JSNumber value);
  external JSNumber get f;
  external set f(JSNumber value);
  external JSNumber get m11;
  external set m11(JSNumber value);
  external JSNumber get m12;
  external set m12(JSNumber value);
  external JSNumber get m13;
  external set m13(JSNumber value);
  external JSNumber get m14;
  external set m14(JSNumber value);
  external JSNumber get m21;
  external set m21(JSNumber value);
  external JSNumber get m22;
  external set m22(JSNumber value);
  external JSNumber get m23;
  external set m23(JSNumber value);
  external JSNumber get m24;
  external set m24(JSNumber value);
  external JSNumber get m31;
  external set m31(JSNumber value);
  external JSNumber get m32;
  external set m32(JSNumber value);
  external JSNumber get m33;
  external set m33(JSNumber value);
  external JSNumber get m34;
  external set m34(JSNumber value);
  external JSNumber get m41;
  external set m41(JSNumber value);
  external JSNumber get m42;
  external set m42(JSNumber value);
  external JSNumber get m43;
  external set m43(JSNumber value);
  external JSNumber get m44;
  external set m44(JSNumber value);
  external DOMMatrix multiplySelf();
  external DOMMatrix multiplySelf_1(DOMMatrixInit other);
  external DOMMatrix preMultiplySelf();
  external DOMMatrix preMultiplySelf_1(DOMMatrixInit other);
  external DOMMatrix translateSelf();
  external DOMMatrix translateSelf_1(JSNumber tx);
  external DOMMatrix translateSelf_2(JSNumber tx, JSNumber ty);
  external DOMMatrix translateSelf_3(JSNumber tx, JSNumber ty, JSNumber tz);
  external DOMMatrix scaleSelf();
  external DOMMatrix scaleSelf_1(JSNumber scaleX);
  external DOMMatrix scaleSelf_2(JSNumber scaleX, JSNumber scaleY);
  external DOMMatrix scaleSelf_3(
      JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ);
  external DOMMatrix scaleSelf_4(
      JSNumber scaleX, JSNumber scaleY, JSNumber scaleZ, JSNumber originX);
  external DOMMatrix scaleSelf_5(JSNumber scaleX, JSNumber scaleY,
      JSNumber scaleZ, JSNumber originX, JSNumber originY);
  external DOMMatrix scaleSelf_6(JSNumber scaleX, JSNumber scaleY,
      JSNumber scaleZ, JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix scale3dSelf();
  external DOMMatrix scale3dSelf_1(JSNumber scale);
  external DOMMatrix scale3dSelf_2(JSNumber scale, JSNumber originX);
  external DOMMatrix scale3dSelf_3(
      JSNumber scale, JSNumber originX, JSNumber originY);
  external DOMMatrix scale3dSelf_4(
      JSNumber scale, JSNumber originX, JSNumber originY, JSNumber originZ);
  external DOMMatrix rotateSelf();
  external DOMMatrix rotateSelf_1(JSNumber rotX);
  external DOMMatrix rotateSelf_2(JSNumber rotX, JSNumber rotY);
  external DOMMatrix rotateSelf_3(JSNumber rotX, JSNumber rotY, JSNumber rotZ);
  external DOMMatrix rotateFromVectorSelf();
  external DOMMatrix rotateFromVectorSelf_1(JSNumber x);
  external DOMMatrix rotateFromVectorSelf_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngleSelf();
  external DOMMatrix rotateAxisAngleSelf_1(JSNumber x);
  external DOMMatrix rotateAxisAngleSelf_2(JSNumber x, JSNumber y);
  external DOMMatrix rotateAxisAngleSelf_3(JSNumber x, JSNumber y, JSNumber z);
  external DOMMatrix rotateAxisAngleSelf_4(
      JSNumber x, JSNumber y, JSNumber z, JSNumber angle);
  external DOMMatrix skewXSelf();
  external DOMMatrix skewXSelf_1(JSNumber sx);
  external DOMMatrix skewYSelf();
  external DOMMatrix skewYSelf_1(JSNumber sy);
  external DOMMatrix invertSelf();
  external DOMMatrix setMatrixValue(JSString transformList);
}

@JS('DOMMatrix2DInit')
@staticInterop
class DOMMatrix2DInit {
  external factory DOMMatrix2DInit();
}

extension DOMMatrix2DInitExtension on DOMMatrix2DInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMMatrixInit')
@staticInterop
class DOMMatrixInit extends DOMMatrix2DInit {
  external factory DOMMatrixInit();
}

extension DOMMatrixInitExtension on DOMMatrixInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RelatedApplication')
@staticInterop
class RelatedApplication {
  external factory RelatedApplication();
}

extension RelatedApplicationExtension on RelatedApplication {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GlobalPrivacyControl')
@staticInterop
class GlobalPrivacyControl {
  external factory GlobalPrivacyControl();
}

extension GlobalPrivacyControlExtension on GlobalPrivacyControl {
  external JSBoolean get globalPrivacyControl;
}

@JS('Gyroscope')
@staticInterop
class Gyroscope extends Sensor {
  external factory Gyroscope();
  external factory Gyroscope.a1();
  external factory Gyroscope.a1_1(GyroscopeSensorOptions sensorOptions);
}

extension GyroscopeExtension on Gyroscope {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('GyroscopeSensorOptions')
@staticInterop
class GyroscopeSensorOptions extends SensorOptions {
  external factory GyroscopeSensorOptions();
}

extension GyroscopeSensorOptionsExtension on GyroscopeSensorOptions {
  // TODO
}

@JS('GyroscopeReadingValues')
@staticInterop
class GyroscopeReadingValues {
  external factory GyroscopeReadingValues();
}

extension GyroscopeReadingValuesExtension on GyroscopeReadingValues {
  // TODO
  // TODO
  // TODO
}

@JS('HTMLAllCollection')
@staticInterop
class HTMLAllCollection {
  external factory HTMLAllCollection();
}

extension HTMLAllCollectionExtension on HTMLAllCollection {
  external JSNumber get length;
  external JSAny? namedItem(JSString name);
  external JSAny? item();
  external JSAny? item_1(JSString nameOrIndex);
}

@JS('HTMLFormControlsCollection')
@staticInterop
class HTMLFormControlsCollection extends HTMLCollection {
  external factory HTMLFormControlsCollection();
}

extension HTMLFormControlsCollectionExtension on HTMLFormControlsCollection {
  external JSAny? namedItem(JSString name);
}

@JS('RadioNodeList')
@staticInterop
class RadioNodeList extends NodeList {
  external factory RadioNodeList();
}

extension RadioNodeListExtension on RadioNodeList {
  external JSString get value;
  external set value(JSString value);
}

@JS('HTMLOptionsCollection')
@staticInterop
class HTMLOptionsCollection extends HTMLCollection {
  external factory HTMLOptionsCollection();
}

extension HTMLOptionsCollectionExtension on HTMLOptionsCollection {
  external JSNumber get length;
  external set length(JSNumber value);
  external JSUndefined add(JSAny element);
  external JSUndefined add_1(JSAny element, JSAny? before);
  external JSUndefined remove(JSNumber index);
  external JSNumber get selectedIndex;
  external set selectedIndex(JSNumber value);
}

@JS('DOMStringList')
@staticInterop
class DOMStringList {
  external factory DOMStringList();
}

extension DOMStringListExtension on DOMStringList {
  external JSNumber get length;
  external JSString? item(JSNumber index);
  external JSBoolean contains(JSString string);
}

@JS('HTMLUnknownElement')
@staticInterop
class HTMLUnknownElement extends HTMLElement {
  external factory HTMLUnknownElement();
}

@JS('HTMLOrSVGElement')
@staticInterop
class HTMLOrSVGElement {
  external factory HTMLOrSVGElement();
}

extension HTMLOrSVGElementExtension on HTMLOrSVGElement {
  external DOMStringMap get dataset;
  external JSString get nonce;
  external set nonce(JSString value);
  external JSBoolean get autofocus;
  external set autofocus(JSBoolean value);
  external JSNumber get tabIndex;
  external set tabIndex(JSNumber value);
  external JSUndefined focus();
  external JSUndefined focus_1(FocusOptions options);
  external JSUndefined blur();
}

@JS('DOMStringMap')
@staticInterop
class DOMStringMap {
  external factory DOMStringMap();
}

@JS('HTMLHtmlElement')
@staticInterop
class HTMLHtmlElement extends HTMLElement {
  external factory HTMLHtmlElement();
}

extension HTMLHtmlElementExtension on HTMLHtmlElement {
  external JSString get version;
  external set version(JSString value);
}

@JS('HTMLHeadElement')
@staticInterop
class HTMLHeadElement extends HTMLElement {
  external factory HTMLHeadElement();
}

@JS('HTMLTitleElement')
@staticInterop
class HTMLTitleElement extends HTMLElement {
  external factory HTMLTitleElement();
}

extension HTMLTitleElementExtension on HTMLTitleElement {
  external JSString get text;
  external set text(JSString value);
}

@JS('HTMLBaseElement')
@staticInterop
class HTMLBaseElement extends HTMLElement {
  external factory HTMLBaseElement();
}

extension HTMLBaseElementExtension on HTMLBaseElement {
  external JSString get href;
  external set href(JSString value);
  external JSString get target;
  external set target(JSString value);
}

@JS('HTMLLinkElement')
@staticInterop
class HTMLLinkElement extends HTMLElement implements LinkStyle {
  external factory HTMLLinkElement();
}

extension HTMLLinkElementExtension on HTMLLinkElement {
  external JSString get href;
  external set href(JSString value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSString get rel;
  external set rel(JSString value);
  external JSString get as;
  external set as(JSString value);
  external DOMTokenList get relList;
  external JSString get media;
  external set media(JSString value);
  external JSString get integrity;
  external set integrity(JSString value);
  external JSString get hreflang;
  external set hreflang(JSString value);
  external JSString get type;
  external set type(JSString value);
  external DOMTokenList get sizes;
  external JSString get imageSrcset;
  external set imageSrcset(JSString value);
  external JSString get imageSizes;
  external set imageSizes(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external DOMTokenList get blocking;
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external JSString get charset;
  external set charset(JSString value);
  external JSString get rev;
  external set rev(JSString value);
  external JSString get target;
  external set target(JSString value);
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('HTMLMetaElement')
@staticInterop
class HTMLMetaElement extends HTMLElement {
  external factory HTMLMetaElement();
}

extension HTMLMetaElementExtension on HTMLMetaElement {
  external JSString get name;
  external set name(JSString value);
  external JSString get httpEquiv;
  external set httpEquiv(JSString value);
  external JSString get content;
  external set content(JSString value);
  external JSString get media;
  external set media(JSString value);
  external JSString get scheme;
  external set scheme(JSString value);
}

@JS('HTMLStyleElement')
@staticInterop
class HTMLStyleElement extends HTMLElement implements LinkStyle {
  external factory HTMLStyleElement();
}

extension HTMLStyleElementExtension on HTMLStyleElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external JSString get media;
  external set media(JSString value);
  external DOMTokenList get blocking;
  external JSString get type;
  external set type(JSString value);
}

@JS('HTMLHeadingElement')
@staticInterop
class HTMLHeadingElement extends HTMLElement {
  external factory HTMLHeadingElement();
}

extension HTMLHeadingElementExtension on HTMLHeadingElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLParagraphElement')
@staticInterop
class HTMLParagraphElement extends HTMLElement {
  external factory HTMLParagraphElement();
}

extension HTMLParagraphElementExtension on HTMLParagraphElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLHRElement')
@staticInterop
class HTMLHRElement extends HTMLElement {
  external factory HTMLHRElement();
}

extension HTMLHRElementExtension on HTMLHRElement {
  external JSString get align;
  external set align(JSString value);
  external JSString get color;
  external set color(JSString value);
  external JSBoolean get noShade;
  external set noShade(JSBoolean value);
  external JSString get size;
  external set size(JSString value);
  external JSString get width;
  external set width(JSString value);
}

@JS('HTMLPreElement')
@staticInterop
class HTMLPreElement extends HTMLElement {
  external factory HTMLPreElement();
}

extension HTMLPreElementExtension on HTMLPreElement {
  external JSNumber get width;
  external set width(JSNumber value);
}

@JS('HTMLQuoteElement')
@staticInterop
class HTMLQuoteElement extends HTMLElement {
  external factory HTMLQuoteElement();
}

extension HTMLQuoteElementExtension on HTMLQuoteElement {
  external JSString get cite;
  external set cite(JSString value);
}

@JS('HTMLOListElement')
@staticInterop
class HTMLOListElement extends HTMLElement {
  external factory HTMLOListElement();
}

extension HTMLOListElementExtension on HTMLOListElement {
  external JSBoolean get reversed;
  external set reversed(JSBoolean value);
  external JSNumber get start;
  external set start(JSNumber value);
  external JSString get type;
  external set type(JSString value);
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLUListElement')
@staticInterop
class HTMLUListElement extends HTMLElement {
  external factory HTMLUListElement();
}

extension HTMLUListElementExtension on HTMLUListElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
  external JSString get type;
  external set type(JSString value);
}

@JS('HTMLMenuElement')
@staticInterop
class HTMLMenuElement extends HTMLElement {
  external factory HTMLMenuElement();
}

extension HTMLMenuElementExtension on HTMLMenuElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLLIElement')
@staticInterop
class HTMLLIElement extends HTMLElement {
  external factory HTMLLIElement();
}

extension HTMLLIElementExtension on HTMLLIElement {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSString get type;
  external set type(JSString value);
}

@JS('HTMLDListElement')
@staticInterop
class HTMLDListElement extends HTMLElement {
  external factory HTMLDListElement();
}

extension HTMLDListElementExtension on HTMLDListElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLDivElement')
@staticInterop
class HTMLDivElement extends HTMLElement {
  external factory HTMLDivElement();
}

extension HTMLDivElementExtension on HTMLDivElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLAnchorElement')
@staticInterop
class HTMLAnchorElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils, HTMLHyperlinkElementUtils {
  external factory HTMLAnchorElement();
}

extension HTMLAnchorElementExtension on HTMLAnchorElement {
  external JSString get target;
  external set target(JSString value);
  external JSString get download;
  external set download(JSString value);
  external JSString get ping;
  external set ping(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external JSString get hreflang;
  external set hreflang(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get text;
  external set text(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get coords;
  external set coords(JSString value);
  external JSString get charset;
  external set charset(JSString value);
  external JSString get name;
  external set name(JSString value);
  external JSString get rev;
  external set rev(JSString value);
  external JSString get shape;
  external set shape(JSString value);
  external JSNumber get attributionSourceId;
  external set attributionSourceId(JSNumber value);
}

@JS('HTMLDataElement')
@staticInterop
class HTMLDataElement extends HTMLElement {
  external factory HTMLDataElement();
}

extension HTMLDataElementExtension on HTMLDataElement {
  external JSString get value;
  external set value(JSString value);
}

@JS('HTMLTimeElement')
@staticInterop
class HTMLTimeElement extends HTMLElement {
  external factory HTMLTimeElement();
}

extension HTMLTimeElementExtension on HTMLTimeElement {
  external JSString get dateTime;
  external set dateTime(JSString value);
}

@JS('HTMLSpanElement')
@staticInterop
class HTMLSpanElement extends HTMLElement {
  external factory HTMLSpanElement();
}

@JS('HTMLBRElement')
@staticInterop
class HTMLBRElement extends HTMLElement {
  external factory HTMLBRElement();
}

extension HTMLBRElementExtension on HTMLBRElement {
  external JSString get clear;
  external set clear(JSString value);
}

@JS('HTMLHyperlinkElementUtils')
@staticInterop
class HTMLHyperlinkElementUtils {
  external factory HTMLHyperlinkElementUtils();
}

extension HTMLHyperlinkElementUtilsExtension on HTMLHyperlinkElementUtils {
  external JSString get href;
  external set href(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get username;
  external set username(JSString value);
  external JSString get password;
  external set password(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external JSString get hash;
  external set hash(JSString value);
}

@JS('HTMLModElement')
@staticInterop
class HTMLModElement extends HTMLElement {
  external factory HTMLModElement();
}

extension HTMLModElementExtension on HTMLModElement {
  external JSString get cite;
  external set cite(JSString value);
  external JSString get dateTime;
  external set dateTime(JSString value);
}

@JS('HTMLPictureElement')
@staticInterop
class HTMLPictureElement extends HTMLElement {
  external factory HTMLPictureElement();
}

@JS('HTMLSourceElement')
@staticInterop
class HTMLSourceElement extends HTMLElement {
  external factory HTMLSourceElement();
}

extension HTMLSourceElementExtension on HTMLSourceElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get srcset;
  external set srcset(JSString value);
  external JSString get sizes;
  external set sizes(JSString value);
  external JSString get media;
  external set media(JSString value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
}

@JS('HTMLEmbedElement')
@staticInterop
class HTMLEmbedElement extends HTMLElement {
  external factory HTMLEmbedElement();
}

extension HTMLEmbedElementExtension on HTMLEmbedElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get width;
  external set width(JSString value);
  external JSString get height;
  external set height(JSString value);
  external Document? getSVGDocument();
  external JSString get align;
  external set align(JSString value);
  external JSString get name;
  external set name(JSString value);
}

@JS('HTMLObjectElement')
@staticInterop
class HTMLObjectElement extends HTMLElement {
  external factory HTMLObjectElement();
}

extension HTMLObjectElementExtension on HTMLObjectElement {
  external JSString get data;
  external set data(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get name;
  external set name(JSString value);
  external HTMLFormElement? get form;
  external JSString get width;
  external set width(JSString value);
  external JSString get height;
  external set height(JSString value);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external JSString get align;
  external set align(JSString value);
  external JSString get archive;
  external set archive(JSString value);
  external JSString get code;
  external set code(JSString value);
  external JSBoolean get declare;
  external set declare(JSBoolean value);
  external JSNumber get hspace;
  external set hspace(JSNumber value);
  external JSString get standby;
  external set standby(JSString value);
  external JSNumber get vspace;
  external set vspace(JSNumber value);
  external JSString get codeBase;
  external set codeBase(JSString value);
  external JSString get codeType;
  external set codeType(JSString value);
  external JSString get useMap;
  external set useMap(JSString value);
  external JSString get border;
  external set border(JSString value);
}

@JS('HTMLVideoElement')
@staticInterop
class HTMLVideoElement extends HTMLMediaElement {
  external factory HTMLVideoElement();
}

extension HTMLVideoElementExtension on HTMLVideoElement {
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external JSNumber get videoWidth;
  external JSNumber get videoHeight;
  external JSString get poster;
  external set poster(JSString value);
  external JSBoolean get playsInline;
  external set playsInline(JSBoolean value);
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external JSPromise requestPictureInPicture();
  external EventHandler get onenterpictureinpicture;
  external set onenterpictureinpicture(EventHandler value);
  external EventHandler get onleavepictureinpicture;
  external set onleavepictureinpicture(EventHandler value);
  external JSBoolean get disablePictureInPicture;
  external set disablePictureInPicture(JSBoolean value);
  external JSNumber requestVideoFrameCallback(
      VideoFrameRequestCallback callback);
  external JSUndefined cancelVideoFrameCallback(JSNumber handle);
}

@JS('HTMLAudioElement')
@staticInterop
class HTMLAudioElement extends HTMLMediaElement {
  external factory HTMLAudioElement();
}

@JS('HTMLTrackElement')
@staticInterop
class HTMLTrackElement extends HTMLElement {
  external factory HTMLTrackElement();
  external static JSNumber get NONE;
  external static JSNumber get LOADING;
  external static JSNumber get LOADED;
  external static JSNumber get ERROR;
}

extension HTMLTrackElementExtension on HTMLTrackElement {
  external JSString get kind;
  external set kind(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get srclang;
  external set srclang(JSString value);
  external JSString get label;
  external set label(JSString value);
  @JS('default')
  external JSBoolean get default0;
  @JS('default')
  external set default0(JSBoolean value);
  external JSNumber get readyState;
  external TextTrack get track;
}

@JS('MediaError')
@staticInterop
class MediaError {
  external factory MediaError();
  external static JSNumber get MEDIA_ERR_ABORTED;
  external static JSNumber get MEDIA_ERR_NETWORK;
  external static JSNumber get MEDIA_ERR_DECODE;
  external static JSNumber get MEDIA_ERR_SRC_NOT_SUPPORTED;
}

extension MediaErrorExtension on MediaError {
  external JSNumber get code;
  external JSString get message;
}

@JS('AudioTrackList')
@staticInterop
class AudioTrackList extends EventTarget {
  external factory AudioTrackList();
}

extension AudioTrackListExtension on AudioTrackList {
  external JSNumber get length;
  external AudioTrack? getTrackById(JSString id);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('AudioTrack')
@staticInterop
class AudioTrack {
  external factory AudioTrack();
}

extension AudioTrackExtension on AudioTrack {
  external JSString get id;
  external JSString get kind;
  external JSString get label;
  external JSString get language;
  external JSBoolean get enabled;
  external set enabled(JSBoolean value);
  external SourceBuffer? get sourceBuffer;
}

@JS('VideoTrackList')
@staticInterop
class VideoTrackList extends EventTarget {
  external factory VideoTrackList();
}

extension VideoTrackListExtension on VideoTrackList {
  external JSNumber get length;
  external VideoTrack? getTrackById(JSString id);
  external JSNumber get selectedIndex;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('VideoTrack')
@staticInterop
class VideoTrack {
  external factory VideoTrack();
}

extension VideoTrackExtension on VideoTrack {
  external JSString get id;
  external JSString get kind;
  external JSString get label;
  external JSString get language;
  external JSBoolean get selected;
  external set selected(JSBoolean value);
  external SourceBuffer? get sourceBuffer;
}

@JS('TextTrackList')
@staticInterop
class TextTrackList extends EventTarget {
  external factory TextTrackList();
}

extension TextTrackListExtension on TextTrackList {
  external JSNumber get length;
  external TextTrack? getTrackById(JSString id);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('TextTrack')
@staticInterop
class TextTrack extends EventTarget {
  external factory TextTrack();
}

extension TextTrackExtension on TextTrack {
  external TextTrackKind get kind;
  external JSString get label;
  external JSString get language;
  external JSString get id;
  external JSString get inBandMetadataTrackDispatchType;
  external TextTrackMode get mode;
  external set mode(TextTrackMode value);
  external TextTrackCueList? get cues;
  external TextTrackCueList? get activeCues;
  external JSUndefined addCue(TextTrackCue cue);
  external JSUndefined removeCue(TextTrackCue cue);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external SourceBuffer? get sourceBuffer;
}

@JS('TextTrackCueList')
@staticInterop
class TextTrackCueList {
  external factory TextTrackCueList();
}

extension TextTrackCueListExtension on TextTrackCueList {
  external JSNumber get length;
  external TextTrackCue? getCueById(JSString id);
}

@JS('TextTrackCue')
@staticInterop
class TextTrackCue extends EventTarget {
  external factory TextTrackCue();
}

extension TextTrackCueExtension on TextTrackCue {
  external TextTrack? get track;
  external JSString get id;
  external set id(JSString value);
  external JSNumber get startTime;
  external set startTime(JSNumber value);
  external JSNumber get endTime;
  external set endTime(JSNumber value);
  external JSBoolean get pauseOnExit;
  external set pauseOnExit(JSBoolean value);
  external EventHandler get onenter;
  external set onenter(EventHandler value);
  external EventHandler get onexit;
  external set onexit(EventHandler value);
}

@JS('TimeRanges')
@staticInterop
class TimeRanges {
  external factory TimeRanges();
}

extension TimeRangesExtension on TimeRanges {
  external JSNumber get length;
  external JSNumber start(JSNumber index);
  external JSNumber end(JSNumber index);
}

@JS('TrackEvent')
@staticInterop
class TrackEvent extends Event {
  external factory TrackEvent();
  external factory TrackEvent.a1(JSString type);
  external factory TrackEvent.a1_1(JSString type, TrackEventInit eventInitDict);
}

extension TrackEventExtension on TrackEvent {
  external JSAny? get track;
}

@JS('TrackEventInit')
@staticInterop
class TrackEventInit extends EventInit {
  external factory TrackEventInit();
}

extension TrackEventInitExtension on TrackEventInit {
  // TODO
}

@JS('HTMLMapElement')
@staticInterop
class HTMLMapElement extends HTMLElement {
  external factory HTMLMapElement();
}

extension HTMLMapElementExtension on HTMLMapElement {
  external JSString get name;
  external set name(JSString value);
  external HTMLCollection get areas;
}

@JS('HTMLAreaElement')
@staticInterop
class HTMLAreaElement extends HTMLElement implements HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement();
}

extension HTMLAreaElementExtension on HTMLAreaElement {
  external JSString get alt;
  external set alt(JSString value);
  external JSString get coords;
  external set coords(JSString value);
  external JSString get shape;
  external set shape(JSString value);
  external JSString get target;
  external set target(JSString value);
  external JSString get download;
  external set download(JSString value);
  external JSString get ping;
  external set ping(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSBoolean get noHref;
  external set noHref(JSBoolean value);
}

@JS('HTMLTableElement')
@staticInterop
class HTMLTableElement extends HTMLElement {
  external factory HTMLTableElement();
}

extension HTMLTableElementExtension on HTMLTableElement {
  external HTMLTableCaptionElement? get caption;
  external set caption(HTMLTableCaptionElement? value);
  external HTMLTableCaptionElement createCaption();
  external JSUndefined deleteCaption();
  external HTMLTableSectionElement? get tHead;
  external set tHead(HTMLTableSectionElement? value);
  external HTMLTableSectionElement createTHead();
  external JSUndefined deleteTHead();
  external HTMLTableSectionElement? get tFoot;
  external set tFoot(HTMLTableSectionElement? value);
  external HTMLTableSectionElement createTFoot();
  external JSUndefined deleteTFoot();
  external HTMLCollection get tBodies;
  external HTMLTableSectionElement createTBody();
  external HTMLCollection get rows;
  external HTMLTableRowElement insertRow();
  external HTMLTableRowElement insertRow_1(JSNumber index);
  external JSUndefined deleteRow(JSNumber index);
  external JSString get align;
  external set align(JSString value);
  external JSString get border;
  external set border(JSString value);
  external JSString get frame;
  external set frame(JSString value);
  external JSString get rules;
  external set rules(JSString value);
  external JSString get summary;
  external set summary(JSString value);
  external JSString get width;
  external set width(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external JSString get cellPadding;
  external set cellPadding(JSString value);
  external JSString get cellSpacing;
  external set cellSpacing(JSString value);
}

@JS('HTMLTableCaptionElement')
@staticInterop
class HTMLTableCaptionElement extends HTMLElement {
  external factory HTMLTableCaptionElement();
}

extension HTMLTableCaptionElementExtension on HTMLTableCaptionElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLTableColElement')
@staticInterop
class HTMLTableColElement extends HTMLElement {
  external factory HTMLTableColElement();
}

extension HTMLTableColElementExtension on HTMLTableColElement {
  external JSNumber get span;
  external set span(JSNumber value);
  external JSString get align;
  external set align(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSString get vAlign;
  external set vAlign(JSString value);
  external JSString get width;
  external set width(JSString value);
}

@JS('HTMLTableSectionElement')
@staticInterop
class HTMLTableSectionElement extends HTMLElement {
  external factory HTMLTableSectionElement();
}

extension HTMLTableSectionElementExtension on HTMLTableSectionElement {
  external HTMLCollection get rows;
  external HTMLTableRowElement insertRow();
  external HTMLTableRowElement insertRow_1(JSNumber index);
  external JSUndefined deleteRow(JSNumber index);
  external JSString get align;
  external set align(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSString get vAlign;
  external set vAlign(JSString value);
}

@JS('HTMLTableRowElement')
@staticInterop
class HTMLTableRowElement extends HTMLElement {
  external factory HTMLTableRowElement();
}

extension HTMLTableRowElementExtension on HTMLTableRowElement {
  external JSNumber get rowIndex;
  external JSNumber get sectionRowIndex;
  external HTMLCollection get cells;
  external HTMLTableCellElement insertCell();
  external HTMLTableCellElement insertCell_1(JSNumber index);
  external JSUndefined deleteCell(JSNumber index);
  external JSString get align;
  external set align(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSString get vAlign;
  external set vAlign(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
}

@JS('HTMLTableCellElement')
@staticInterop
class HTMLTableCellElement extends HTMLElement {
  external factory HTMLTableCellElement();
}

extension HTMLTableCellElementExtension on HTMLTableCellElement {
  external JSNumber get colSpan;
  external set colSpan(JSNumber value);
  external JSNumber get rowSpan;
  external set rowSpan(JSNumber value);
  external JSString get headers;
  external set headers(JSString value);
  external JSNumber get cellIndex;
  external JSString get scope;
  external set scope(JSString value);
  external JSString get abbr;
  external set abbr(JSString value);
  external JSString get align;
  external set align(JSString value);
  external JSString get axis;
  external set axis(JSString value);
  external JSString get height;
  external set height(JSString value);
  external JSString get width;
  external set width(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSBoolean get noWrap;
  external set noWrap(JSBoolean value);
  external JSString get vAlign;
  external set vAlign(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
}

@JS('HTMLFormElement')
@staticInterop
class HTMLFormElement extends HTMLElement {
  external factory HTMLFormElement();
}

extension HTMLFormElementExtension on HTMLFormElement {
  external JSString get acceptCharset;
  external set acceptCharset(JSString value);
  external JSString get action;
  external set action(JSString value);
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSString get enctype;
  external set enctype(JSString value);
  external JSString get encoding;
  external set encoding(JSString value);
  external JSString get method;
  external set method(JSString value);
  external JSString get name;
  external set name(JSString value);
  external JSBoolean get noValidate;
  external set noValidate(JSBoolean value);
  external JSString get target;
  external set target(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external HTMLFormControlsCollection get elements;
  external JSNumber get length;
  external JSUndefined submit();
  external JSUndefined requestSubmit();
  external JSUndefined requestSubmit_1(HTMLElement? submitter);
  external JSUndefined reset();
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
}

@JS('HTMLLabelElement')
@staticInterop
class HTMLLabelElement extends HTMLElement {
  external factory HTMLLabelElement();
}

extension HTMLLabelElementExtension on HTMLLabelElement {
  external HTMLFormElement? get form;
  external JSString get htmlFor;
  external set htmlFor(JSString value);
  external HTMLElement? get control;
}

@JS('HTMLButtonElement')
@staticInterop
class HTMLButtonElement extends HTMLElement implements PopoverTargetElement {
  external factory HTMLButtonElement();
}

extension HTMLButtonElementExtension on HTMLButtonElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSString get formAction;
  external set formAction(JSString value);
  external JSString get formEnctype;
  external set formEnctype(JSString value);
  external JSString get formMethod;
  external set formMethod(JSString value);
  external JSBoolean get formNoValidate;
  external set formNoValidate(JSBoolean value);
  external JSString get formTarget;
  external set formTarget(JSString value);
  external JSString get name;
  external set name(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLSelectElement')
@staticInterop
class HTMLSelectElement extends HTMLElement {
  external factory HTMLSelectElement();
}

extension HTMLSelectElementExtension on HTMLSelectElement {
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSBoolean get multiple;
  external set multiple(JSBoolean value);
  external JSString get name;
  external set name(JSString value);
  external JSBoolean get required;
  external set required(JSBoolean value);
  external JSNumber get size;
  external set size(JSNumber value);
  external JSString get type;
  external HTMLOptionsCollection get options;
  external JSNumber get length;
  external set length(JSNumber value);
  external HTMLOptionElement? item(JSNumber index);
  external HTMLOptionElement? namedItem(JSString name);
  external JSUndefined add(JSAny element);
  external JSUndefined add_1(JSAny element, JSAny? before);
  external JSUndefined remove();
  @JS('remove')
  external JSUndefined remove1(JSNumber index);
  external HTMLCollection get selectedOptions;
  external JSNumber get selectedIndex;
  external set selectedIndex(JSNumber value);
  external JSString get value;
  external set value(JSString value);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLDataListElement')
@staticInterop
class HTMLDataListElement extends HTMLElement {
  external factory HTMLDataListElement();
}

extension HTMLDataListElementExtension on HTMLDataListElement {
  external HTMLCollection get options;
}

@JS('HTMLOptGroupElement')
@staticInterop
class HTMLOptGroupElement extends HTMLElement {
  external factory HTMLOptGroupElement();
}

extension HTMLOptGroupElementExtension on HTMLOptGroupElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external JSString get label;
  external set label(JSString value);
}

@JS('HTMLOptionElement')
@staticInterop
class HTMLOptionElement extends HTMLElement {
  external factory HTMLOptionElement();
}

extension HTMLOptionElementExtension on HTMLOptionElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSString get label;
  external set label(JSString value);
  external JSBoolean get defaultSelected;
  external set defaultSelected(JSBoolean value);
  external JSBoolean get selected;
  external set selected(JSBoolean value);
  external JSString get value;
  external set value(JSString value);
  external JSString get text;
  external set text(JSString value);
  external JSNumber get index;
}

@JS('HTMLTextAreaElement')
@staticInterop
class HTMLTextAreaElement extends HTMLElement {
  external factory HTMLTextAreaElement();
}

extension HTMLTextAreaElementExtension on HTMLTextAreaElement {
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSNumber get cols;
  external set cols(JSNumber value);
  external JSString get dirName;
  external set dirName(JSString value);
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSNumber get maxLength;
  external set maxLength(JSNumber value);
  external JSNumber get minLength;
  external set minLength(JSNumber value);
  external JSString get name;
  external set name(JSString value);
  external JSString get placeholder;
  external set placeholder(JSString value);
  external JSBoolean get readOnly;
  external set readOnly(JSBoolean value);
  external JSBoolean get required;
  external set required(JSBoolean value);
  external JSNumber get rows;
  external set rows(JSNumber value);
  external JSString get wrap;
  external set wrap(JSString value);
  external JSString get type;
  external JSString get defaultValue;
  external set defaultValue(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSNumber get textLength;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
  external JSUndefined select();
  external JSNumber get selectionStart;
  external set selectionStart(JSNumber value);
  external JSNumber get selectionEnd;
  external set selectionEnd(JSNumber value);
  external JSString get selectionDirection;
  external set selectionDirection(JSString value);
  external JSUndefined setRangeText(JSString replacement);
  @JS('setRangeText')
  external JSUndefined setRangeText1(
      JSString replacement, JSNumber start, JSNumber end);
  @JS('setRangeText')
  external JSUndefined setRangeText1_1(JSString replacement, JSNumber start,
      JSNumber end, SelectionMode selectionMode);
  external JSUndefined setSelectionRange(JSNumber start, JSNumber end);
  external JSUndefined setSelectionRange_1(
      JSNumber start, JSNumber end, JSString direction);
}

@JS('HTMLOutputElement')
@staticInterop
class HTMLOutputElement extends HTMLElement {
  external factory HTMLOutputElement();
}

extension HTMLOutputElementExtension on HTMLOutputElement {
  external DOMTokenList get htmlFor;
  external HTMLFormElement? get form;
  external JSString get name;
  external set name(JSString value);
  external JSString get type;
  external JSString get defaultValue;
  external set defaultValue(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLProgressElement')
@staticInterop
class HTMLProgressElement extends HTMLElement {
  external factory HTMLProgressElement();
}

extension HTMLProgressElementExtension on HTMLProgressElement {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSNumber get max;
  external set max(JSNumber value);
  external JSNumber get position;
  external NodeList get labels;
}

@JS('HTMLMeterElement')
@staticInterop
class HTMLMeterElement extends HTMLElement {
  external factory HTMLMeterElement();
}

extension HTMLMeterElementExtension on HTMLMeterElement {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSNumber get min;
  external set min(JSNumber value);
  external JSNumber get max;
  external set max(JSNumber value);
  external JSNumber get low;
  external set low(JSNumber value);
  external JSNumber get high;
  external set high(JSNumber value);
  external JSNumber get optimum;
  external set optimum(JSNumber value);
  external NodeList get labels;
}

@JS('HTMLFieldSetElement')
@staticInterop
class HTMLFieldSetElement extends HTMLElement {
  external factory HTMLFieldSetElement();
}

extension HTMLFieldSetElementExtension on HTMLFieldSetElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSString get name;
  external set name(JSString value);
  external JSString get type;
  external HTMLCollection get elements;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
}

@JS('HTMLLegendElement')
@staticInterop
class HTMLLegendElement extends HTMLElement {
  external factory HTMLLegendElement();
}

extension HTMLLegendElementExtension on HTMLLegendElement {
  external HTMLFormElement? get form;
  external JSString get align;
  external set align(JSString value);
}

@JS('ValidityState')
@staticInterop
class ValidityState {
  external factory ValidityState();
}

extension ValidityStateExtension on ValidityState {
  external JSBoolean get valueMissing;
  external JSBoolean get typeMismatch;
  external JSBoolean get patternMismatch;
  external JSBoolean get tooLong;
  external JSBoolean get tooShort;
  external JSBoolean get rangeUnderflow;
  external JSBoolean get rangeOverflow;
  external JSBoolean get stepMismatch;
  external JSBoolean get badInput;
  external JSBoolean get customError;
  external JSBoolean get valid;
}

@JS('SubmitEvent')
@staticInterop
class SubmitEvent extends Event {
  external factory SubmitEvent();
  external factory SubmitEvent.a1(JSString type);
  external factory SubmitEvent.a1_1(
      JSString type, SubmitEventInit eventInitDict);
}

extension SubmitEventExtension on SubmitEvent {
  external HTMLElement? get submitter;
}

@JS('SubmitEventInit')
@staticInterop
class SubmitEventInit extends EventInit {
  external factory SubmitEventInit();
}

extension SubmitEventInitExtension on SubmitEventInit {
  // TODO
}

@JS('FormDataEvent')
@staticInterop
class FormDataEvent extends Event {
  external factory FormDataEvent();
  external factory FormDataEvent.a1(
      JSString type, FormDataEventInit eventInitDict);
}

extension FormDataEventExtension on FormDataEvent {
  external FormData get formData;
}

@JS('FormDataEventInit')
@staticInterop
class FormDataEventInit extends EventInit {
  external factory FormDataEventInit();
}

extension FormDataEventInitExtension on FormDataEventInit {
  // TODO
}

@JS('HTMLDetailsElement')
@staticInterop
class HTMLDetailsElement extends HTMLElement {
  external factory HTMLDetailsElement();
}

extension HTMLDetailsElementExtension on HTMLDetailsElement {
  external JSBoolean get open;
  external set open(JSBoolean value);
}

@JS('HTMLDialogElement')
@staticInterop
class HTMLDialogElement extends HTMLElement {
  external factory HTMLDialogElement();
}

extension HTMLDialogElementExtension on HTMLDialogElement {
  external JSBoolean get open;
  external set open(JSBoolean value);
  external JSString get returnValue;
  external set returnValue(JSString value);
  external JSUndefined show();
  external JSUndefined showModal();
  external JSUndefined close();
  external JSUndefined close_1(JSString returnValue);
}

@JS('HTMLScriptElement')
@staticInterop
class HTMLScriptElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils {
  external factory HTMLScriptElement();
  external static JSBoolean supports(JSString type);
}

extension HTMLScriptElementExtension on HTMLScriptElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSBoolean get noModule;
  external set noModule(JSBoolean value);
  external JSBoolean get async;
  external set async(JSBoolean value);
  external JSBoolean get defer;
  external set defer(JSBoolean value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSString get text;
  external set text(JSString value);
  external JSString get integrity;
  external set integrity(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external DOMTokenList get blocking;
  external JSString get charset;
  external set charset(JSString value);
  external JSString get event;
  external set event(JSString value);
  external JSString get htmlFor;
  external set htmlFor(JSString value);
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('HTMLTemplateElement')
@staticInterop
class HTMLTemplateElement extends HTMLElement {
  external factory HTMLTemplateElement();
}

extension HTMLTemplateElementExtension on HTMLTemplateElement {
  external DocumentFragment get content;
}

@JS('HTMLSlotElement')
@staticInterop
class HTMLSlotElement extends HTMLElement {
  external factory HTMLSlotElement();
}

extension HTMLSlotElementExtension on HTMLSlotElement {
  external JSString get name;
  external set name(JSString value);
  external JSArray assignedNodes();
  external JSArray assignedNodes_1(AssignedNodesOptions options);
  external JSArray assignedElements();
  external JSArray assignedElements_1(AssignedNodesOptions options);
  external JSUndefined assign(JSAny nodes);
}

@JS('AssignedNodesOptions')
@staticInterop
class AssignedNodesOptions {
  external factory AssignedNodesOptions();
}

extension AssignedNodesOptionsExtension on AssignedNodesOptions {
  // TODO
}

@JS('HTMLCanvasElement')
@staticInterop
class HTMLCanvasElement extends HTMLElement {
  external factory HTMLCanvasElement();
}

extension HTMLCanvasElementExtension on HTMLCanvasElement {
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external RenderingContext? getContext(JSString contextId);
  external RenderingContext? getContext_1(JSString contextId, JSAny options);
  external JSString toDataURL();
  external JSString toDataURL_1(JSString type);
  external JSString toDataURL_2(JSString type, JSAny quality);
  external JSUndefined toBlob(BlobCallback callback);
  external JSUndefined toBlob_1(BlobCallback callback, JSString type);
  external JSUndefined toBlob_2(
      BlobCallback callback, JSString type, JSAny quality);
  external OffscreenCanvas transferControlToOffscreen();
  external MediaStream captureStream();
  external MediaStream captureStream_1(JSNumber frameRequestRate);
}

@JS('CanvasRenderingContext2DSettings')
@staticInterop
class CanvasRenderingContext2DSettings {
  external factory CanvasRenderingContext2DSettings();
}

extension CanvasRenderingContext2DSettingsExtension
    on CanvasRenderingContext2DSettings {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CanvasRenderingContext2D')
@staticInterop
class CanvasRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasFilters,
        CanvasRect,
        CanvasDrawPath,
        CanvasUserInterface,
        CanvasText,
        CanvasDrawImage,
        CanvasImageData,
        CanvasPathDrawingStyles,
        CanvasTextDrawingStyles,
        CanvasPath {
  external factory CanvasRenderingContext2D();
}

extension CanvasRenderingContext2DExtension on CanvasRenderingContext2D {
  external HTMLCanvasElement get canvas;
  external CanvasRenderingContext2DSettings getContextAttributes();
}

@JS('CanvasState')
@staticInterop
class CanvasState {
  external factory CanvasState();
}

extension CanvasStateExtension on CanvasState {
  external JSUndefined save();
  external JSUndefined restore();
  external JSUndefined reset();
  external JSBoolean isContextLost();
}

@JS('CanvasTransform')
@staticInterop
class CanvasTransform {
  external factory CanvasTransform();
}

extension CanvasTransformExtension on CanvasTransform {
  external JSUndefined scale(JSNumber x, JSNumber y);
  external JSUndefined rotate(JSNumber angle);
  external JSUndefined translate(JSNumber x, JSNumber y);
  external JSUndefined transform(
      JSNumber a, JSNumber b, JSNumber c, JSNumber d, JSNumber e, JSNumber f);
  external DOMMatrix getTransform();
  external JSUndefined setTransform(
      JSNumber a, JSNumber b, JSNumber c, JSNumber d, JSNumber e, JSNumber f);
  @JS('setTransform')
  external JSUndefined setTransform1();
  @JS('setTransform')
  external JSUndefined setTransform1_1(DOMMatrix2DInit transform);
  external JSUndefined resetTransform();
}

@JS('CanvasCompositing')
@staticInterop
class CanvasCompositing {
  external factory CanvasCompositing();
}

extension CanvasCompositingExtension on CanvasCompositing {
  external JSNumber get globalAlpha;
  external set globalAlpha(JSNumber value);
  external JSString get globalCompositeOperation;
  external set globalCompositeOperation(JSString value);
}

@JS('CanvasImageSmoothing')
@staticInterop
class CanvasImageSmoothing {
  external factory CanvasImageSmoothing();
}

extension CanvasImageSmoothingExtension on CanvasImageSmoothing {
  external JSBoolean get imageSmoothingEnabled;
  external set imageSmoothingEnabled(JSBoolean value);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
}

@JS('CanvasFillStrokeStyles')
@staticInterop
class CanvasFillStrokeStyles {
  external factory CanvasFillStrokeStyles();
}

extension CanvasFillStrokeStylesExtension on CanvasFillStrokeStyles {
  external JSAny get strokeStyle;
  external set strokeStyle(JSAny value);
  external JSAny get fillStyle;
  external set fillStyle(JSAny value);
  external CanvasGradient createLinearGradient(
      JSNumber x0, JSNumber y0, JSNumber x1, JSNumber y1);
  external CanvasGradient createRadialGradient(JSNumber x0, JSNumber y0,
      JSNumber r0, JSNumber x1, JSNumber y1, JSNumber r1);
  external CanvasGradient createConicGradient(
      JSNumber startAngle, JSNumber x, JSNumber y);
  external CanvasPattern? createPattern(
      CanvasImageSource image, JSString repetition);
}

@JS('CanvasShadowStyles')
@staticInterop
class CanvasShadowStyles {
  external factory CanvasShadowStyles();
}

extension CanvasShadowStylesExtension on CanvasShadowStyles {
  external JSNumber get shadowOffsetX;
  external set shadowOffsetX(JSNumber value);
  external JSNumber get shadowOffsetY;
  external set shadowOffsetY(JSNumber value);
  external JSNumber get shadowBlur;
  external set shadowBlur(JSNumber value);
  external JSString get shadowColor;
  external set shadowColor(JSString value);
}

@JS('CanvasFilters')
@staticInterop
class CanvasFilters {
  external factory CanvasFilters();
}

extension CanvasFiltersExtension on CanvasFilters {
  external JSString get filter;
  external set filter(JSString value);
}

@JS('CanvasRect')
@staticInterop
class CanvasRect {
  external factory CanvasRect();
}

extension CanvasRectExtension on CanvasRect {
  external JSUndefined clearRect(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined fillRect(JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined strokeRect(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h);
}

@JS('CanvasDrawPath')
@staticInterop
class CanvasDrawPath {
  external factory CanvasDrawPath();
}

extension CanvasDrawPathExtension on CanvasDrawPath {
  external JSUndefined beginPath();
  external JSUndefined fill();
  external JSUndefined fill_1(CanvasFillRule fillRule);
  @JS('fill')
  external JSUndefined fill1(Path2D path);
  @JS('fill')
  external JSUndefined fill1_1(Path2D path, CanvasFillRule fillRule);
  external JSUndefined stroke();
  @JS('stroke')
  external JSUndefined stroke1(Path2D path);
  external JSUndefined clip();
  external JSUndefined clip_1(CanvasFillRule fillRule);
  @JS('clip')
  external JSUndefined clip1(Path2D path);
  @JS('clip')
  external JSUndefined clip1_1(Path2D path, CanvasFillRule fillRule);
  external JSBoolean isPointInPath(JSNumber x, JSNumber y);
  external JSBoolean isPointInPath_1(
      JSNumber x, JSNumber y, CanvasFillRule fillRule);
  @JS('isPointInPath')
  external JSBoolean isPointInPath1(Path2D path, JSNumber x, JSNumber y);
  @JS('isPointInPath')
  external JSBoolean isPointInPath1_1(
      Path2D path, JSNumber x, JSNumber y, CanvasFillRule fillRule);
  external JSBoolean isPointInStroke(JSNumber x, JSNumber y);
  @JS('isPointInStroke')
  external JSBoolean isPointInStroke1(Path2D path, JSNumber x, JSNumber y);
}

@JS('CanvasUserInterface')
@staticInterop
class CanvasUserInterface {
  external factory CanvasUserInterface();
}

extension CanvasUserInterfaceExtension on CanvasUserInterface {
  external JSUndefined drawFocusIfNeeded(Element element);
  @JS('drawFocusIfNeeded')
  external JSUndefined drawFocusIfNeeded1(Path2D path, Element element);
  external JSUndefined scrollPathIntoView();
  @JS('scrollPathIntoView')
  external JSUndefined scrollPathIntoView1(Path2D path);
}

@JS('CanvasText')
@staticInterop
class CanvasText {
  external factory CanvasText();
}

extension CanvasTextExtension on CanvasText {
  external JSUndefined fillText(JSString text, JSNumber x, JSNumber y);
  external JSUndefined fillText_1(
      JSString text, JSNumber x, JSNumber y, JSNumber maxWidth);
  external JSUndefined strokeText(JSString text, JSNumber x, JSNumber y);
  external JSUndefined strokeText_1(
      JSString text, JSNumber x, JSNumber y, JSNumber maxWidth);
  external TextMetrics measureText(JSString text);
}

@JS('CanvasDrawImage')
@staticInterop
class CanvasDrawImage {
  external factory CanvasDrawImage();
}

extension CanvasDrawImageExtension on CanvasDrawImage {
  external JSUndefined drawImage(
      CanvasImageSource image, JSNumber dx, JSNumber dy);
  @JS('drawImage')
  external JSUndefined drawImage1(CanvasImageSource image, JSNumber dx,
      JSNumber dy, JSNumber dw, JSNumber dh);
  @JS('drawImage')
  external JSUndefined drawImage2(
      CanvasImageSource image,
      JSNumber sx,
      JSNumber sy,
      JSNumber sw,
      JSNumber sh,
      JSNumber dx,
      JSNumber dy,
      JSNumber dw,
      JSNumber dh);
}

@JS('CanvasImageData')
@staticInterop
class CanvasImageData {
  external factory CanvasImageData();
}

extension CanvasImageDataExtension on CanvasImageData {
  external ImageData createImageData(JSNumber sw, JSNumber sh);
  external ImageData createImageData_1(
      JSNumber sw, JSNumber sh, ImageDataSettings settings);
  @JS('createImageData')
  external ImageData createImageData1(ImageData imagedata);
  external ImageData getImageData(
      JSNumber sx, JSNumber sy, JSNumber sw, JSNumber sh);
  external ImageData getImageData_1(JSNumber sx, JSNumber sy, JSNumber sw,
      JSNumber sh, ImageDataSettings settings);
  external JSUndefined putImageData(
      ImageData imagedata, JSNumber dx, JSNumber dy);
  @JS('putImageData')
  external JSUndefined putImageData1(
      ImageData imagedata,
      JSNumber dx,
      JSNumber dy,
      JSNumber dirtyX,
      JSNumber dirtyY,
      JSNumber dirtyWidth,
      JSNumber dirtyHeight);
}

@JS('CanvasPathDrawingStyles')
@staticInterop
class CanvasPathDrawingStyles {
  external factory CanvasPathDrawingStyles();
}

extension CanvasPathDrawingStylesExtension on CanvasPathDrawingStyles {
  external JSNumber get lineWidth;
  external set lineWidth(JSNumber value);
  external CanvasLineCap get lineCap;
  external set lineCap(CanvasLineCap value);
  external CanvasLineJoin get lineJoin;
  external set lineJoin(CanvasLineJoin value);
  external JSNumber get miterLimit;
  external set miterLimit(JSNumber value);
  external JSUndefined setLineDash(JSArray segments);
  external JSArray getLineDash();
  external JSNumber get lineDashOffset;
  external set lineDashOffset(JSNumber value);
}

@JS('CanvasTextDrawingStyles')
@staticInterop
class CanvasTextDrawingStyles {
  external factory CanvasTextDrawingStyles();
}

extension CanvasTextDrawingStylesExtension on CanvasTextDrawingStyles {
  external JSString get font;
  external set font(JSString value);
  external CanvasTextAlign get textAlign;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextBaseline get textBaseline;
  external set textBaseline(CanvasTextBaseline value);
  external CanvasDirection get direction;
  external set direction(CanvasDirection value);
  external JSString get letterSpacing;
  external set letterSpacing(JSString value);
  external CanvasFontKerning get fontKerning;
  external set fontKerning(CanvasFontKerning value);
  external CanvasFontStretch get fontStretch;
  external set fontStretch(CanvasFontStretch value);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set fontVariantCaps(CanvasFontVariantCaps value);
  external CanvasTextRendering get textRendering;
  external set textRendering(CanvasTextRendering value);
  external JSString get wordSpacing;
  external set wordSpacing(JSString value);
}

@JS('CanvasPath')
@staticInterop
class CanvasPath {
  external factory CanvasPath();
}

extension CanvasPathExtension on CanvasPath {
  external JSUndefined closePath();
  external JSUndefined moveTo(JSNumber x, JSNumber y);
  external JSUndefined lineTo(JSNumber x, JSNumber y);
  external JSUndefined quadraticCurveTo(
      JSNumber cpx, JSNumber cpy, JSNumber x, JSNumber y);
  external JSUndefined bezierCurveTo(JSNumber cp1x, JSNumber cp1y,
      JSNumber cp2x, JSNumber cp2y, JSNumber x, JSNumber y);
  external JSUndefined arcTo(
      JSNumber x1, JSNumber y1, JSNumber x2, JSNumber y2, JSNumber radius);
  external JSUndefined rect(JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined roundRect(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined roundRect_1(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h, JSAny radii);
  external JSUndefined arc(JSNumber x, JSNumber y, JSNumber radius,
      JSNumber startAngle, JSNumber endAngle);
  external JSUndefined arc_1(JSNumber x, JSNumber y, JSNumber radius,
      JSNumber startAngle, JSNumber endAngle, JSBoolean counterclockwise);
  external JSUndefined ellipse(
      JSNumber x,
      JSNumber y,
      JSNumber radiusX,
      JSNumber radiusY,
      JSNumber rotation,
      JSNumber startAngle,
      JSNumber endAngle);
  external JSUndefined ellipse_1(
      JSNumber x,
      JSNumber y,
      JSNumber radiusX,
      JSNumber radiusY,
      JSNumber rotation,
      JSNumber startAngle,
      JSNumber endAngle,
      JSBoolean counterclockwise);
}

@JS('CanvasGradient')
@staticInterop
class CanvasGradient {
  external factory CanvasGradient();
}

extension CanvasGradientExtension on CanvasGradient {
  external JSUndefined addColorStop(JSNumber offset, JSString color);
}

@JS('CanvasPattern')
@staticInterop
class CanvasPattern {
  external factory CanvasPattern();
}

extension CanvasPatternExtension on CanvasPattern {
  external JSUndefined setTransform();
  external JSUndefined setTransform_1(DOMMatrix2DInit transform);
}

@JS('TextMetrics')
@staticInterop
class TextMetrics {
  external factory TextMetrics();
}

extension TextMetricsExtension on TextMetrics {
  external JSNumber get width;
  external JSNumber get actualBoundingBoxLeft;
  external JSNumber get actualBoundingBoxRight;
  external JSNumber get fontBoundingBoxAscent;
  external JSNumber get fontBoundingBoxDescent;
  external JSNumber get actualBoundingBoxAscent;
  external JSNumber get actualBoundingBoxDescent;
  external JSNumber get emHeightAscent;
  external JSNumber get emHeightDescent;
  external JSNumber get hangingBaseline;
  external JSNumber get alphabeticBaseline;
  external JSNumber get ideographicBaseline;
}

@JS('ImageDataSettings')
@staticInterop
class ImageDataSettings {
  external factory ImageDataSettings();
}

extension ImageDataSettingsExtension on ImageDataSettings {
  // TODO
}

@JS('ImageData')
@staticInterop
class ImageData {
  external factory ImageData();
  external factory ImageData.a1(JSNumber sw, JSNumber sh);
  external factory ImageData.a1_1(
      JSNumber sw, JSNumber sh, ImageDataSettings settings);
  external factory ImageData.a2(JSUint8ClampedArray data, JSNumber sw);
  external factory ImageData.a2_1(
      JSUint8ClampedArray data, JSNumber sw, JSNumber sh);
  external factory ImageData.a2_2(JSUint8ClampedArray data, JSNumber sw,
      JSNumber sh, ImageDataSettings settings);
}

extension ImageDataExtension on ImageData {
  external JSNumber get width;
  external JSNumber get height;
  external JSUint8ClampedArray get data;
  external PredefinedColorSpace get colorSpace;
}

@JS('Path2D')
@staticInterop
class Path2D implements CanvasPath {
  external factory Path2D();
  external factory Path2D.a1();
  external factory Path2D.a1_1(JSAny path);
}

extension Path2DExtension on Path2D {
  external JSUndefined addPath(Path2D path);
  external JSUndefined addPath_1(Path2D path, DOMMatrix2DInit transform);
}

@JS('ImageBitmapRenderingContext')
@staticInterop
class ImageBitmapRenderingContext {
  external factory ImageBitmapRenderingContext();
}

extension ImageBitmapRenderingContextExtension on ImageBitmapRenderingContext {
  external JSAny get canvas;
  external JSUndefined transferFromImageBitmap(ImageBitmap? bitmap);
}

@JS('ImageBitmapRenderingContextSettings')
@staticInterop
class ImageBitmapRenderingContextSettings {
  external factory ImageBitmapRenderingContextSettings();
}

extension ImageBitmapRenderingContextSettingsExtension
    on ImageBitmapRenderingContextSettings {
  // TODO
}

@JS('ImageEncodeOptions')
@staticInterop
class ImageEncodeOptions {
  external factory ImageEncodeOptions();
}

extension ImageEncodeOptionsExtension on ImageEncodeOptions {
  // TODO
  // TODO
}

@JS('OffscreenCanvas')
@staticInterop
class OffscreenCanvas extends EventTarget {
  external factory OffscreenCanvas();
  external factory OffscreenCanvas.a1(JSNumber width, JSNumber height);
}

extension OffscreenCanvasExtension on OffscreenCanvas {
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external OffscreenRenderingContext? getContext(
      OffscreenRenderingContextId contextId);
  external OffscreenRenderingContext? getContext_1(
      OffscreenRenderingContextId contextId, JSAny options);
  external ImageBitmap transferToImageBitmap();
  external JSPromise convertToBlob();
  external JSPromise convertToBlob_1(ImageEncodeOptions options);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
}

@JS('OffscreenCanvasRenderingContext2D')
@staticInterop
class OffscreenCanvasRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasFilters,
        CanvasRect,
        CanvasDrawPath,
        CanvasText,
        CanvasDrawImage,
        CanvasImageData,
        CanvasPathDrawingStyles,
        CanvasTextDrawingStyles,
        CanvasPath {
  external factory OffscreenCanvasRenderingContext2D();
}

extension OffscreenCanvasRenderingContext2DExtension
    on OffscreenCanvasRenderingContext2D {
  external JSUndefined commit();
  external OffscreenCanvas get canvas;
}

@JS('CustomElementRegistry')
@staticInterop
class CustomElementRegistry {
  external factory CustomElementRegistry();
}

extension CustomElementRegistryExtension on CustomElementRegistry {
  external JSUndefined define(
      JSString name, CustomElementConstructor constructor);
  external JSUndefined define_1(JSString name,
      CustomElementConstructor constructor, ElementDefinitionOptions options);
  external JSAny get(JSString name);
  external JSPromise whenDefined(JSString name);
  external JSUndefined upgrade(Node root);
}

@JS('ElementDefinitionOptions')
@staticInterop
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions();
}

extension ElementDefinitionOptionsExtension on ElementDefinitionOptions {
  // TODO
}

@JS('ValidityStateFlags')
@staticInterop
class ValidityStateFlags {
  external factory ValidityStateFlags();
}

extension ValidityStateFlagsExtension on ValidityStateFlags {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('UserActivation')
@staticInterop
class UserActivation {
  external factory UserActivation();
}

extension UserActivationExtension on UserActivation {
  external JSBoolean get hasBeenActive;
  external JSBoolean get isActive;
}

@JS('FocusOptions')
@staticInterop
class FocusOptions {
  external factory FocusOptions();
}

extension FocusOptionsExtension on FocusOptions {
  // TODO
  // TODO
}

@JS('ElementContentEditable')
@staticInterop
class ElementContentEditable {
  external factory ElementContentEditable();
}

extension ElementContentEditableExtension on ElementContentEditable {
  external JSString get contentEditable;
  external set contentEditable(JSString value);
  external JSString get enterKeyHint;
  external set enterKeyHint(JSString value);
  external JSBoolean get isContentEditable;
  external JSString get inputMode;
  external set inputMode(JSString value);
  external JSString get virtualKeyboardPolicy;
  external set virtualKeyboardPolicy(JSString value);
}

@JS('DataTransfer')
@staticInterop
class DataTransfer {
  external factory DataTransfer();
}

extension DataTransferExtension on DataTransfer {
  external JSString get dropEffect;
  external set dropEffect(JSString value);
  external JSString get effectAllowed;
  external set effectAllowed(JSString value);
  external DataTransferItemList get items;
  external JSUndefined setDragImage(Element image, JSNumber x, JSNumber y);
  external JSArray get types;
  external JSString getData(JSString format);
  external JSUndefined setData(JSString format, JSString data);
  external JSUndefined clearData();
  external JSUndefined clearData_1(JSString format);
  external FileList get files;
}

@JS('DataTransferItemList')
@staticInterop
class DataTransferItemList {
  external factory DataTransferItemList();
}

extension DataTransferItemListExtension on DataTransferItemList {
  external JSNumber get length;
  external DataTransferItem? add(JSString data, JSString type);
  @JS('add')
  external DataTransferItem? add1(File data);
  external JSUndefined remove(JSNumber index);
  external JSUndefined clear();
}

@JS('DragEvent')
@staticInterop
class DragEvent extends MouseEvent {
  external factory DragEvent();
  external factory DragEvent.a1(JSString type);
  external factory DragEvent.a1_1(JSString type, DragEventInit eventInitDict);
}

extension DragEventExtension on DragEvent {
  external DataTransfer? get dataTransfer;
}

@JS('DragEventInit')
@staticInterop
class DragEventInit extends MouseEventInit {
  external factory DragEventInit();
}

extension DragEventInitExtension on DragEventInit {
  // TODO
}

@JS('PopoverTargetElement')
@staticInterop
class PopoverTargetElement {
  external factory PopoverTargetElement();
}

extension PopoverTargetElementExtension on PopoverTargetElement {
  external Element? get popoverToggleTargetElement;
  external set popoverToggleTargetElement(Element? value);
  external Element? get popoverHideTargetElement;
  external set popoverHideTargetElement(Element? value);
  external Element? get popoverShowTargetElement;
  external set popoverShowTargetElement(Element? value);
}

@JS('ToggleEvent')
@staticInterop
class ToggleEvent extends Event {
  external factory ToggleEvent();
  external factory ToggleEvent.a1(JSString type);
  external factory ToggleEvent.a1_1(
      JSString type, ToggleEventInit eventInitDict);
}

extension ToggleEventExtension on ToggleEvent {
  external JSString get oldState;
  external JSString get newState;
}

@JS('ToggleEventInit')
@staticInterop
class ToggleEventInit extends EventInit {
  external factory ToggleEventInit();
}

extension ToggleEventInitExtension on ToggleEventInit {
  // TODO
  // TODO
}

@JS('WindowPostMessageOptions')
@staticInterop
class WindowPostMessageOptions extends StructuredSerializeOptions {
  external factory WindowPostMessageOptions();
}

extension WindowPostMessageOptionsExtension on WindowPostMessageOptions {
  // TODO
}

@JS('BarProp')
@staticInterop
class BarProp {
  external factory BarProp();
}

extension BarPropExtension on BarProp {
  external JSBoolean get visible;
}

@JS('Location')
@staticInterop
class Location {
  external factory Location();
}

extension LocationExtension on Location {
  external JSString get href;
  external set href(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external JSString get hash;
  external set hash(JSString value);
  external JSUndefined assign(JSString url);
  external JSUndefined replace(JSString url);
  external JSUndefined reload();
  external DOMStringList get ancestorOrigins;
}

@JS('History')
@staticInterop
class History {
  external factory History();
}

extension HistoryExtension on History {
  external JSNumber get length;
  external ScrollRestoration get scrollRestoration;
  external set scrollRestoration(ScrollRestoration value);
  external JSAny get state;
  external JSUndefined go();
  external JSUndefined go_1(JSNumber delta);
  external JSUndefined back();
  external JSUndefined forward();
  external JSUndefined pushState(JSAny data, JSString unused);
  external JSUndefined pushState_1(JSAny data, JSString unused, JSString? url);
  external JSUndefined replaceState(JSAny data, JSString unused);
  external JSUndefined replaceState_1(
      JSAny data, JSString unused, JSString? url);
}

@JS('PopStateEvent')
@staticInterop
class PopStateEvent extends Event {
  external factory PopStateEvent();
  external factory PopStateEvent.a1(JSString type);
  external factory PopStateEvent.a1_1(
      JSString type, PopStateEventInit eventInitDict);
}

extension PopStateEventExtension on PopStateEvent {
  external JSAny get state;
}

@JS('PopStateEventInit')
@staticInterop
class PopStateEventInit extends EventInit {
  external factory PopStateEventInit();
}

extension PopStateEventInitExtension on PopStateEventInit {
  // TODO
}

@JS('HashChangeEvent')
@staticInterop
class HashChangeEvent extends Event {
  external factory HashChangeEvent();
  external factory HashChangeEvent.a1(JSString type);
  external factory HashChangeEvent.a1_1(
      JSString type, HashChangeEventInit eventInitDict);
}

extension HashChangeEventExtension on HashChangeEvent {
  external JSString get oldURL;
  external JSString get newURL;
}

@JS('HashChangeEventInit')
@staticInterop
class HashChangeEventInit extends EventInit {
  external factory HashChangeEventInit();
}

extension HashChangeEventInitExtension on HashChangeEventInit {
  // TODO
  // TODO
}

@JS('PageTransitionEvent')
@staticInterop
class PageTransitionEvent extends Event {
  external factory PageTransitionEvent();
  external factory PageTransitionEvent.a1(JSString type);
  external factory PageTransitionEvent.a1_1(
      JSString type, PageTransitionEventInit eventInitDict);
}

extension PageTransitionEventExtension on PageTransitionEvent {
  external JSBoolean get persisted;
}

@JS('PageTransitionEventInit')
@staticInterop
class PageTransitionEventInit extends EventInit {
  external factory PageTransitionEventInit();
}

extension PageTransitionEventInitExtension on PageTransitionEventInit {
  // TODO
}

@JS('BeforeUnloadEvent')
@staticInterop
class BeforeUnloadEvent extends Event {
  external factory BeforeUnloadEvent();
}

extension BeforeUnloadEventExtension on BeforeUnloadEvent {
  external JSString get returnValue;
  external set returnValue(JSString value);
}

@JS('ErrorEvent')
@staticInterop
class ErrorEvent extends Event {
  external factory ErrorEvent();
  external factory ErrorEvent.a1(JSString type);
  external factory ErrorEvent.a1_1(JSString type, ErrorEventInit eventInitDict);
}

extension ErrorEventExtension on ErrorEvent {
  external JSString get message;
  external JSString get filename;
  external JSNumber get lineno;
  external JSNumber get colno;
  external JSAny get error;
}

@JS('ErrorEventInit')
@staticInterop
class ErrorEventInit extends EventInit {
  external factory ErrorEventInit();
}

extension ErrorEventInitExtension on ErrorEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PromiseRejectionEvent')
@staticInterop
class PromiseRejectionEvent extends Event {
  external factory PromiseRejectionEvent();
  external factory PromiseRejectionEvent.a1(
      JSString type, PromiseRejectionEventInit eventInitDict);
}

extension PromiseRejectionEventExtension on PromiseRejectionEvent {
  external JSPromise get promise;
  external JSAny get reason;
}

@JS('PromiseRejectionEventInit')
@staticInterop
class PromiseRejectionEventInit extends EventInit {
  external factory PromiseRejectionEventInit();
}

extension PromiseRejectionEventInitExtension on PromiseRejectionEventInit {
  // TODO
  // TODO
}

@JS('DOMParser')
@staticInterop
class DOMParser {
  external factory DOMParser();
}

extension DOMParserExtension on DOMParser {
  external Document parseFromString(
      JSString string, DOMParserSupportedType type);
}

@JS('NavigatorID')
@staticInterop
class NavigatorID {
  external factory NavigatorID();
}

extension NavigatorIDExtension on NavigatorID {
  external JSString get appCodeName;
  external JSString get appName;
  external JSString get appVersion;
  external JSString get platform;
  external JSString get product;
  external JSString get productSub;
  external JSString get userAgent;
  external JSString get vendor;
  external JSString get vendorSub;
  external JSBoolean taintEnabled();
  external JSString get oscpu;
}

@JS('NavigatorLanguage')
@staticInterop
class NavigatorLanguage {
  external factory NavigatorLanguage();
}

extension NavigatorLanguageExtension on NavigatorLanguage {
  external JSString get language;
  external JSArray get languages;
}

@JS('NavigatorOnLine')
@staticInterop
class NavigatorOnLine {
  external factory NavigatorOnLine();
}

extension NavigatorOnLineExtension on NavigatorOnLine {
  external JSBoolean get onLine;
}

@JS('NavigatorContentUtils')
@staticInterop
class NavigatorContentUtils {
  external factory NavigatorContentUtils();
}

extension NavigatorContentUtilsExtension on NavigatorContentUtils {
  external JSUndefined registerProtocolHandler(JSString scheme, JSString url);
  external JSUndefined unregisterProtocolHandler(JSString scheme, JSString url);
}

@JS('NavigatorCookies')
@staticInterop
class NavigatorCookies {
  external factory NavigatorCookies();
}

extension NavigatorCookiesExtension on NavigatorCookies {
  external JSBoolean get cookieEnabled;
}

@JS('NavigatorPlugins')
@staticInterop
class NavigatorPlugins {
  external factory NavigatorPlugins();
}

extension NavigatorPluginsExtension on NavigatorPlugins {
  external PluginArray get plugins;
  external MimeTypeArray get mimeTypes;
  external JSBoolean javaEnabled();
  external JSBoolean get pdfViewerEnabled;
}

@JS('PluginArray')
@staticInterop
class PluginArray {
  external factory PluginArray();
}

extension PluginArrayExtension on PluginArray {
  external JSUndefined refresh();
  external JSNumber get length;
  external Plugin? item(JSNumber index);
  external Plugin? namedItem(JSString name);
}

@JS('MimeTypeArray')
@staticInterop
class MimeTypeArray {
  external factory MimeTypeArray();
}

extension MimeTypeArrayExtension on MimeTypeArray {
  external JSNumber get length;
  external MimeType? item(JSNumber index);
  external MimeType? namedItem(JSString name);
}

@JS('Plugin')
@staticInterop
class Plugin {
  external factory Plugin();
}

extension PluginExtension on Plugin {
  external JSString get name;
  external JSString get description;
  external JSString get filename;
  external JSNumber get length;
  external MimeType? item(JSNumber index);
  external MimeType? namedItem(JSString name);
}

@JS('MimeType')
@staticInterop
class MimeType {
  external factory MimeType();
}

extension MimeTypeExtension on MimeType {
  external JSString get type;
  external JSString get description;
  external JSString get suffixes;
  external Plugin get enabledPlugin;
}

@JS('ImageBitmap')
@staticInterop
class ImageBitmap {
  external factory ImageBitmap();
}

extension ImageBitmapExtension on ImageBitmap {
  external JSNumber get width;
  external JSNumber get height;
  external JSUndefined close();
}

@JS('ImageBitmapOptions')
@staticInterop
class ImageBitmapOptions {
  external factory ImageBitmapOptions();
}

extension ImageBitmapOptionsExtension on ImageBitmapOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AnimationFrameProvider')
@staticInterop
class AnimationFrameProvider {
  external factory AnimationFrameProvider();
}

extension AnimationFrameProviderExtension on AnimationFrameProvider {
  external JSNumber requestAnimationFrame(FrameRequestCallback callback);
  external JSUndefined cancelAnimationFrame(JSNumber handle);
}

@JS('MessageEvent')
@staticInterop
class MessageEvent extends Event {
  external factory MessageEvent();
  external factory MessageEvent.a1(JSString type);
  external factory MessageEvent.a1_1(
      JSString type, MessageEventInit eventInitDict);
}

extension MessageEventExtension on MessageEvent {
  external JSAny get data;
  external JSString get origin;
  external JSString get lastEventId;
  external MessageEventSource? get source;
  external JSArray get ports;
  external JSUndefined initMessageEvent(JSString type);
  external JSUndefined initMessageEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initMessageEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
  external JSUndefined initMessageEvent_3(
      JSString type, JSBoolean bubbles, JSBoolean cancelable, JSAny data);
  external JSUndefined initMessageEvent_4(JSString type, JSBoolean bubbles,
      JSBoolean cancelable, JSAny data, JSString origin);
  external JSUndefined initMessageEvent_5(JSString type, JSBoolean bubbles,
      JSBoolean cancelable, JSAny data, JSString origin, JSString lastEventId);
  external JSUndefined initMessageEvent_6(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSAny data,
      JSString origin,
      JSString lastEventId,
      MessageEventSource? source);
  external JSUndefined initMessageEvent_7(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSAny data,
      JSString origin,
      JSString lastEventId,
      MessageEventSource? source,
      JSArray ports);
}

@JS('MessageEventInit')
@staticInterop
class MessageEventInit extends EventInit {
  external factory MessageEventInit();
}

extension MessageEventInitExtension on MessageEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('EventSource')
@staticInterop
class EventSource extends EventTarget {
  external factory EventSource();
  external factory EventSource.a1(JSString url);
  external factory EventSource.a1_1(
      JSString url, EventSourceInit eventSourceInitDict);
  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSED;
}

extension EventSourceExtension on EventSource {
  external JSString get url;
  external JSBoolean get withCredentials;
  external JSNumber get readyState;
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external JSUndefined close();
}

@JS('EventSourceInit')
@staticInterop
class EventSourceInit {
  external factory EventSourceInit();
}

extension EventSourceInitExtension on EventSourceInit {
  // TODO
}

@JS('MessageChannel')
@staticInterop
class MessageChannel {
  external factory MessageChannel();
}

extension MessageChannelExtension on MessageChannel {
  external MessagePort get port1;
  external MessagePort get port2;
}

@JS('MessagePort')
@staticInterop
class MessagePort extends EventTarget {
  external factory MessagePort();
}

extension MessagePortExtension on MessagePort {
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external JSUndefined start();
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('StructuredSerializeOptions')
@staticInterop
class StructuredSerializeOptions {
  external factory StructuredSerializeOptions();
}

extension StructuredSerializeOptionsExtension on StructuredSerializeOptions {
  // TODO
}

@JS('BroadcastChannel')
@staticInterop
class BroadcastChannel extends EventTarget {
  external factory BroadcastChannel();
  external factory BroadcastChannel.a1(JSString name);
}

extension BroadcastChannelExtension on BroadcastChannel {
  external JSString get name;
  external JSUndefined postMessage(JSAny message);
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('WorkerGlobalScope')
@staticInterop
class WorkerGlobalScope extends EventTarget
    implements FontFaceSource, WindowOrWorkerGlobalScope {
  external factory WorkerGlobalScope();
}

extension WorkerGlobalScopeExtension on WorkerGlobalScope {
  external WorkerGlobalScope get self;
  external WorkerLocation get location;
  external WorkerNavigator get navigator;
  external JSUndefined importScripts(JSString urls);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onlanguagechange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onoffline;
  external set onoffline(EventHandler value);
  external EventHandler get ononline;
  external set ononline(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunhandledrejection(EventHandler value);
}

@JS('DedicatedWorkerGlobalScope')
@staticInterop
class DedicatedWorkerGlobalScope extends WorkerGlobalScope
    implements AnimationFrameProvider {
  external factory DedicatedWorkerGlobalScope();
}

extension DedicatedWorkerGlobalScopeExtension on DedicatedWorkerGlobalScope {
  external JSString get name;
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onrtctransform;
  external set onrtctransform(EventHandler value);
}

@JS('SharedWorkerGlobalScope')
@staticInterop
class SharedWorkerGlobalScope extends WorkerGlobalScope {
  external factory SharedWorkerGlobalScope();
}

extension SharedWorkerGlobalScopeExtension on SharedWorkerGlobalScope {
  external JSString get name;
  external JSUndefined close();
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
}

@JS('AbstractWorker')
@staticInterop
class AbstractWorker {
  external factory AbstractWorker();
}

extension AbstractWorkerExtension on AbstractWorker {
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('Worker')
@staticInterop
class Worker extends EventTarget implements AbstractWorker {
  external factory Worker();
  external factory Worker.a1(JSString scriptURL);
  external factory Worker.a1_1(JSString scriptURL, WorkerOptions options);
}

extension WorkerExtension on Worker {
  external JSUndefined terminate();
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('WorkerOptions')
@staticInterop
class WorkerOptions {
  external factory WorkerOptions();
}

extension WorkerOptionsExtension on WorkerOptions {
  // TODO
  // TODO
  // TODO
}

@JS('SharedWorker')
@staticInterop
class SharedWorker extends EventTarget implements AbstractWorker {
  external factory SharedWorker();
  external factory SharedWorker.a1(JSString scriptURL);
  external factory SharedWorker.a1_1(JSString scriptURL, JSAny options);
}

extension SharedWorkerExtension on SharedWorker {
  external MessagePort get port;
}

@JS('NavigatorConcurrentHardware')
@staticInterop
class NavigatorConcurrentHardware {
  external factory NavigatorConcurrentHardware();
}

extension NavigatorConcurrentHardwareExtension on NavigatorConcurrentHardware {
  external JSNumber get hardwareConcurrency;
}

@JS('WorkerNavigator')
@staticInterop
class WorkerNavigator
    implements
        NavigatorBadge,
        NavigatorDeviceMemory,
        GlobalPrivacyControl,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorConcurrentHardware,
        NavigatorNetworkInformation,
        NavigatorStorage,
        NavigatorUA,
        NavigatorLocks,
        NavigatorGPU,
        NavigatorML {
  external factory WorkerNavigator();
}

extension WorkerNavigatorExtension on WorkerNavigator {
  external MediaCapabilities get mediaCapabilities;
  external Permissions get permissions;
  external Serial get serial;
  external ServiceWorkerContainer get serviceWorker;
  external HID get hid;
  external USB get usb;
}

@JS('WorkerLocation')
@staticInterop
class WorkerLocation {
  external factory WorkerLocation();
}

extension WorkerLocationExtension on WorkerLocation {
  external JSString get href;
  external JSString get origin;
  external JSString get protocol;
  external JSString get host;
  external JSString get hostname;
  external JSString get port;
  external JSString get pathname;
  external JSString get search;
  external JSString get hash;
}

@JS('WorkletGlobalScope')
@staticInterop
class WorkletGlobalScope {
  external factory WorkletGlobalScope();
}

@JS('Worklet')
@staticInterop
class Worklet {
  external factory Worklet();
}

extension WorkletExtension on Worklet {
  external JSPromise addModule(JSString moduleURL);
  external JSPromise addModule_1(JSString moduleURL, WorkletOptions options);
}

@JS('WorkletOptions')
@staticInterop
class WorkletOptions {
  external factory WorkletOptions();
}

extension WorkletOptionsExtension on WorkletOptions {
  // TODO
}

@JS('Storage')
@staticInterop
class Storage {
  external factory Storage();
}

extension StorageExtension on Storage {
  external JSNumber get length;
  external JSString? key(JSNumber index);
  external JSString? getItem(JSString key);
  external JSUndefined setItem(JSString key, JSString value);
  external JSUndefined removeItem(JSString key);
  external JSUndefined clear();
}

@JS('WindowSessionStorage')
@staticInterop
class WindowSessionStorage {
  external factory WindowSessionStorage();
}

extension WindowSessionStorageExtension on WindowSessionStorage {
  external Storage get sessionStorage;
}

@JS('WindowLocalStorage')
@staticInterop
class WindowLocalStorage {
  external factory WindowLocalStorage();
}

extension WindowLocalStorageExtension on WindowLocalStorage {
  external Storage get localStorage;
}

@JS('StorageEvent')
@staticInterop
class StorageEvent extends Event {
  external factory StorageEvent();
  external factory StorageEvent.a1(JSString type);
  external factory StorageEvent.a1_1(
      JSString type, StorageEventInit eventInitDict);
}

extension StorageEventExtension on StorageEvent {
  external JSString? get key;
  external JSString? get oldValue;
  external JSString? get newValue;
  external JSString get url;
  external Storage? get storageArea;
  external JSUndefined initStorageEvent(JSString type);
  external JSUndefined initStorageEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initStorageEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
  external JSUndefined initStorageEvent_3(
      JSString type, JSBoolean bubbles, JSBoolean cancelable, JSString? key);
  external JSUndefined initStorageEvent_4(JSString type, JSBoolean bubbles,
      JSBoolean cancelable, JSString? key, JSString? oldValue);
  external JSUndefined initStorageEvent_5(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSString? key,
      JSString? oldValue,
      JSString? newValue);
  external JSUndefined initStorageEvent_6(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSString? key,
      JSString? oldValue,
      JSString? newValue,
      JSString url);
  external JSUndefined initStorageEvent_7(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSString? key,
      JSString? oldValue,
      JSString? newValue,
      JSString url,
      Storage? storageArea);
}

@JS('StorageEventInit')
@staticInterop
class StorageEventInit extends EventInit {
  external factory StorageEventInit();
}

extension StorageEventInitExtension on StorageEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HTMLMarqueeElement')
@staticInterop
class HTMLMarqueeElement extends HTMLElement {
  external factory HTMLMarqueeElement();
}

extension HTMLMarqueeElementExtension on HTMLMarqueeElement {
  external JSString get behavior;
  external set behavior(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external JSString get direction;
  external set direction(JSString value);
  external JSString get height;
  external set height(JSString value);
  external JSNumber get hspace;
  external set hspace(JSNumber value);
  external JSNumber get loop;
  external set loop(JSNumber value);
  external JSNumber get scrollAmount;
  external set scrollAmount(JSNumber value);
  external JSNumber get scrollDelay;
  external set scrollDelay(JSNumber value);
  external JSBoolean get trueSpeed;
  external set trueSpeed(JSBoolean value);
  external JSNumber get vspace;
  external set vspace(JSNumber value);
  external JSString get width;
  external set width(JSString value);
  external JSUndefined start();
  external JSUndefined stop();
}

@JS('HTMLFrameSetElement')
@staticInterop
class HTMLFrameSetElement extends HTMLElement implements WindowEventHandlers {
  external factory HTMLFrameSetElement();
}

extension HTMLFrameSetElementExtension on HTMLFrameSetElement {
  external JSString get cols;
  external set cols(JSString value);
  external JSString get rows;
  external set rows(JSString value);
}

@JS('HTMLFrameElement')
@staticInterop
class HTMLFrameElement extends HTMLElement {
  external factory HTMLFrameElement();
}

extension HTMLFrameElementExtension on HTMLFrameElement {
  external JSString get name;
  external set name(JSString value);
  external JSString get scrolling;
  external set scrolling(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get frameBorder;
  external set frameBorder(JSString value);
  external JSString get longDesc;
  external set longDesc(JSString value);
  external JSBoolean get noResize;
  external set noResize(JSBoolean value);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external JSString get marginHeight;
  external set marginHeight(JSString value);
  external JSString get marginWidth;
  external set marginWidth(JSString value);
}

@JS('HTMLDirectoryElement')
@staticInterop
class HTMLDirectoryElement extends HTMLElement {
  external factory HTMLDirectoryElement();
}

extension HTMLDirectoryElementExtension on HTMLDirectoryElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLFontElement')
@staticInterop
class HTMLFontElement extends HTMLElement {
  external factory HTMLFontElement();
}

extension HTMLFontElementExtension on HTMLFontElement {
  external JSString get color;
  external set color(JSString value);
  external JSString get face;
  external set face(JSString value);
  external JSString get size;
  external set size(JSString value);
}

@JS('HTMLParamElement')
@staticInterop
class HTMLParamElement extends HTMLElement {
  external factory HTMLParamElement();
}

extension HTMLParamElementExtension on HTMLParamElement {
  external JSString get name;
  external set name(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get valueType;
  external set valueType(JSString value);
}

@JS('External')
@staticInterop
class External {
  external factory External();
}

extension ExternalExtension on External {
  external JSUndefined AddSearchProvider();
  external JSUndefined IsSearchProviderInstalled();
}

@JS('IdleOptions')
@staticInterop
class IdleOptions {
  external factory IdleOptions();
}

extension IdleOptionsExtension on IdleOptions {
  // TODO
  // TODO
}

@JS('IdleDetector')
@staticInterop
class IdleDetector extends EventTarget {
  external factory IdleDetector();
  external static JSPromise requestPermission();
}

extension IdleDetectorExtension on IdleDetector {
  external UserIdleState? get userState;
  external ScreenIdleState? get screenState;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external JSPromise start();
  external JSPromise start_1(IdleOptions options);
}

@JS('ImageCapture')
@staticInterop
class ImageCapture {
  external factory ImageCapture();
  external factory ImageCapture.a1(MediaStreamTrack videoTrack);
}

extension ImageCaptureExtension on ImageCapture {
  external JSPromise takePhoto();
  external JSPromise takePhoto_1(PhotoSettings photoSettings);
  external JSPromise getPhotoCapabilities();
  external JSPromise getPhotoSettings();
  external JSPromise grabFrame();
  external MediaStreamTrack get track;
}

@JS('PhotoCapabilities')
@staticInterop
class PhotoCapabilities {
  external factory PhotoCapabilities();
}

extension PhotoCapabilitiesExtension on PhotoCapabilities {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PhotoSettings')
@staticInterop
class PhotoSettings {
  external factory PhotoSettings();
}

extension PhotoSettingsExtension on PhotoSettings {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaSettingsRange')
@staticInterop
class MediaSettingsRange {
  external factory MediaSettingsRange();
}

extension MediaSettingsRangeExtension on MediaSettingsRange {
  // TODO
  // TODO
  // TODO
}

@JS('MediaTrackSupportedConstraints')
@staticInterop
class MediaTrackSupportedConstraints {
  external factory MediaTrackSupportedConstraints();
}

extension MediaTrackSupportedConstraintsExtension
    on MediaTrackSupportedConstraints {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaTrackCapabilities')
@staticInterop
class MediaTrackCapabilities {
  external factory MediaTrackCapabilities();
}

extension MediaTrackCapabilitiesExtension on MediaTrackCapabilities {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaTrackConstraintSet')
@staticInterop
class MediaTrackConstraintSet {
  external factory MediaTrackConstraintSet();
}

extension MediaTrackConstraintSetExtension on MediaTrackConstraintSet {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaTrackSettings')
@staticInterop
class MediaTrackSettings {
  external factory MediaTrackSettings();
}

extension MediaTrackSettingsExtension on MediaTrackSettings {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ConstrainPoint2DParameters')
@staticInterop
class ConstrainPoint2DParameters {
  external factory ConstrainPoint2DParameters();
}

extension ConstrainPoint2DParametersExtension on ConstrainPoint2DParameters {
  // TODO
  // TODO
}

@JS('Point2D')
@staticInterop
class Point2D {
  external factory Point2D();
}

extension Point2DExtension on Point2D {
  // TODO
  // TODO
}

@JS('ImageResource')
@staticInterop
class ImageResource {
  external factory ImageResource();
}

extension ImageResourceExtension on ImageResource {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Ink')
@staticInterop
class Ink {
  external factory Ink();
}

extension InkExtension on Ink {
  external JSPromise requestPresenter();
  external JSPromise requestPresenter_1(InkPresenterParam param);
}

@JS('InkPresenterParam')
@staticInterop
class InkPresenterParam {
  external factory InkPresenterParam();
}

extension InkPresenterParamExtension on InkPresenterParam {
  // TODO
}

@JS('InkPresenter')
@staticInterop
class InkPresenter {
  external factory InkPresenter();
}

extension InkPresenterExtension on InkPresenter {
  external Element? get presentationArea;
  external JSNumber get expectedImprovement;
  external JSUndefined updateInkTrailStartPoint(
      PointerEvent event, InkTrailStyle style);
}

@JS('InkTrailStyle')
@staticInterop
class InkTrailStyle {
  external factory InkTrailStyle();
}

extension InkTrailStyleExtension on InkTrailStyle {
  // TODO
  // TODO
}

@JS('InputDeviceCapabilities')
@staticInterop
class InputDeviceCapabilities {
  external factory InputDeviceCapabilities();
  external factory InputDeviceCapabilities.a1();
  external factory InputDeviceCapabilities.a1_1(
      InputDeviceCapabilitiesInit deviceInitDict);
}

extension InputDeviceCapabilitiesExtension on InputDeviceCapabilities {
  external JSBoolean get firesTouchEvents;
  external JSBoolean get pointerMovementScrolls;
}

@JS('InputDeviceCapabilitiesInit')
@staticInterop
class InputDeviceCapabilitiesInit {
  external factory InputDeviceCapabilitiesInit();
}

extension InputDeviceCapabilitiesInitExtension on InputDeviceCapabilitiesInit {
  // TODO
  // TODO
}

@JS('UIEvent')
@staticInterop
class UIEvent extends Event {
  external factory UIEvent();
  external factory UIEvent.a1(JSString type);
  external factory UIEvent.a1_1(JSString type, UIEventInit eventInitDict);
}

extension UIEventExtension on UIEvent {
  external InputDeviceCapabilities? get sourceCapabilities;
  external Window? get view;
  external JSNumber get detail;
  external JSUndefined initUIEvent(JSString typeArg);
  external JSUndefined initUIEvent_1(JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initUIEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initUIEvent_3(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initUIEvent_4(JSString typeArg, JSBoolean bubblesArg,
      JSBoolean cancelableArg, Window? viewArg, JSNumber detailArg);
  external JSNumber get which;
}

@JS('UIEventInit')
@staticInterop
class UIEventInit extends EventInit {
  external factory UIEventInit();
}

extension UIEventInitExtension on UIEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('InputEvent')
@staticInterop
class InputEvent extends UIEvent {
  external factory InputEvent();
  external factory InputEvent.a1(JSString type);
  external factory InputEvent.a1_1(JSString type, InputEventInit eventInitDict);
}

extension InputEventExtension on InputEvent {
  external DataTransfer? get dataTransfer;
  external JSArray getTargetRanges();
  external JSString? get data;
  external JSBoolean get isComposing;
  external JSString get inputType;
}

@JS('InputEventInit')
@staticInterop
class InputEventInit extends UIEventInit {
  external factory InputEventInit();
}

extension InputEventInitExtension on InputEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('IntersectionObserver')
@staticInterop
class IntersectionObserver {
  external factory IntersectionObserver();
  external factory IntersectionObserver.a1(
      IntersectionObserverCallback callback);
  external factory IntersectionObserver.a1_1(
      IntersectionObserverCallback callback, IntersectionObserverInit options);
}

extension IntersectionObserverExtension on IntersectionObserver {
  external JSAny? get root;
  external JSString get rootMargin;
  external JSArray get thresholds;
  external JSUndefined observe(Element target);
  external JSUndefined unobserve(Element target);
  external JSUndefined disconnect();
  external JSArray takeRecords();
}

@JS('IntersectionObserverEntry')
@staticInterop
class IntersectionObserverEntry {
  external factory IntersectionObserverEntry();
  external factory IntersectionObserverEntry.a1(
      IntersectionObserverEntryInit intersectionObserverEntryInit);
}

extension IntersectionObserverEntryExtension on IntersectionObserverEntry {
  external DOMHighResTimeStamp get time;
  external DOMRectReadOnly? get rootBounds;
  external DOMRectReadOnly get boundingClientRect;
  external DOMRectReadOnly get intersectionRect;
  external JSBoolean get isIntersecting;
  external JSNumber get intersectionRatio;
  external Element get target;
}

@JS('IntersectionObserverEntryInit')
@staticInterop
class IntersectionObserverEntryInit {
  external factory IntersectionObserverEntryInit();
}

extension IntersectionObserverEntryInitExtension
    on IntersectionObserverEntryInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('IntersectionObserverInit')
@staticInterop
class IntersectionObserverInit {
  external factory IntersectionObserverInit();
}

extension IntersectionObserverInitExtension on IntersectionObserverInit {
  // TODO
  // TODO
  // TODO
}

@JS('InterventionReportBody')
@staticInterop
class InterventionReportBody extends ReportBody {
  external factory InterventionReportBody();
}

extension InterventionReportBodyExtension on InterventionReportBody {
  external JSObject toJSON();
  external JSString get id;
  external JSString get message;
  external JSString? get sourceFile;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
}

@JS('IsInputPendingOptions')
@staticInterop
class IsInputPendingOptions {
  external factory IsInputPendingOptions();
}

extension IsInputPendingOptionsExtension on IsInputPendingOptions {
  // TODO
}

@JS('Scheduling')
@staticInterop
class Scheduling {
  external factory Scheduling();
}

extension SchedulingExtension on Scheduling {
  external JSBoolean isInputPending();
  external JSBoolean isInputPending_1(
      IsInputPendingOptions isInputPendingOptions);
}

@JS('Profiler')
@staticInterop
class Profiler extends EventTarget {
  external factory Profiler();
  external factory Profiler.a1(ProfilerInitOptions options);
}

extension ProfilerExtension on Profiler {
  external DOMHighResTimeStamp get sampleInterval;
  external JSBoolean get stopped;
  external JSPromise stop();
}

@JS('ProfilerTrace')
@staticInterop
class ProfilerTrace {
  external factory ProfilerTrace();
}

extension ProfilerTraceExtension on ProfilerTrace {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ProfilerSample')
@staticInterop
class ProfilerSample {
  external factory ProfilerSample();
}

extension ProfilerSampleExtension on ProfilerSample {
  // TODO
  // TODO
}

@JS('ProfilerStack')
@staticInterop
class ProfilerStack {
  external factory ProfilerStack();
}

extension ProfilerStackExtension on ProfilerStack {
  // TODO
  // TODO
}

@JS('ProfilerFrame')
@staticInterop
class ProfilerFrame {
  external factory ProfilerFrame();
}

extension ProfilerFrameExtension on ProfilerFrame {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ProfilerInitOptions')
@staticInterop
class ProfilerInitOptions {
  external factory ProfilerInitOptions();
}

extension ProfilerInitOptionsExtension on ProfilerInitOptions {
  // TODO
  // TODO
}

@JS('Keyboard')
@staticInterop
class Keyboard extends EventTarget {
  external factory Keyboard();
}

extension KeyboardExtension on Keyboard {
  external JSPromise lock();
  external JSPromise lock_1(JSArray keyCodes);
  external JSUndefined unlock();
  external JSPromise getLayoutMap();
  external EventHandler get onlayoutchange;
  external set onlayoutchange(EventHandler value);
}

@JS('KeyboardLayoutMap')
@staticInterop
class KeyboardLayoutMap {
  external factory KeyboardLayoutMap();
}

extension KeyboardLayoutMapExtension on KeyboardLayoutMap {
  // TODO
}

@JS('LargestContentfulPaint')
@staticInterop
class LargestContentfulPaint extends PerformanceEntry {
  external factory LargestContentfulPaint();
}

extension LargestContentfulPaintExtension on LargestContentfulPaint {
  external DOMHighResTimeStamp get renderTime;
  external DOMHighResTimeStamp get loadTime;
  external JSNumber get size;
  external JSString get id;
  external JSString get url;
  external Element? get element;
  external JSObject toJSON();
}

@JS('LayoutShift')
@staticInterop
class LayoutShift extends PerformanceEntry {
  external factory LayoutShift();
}

extension LayoutShiftExtension on LayoutShift {
  external JSNumber get value;
  external JSBoolean get hadRecentInput;
  external DOMHighResTimeStamp get lastInputTime;
  external JSArray get sources;
  external JSObject toJSON();
}

@JS('LayoutShiftAttribution')
@staticInterop
class LayoutShiftAttribution {
  external factory LayoutShiftAttribution();
}

extension LayoutShiftAttributionExtension on LayoutShiftAttribution {
  external Node? get node;
  external DOMRectReadOnly get previousRect;
  external DOMRectReadOnly get currentRect;
}

@JS('QueryOptions')
@staticInterop
class QueryOptions {
  external factory QueryOptions();
}

extension QueryOptionsExtension on QueryOptions {
  // TODO
}

@JS('FontData')
@staticInterop
class FontData {
  external factory FontData();
}

extension FontDataExtension on FontData {
  external JSPromise blob();
  external JSString get postscriptName;
  external JSString get fullName;
  external JSString get family;
  external JSString get style;
}

@JS('PerformanceLongTaskTiming')
@staticInterop
class PerformanceLongTaskTiming extends PerformanceEntry {
  external factory PerformanceLongTaskTiming();
}

extension PerformanceLongTaskTimingExtension on PerformanceLongTaskTiming {
  external JSArray get attribution;
  external JSObject toJSON();
}

@JS('TaskAttributionTiming')
@staticInterop
class TaskAttributionTiming extends PerformanceEntry {
  external factory TaskAttributionTiming();
}

extension TaskAttributionTimingExtension on TaskAttributionTiming {
  external JSString get containerType;
  external JSString get containerSrc;
  external JSString get containerId;
  external JSString get containerName;
  external JSObject toJSON();
}

@JS('Magnetometer')
@staticInterop
class Magnetometer extends Sensor {
  external factory Magnetometer();
  external factory Magnetometer.a1();
  external factory Magnetometer.a1_1(MagnetometerSensorOptions sensorOptions);
}

extension MagnetometerExtension on Magnetometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('MagnetometerSensorOptions')
@staticInterop
class MagnetometerSensorOptions extends SensorOptions {
  external factory MagnetometerSensorOptions();
}

extension MagnetometerSensorOptionsExtension on MagnetometerSensorOptions {
  // TODO
}

@JS('UncalibratedMagnetometer')
@staticInterop
class UncalibratedMagnetometer extends Sensor {
  external factory UncalibratedMagnetometer();
  external factory UncalibratedMagnetometer.a1();
  external factory UncalibratedMagnetometer.a1_1(
      MagnetometerSensorOptions sensorOptions);
}

extension UncalibratedMagnetometerExtension on UncalibratedMagnetometer {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
  external JSNumber? get xBias;
  external JSNumber? get yBias;
  external JSNumber? get zBias;
}

@JS('MagnetometerReadingValues')
@staticInterop
class MagnetometerReadingValues {
  external factory MagnetometerReadingValues();
}

extension MagnetometerReadingValuesExtension on MagnetometerReadingValues {
  // TODO
  // TODO
  // TODO
}

@JS('UncalibratedMagnetometerReadingValues')
@staticInterop
class UncalibratedMagnetometerReadingValues {
  external factory UncalibratedMagnetometerReadingValues();
}

extension UncalibratedMagnetometerReadingValuesExtension
    on UncalibratedMagnetometerReadingValues {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BeforeInstallPromptEvent')
@staticInterop
class BeforeInstallPromptEvent extends Event {
  external factory BeforeInstallPromptEvent();
  external factory BeforeInstallPromptEvent.a1(JSString type);
  external factory BeforeInstallPromptEvent.a1_1(
      JSString type, EventInit eventInitDict);
}

extension BeforeInstallPromptEventExtension on BeforeInstallPromptEvent {
  external JSPromise prompt();
}

@JS('PromptResponseObject')
@staticInterop
class PromptResponseObject {
  external factory PromptResponseObject();
}

extension PromptResponseObjectExtension on PromptResponseObject {
  // TODO
}

@JS('MathMLElement')
@staticInterop
class MathMLElement extends Element
    implements ElementCSSInlineStyle, GlobalEventHandlers, HTMLOrSVGElement {
  external factory MathMLElement();
}

@JS('MediaConfiguration')
@staticInterop
class MediaConfiguration {
  external factory MediaConfiguration();
}

extension MediaConfigurationExtension on MediaConfiguration {
  // TODO
  // TODO
}

@JS('MediaDecodingConfiguration')
@staticInterop
class MediaDecodingConfiguration extends MediaConfiguration {
  external factory MediaDecodingConfiguration();
}

extension MediaDecodingConfigurationExtension on MediaDecodingConfiguration {
  // TODO
  // TODO
}

@JS('MediaEncodingConfiguration')
@staticInterop
class MediaEncodingConfiguration extends MediaConfiguration {
  external factory MediaEncodingConfiguration();
}

extension MediaEncodingConfigurationExtension on MediaEncodingConfiguration {
  // TODO
}

@JS('VideoConfiguration')
@staticInterop
class VideoConfiguration {
  external factory VideoConfiguration();
}

extension VideoConfigurationExtension on VideoConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioConfiguration')
@staticInterop
class AudioConfiguration {
  external factory AudioConfiguration();
}

extension AudioConfigurationExtension on AudioConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaCapabilitiesKeySystemConfiguration')
@staticInterop
class MediaCapabilitiesKeySystemConfiguration {
  external factory MediaCapabilitiesKeySystemConfiguration();
}

extension MediaCapabilitiesKeySystemConfigurationExtension
    on MediaCapabilitiesKeySystemConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('KeySystemTrackConfiguration')
@staticInterop
class KeySystemTrackConfiguration {
  external factory KeySystemTrackConfiguration();
}

extension KeySystemTrackConfigurationExtension on KeySystemTrackConfiguration {
  // TODO
  // TODO
}

@JS('MediaCapabilitiesInfo')
@staticInterop
class MediaCapabilitiesInfo {
  external factory MediaCapabilitiesInfo();
}

extension MediaCapabilitiesInfoExtension on MediaCapabilitiesInfo {
  // TODO
  // TODO
  // TODO
}

@JS('MediaCapabilitiesDecodingInfo')
@staticInterop
class MediaCapabilitiesDecodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesDecodingInfo();
}

extension MediaCapabilitiesDecodingInfoExtension
    on MediaCapabilitiesDecodingInfo {
  // TODO
  // TODO
}

@JS('MediaCapabilitiesEncodingInfo')
@staticInterop
class MediaCapabilitiesEncodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesEncodingInfo();
}

extension MediaCapabilitiesEncodingInfoExtension
    on MediaCapabilitiesEncodingInfo {
  // TODO
}

@JS('MediaCapabilities')
@staticInterop
class MediaCapabilities {
  external factory MediaCapabilities();
}

extension MediaCapabilitiesExtension on MediaCapabilities {
  external JSPromise decodingInfo(MediaDecodingConfiguration configuration);
  external JSPromise encodingInfo(MediaEncodingConfiguration configuration);
}

@JS('VideoPlaybackQuality')
@staticInterop
class VideoPlaybackQuality {
  external factory VideoPlaybackQuality();
}

extension VideoPlaybackQualityExtension on VideoPlaybackQuality {
  external DOMHighResTimeStamp get creationTime;
  external JSNumber get droppedVideoFrames;
  external JSNumber get totalVideoFrames;
  external JSNumber get corruptedVideoFrames;
}

@JS('MediaSource')
@staticInterop
class MediaSource extends EventTarget {
  external factory MediaSource();
  external static JSBoolean get canConstructInDedicatedWorker;
  external static JSBoolean isTypeSupported(JSString type);
}

extension MediaSourceExtension on MediaSource {
  external MediaSourceHandle get handle;
  external SourceBufferList get sourceBuffers;
  external SourceBufferList get activeSourceBuffers;
  external ReadyState get readyState;
  external JSNumber get duration;
  external set duration(JSNumber value);
  external EventHandler get onsourceopen;
  external set onsourceopen(EventHandler value);
  external EventHandler get onsourceended;
  external set onsourceended(EventHandler value);
  external EventHandler get onsourceclose;
  external set onsourceclose(EventHandler value);
  external SourceBuffer addSourceBuffer(JSString type);
  external JSUndefined removeSourceBuffer(SourceBuffer sourceBuffer);
  external JSUndefined endOfStream();
  external JSUndefined endOfStream_1(EndOfStreamError error);
  external JSUndefined setLiveSeekableRange(JSNumber start, JSNumber end);
  external JSUndefined clearLiveSeekableRange();
}

@JS('MediaSourceHandle')
@staticInterop
class MediaSourceHandle {
  external factory MediaSourceHandle();
}

@JS('SourceBuffer')
@staticInterop
class SourceBuffer extends EventTarget {
  external factory SourceBuffer();
}

extension SourceBufferExtension on SourceBuffer {
  external AppendMode get mode;
  external set mode(AppendMode value);
  external JSBoolean get updating;
  external TimeRanges get buffered;
  external JSNumber get timestampOffset;
  external set timestampOffset(JSNumber value);
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external JSNumber get appendWindowStart;
  external set appendWindowStart(JSNumber value);
  external JSNumber get appendWindowEnd;
  external set appendWindowEnd(JSNumber value);
  external EventHandler get onupdatestart;
  external set onupdatestart(EventHandler value);
  external EventHandler get onupdate;
  external set onupdate(EventHandler value);
  external EventHandler get onupdateend;
  external set onupdateend(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external JSUndefined appendBuffer(BufferSource data);
  external JSUndefined abort();
  external JSUndefined changeType(JSString type);
  external JSUndefined remove(JSNumber start, JSNumber end);
}

@JS('SourceBufferList')
@staticInterop
class SourceBufferList extends EventTarget {
  external factory SourceBufferList();
}

extension SourceBufferListExtension on SourceBufferList {
  external JSNumber get length;
  external EventHandler get onaddsourcebuffer;
  external set onaddsourcebuffer(EventHandler value);
  external EventHandler get onremovesourcebuffer;
  external set onremovesourcebuffer(EventHandler value);
}

@JS('MockCapturePromptResultConfiguration')
@staticInterop
class MockCapturePromptResultConfiguration {
  external factory MockCapturePromptResultConfiguration();
}

extension MockCapturePromptResultConfigurationExtension
    on MockCapturePromptResultConfiguration {
  // TODO
  // TODO
}

@JS('MockCaptureDeviceConfiguration')
@staticInterop
class MockCaptureDeviceConfiguration {
  external factory MockCaptureDeviceConfiguration();
}

extension MockCaptureDeviceConfigurationExtension
    on MockCaptureDeviceConfiguration {
  // TODO
  // TODO
  // TODO
}

@JS('MockCameraConfiguration')
@staticInterop
class MockCameraConfiguration extends MockCaptureDeviceConfiguration {
  external factory MockCameraConfiguration();
}

extension MockCameraConfigurationExtension on MockCameraConfiguration {
  // TODO
  // TODO
}

@JS('MockMicrophoneConfiguration')
@staticInterop
class MockMicrophoneConfiguration extends MockCaptureDeviceConfiguration {
  external factory MockMicrophoneConfiguration();
}

extension MockMicrophoneConfigurationExtension on MockMicrophoneConfiguration {
  // TODO
}

@JS('CanvasCaptureMediaStreamTrack')
@staticInterop
class CanvasCaptureMediaStreamTrack extends MediaStreamTrack {
  external factory CanvasCaptureMediaStreamTrack();
}

extension CanvasCaptureMediaStreamTrackExtension
    on CanvasCaptureMediaStreamTrack {
  external HTMLCanvasElement get canvas;
  external JSUndefined requestFrame();
}

@JS('CaptureActionEvent')
@staticInterop
class CaptureActionEvent extends Event {
  external factory CaptureActionEvent();
  external factory CaptureActionEvent.a1();
  external factory CaptureActionEvent.a1_1(CaptureActionEventInit init);
}

extension CaptureActionEventExtension on CaptureActionEvent {
  external CaptureAction get action;
}

@JS('CaptureActionEventInit')
@staticInterop
class CaptureActionEventInit extends EventInit {
  external factory CaptureActionEventInit();
}

extension CaptureActionEventInitExtension on CaptureActionEventInit {
  // TODO
}

@JS('CropTarget')
@staticInterop
class CropTarget {
  external factory CropTarget();
  external static JSPromise fromElement(Element element);
}

@JS('BrowserCaptureMediaStreamTrack')
@staticInterop
class BrowserCaptureMediaStreamTrack extends MediaStreamTrack {
  external factory BrowserCaptureMediaStreamTrack();
}

extension BrowserCaptureMediaStreamTrackExtension
    on BrowserCaptureMediaStreamTrack {
  external JSPromise cropTo(CropTarget? cropTarget);
  external BrowserCaptureMediaStreamTrack clone();
}

@JS('MediaStream')
@staticInterop
class MediaStream extends EventTarget {
  external factory MediaStream();
  external factory MediaStream.a1(MediaStream stream);
  external factory MediaStream.a2(JSArray tracks);
}

extension MediaStreamExtension on MediaStream {
  external JSString get id;
  external JSArray getAudioTracks();
  external JSArray getVideoTracks();
  external JSArray getTracks();
  external MediaStreamTrack? getTrackById(JSString trackId);
  external JSUndefined addTrack(MediaStreamTrack track);
  external JSUndefined removeTrack(MediaStreamTrack track);
  external MediaStream clone();
  external JSBoolean get active;
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('MediaTrackConstraints')
@staticInterop
class MediaTrackConstraints extends MediaTrackConstraintSet {
  external factory MediaTrackConstraints();
}

extension MediaTrackConstraintsExtension on MediaTrackConstraints {
  // TODO
}

@JS('MediaStreamTrackEvent')
@staticInterop
class MediaStreamTrackEvent extends Event {
  external factory MediaStreamTrackEvent();
  external factory MediaStreamTrackEvent.a1(
      JSString type, MediaStreamTrackEventInit eventInitDict);
}

extension MediaStreamTrackEventExtension on MediaStreamTrackEvent {
  external MediaStreamTrack get track;
}

@JS('MediaStreamTrackEventInit')
@staticInterop
class MediaStreamTrackEventInit extends EventInit {
  external factory MediaStreamTrackEventInit();
}

extension MediaStreamTrackEventInitExtension on MediaStreamTrackEventInit {
  // TODO
}

@JS('OverconstrainedError')
@staticInterop
class OverconstrainedError extends DOMException {
  external factory OverconstrainedError();
  external factory OverconstrainedError.a1(JSString constraint);
  external factory OverconstrainedError.a1_1(
      JSString constraint, JSString message);
}

extension OverconstrainedErrorExtension on OverconstrainedError {
  external JSString get constraint;
}

@JS('MediaDeviceInfo')
@staticInterop
class MediaDeviceInfo {
  external factory MediaDeviceInfo();
}

extension MediaDeviceInfoExtension on MediaDeviceInfo {
  external JSString get deviceId;
  external MediaDeviceKind get kind;
  external JSString get label;
  external JSString get groupId;
  external JSObject toJSON();
}

@JS('InputDeviceInfo')
@staticInterop
class InputDeviceInfo extends MediaDeviceInfo {
  external factory InputDeviceInfo();
}

extension InputDeviceInfoExtension on InputDeviceInfo {
  external MediaTrackCapabilities getCapabilities();
}

@JS('MediaStreamConstraints')
@staticInterop
class MediaStreamConstraints {
  external factory MediaStreamConstraints();
}

extension MediaStreamConstraintsExtension on MediaStreamConstraints {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DoubleRange')
@staticInterop
class DoubleRange {
  external factory DoubleRange();
}

extension DoubleRangeExtension on DoubleRange {
  // TODO
  // TODO
}

@JS('ConstrainDoubleRange')
@staticInterop
class ConstrainDoubleRange extends DoubleRange {
  external factory ConstrainDoubleRange();
}

extension ConstrainDoubleRangeExtension on ConstrainDoubleRange {
  // TODO
  // TODO
}

@JS('ULongRange')
@staticInterop
class ULongRange {
  external factory ULongRange();
}

extension ULongRangeExtension on ULongRange {
  // TODO
  // TODO
}

@JS('ConstrainULongRange')
@staticInterop
class ConstrainULongRange extends ULongRange {
  external factory ConstrainULongRange();
}

extension ConstrainULongRangeExtension on ConstrainULongRange {
  // TODO
  // TODO
}

@JS('ConstrainBooleanParameters')
@staticInterop
class ConstrainBooleanParameters {
  external factory ConstrainBooleanParameters();
}

extension ConstrainBooleanParametersExtension on ConstrainBooleanParameters {
  // TODO
  // TODO
}

@JS('ConstrainDOMStringParameters')
@staticInterop
class ConstrainDOMStringParameters {
  external factory ConstrainDOMStringParameters();
}

extension ConstrainDOMStringParametersExtension
    on ConstrainDOMStringParameters {
  // TODO
  // TODO
}

@JS('DevicePermissionDescriptor')
@staticInterop
class DevicePermissionDescriptor extends PermissionDescriptor {
  external factory DevicePermissionDescriptor();
}

extension DevicePermissionDescriptorExtension on DevicePermissionDescriptor {
  // TODO
}

@JS('CameraDevicePermissionDescriptor')
@staticInterop
class CameraDevicePermissionDescriptor extends DevicePermissionDescriptor {
  external factory CameraDevicePermissionDescriptor();
}

extension CameraDevicePermissionDescriptorExtension
    on CameraDevicePermissionDescriptor {
  // TODO
}

@JS('MediaStreamTrackProcessor')
@staticInterop
class MediaStreamTrackProcessor {
  external factory MediaStreamTrackProcessor();
  external factory MediaStreamTrackProcessor.a1(
      MediaStreamTrackProcessorInit init);
}

extension MediaStreamTrackProcessorExtension on MediaStreamTrackProcessor {
  external ReadableStream get readable;
  external set readable(ReadableStream value);
}

@JS('MediaStreamTrackProcessorInit')
@staticInterop
class MediaStreamTrackProcessorInit {
  external factory MediaStreamTrackProcessorInit();
}

extension MediaStreamTrackProcessorInitExtension
    on MediaStreamTrackProcessorInit {
  // TODO
  // TODO
}

@JS('VideoTrackGenerator')
@staticInterop
class VideoTrackGenerator {
  external factory VideoTrackGenerator();
}

extension VideoTrackGeneratorExtension on VideoTrackGenerator {
  external WritableStream get writable;
  external JSBoolean get muted;
  external set muted(JSBoolean value);
  external MediaStreamTrack get track;
}

@JS('ViewportMediaStreamConstraints')
@staticInterop
class ViewportMediaStreamConstraints {
  external factory ViewportMediaStreamConstraints();
}

extension ViewportMediaStreamConstraintsExtension
    on ViewportMediaStreamConstraints {
  // TODO
  // TODO
}

@JS('MediaSession')
@staticInterop
class MediaSession {
  external factory MediaSession();
}

extension MediaSessionExtension on MediaSession {
  external MediaMetadata? get metadata;
  external set metadata(MediaMetadata? value);
  external MediaSessionPlaybackState get playbackState;
  external set playbackState(MediaSessionPlaybackState value);
  external JSUndefined setActionHandler(
      MediaSessionAction action, MediaSessionActionHandler? handler);
  external JSUndefined setPositionState();
  external JSUndefined setPositionState_1(MediaPositionState state);
  external JSUndefined setMicrophoneActive(JSBoolean active);
  external JSUndefined setCameraActive(JSBoolean active);
}

@JS('MediaMetadata')
@staticInterop
class MediaMetadata {
  external factory MediaMetadata();
  external factory MediaMetadata.a1();
  external factory MediaMetadata.a1_1(MediaMetadataInit init);
}

extension MediaMetadataExtension on MediaMetadata {
  external JSString get title;
  external set title(JSString value);
  external JSString get artist;
  external set artist(JSString value);
  external JSString get album;
  external set album(JSString value);
  external JSArray get artwork;
  external set artwork(JSArray value);
}

@JS('MediaMetadataInit')
@staticInterop
class MediaMetadataInit {
  external factory MediaMetadataInit();
}

extension MediaMetadataInitExtension on MediaMetadataInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaImage')
@staticInterop
class MediaImage {
  external factory MediaImage();
}

extension MediaImageExtension on MediaImage {
  // TODO
  // TODO
  // TODO
}

@JS('MediaPositionState')
@staticInterop
class MediaPositionState {
  external factory MediaPositionState();
}

extension MediaPositionStateExtension on MediaPositionState {
  // TODO
  // TODO
  // TODO
}

@JS('MediaSessionActionDetails')
@staticInterop
class MediaSessionActionDetails {
  external factory MediaSessionActionDetails();
}

extension MediaSessionActionDetailsExtension on MediaSessionActionDetails {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaRecorder')
@staticInterop
class MediaRecorder extends EventTarget {
  external factory MediaRecorder();
  external factory MediaRecorder.a1(MediaStream stream);
  external factory MediaRecorder.a1_1(
      MediaStream stream, MediaRecorderOptions options);
  external static JSBoolean isTypeSupported(JSString type);
}

extension MediaRecorderExtension on MediaRecorder {
  external MediaStream get stream;
  external JSString get mimeType;
  external RecordingState get state;
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onstop;
  external set onstop(EventHandler value);
  external EventHandler get ondataavailable;
  external set ondataavailable(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external JSNumber get videoBitsPerSecond;
  external JSNumber get audioBitsPerSecond;
  external BitrateMode get audioBitrateMode;
  external JSUndefined start();
  external JSUndefined start_1(JSNumber timeslice);
  external JSUndefined stop();
  external JSUndefined pause();
  external JSUndefined resume();
  external JSUndefined requestData();
}

@JS('MediaRecorderOptions')
@staticInterop
class MediaRecorderOptions {
  external factory MediaRecorderOptions();
}

extension MediaRecorderOptionsExtension on MediaRecorderOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BlobEvent')
@staticInterop
class BlobEvent extends Event {
  external factory BlobEvent();
  external factory BlobEvent.a1(JSString type, BlobEventInit eventInitDict);
}

extension BlobEventExtension on BlobEvent {
  external Blob get data;
  external DOMHighResTimeStamp get timecode;
}

@JS('BlobEventInit')
@staticInterop
class BlobEventInit {
  external factory BlobEventInit();
}

extension BlobEventInitExtension on BlobEventInit {
  // TODO
  // TODO
}

@JS('HTMLModelElement')
@staticInterop
class HTMLModelElement extends HTMLElement {
  external factory HTMLModelElement();
}

@JS('RTCRtpSendParameters')
@staticInterop
class RTCRtpSendParameters extends RTCRtpParameters {
  external factory RTCRtpSendParameters();
}

extension RTCRtpSendParametersExtension on RTCRtpSendParameters {
  // TODO
  // TODO
  // TODO
}

@JS('Navigation')
@staticInterop
class Navigation extends EventTarget {
  external factory Navigation();
}

extension NavigationExtension on Navigation {
  external JSArray entries();
  external NavigationHistoryEntry? get currentEntry;
  external JSUndefined updateCurrentEntry(
      NavigationUpdateCurrentEntryOptions options);
  external NavigationTransition? get transition;
  external JSBoolean get canGoBack;
  external JSBoolean get canGoForward;
  external NavigationResult navigate(JSString url);
  external NavigationResult navigate_1(
      JSString url, NavigationNavigateOptions options);
  external NavigationResult reload();
  external NavigationResult reload_1(NavigationReloadOptions options);
  external NavigationResult traverseTo(JSString key);
  external NavigationResult traverseTo_1(
      JSString key, NavigationOptions options);
  external NavigationResult back();
  external NavigationResult back_1(NavigationOptions options);
  external NavigationResult forward();
  external NavigationResult forward_1(NavigationOptions options);
  external EventHandler get onnavigate;
  external set onnavigate(EventHandler value);
  external EventHandler get onnavigatesuccess;
  external set onnavigatesuccess(EventHandler value);
  external EventHandler get onnavigateerror;
  external set onnavigateerror(EventHandler value);
  external EventHandler get oncurrententrychange;
  external set oncurrententrychange(EventHandler value);
}

@JS('NavigationUpdateCurrentEntryOptions')
@staticInterop
class NavigationUpdateCurrentEntryOptions {
  external factory NavigationUpdateCurrentEntryOptions();
}

extension NavigationUpdateCurrentEntryOptionsExtension
    on NavigationUpdateCurrentEntryOptions {
  // TODO
}

@JS('NavigationOptions')
@staticInterop
class NavigationOptions {
  external factory NavigationOptions();
}

extension NavigationOptionsExtension on NavigationOptions {
  // TODO
}

@JS('NavigationNavigateOptions')
@staticInterop
class NavigationNavigateOptions extends NavigationOptions {
  external factory NavigationNavigateOptions();
}

extension NavigationNavigateOptionsExtension on NavigationNavigateOptions {
  // TODO
  // TODO
}

@JS('NavigationReloadOptions')
@staticInterop
class NavigationReloadOptions extends NavigationOptions {
  external factory NavigationReloadOptions();
}

extension NavigationReloadOptionsExtension on NavigationReloadOptions {
  // TODO
}

@JS('NavigationResult')
@staticInterop
class NavigationResult {
  external factory NavigationResult();
}

extension NavigationResultExtension on NavigationResult {
  // TODO
  // TODO
}

@JS('NavigationCurrentEntryChangeEvent')
@staticInterop
class NavigationCurrentEntryChangeEvent extends Event {
  external factory NavigationCurrentEntryChangeEvent();
  external factory NavigationCurrentEntryChangeEvent.a1(
      JSString type, NavigationCurrentEntryChangeEventInit eventInit);
}

extension NavigationCurrentEntryChangeEventExtension
    on NavigationCurrentEntryChangeEvent {
  external NavigationType? get navigationType;
  external NavigationHistoryEntry get from;
}

@JS('NavigationCurrentEntryChangeEventInit')
@staticInterop
class NavigationCurrentEntryChangeEventInit extends EventInit {
  external factory NavigationCurrentEntryChangeEventInit();
}

extension NavigationCurrentEntryChangeEventInitExtension
    on NavigationCurrentEntryChangeEventInit {
  // TODO
  // TODO
}

@JS('NavigationTransition')
@staticInterop
class NavigationTransition {
  external factory NavigationTransition();
}

extension NavigationTransitionExtension on NavigationTransition {
  external NavigationType get navigationType;
  external NavigationHistoryEntry get from;
  external JSPromise get finished;
}

@JS('NavigateEvent')
@staticInterop
class NavigateEvent extends Event {
  external factory NavigateEvent();
  external factory NavigateEvent.a1(JSString type, NavigateEventInit eventInit);
}

extension NavigateEventExtension on NavigateEvent {
  external NavigationType get navigationType;
  external NavigationDestination get destination;
  external JSBoolean get canIntercept;
  external JSBoolean get userInitiated;
  external JSBoolean get hashChange;
  external AbortSignal get signal;
  external FormData? get formData;
  external JSString? get downloadRequest;
  external JSAny get info;
  external JSUndefined intercept();
  external JSUndefined intercept_1(NavigationInterceptOptions options);
  external JSUndefined scroll();
}

@JS('NavigateEventInit')
@staticInterop
class NavigateEventInit extends EventInit {
  external factory NavigateEventInit();
}

extension NavigateEventInitExtension on NavigateEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('NavigationInterceptOptions')
@staticInterop
class NavigationInterceptOptions {
  external factory NavigationInterceptOptions();
}

extension NavigationInterceptOptionsExtension on NavigationInterceptOptions {
  // TODO
  // TODO
  // TODO
}

@JS('NavigationDestination')
@staticInterop
class NavigationDestination {
  external factory NavigationDestination();
}

extension NavigationDestinationExtension on NavigationDestination {
  external JSString get url;
  external JSString? get key;
  external JSString? get id;
  external JSNumber get index;
  external JSBoolean get sameDocument;
  external JSAny getState();
}

@JS('NavigationHistoryEntry')
@staticInterop
class NavigationHistoryEntry extends EventTarget {
  external factory NavigationHistoryEntry();
}

extension NavigationHistoryEntryExtension on NavigationHistoryEntry {
  external JSString? get url;
  external JSString get key;
  external JSString get id;
  external JSNumber get index;
  external JSBoolean get sameDocument;
  external JSAny getState();
  external EventHandler get ondispose;
  external set ondispose(EventHandler value);
}

@JS('PerformanceNavigationTiming')
@staticInterop
class PerformanceNavigationTiming extends PerformanceResourceTiming {
  external factory PerformanceNavigationTiming();
}

extension PerformanceNavigationTimingExtension on PerformanceNavigationTiming {
  external DOMHighResTimeStamp get unloadEventStart;
  external DOMHighResTimeStamp get unloadEventEnd;
  external DOMHighResTimeStamp get domInteractive;
  external DOMHighResTimeStamp get domContentLoadedEventStart;
  external DOMHighResTimeStamp get domContentLoadedEventEnd;
  external DOMHighResTimeStamp get domComplete;
  external DOMHighResTimeStamp get loadEventStart;
  external DOMHighResTimeStamp get loadEventEnd;
  external NavigationTimingType get type;
  external JSNumber get redirectCount;
  external JSObject toJSON();
  external DOMHighResTimeStamp get activationStart;
}

@JS('PerformanceTiming')
@staticInterop
class PerformanceTiming {
  external factory PerformanceTiming();
}

extension PerformanceTimingExtension on PerformanceTiming {
  external JSNumber get navigationStart;
  external JSNumber get unloadEventStart;
  external JSNumber get unloadEventEnd;
  external JSNumber get redirectStart;
  external JSNumber get redirectEnd;
  external JSNumber get fetchStart;
  external JSNumber get domainLookupStart;
  external JSNumber get domainLookupEnd;
  external JSNumber get connectStart;
  external JSNumber get connectEnd;
  external JSNumber get secureConnectionStart;
  external JSNumber get requestStart;
  external JSNumber get responseStart;
  external JSNumber get responseEnd;
  external JSNumber get domLoading;
  external JSNumber get domInteractive;
  external JSNumber get domContentLoadedEventStart;
  external JSNumber get domContentLoadedEventEnd;
  external JSNumber get domComplete;
  external JSNumber get loadEventStart;
  external JSNumber get loadEventEnd;
  external JSObject toJSON();
}

@JS('PerformanceNavigation')
@staticInterop
class PerformanceNavigation {
  external factory PerformanceNavigation();
  external static JSNumber get TYPE_NAVIGATE;
  external static JSNumber get TYPE_RELOAD;
  external static JSNumber get TYPE_BACK_FORWARD;
  external static JSNumber get TYPE_RESERVED;
}

extension PerformanceNavigationExtension on PerformanceNavigation {
  external JSNumber get type;
  external JSNumber get redirectCount;
  external JSObject toJSON();
}

@JS('NavigatorNetworkInformation')
@staticInterop
class NavigatorNetworkInformation {
  external factory NavigatorNetworkInformation();
}

extension NavigatorNetworkInformationExtension on NavigatorNetworkInformation {
  external NetworkInformation get connection;
}

@JS('NetworkInformation')
@staticInterop
class NetworkInformation extends EventTarget
    implements NetworkInformationSaveData {
  external factory NetworkInformation();
}

extension NetworkInformationExtension on NetworkInformation {
  external ConnectionType get type;
  external EffectiveConnectionType get effectiveType;
  external Megabit get downlinkMax;
  external Megabit get downlink;
  external Millisecond get rtt;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('Notification')
@staticInterop
class Notification extends EventTarget {
  external factory Notification();
  external factory Notification.a1(JSString title);
  external factory Notification.a1_1(
      JSString title, NotificationOptions options);
  external static NotificationPermission get permission;
  external static JSPromise requestPermission();
  external static JSPromise requestPermission_1(
      NotificationPermissionCallback deprecatedCallback);
  external static JSNumber get maxActions;
}

extension NotificationExtension on Notification {
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onshow;
  external set onshow(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external JSString get title;
  external NotificationDirection get dir;
  external JSString get lang;
  external JSString get body;
  external JSString get tag;
  external JSString get image;
  external JSString get icon;
  external JSString get badge;
  external JSArray get vibrate;
  external EpochTimeStamp get timestamp;
  external JSBoolean get renotify;
  external JSBoolean get silent;
  external JSBoolean get requireInteraction;
  external JSAny get data;
  external JSArray get actions;
  external JSUndefined close();
}

@JS('NotificationOptions')
@staticInterop
class NotificationOptions {
  external factory NotificationOptions();
}

extension NotificationOptionsExtension on NotificationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('NotificationAction')
@staticInterop
class NotificationAction {
  external factory NotificationAction();
}

extension NotificationActionExtension on NotificationAction {
  // TODO
  // TODO
  // TODO
}

@JS('GetNotificationOptions')
@staticInterop
class GetNotificationOptions {
  external factory GetNotificationOptions();
}

extension GetNotificationOptionsExtension on GetNotificationOptions {
  // TODO
}

@JS('NotificationEvent')
@staticInterop
class NotificationEvent extends ExtendableEvent {
  external factory NotificationEvent();
  external factory NotificationEvent.a1(
      JSString type, NotificationEventInit eventInitDict);
}

extension NotificationEventExtension on NotificationEvent {
  external Notification get notification;
  external JSString get action;
}

@JS('NotificationEventInit')
@staticInterop
class NotificationEventInit extends ExtendableEventInit {
  external factory NotificationEventInit();
}

extension NotificationEventInitExtension on NotificationEventInit {
  // TODO
  // TODO
}

@JS('DeviceOrientationEvent')
@staticInterop
class DeviceOrientationEvent extends Event {
  external factory DeviceOrientationEvent();
  external factory DeviceOrientationEvent.a1(JSString type);
  external factory DeviceOrientationEvent.a1_1(
      JSString type, DeviceOrientationEventInit eventInitDict);
  external static JSPromise requestPermission();
}

extension DeviceOrientationEventExtension on DeviceOrientationEvent {
  external JSNumber? get alpha;
  external JSNumber? get beta;
  external JSNumber? get gamma;
  external JSBoolean get absolute;
}

@JS('DeviceOrientationEventInit')
@staticInterop
class DeviceOrientationEventInit extends EventInit {
  external factory DeviceOrientationEventInit();
}

extension DeviceOrientationEventInitExtension on DeviceOrientationEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DeviceMotionEventAcceleration')
@staticInterop
class DeviceMotionEventAcceleration {
  external factory DeviceMotionEventAcceleration();
}

extension DeviceMotionEventAccelerationExtension
    on DeviceMotionEventAcceleration {
  external JSNumber? get x;
  external JSNumber? get y;
  external JSNumber? get z;
}

@JS('DeviceMotionEventRotationRate')
@staticInterop
class DeviceMotionEventRotationRate {
  external factory DeviceMotionEventRotationRate();
}

extension DeviceMotionEventRotationRateExtension
    on DeviceMotionEventRotationRate {
  external JSNumber? get alpha;
  external JSNumber? get beta;
  external JSNumber? get gamma;
}

@JS('DeviceMotionEvent')
@staticInterop
class DeviceMotionEvent extends Event {
  external factory DeviceMotionEvent();
  external factory DeviceMotionEvent.a1(JSString type);
  external factory DeviceMotionEvent.a1_1(
      JSString type, DeviceMotionEventInit eventInitDict);
  external static JSPromise requestPermission();
}

extension DeviceMotionEventExtension on DeviceMotionEvent {
  external DeviceMotionEventAcceleration? get acceleration;
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;
  external DeviceMotionEventRotationRate? get rotationRate;
  external JSNumber get interval;
}

@JS('DeviceMotionEventAccelerationInit')
@staticInterop
class DeviceMotionEventAccelerationInit {
  external factory DeviceMotionEventAccelerationInit();
}

extension DeviceMotionEventAccelerationInitExtension
    on DeviceMotionEventAccelerationInit {
  // TODO
  // TODO
  // TODO
}

@JS('DeviceMotionEventRotationRateInit')
@staticInterop
class DeviceMotionEventRotationRateInit {
  external factory DeviceMotionEventRotationRateInit();
}

extension DeviceMotionEventRotationRateInitExtension
    on DeviceMotionEventRotationRateInit {
  // TODO
  // TODO
  // TODO
}

@JS('DeviceMotionEventInit')
@staticInterop
class DeviceMotionEventInit extends EventInit {
  external factory DeviceMotionEventInit();
}

extension DeviceMotionEventInitExtension on DeviceMotionEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('OrientationSensor')
@staticInterop
class OrientationSensor extends Sensor {
  external factory OrientationSensor();
}

extension OrientationSensorExtension on OrientationSensor {
  external JSArray? get quaternion;
  external JSUndefined populateMatrix(RotationMatrixType targetMatrix);
}

@JS('OrientationSensorOptions')
@staticInterop
class OrientationSensorOptions extends SensorOptions {
  external factory OrientationSensorOptions();
}

extension OrientationSensorOptionsExtension on OrientationSensorOptions {
  // TODO
}

@JS('AbsoluteOrientationSensor')
@staticInterop
class AbsoluteOrientationSensor extends OrientationSensor {
  external factory AbsoluteOrientationSensor();
  external factory AbsoluteOrientationSensor.a1();
  external factory AbsoluteOrientationSensor.a1_1(
      OrientationSensorOptions sensorOptions);
}

@JS('RelativeOrientationSensor')
@staticInterop
class RelativeOrientationSensor extends OrientationSensor {
  external factory RelativeOrientationSensor();
  external factory RelativeOrientationSensor.a1();
  external factory RelativeOrientationSensor.a1_1(
      OrientationSensorOptions sensorOptions);
}

@JS('AbsoluteOrientationReadingValues')
@staticInterop
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues();
}

extension AbsoluteOrientationReadingValuesExtension
    on AbsoluteOrientationReadingValues {
  // TODO
}

@JS('RelativeOrientationReadingValues')
@staticInterop
class RelativeOrientationReadingValues
    extends AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}

@JS('Client')
@staticInterop
class Client {
  external factory Client();
}

extension ClientExtension on Client {
  external ClientLifecycleState get lifecycleState;
  external JSString get url;
  external FrameType get frameType;
  external JSString get id;
  external ClientType get type;
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
}

@JS('PerformancePaintTiming')
@staticInterop
class PerformancePaintTiming extends PerformanceEntry {
  external factory PerformancePaintTiming();
}

@JS('PaymentManager')
@staticInterop
class PaymentManager {
  external factory PaymentManager();
}

extension PaymentManagerExtension on PaymentManager {
  external JSString get userHint;
  external set userHint(JSString value);
  external JSPromise enableDelegations(JSArray delegations);
}

@JS('CanMakePaymentEvent')
@staticInterop
class CanMakePaymentEvent extends ExtendableEvent {
  external factory CanMakePaymentEvent();
  external factory CanMakePaymentEvent.a1(JSString type);
}

extension CanMakePaymentEventExtension on CanMakePaymentEvent {
  external JSUndefined respondWith(JSPromise canMakePaymentResponse);
}

@JS('PaymentRequestDetailsUpdate')
@staticInterop
class PaymentRequestDetailsUpdate {
  external factory PaymentRequestDetailsUpdate();
}

extension PaymentRequestDetailsUpdateExtension on PaymentRequestDetailsUpdate {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentRequestEvent')
@staticInterop
class PaymentRequestEvent extends ExtendableEvent {
  external factory PaymentRequestEvent();
  external factory PaymentRequestEvent.a1(JSString type);
  external factory PaymentRequestEvent.a1_1(
      JSString type, PaymentRequestEventInit eventInitDict);
}

extension PaymentRequestEventExtension on PaymentRequestEvent {
  external JSString get topOrigin;
  external JSString get paymentRequestOrigin;
  external JSString get paymentRequestId;
  external JSArray get methodData;
  external JSObject get total;
  external JSArray get modifiers;
  external JSObject? get paymentOptions;
  external JSArray? get shippingOptions;
  external JSPromise openWindow(JSString url);
  external JSPromise changePaymentMethod(JSString methodName);
  external JSPromise changePaymentMethod_1(
      JSString methodName, JSObject? methodDetails);
  external JSPromise changeShippingAddress();
  external JSPromise changeShippingAddress_1(AddressInit shippingAddress);
  external JSPromise changeShippingOption(JSString shippingOption);
  external JSUndefined respondWith(JSPromise handlerResponsePromise);
}

@JS('PaymentRequestEventInit')
@staticInterop
class PaymentRequestEventInit extends ExtendableEventInit {
  external factory PaymentRequestEventInit();
}

extension PaymentRequestEventInitExtension on PaymentRequestEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentHandlerResponse')
@staticInterop
class PaymentHandlerResponse {
  external factory PaymentHandlerResponse();
}

extension PaymentHandlerResponseExtension on PaymentHandlerResponse {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AddressInit')
@staticInterop
class AddressInit {
  external factory AddressInit();
}

extension AddressInitExtension on AddressInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentOptions')
@staticInterop
class PaymentOptions {
  external factory PaymentOptions();
}

extension PaymentOptionsExtension on PaymentOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentShippingOption')
@staticInterop
class PaymentShippingOption {
  external factory PaymentShippingOption();
}

extension PaymentShippingOptionExtension on PaymentShippingOption {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AddressErrors')
@staticInterop
class AddressErrors {
  external factory AddressErrors();
}

extension AddressErrorsExtension on AddressErrors {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentRequest')
@staticInterop
class PaymentRequest extends EventTarget {
  external factory PaymentRequest();
  external factory PaymentRequest.a1(
      JSArray methodData, PaymentDetailsInit details);
}

extension PaymentRequestExtension on PaymentRequest {
  external JSPromise show();
  external JSPromise show_1(JSPromise detailsPromise);
  external JSPromise abort();
  external JSPromise canMakePayment();
  external JSString get id;
  external EventHandler get onpaymentmethodchange;
  external set onpaymentmethodchange(EventHandler value);
}

@JS('PaymentMethodData')
@staticInterop
class PaymentMethodData {
  external factory PaymentMethodData();
}

extension PaymentMethodDataExtension on PaymentMethodData {
  // TODO
  // TODO
}

@JS('PaymentCurrencyAmount')
@staticInterop
class PaymentCurrencyAmount {
  external factory PaymentCurrencyAmount();
}

extension PaymentCurrencyAmountExtension on PaymentCurrencyAmount {
  // TODO
  // TODO
}

@JS('PaymentDetailsBase')
@staticInterop
class PaymentDetailsBase {
  external factory PaymentDetailsBase();
}

extension PaymentDetailsBaseExtension on PaymentDetailsBase {
  // TODO
  // TODO
}

@JS('PaymentDetailsInit')
@staticInterop
class PaymentDetailsInit extends PaymentDetailsBase {
  external factory PaymentDetailsInit();
}

extension PaymentDetailsInitExtension on PaymentDetailsInit {
  // TODO
  // TODO
}

@JS('PaymentDetailsUpdate')
@staticInterop
class PaymentDetailsUpdate extends PaymentDetailsBase {
  external factory PaymentDetailsUpdate();
}

extension PaymentDetailsUpdateExtension on PaymentDetailsUpdate {
  // TODO
  // TODO
}

@JS('PaymentDetailsModifier')
@staticInterop
class PaymentDetailsModifier {
  external factory PaymentDetailsModifier();
}

extension PaymentDetailsModifierExtension on PaymentDetailsModifier {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentItem')
@staticInterop
class PaymentItem {
  external factory PaymentItem();
}

extension PaymentItemExtension on PaymentItem {
  // TODO
  // TODO
  // TODO
}

@JS('PaymentCompleteDetails')
@staticInterop
class PaymentCompleteDetails {
  external factory PaymentCompleteDetails();
}

extension PaymentCompleteDetailsExtension on PaymentCompleteDetails {
  // TODO
}

@JS('PaymentResponse')
@staticInterop
class PaymentResponse extends EventTarget {
  external factory PaymentResponse();
}

extension PaymentResponseExtension on PaymentResponse {
  external JSObject toJSON();
  external JSString get requestId;
  external JSString get methodName;
  external JSObject get details;
  external JSPromise complete();
  external JSPromise complete_1(PaymentComplete result);
  external JSPromise complete_2(
      PaymentComplete result, PaymentCompleteDetails details);
  external JSPromise retry();
  external JSPromise retry_1(PaymentValidationErrors errorFields);
}

@JS('PaymentValidationErrors')
@staticInterop
class PaymentValidationErrors {
  external factory PaymentValidationErrors();
}

extension PaymentValidationErrorsExtension on PaymentValidationErrors {
  // TODO
  // TODO
}

@JS('PaymentMethodChangeEvent')
@staticInterop
class PaymentMethodChangeEvent extends PaymentRequestUpdateEvent {
  external factory PaymentMethodChangeEvent();
  external factory PaymentMethodChangeEvent.a1(JSString type);
  external factory PaymentMethodChangeEvent.a1_1(
      JSString type, PaymentMethodChangeEventInit eventInitDict);
}

extension PaymentMethodChangeEventExtension on PaymentMethodChangeEvent {
  external JSString get methodName;
  external JSObject? get methodDetails;
}

@JS('PaymentMethodChangeEventInit')
@staticInterop
class PaymentMethodChangeEventInit extends PaymentRequestUpdateEventInit {
  external factory PaymentMethodChangeEventInit();
}

extension PaymentMethodChangeEventInitExtension
    on PaymentMethodChangeEventInit {
  // TODO
  // TODO
}

@JS('PaymentRequestUpdateEvent')
@staticInterop
class PaymentRequestUpdateEvent extends Event {
  external factory PaymentRequestUpdateEvent();
  external factory PaymentRequestUpdateEvent.a1(JSString type);
  external factory PaymentRequestUpdateEvent.a1_1(
      JSString type, PaymentRequestUpdateEventInit eventInitDict);
}

extension PaymentRequestUpdateEventExtension on PaymentRequestUpdateEvent {
  external JSUndefined updateWith(JSPromise detailsPromise);
}

@JS('PaymentRequestUpdateEventInit')
@staticInterop
class PaymentRequestUpdateEventInit extends EventInit {
  external factory PaymentRequestUpdateEventInit();
}

@JS('MemoryMeasurement')
@staticInterop
class MemoryMeasurement {
  external factory MemoryMeasurement();
}

extension MemoryMeasurementExtension on MemoryMeasurement {
  // TODO
  // TODO
}

@JS('MemoryBreakdownEntry')
@staticInterop
class MemoryBreakdownEntry {
  external factory MemoryBreakdownEntry();
}

extension MemoryBreakdownEntryExtension on MemoryBreakdownEntry {
  // TODO
  // TODO
  // TODO
}

@JS('MemoryAttribution')
@staticInterop
class MemoryAttribution {
  external factory MemoryAttribution();
}

extension MemoryAttributionExtension on MemoryAttribution {
  // TODO
  // TODO
  // TODO
}

@JS('MemoryAttributionContainer')
@staticInterop
class MemoryAttributionContainer {
  external factory MemoryAttributionContainer();
}

extension MemoryAttributionContainerExtension on MemoryAttributionContainer {
  // TODO
  // TODO
}

@JS('PerformanceEntry')
@staticInterop
class PerformanceEntry {
  external factory PerformanceEntry();
}

extension PerformanceEntryExtension on PerformanceEntry {
  external JSString get name;
  external JSString get entryType;
  external DOMHighResTimeStamp get startTime;
  external DOMHighResTimeStamp get duration;
  external JSObject toJSON();
}

@JS('PerformanceObserver')
@staticInterop
class PerformanceObserver {
  external factory PerformanceObserver();
  external factory PerformanceObserver.a1(PerformanceObserverCallback callback);
  external static JSArray get supportedEntryTypes;
}

extension PerformanceObserverExtension on PerformanceObserver {
  external JSUndefined observe();
  external JSUndefined observe_1(PerformanceObserverInit options);
  external JSUndefined disconnect();
  external PerformanceEntryList takeRecords();
}

@JS('PerformanceObserverCallbackOptions')
@staticInterop
class PerformanceObserverCallbackOptions {
  external factory PerformanceObserverCallbackOptions();
}

extension PerformanceObserverCallbackOptionsExtension
    on PerformanceObserverCallbackOptions {
  // TODO
}

@JS('PerformanceObserverEntryList')
@staticInterop
class PerformanceObserverEntryList {
  external factory PerformanceObserverEntryList();
}

extension PerformanceObserverEntryListExtension
    on PerformanceObserverEntryList {
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByType(JSString type);
  external PerformanceEntryList getEntriesByName(JSString name);
  external PerformanceEntryList getEntriesByName_1(
      JSString name, JSString type);
}

@JS('PeriodicSyncManager')
@staticInterop
class PeriodicSyncManager {
  external factory PeriodicSyncManager();
}

extension PeriodicSyncManagerExtension on PeriodicSyncManager {
  external JSPromise register(JSString tag);
  external JSPromise register_1(JSString tag, BackgroundSyncOptions options);
  external JSPromise getTags();
  external JSPromise unregister(JSString tag);
}

@JS('BackgroundSyncOptions')
@staticInterop
class BackgroundSyncOptions {
  external factory BackgroundSyncOptions();
}

extension BackgroundSyncOptionsExtension on BackgroundSyncOptions {
  // TODO
}

@JS('PeriodicSyncEventInit')
@staticInterop
class PeriodicSyncEventInit extends ExtendableEventInit {
  external factory PeriodicSyncEventInit();
}

extension PeriodicSyncEventInitExtension on PeriodicSyncEventInit {
  // TODO
}

@JS('PeriodicSyncEvent')
@staticInterop
class PeriodicSyncEvent extends ExtendableEvent {
  external factory PeriodicSyncEvent();
  external factory PeriodicSyncEvent.a1(
      JSString type, PeriodicSyncEventInit init);
}

extension PeriodicSyncEventExtension on PeriodicSyncEvent {
  external JSString get tag;
}

@JS('PermissionsPolicy')
@staticInterop
class PermissionsPolicy {
  external factory PermissionsPolicy();
}

extension PermissionsPolicyExtension on PermissionsPolicy {
  external JSBoolean allowsFeature(JSString feature);
  external JSBoolean allowsFeature_1(JSString feature, JSString origin);
  external JSArray features();
  external JSArray allowedFeatures();
  external JSArray getAllowlistForFeature(JSString feature);
}

@JS('PermissionsPolicyViolationReportBody')
@staticInterop
class PermissionsPolicyViolationReportBody extends ReportBody {
  external factory PermissionsPolicyViolationReportBody();
}

extension PermissionsPolicyViolationReportBodyExtension
    on PermissionsPolicyViolationReportBody {
  external JSString get featureId;
  external JSString? get sourceFile;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
  external JSString get disposition;
}

@JS('Permissions')
@staticInterop
class Permissions {
  external factory Permissions();
}

extension PermissionsExtension on Permissions {
  external JSPromise request(JSObject permissionDesc);
  external JSPromise revoke(JSObject permissionDesc);
  external JSPromise query(JSObject permissionDesc);
}

@JS('PermissionDescriptor')
@staticInterop
class PermissionDescriptor {
  external factory PermissionDescriptor();
}

extension PermissionDescriptorExtension on PermissionDescriptor {
  // TODO
}

@JS('PermissionStatus')
@staticInterop
class PermissionStatus extends EventTarget {
  external factory PermissionStatus();
}

extension PermissionStatusExtension on PermissionStatus {
  external PermissionState get state;
  external JSString get name;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('PermissionSetParameters')
@staticInterop
class PermissionSetParameters {
  external factory PermissionSetParameters();
}

extension PermissionSetParametersExtension on PermissionSetParameters {
  // TODO
  // TODO
}

@JS('PictureInPictureWindow')
@staticInterop
class PictureInPictureWindow extends EventTarget {
  external factory PictureInPictureWindow();
}

extension PictureInPictureWindowExtension on PictureInPictureWindow {
  external JSNumber get width;
  external JSNumber get height;
  external EventHandler get onresize;
  external set onresize(EventHandler value);
}

@JS('PictureInPictureEvent')
@staticInterop
class PictureInPictureEvent extends Event {
  external factory PictureInPictureEvent();
  external factory PictureInPictureEvent.a1(
      JSString type, PictureInPictureEventInit eventInitDict);
}

extension PictureInPictureEventExtension on PictureInPictureEvent {
  external PictureInPictureWindow get pictureInPictureWindow;
}

@JS('PictureInPictureEventInit')
@staticInterop
class PictureInPictureEventInit extends EventInit {
  external factory PictureInPictureEventInit();
}

extension PictureInPictureEventInitExtension on PictureInPictureEventInit {
  // TODO
}

@JS('PointerEventInit')
@staticInterop
class PointerEventInit extends MouseEventInit {
  external factory PointerEventInit();
}

extension PointerEventInitExtension on PointerEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PointerEvent')
@staticInterop
class PointerEvent extends MouseEvent {
  external factory PointerEvent();
  external factory PointerEvent.a1(JSString type);
  external factory PointerEvent.a1_1(
      JSString type, PointerEventInit eventInitDict);
}

extension PointerEventExtension on PointerEvent {
  external JSNumber get pointerId;
  external JSNumber get width;
  external JSNumber get height;
  external JSNumber get pressure;
  external JSNumber get tangentialPressure;
  external JSNumber get tiltX;
  external JSNumber get tiltY;
  external JSNumber get twist;
  external JSNumber get altitudeAngle;
  external JSNumber get azimuthAngle;
  external JSString get pointerType;
  external JSBoolean get isPrimary;
  external JSArray getCoalescedEvents();
  external JSArray getPredictedEvents();
}

@JS('MouseEventInit')
@staticInterop
class MouseEventInit extends EventModifierInit {
  external factory MouseEventInit();
}

extension MouseEventInitExtension on MouseEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HTMLPortalElement')
@staticInterop
class HTMLPortalElement extends HTMLElement {
  external factory HTMLPortalElement();
}

extension HTMLPortalElementExtension on HTMLPortalElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSPromise activate();
  external JSPromise activate_1(PortalActivateOptions options);
  external JSUndefined postMessage(JSAny message);
  external JSUndefined postMessage_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('PortalActivateOptions')
@staticInterop
class PortalActivateOptions extends StructuredSerializeOptions {
  external factory PortalActivateOptions();
}

extension PortalActivateOptionsExtension on PortalActivateOptions {
  // TODO
}

@JS('PortalHost')
@staticInterop
class PortalHost extends EventTarget {
  external factory PortalHost();
}

extension PortalHostExtension on PortalHost {
  external JSUndefined postMessage(JSAny message);
  external JSUndefined postMessage_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('PortalActivateEvent')
@staticInterop
class PortalActivateEvent extends Event {
  external factory PortalActivateEvent();
  external factory PortalActivateEvent.a1(JSString type);
  external factory PortalActivateEvent.a1_1(
      JSString type, PortalActivateEventInit eventInitDict);
}

extension PortalActivateEventExtension on PortalActivateEvent {
  external JSAny get data;
  external HTMLPortalElement adoptPredecessor();
}

@JS('PortalActivateEventInit')
@staticInterop
class PortalActivateEventInit extends EventInit {
  external factory PortalActivateEventInit();
}

extension PortalActivateEventInitExtension on PortalActivateEventInit {
  // TODO
}

@JS('Presentation')
@staticInterop
class Presentation {
  external factory Presentation();
}

extension PresentationExtension on Presentation {
  external PresentationRequest? get defaultRequest;
  external set defaultRequest(PresentationRequest? value);
  external PresentationReceiver? get receiver;
}

@JS('PresentationRequest')
@staticInterop
class PresentationRequest extends EventTarget {
  external factory PresentationRequest();
  external factory PresentationRequest.a1(JSString url);
  external factory PresentationRequest.a2(JSArray urls);
}

extension PresentationRequestExtension on PresentationRequest {
  external JSPromise start();
  external JSPromise reconnect(JSString presentationId);
  external JSPromise getAvailability();
  external EventHandler get onconnectionavailable;
  external set onconnectionavailable(EventHandler value);
}

@JS('PresentationAvailability')
@staticInterop
class PresentationAvailability extends EventTarget {
  external factory PresentationAvailability();
}

extension PresentationAvailabilityExtension on PresentationAvailability {
  external JSBoolean get value;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('PresentationConnectionAvailableEvent')
@staticInterop
class PresentationConnectionAvailableEvent extends Event {
  external factory PresentationConnectionAvailableEvent();
  external factory PresentationConnectionAvailableEvent.a1(
      JSString type, PresentationConnectionAvailableEventInit eventInitDict);
}

extension PresentationConnectionAvailableEventExtension
    on PresentationConnectionAvailableEvent {
  external PresentationConnection get connection;
}

@JS('PresentationConnectionAvailableEventInit')
@staticInterop
class PresentationConnectionAvailableEventInit extends EventInit {
  external factory PresentationConnectionAvailableEventInit();
}

extension PresentationConnectionAvailableEventInitExtension
    on PresentationConnectionAvailableEventInit {
  // TODO
}

@JS('PresentationConnection')
@staticInterop
class PresentationConnection extends EventTarget {
  external factory PresentationConnection();
}

extension PresentationConnectionExtension on PresentationConnection {
  external JSString get id;
  external JSString get url;
  external PresentationConnectionState get state;
  external JSUndefined close();
  external JSUndefined terminate();
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get onterminate;
  external set onterminate(EventHandler value);
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external JSUndefined send(JSString message);
  @JS('send')
  external JSUndefined send1(Blob data);
  @JS('send')
  external JSUndefined send2(JSArrayBuffer data);
  @JS('send')
  external JSUndefined send3(ArrayBufferView data);
}

@JS('PresentationConnectionCloseEvent')
@staticInterop
class PresentationConnectionCloseEvent extends Event {
  external factory PresentationConnectionCloseEvent();
  external factory PresentationConnectionCloseEvent.a1(
      JSString type, PresentationConnectionCloseEventInit eventInitDict);
}

extension PresentationConnectionCloseEventExtension
    on PresentationConnectionCloseEvent {
  external PresentationConnectionCloseReason get reason;
  external JSString get message;
}

@JS('PresentationConnectionCloseEventInit')
@staticInterop
class PresentationConnectionCloseEventInit extends EventInit {
  external factory PresentationConnectionCloseEventInit();
}

extension PresentationConnectionCloseEventInitExtension
    on PresentationConnectionCloseEventInit {
  // TODO
  // TODO
}

@JS('PresentationReceiver')
@staticInterop
class PresentationReceiver {
  external factory PresentationReceiver();
}

extension PresentationReceiverExtension on PresentationReceiver {
  external JSPromise get connectionList;
}

@JS('PresentationConnectionList')
@staticInterop
class PresentationConnectionList extends EventTarget {
  external factory PresentationConnectionList();
}

extension PresentationConnectionListExtension on PresentationConnectionList {
  external JSArray get connections;
  external EventHandler get onconnectionavailable;
  external set onconnectionavailable(EventHandler value);
}

@JS('ProximitySensor')
@staticInterop
class ProximitySensor extends Sensor {
  external factory ProximitySensor();
  external factory ProximitySensor.a1();
  external factory ProximitySensor.a1_1(SensorOptions sensorOptions);
}

extension ProximitySensorExtension on ProximitySensor {
  external JSNumber? get distance;
  external JSNumber? get max;
  external JSBoolean? get near;
}

@JS('ProximityReadingValues')
@staticInterop
class ProximityReadingValues {
  external factory ProximityReadingValues();
}

extension ProximityReadingValuesExtension on ProximityReadingValues {
  // TODO
  // TODO
  // TODO
}

@JS('PushPermissionDescriptor')
@staticInterop
class PushPermissionDescriptor extends PermissionDescriptor {
  external factory PushPermissionDescriptor();
}

extension PushPermissionDescriptorExtension on PushPermissionDescriptor {
  // TODO
}

@JS('PushManager')
@staticInterop
class PushManager {
  external factory PushManager();
  external static JSArray get supportedContentEncodings;
}

extension PushManagerExtension on PushManager {
  external JSPromise subscribe();
  external JSPromise subscribe_1(PushSubscriptionOptionsInit options);
  external JSPromise getSubscription();
  external JSPromise permissionState();
  external JSPromise permissionState_1(PushSubscriptionOptionsInit options);
}

@JS('PushSubscriptionOptions')
@staticInterop
class PushSubscriptionOptions {
  external factory PushSubscriptionOptions();
}

extension PushSubscriptionOptionsExtension on PushSubscriptionOptions {
  external JSBoolean get userVisibleOnly;
  external JSArrayBuffer? get applicationServerKey;
}

@JS('PushSubscriptionOptionsInit')
@staticInterop
class PushSubscriptionOptionsInit {
  external factory PushSubscriptionOptionsInit();
}

extension PushSubscriptionOptionsInitExtension on PushSubscriptionOptionsInit {
  // TODO
  // TODO
}

@JS('PushSubscription')
@staticInterop
class PushSubscription {
  external factory PushSubscription();
}

extension PushSubscriptionExtension on PushSubscription {
  external JSString get endpoint;
  external EpochTimeStamp? get expirationTime;
  external PushSubscriptionOptions get options;
  external JSArrayBuffer? getKey(PushEncryptionKeyName name);
  external JSPromise unsubscribe();
  external PushSubscriptionJSON toJSON();
}

@JS('PushSubscriptionJSON')
@staticInterop
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON();
}

extension PushSubscriptionJSONExtension on PushSubscriptionJSON {
  // TODO
  // TODO
  // TODO
}

@JS('PushMessageData')
@staticInterop
class PushMessageData {
  external factory PushMessageData();
}

extension PushMessageDataExtension on PushMessageData {
  external JSArrayBuffer arrayBuffer();
  external Blob blob();
  external JSAny json();
  external JSString text();
}

@JS('PushEvent')
@staticInterop
class PushEvent extends ExtendableEvent {
  external factory PushEvent();
  external factory PushEvent.a1(JSString type);
  external factory PushEvent.a1_1(JSString type, PushEventInit eventInitDict);
}

extension PushEventExtension on PushEvent {
  external PushMessageData? get data;
}

@JS('PushEventInit')
@staticInterop
class PushEventInit extends ExtendableEventInit {
  external factory PushEventInit();
}

extension PushEventInitExtension on PushEventInit {
  // TODO
}

@JS('PushSubscriptionChangeEvent')
@staticInterop
class PushSubscriptionChangeEvent extends ExtendableEvent {
  external factory PushSubscriptionChangeEvent();
  external factory PushSubscriptionChangeEvent.a1(JSString type);
  external factory PushSubscriptionChangeEvent.a1_1(
      JSString type, PushSubscriptionChangeEventInit eventInitDict);
}

extension PushSubscriptionChangeEventExtension on PushSubscriptionChangeEvent {
  external PushSubscription? get newSubscription;
  external PushSubscription? get oldSubscription;
}

@JS('PushSubscriptionChangeEventInit')
@staticInterop
class PushSubscriptionChangeEventInit extends ExtendableEventInit {
  external factory PushSubscriptionChangeEventInit();
}

extension PushSubscriptionChangeEventInitExtension
    on PushSubscriptionChangeEventInit {
  // TODO
  // TODO
}

@JS('XRView')
@staticInterop
class XRView {
  external factory XRView();
}

extension XRViewExtension on XRView {
  external XRCamera? get camera;
  external JSBoolean get isFirstPersonObserver;
  external XREye get eye;
  external JSFloat32Array get projectionMatrix;
  external XRRigidTransform get transform;
  external JSNumber? get recommendedViewportScale;
  external JSUndefined requestViewportScale(JSNumber? scale);
}

@JS('XRCamera')
@staticInterop
class XRCamera {
  external factory XRCamera();
}

extension XRCameraExtension on XRCamera {
  external JSNumber get width;
  external JSNumber get height;
}

@JS('XRWebGLBinding')
@staticInterop
class XRWebGLBinding {
  external factory XRWebGLBinding();
  external factory XRWebGLBinding.a1(
      XRSession session, XRWebGLRenderingContext context);
}

extension XRWebGLBindingExtension on XRWebGLBinding {
  external WebGLTexture? getCameraImage(XRCamera camera);
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
  external WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe);
  external JSNumber get nativeProjectionScaleFactor;
  external JSBoolean get usesDepthValues;
  external XRProjectionLayer createProjectionLayer();
  external XRProjectionLayer createProjectionLayer_1(
      XRProjectionLayerInit init);
  external XRQuadLayer createQuadLayer();
  external XRQuadLayer createQuadLayer_1(XRQuadLayerInit init);
  external XRCylinderLayer createCylinderLayer();
  external XRCylinderLayer createCylinderLayer_1(XRCylinderLayerInit init);
  external XREquirectLayer createEquirectLayer();
  external XREquirectLayer createEquirectLayer_1(XREquirectLayerInit init);
  external XRCubeLayer createCubeLayer();
  external XRCubeLayer createCubeLayer_1(XRCubeLayerInit init);
  external XRWebGLSubImage getSubImage(XRCompositionLayer layer, XRFrame frame);
  external XRWebGLSubImage getSubImage_1(
      XRCompositionLayer layer, XRFrame frame, XREye eye);
  external XRWebGLSubImage getViewSubImage(
      XRProjectionLayer layer, XRView view);
}

@JS('RemotePlayback')
@staticInterop
class RemotePlayback extends EventTarget {
  external factory RemotePlayback();
}

extension RemotePlaybackExtension on RemotePlayback {
  external JSPromise watchAvailability(
      RemotePlaybackAvailabilityCallback callback);
  external JSPromise cancelWatchAvailability();
  external JSPromise cancelWatchAvailability_1(JSNumber id);
  external RemotePlaybackState get state;
  external EventHandler get onconnecting;
  external set onconnecting(EventHandler value);
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise prompt();
}

@JS('ReportBody')
@staticInterop
class ReportBody {
  external factory ReportBody();
}

extension ReportBodyExtension on ReportBody {
  external JSObject toJSON();
}

@JS('Report')
@staticInterop
class Report {
  external factory Report();
}

extension ReportExtension on Report {
  external JSObject toJSON();
  external JSString get type;
  external JSString get url;
  external ReportBody? get body;
}

@JS('ReportingObserver')
@staticInterop
class ReportingObserver {
  external factory ReportingObserver();
  external factory ReportingObserver.a1(ReportingObserverCallback callback);
  external factory ReportingObserver.a1_1(
      ReportingObserverCallback callback, ReportingObserverOptions options);
}

extension ReportingObserverExtension on ReportingObserver {
  external JSUndefined observe();
  external JSUndefined disconnect();
  external ReportList takeRecords();
}

@JS('ReportingObserverOptions')
@staticInterop
class ReportingObserverOptions {
  external factory ReportingObserverOptions();
}

extension ReportingObserverOptionsExtension on ReportingObserverOptions {
  // TODO
  // TODO
}

@JS('GenerateTestReportParameters')
@staticInterop
class GenerateTestReportParameters {
  external factory GenerateTestReportParameters();
}

extension GenerateTestReportParametersExtension
    on GenerateTestReportParameters {
  // TODO
  // TODO
}

@JS('TopLevelStorageAccessPermissionDescriptor')
@staticInterop
class TopLevelStorageAccessPermissionDescriptor extends PermissionDescriptor {
  external factory TopLevelStorageAccessPermissionDescriptor();
}

extension TopLevelStorageAccessPermissionDescriptorExtension
    on TopLevelStorageAccessPermissionDescriptor {
  // TODO
}

@JS('IdleRequestOptions')
@staticInterop
class IdleRequestOptions {
  external factory IdleRequestOptions();
}

extension IdleRequestOptionsExtension on IdleRequestOptions {
  // TODO
}

@JS('IdleDeadline')
@staticInterop
class IdleDeadline {
  external factory IdleDeadline();
}

extension IdleDeadlineExtension on IdleDeadline {
  external DOMHighResTimeStamp timeRemaining();
  external JSBoolean get didTimeout;
}

@JS('ResizeObserverOptions')
@staticInterop
class ResizeObserverOptions {
  external factory ResizeObserverOptions();
}

extension ResizeObserverOptionsExtension on ResizeObserverOptions {
  // TODO
}

@JS('ResizeObserver')
@staticInterop
class ResizeObserver {
  external factory ResizeObserver();
  external factory ResizeObserver.a1(ResizeObserverCallback callback);
}

extension ResizeObserverExtension on ResizeObserver {
  external JSUndefined observe(Element target);
  external JSUndefined observe_1(Element target, ResizeObserverOptions options);
  external JSUndefined unobserve(Element target);
  external JSUndefined disconnect();
}

@JS('ResizeObserverEntry')
@staticInterop
class ResizeObserverEntry {
  external factory ResizeObserverEntry();
}

extension ResizeObserverEntryExtension on ResizeObserverEntry {
  external Element get target;
  external DOMRectReadOnly get contentRect;
  external JSArray get borderBoxSize;
  external JSArray get contentBoxSize;
  external JSArray get devicePixelContentBoxSize;
}

@JS('ResizeObserverSize')
@staticInterop
class ResizeObserverSize {
  external factory ResizeObserverSize();
}

extension ResizeObserverSizeExtension on ResizeObserverSize {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
}

@JS('PerformanceResourceTiming')
@staticInterop
class PerformanceResourceTiming extends PerformanceEntry {
  external factory PerformanceResourceTiming();
}

extension PerformanceResourceTimingExtension on PerformanceResourceTiming {
  external JSString get initiatorType;
  external JSString get nextHopProtocol;
  external DOMHighResTimeStamp get workerStart;
  external DOMHighResTimeStamp get redirectStart;
  external DOMHighResTimeStamp get redirectEnd;
  external DOMHighResTimeStamp get fetchStart;
  external DOMHighResTimeStamp get domainLookupStart;
  external DOMHighResTimeStamp get domainLookupEnd;
  external DOMHighResTimeStamp get connectStart;
  external DOMHighResTimeStamp get connectEnd;
  external DOMHighResTimeStamp get secureConnectionStart;
  external DOMHighResTimeStamp get requestStart;
  external DOMHighResTimeStamp get responseStart;
  external DOMHighResTimeStamp get responseEnd;
  external JSNumber get transferSize;
  external JSNumber get encodedBodySize;
  external JSNumber get decodedBodySize;
  external JSNumber get responseStatus;
  external RenderBlockingStatusType get renderBlockingStatus;
  external JSObject toJSON();
  external JSArray get serverTiming;
}

@JS('Sanitizer')
@staticInterop
class Sanitizer {
  external factory Sanitizer();
  external factory Sanitizer.a1();
  external factory Sanitizer.a1_1(SanitizerConfig config);
  external static SanitizerConfig getDefaultConfiguration();
}

extension SanitizerExtension on Sanitizer {
  external DocumentFragment sanitize(JSAny input);
  external Element? sanitizeFor(JSString element, JSString input);
  external SanitizerConfig getConfiguration();
}

@JS('SetHTMLOptions')
@staticInterop
class SetHTMLOptions {
  external factory SetHTMLOptions();
}

extension SetHTMLOptionsExtension on SetHTMLOptions {
  // TODO
}

@JS('SanitizerConfig')
@staticInterop
class SanitizerConfig {
  external factory SanitizerConfig();
}

extension SanitizerConfigExtension on SanitizerConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('NetworkInformationSaveData')
@staticInterop
class NetworkInformationSaveData {
  external factory NetworkInformationSaveData();
}

extension NetworkInformationSaveDataExtension on NetworkInformationSaveData {
  external JSBoolean get saveData;
}

@JS('SchedulerPostTaskOptions')
@staticInterop
class SchedulerPostTaskOptions {
  external factory SchedulerPostTaskOptions();
}

extension SchedulerPostTaskOptionsExtension on SchedulerPostTaskOptions {
  // TODO
  // TODO
  // TODO
}

@JS('Scheduler')
@staticInterop
class Scheduler {
  external factory Scheduler();
}

extension SchedulerExtension on Scheduler {
  external JSPromise postTask(SchedulerPostTaskCallback callback);
  external JSPromise postTask_1(
      SchedulerPostTaskCallback callback, SchedulerPostTaskOptions options);
}

@JS('TaskPriorityChangeEvent')
@staticInterop
class TaskPriorityChangeEvent extends Event {
  external factory TaskPriorityChangeEvent();
  external factory TaskPriorityChangeEvent.a1(
      JSString type, TaskPriorityChangeEventInit priorityChangeEventInitDict);
}

extension TaskPriorityChangeEventExtension on TaskPriorityChangeEvent {
  external TaskPriority get previousPriority;
}

@JS('TaskPriorityChangeEventInit')
@staticInterop
class TaskPriorityChangeEventInit extends EventInit {
  external factory TaskPriorityChangeEventInit();
}

extension TaskPriorityChangeEventInitExtension on TaskPriorityChangeEventInit {
  // TODO
}

@JS('TaskControllerInit')
@staticInterop
class TaskControllerInit {
  external factory TaskControllerInit();
}

extension TaskControllerInitExtension on TaskControllerInit {
  // TODO
}

@JS('TaskController')
@staticInterop
class TaskController extends AbortController {
  external factory TaskController();
  external factory TaskController.a1();
  external factory TaskController.a1_1(TaskControllerInit init);
}

extension TaskControllerExtension on TaskController {
  external JSUndefined setPriority(TaskPriority priority);
}

@JS('TaskSignal')
@staticInterop
class TaskSignal extends AbortSignal {
  external factory TaskSignal();
}

extension TaskSignalExtension on TaskSignal {
  external TaskPriority get priority;
  external EventHandler get onprioritychange;
  external set onprioritychange(EventHandler value);
}

@JS('CaptureController')
@staticInterop
class CaptureController {
  external factory CaptureController();
}

extension CaptureControllerExtension on CaptureController {
  external JSUndefined setFocusBehavior(
      CaptureStartFocusBehavior focusBehavior);
}

@JS('DisplayMediaStreamOptions')
@staticInterop
class DisplayMediaStreamOptions {
  external factory DisplayMediaStreamOptions();
}

extension DisplayMediaStreamOptionsExtension on DisplayMediaStreamOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ScreenOrientation')
@staticInterop
class ScreenOrientation extends EventTarget {
  external factory ScreenOrientation();
}

extension ScreenOrientationExtension on ScreenOrientation {
  external JSPromise lock(OrientationLockType orientation);
  external JSUndefined unlock();
  external OrientationType get type;
  external JSNumber get angle;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('WakeLock')
@staticInterop
class WakeLock {
  external factory WakeLock();
}

extension WakeLockExtension on WakeLock {
  external JSPromise request();
  external JSPromise request_1(WakeLockType type);
}

@JS('WakeLockSentinel')
@staticInterop
class WakeLockSentinel extends EventTarget {
  external factory WakeLockSentinel();
}

extension WakeLockSentinelExtension on WakeLockSentinel {
  external JSBoolean get released;
  external WakeLockType get type;
  external JSPromise release();
  external EventHandler get onrelease;
  external set onrelease(EventHandler value);
}

@JS('ScrollTimelineOptions')
@staticInterop
class ScrollTimelineOptions {
  external factory ScrollTimelineOptions();
}

extension ScrollTimelineOptionsExtension on ScrollTimelineOptions {
  // TODO
  // TODO
}

@JS('ScrollTimeline')
@staticInterop
class ScrollTimeline extends AnimationTimeline {
  external factory ScrollTimeline();
  external factory ScrollTimeline.a1();
  external factory ScrollTimeline.a1_1(ScrollTimelineOptions options);
}

extension ScrollTimelineExtension on ScrollTimeline {
  external Element? get source;
  external ScrollAxis get axis;
}

@JS('ViewTimelineOptions')
@staticInterop
class ViewTimelineOptions {
  external factory ViewTimelineOptions();
}

extension ViewTimelineOptionsExtension on ViewTimelineOptions {
  // TODO
  // TODO
}

@JS('ViewTimeline')
@staticInterop
class ViewTimeline extends ScrollTimeline {
  external factory ViewTimeline();
  external factory ViewTimeline.a1();
  external factory ViewTimeline.a1_1(ViewTimelineOptions options);
}

extension ViewTimelineExtension on ViewTimeline {
  external Element get subject;
  external CSSNumericValue get startOffset;
  external CSSNumericValue get endOffset;
}

@JS('AnimationTimeline')
@staticInterop
class AnimationTimeline {
  external factory AnimationTimeline();
}

extension AnimationTimelineExtension on AnimationTimeline {
  external CSSNumericValue? getCurrentTime();
  external CSSNumericValue? getCurrentTime_1(JSString rangeName);
  external CSSNumberish? get currentTime;
  external CSSNumberish? get duration;
  external Animation play();
  external Animation play_1(AnimationEffect? effect);
}

@JS('FragmentDirective')
@staticInterop
class FragmentDirective {
  external factory FragmentDirective();
}

@JS('SecurePaymentConfirmationRequest')
@staticInterop
class SecurePaymentConfirmationRequest {
  external factory SecurePaymentConfirmationRequest();
}

extension SecurePaymentConfirmationRequestExtension
    on SecurePaymentConfirmationRequest {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsPaymentInputs')
@staticInterop
class AuthenticationExtensionsPaymentInputs {
  external factory AuthenticationExtensionsPaymentInputs();
}

extension AuthenticationExtensionsPaymentInputsExtension
    on AuthenticationExtensionsPaymentInputs {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CollectedClientPaymentData')
@staticInterop
class CollectedClientPaymentData extends CollectedClientData {
  external factory CollectedClientPaymentData();
}

extension CollectedClientPaymentDataExtension on CollectedClientPaymentData {
  // TODO
}

@JS('CollectedClientAdditionalPaymentData')
@staticInterop
class CollectedClientAdditionalPaymentData {
  external factory CollectedClientAdditionalPaymentData();
}

extension CollectedClientAdditionalPaymentDataExtension
    on CollectedClientAdditionalPaymentData {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentCredentialInstrument')
@staticInterop
class PaymentCredentialInstrument {
  external factory PaymentCredentialInstrument();
}

extension PaymentCredentialInstrumentExtension on PaymentCredentialInstrument {
  // TODO
  // TODO
  // TODO
}

@JS('Selection')
@staticInterop
class Selection {
  external factory Selection();
}

extension SelectionExtension on Selection {
  external Node? get anchorNode;
  external JSNumber get anchorOffset;
  external Node? get focusNode;
  external JSNumber get focusOffset;
  external JSBoolean get isCollapsed;
  external JSNumber get rangeCount;
  external JSString get type;
  external Range getRangeAt(JSNumber index);
  external JSUndefined addRange(Range range);
  external JSUndefined removeRange(Range range);
  external JSUndefined removeAllRanges();
  external JSUndefined empty();
  external StaticRange getComposedRange(ShadowRoot shadowRoots);
  external JSUndefined collapse(Node? node);
  external JSUndefined collapse_1(Node? node, JSNumber offset);
  external JSUndefined setPosition(Node? node);
  external JSUndefined setPosition_1(Node? node, JSNumber offset);
  external JSUndefined collapseToStart();
  external JSUndefined collapseToEnd();
  external JSUndefined extend(Node node);
  external JSUndefined extend_1(Node node, JSNumber offset);
  external JSUndefined setBaseAndExtent(Node anchorNode, JSNumber anchorOffset,
      Node focusNode, JSNumber focusOffset);
  external JSUndefined selectAllChildren(Node node);
  external JSUndefined modify();
  external JSUndefined modify_1(JSString alter);
  external JSUndefined modify_2(JSString alter, JSString direction);
  external JSUndefined modify_3(
      JSString alter, JSString direction, JSString granularity);
  external JSUndefined deleteFromDocument();
  external JSBoolean containsNode(Node node);
  external JSBoolean containsNode_1(
      Node node, JSBoolean allowPartialContainment);
}

@JS('Serial')
@staticInterop
class Serial extends EventTarget {
  external factory Serial();
}

extension SerialExtension on Serial {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise getPorts();
  external JSPromise requestPort();
  external JSPromise requestPort_1(SerialPortRequestOptions options);
}

@JS('SerialPortRequestOptions')
@staticInterop
class SerialPortRequestOptions {
  external factory SerialPortRequestOptions();
}

extension SerialPortRequestOptionsExtension on SerialPortRequestOptions {
  // TODO
}

@JS('SerialPortFilter')
@staticInterop
class SerialPortFilter {
  external factory SerialPortFilter();
}

extension SerialPortFilterExtension on SerialPortFilter {
  // TODO
  // TODO
}

@JS('SerialPort')
@staticInterop
class SerialPort extends EventTarget {
  external factory SerialPort();
}

extension SerialPortExtension on SerialPort {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external ReadableStream get readable;
  external WritableStream get writable;
  external SerialPortInfo getInfo();
  external JSPromise open(SerialOptions options);
  external JSPromise setSignals();
  external JSPromise setSignals_1(SerialOutputSignals signals);
  external JSPromise getSignals();
  external JSPromise close();
  external JSPromise forget();
}

@JS('SerialPortInfo')
@staticInterop
class SerialPortInfo {
  external factory SerialPortInfo();
}

extension SerialPortInfoExtension on SerialPortInfo {
  // TODO
  // TODO
}

@JS('SerialOptions')
@staticInterop
class SerialOptions {
  external factory SerialOptions();
}

extension SerialOptionsExtension on SerialOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('SerialOutputSignals')
@staticInterop
class SerialOutputSignals {
  external factory SerialOutputSignals();
}

extension SerialOutputSignalsExtension on SerialOutputSignals {
  // TODO
  // TODO
  // TODO
}

@JS('SerialInputSignals')
@staticInterop
class SerialInputSignals {
  external factory SerialInputSignals();
}

extension SerialInputSignalsExtension on SerialInputSignals {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PerformanceServerTiming')
@staticInterop
class PerformanceServerTiming {
  external factory PerformanceServerTiming();
}

extension PerformanceServerTimingExtension on PerformanceServerTiming {
  external JSString get name;
  external DOMHighResTimeStamp get duration;
  external JSString get description;
  external JSObject toJSON();
}

@JS('ServiceWorker')
@staticInterop
class ServiceWorker extends EventTarget implements AbstractWorker {
  external factory ServiceWorker();
}

extension ServiceWorkerExtension on ServiceWorker {
  external JSString get scriptURL;
  external ServiceWorkerState get state;
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
}

@JS('ServiceWorkerContainer')
@staticInterop
class ServiceWorkerContainer extends EventTarget {
  external factory ServiceWorkerContainer();
}

extension ServiceWorkerContainerExtension on ServiceWorkerContainer {
  external ServiceWorker? get controller;
  external JSPromise get ready;
  external JSPromise register(JSString scriptURL);
  external JSPromise register_1(
      JSString scriptURL, RegistrationOptions options);
  external JSPromise getRegistration();
  external JSPromise getRegistration_1(JSString clientURL);
  external JSPromise getRegistrations();
  external JSUndefined startMessages();
  external EventHandler get oncontrollerchange;
  external set oncontrollerchange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('RegistrationOptions')
@staticInterop
class RegistrationOptions {
  external factory RegistrationOptions();
}

extension RegistrationOptionsExtension on RegistrationOptions {
  // TODO
  // TODO
  // TODO
}

@JS('NavigationPreloadManager')
@staticInterop
class NavigationPreloadManager {
  external factory NavigationPreloadManager();
}

extension NavigationPreloadManagerExtension on NavigationPreloadManager {
  external JSPromise enable();
  external JSPromise disable();
  external JSPromise setHeaderValue(JSString value);
  external JSPromise getState();
}

@JS('NavigationPreloadState')
@staticInterop
class NavigationPreloadState {
  external factory NavigationPreloadState();
}

extension NavigationPreloadStateExtension on NavigationPreloadState {
  // TODO
  // TODO
}

@JS('WindowClient')
@staticInterop
class WindowClient extends Client {
  external factory WindowClient();
}

extension WindowClientExtension on WindowClient {
  external DocumentVisibilityState get visibilityState;
  external JSBoolean get focused;
  external JSArray get ancestorOrigins;
  external JSPromise focus();
  external JSPromise navigate(JSString url);
}

@JS('Clients')
@staticInterop
class Clients {
  external factory Clients();
}

extension ClientsExtension on Clients {
  external JSPromise get(JSString id);
  external JSPromise matchAll();
  external JSPromise matchAll_1(ClientQueryOptions options);
  external JSPromise openWindow(JSString url);
  external JSPromise claim();
}

@JS('ClientQueryOptions')
@staticInterop
class ClientQueryOptions {
  external factory ClientQueryOptions();
}

extension ClientQueryOptionsExtension on ClientQueryOptions {
  // TODO
  // TODO
}

@JS('ExtendableEvent')
@staticInterop
class ExtendableEvent extends Event {
  external factory ExtendableEvent();
  external factory ExtendableEvent.a1(JSString type);
  external factory ExtendableEvent.a1_1(
      JSString type, ExtendableEventInit eventInitDict);
}

extension ExtendableEventExtension on ExtendableEvent {
  external JSUndefined waitUntil(JSPromise f);
}

@JS('ExtendableEventInit')
@staticInterop
class ExtendableEventInit extends EventInit {
  external factory ExtendableEventInit();
}

@JS('FetchEvent')
@staticInterop
class FetchEvent extends ExtendableEvent {
  external factory FetchEvent();
  external factory FetchEvent.a1(JSString type, FetchEventInit eventInitDict);
}

extension FetchEventExtension on FetchEvent {
  external Request get request;
  external JSPromise get preloadResponse;
  external JSString get clientId;
  external JSString get resultingClientId;
  external JSString get replacesClientId;
  external JSPromise get handled;
  external JSUndefined respondWith(JSPromise r);
}

@JS('FetchEventInit')
@staticInterop
class FetchEventInit extends ExtendableEventInit {
  external factory FetchEventInit();
}

extension FetchEventInitExtension on FetchEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ExtendableMessageEvent')
@staticInterop
class ExtendableMessageEvent extends ExtendableEvent {
  external factory ExtendableMessageEvent();
  external factory ExtendableMessageEvent.a1(JSString type);
  external factory ExtendableMessageEvent.a1_1(
      JSString type, ExtendableMessageEventInit eventInitDict);
}

extension ExtendableMessageEventExtension on ExtendableMessageEvent {
  external JSAny get data;
  external JSString get origin;
  external JSString get lastEventId;
  external JSAny? get source;
  external JSArray get ports;
}

@JS('ExtendableMessageEventInit')
@staticInterop
class ExtendableMessageEventInit extends ExtendableEventInit {
  external factory ExtendableMessageEventInit();
}

extension ExtendableMessageEventInitExtension on ExtendableMessageEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Cache')
@staticInterop
class Cache {
  external factory Cache();
}

extension CacheExtension on Cache {
  external JSPromise match(RequestInfo request);
  external JSPromise match_1(RequestInfo request, CacheQueryOptions options);
  external JSPromise matchAll();
  external JSPromise matchAll_1(RequestInfo request);
  external JSPromise matchAll_2(RequestInfo request, CacheQueryOptions options);
  external JSPromise add(RequestInfo request);
  external JSPromise addAll(JSArray requests);
  external JSPromise put(RequestInfo request, Response response);
  external JSPromise delete(RequestInfo request);
  external JSPromise delete_1(RequestInfo request, CacheQueryOptions options);
  external JSPromise keys();
  external JSPromise keys_1(RequestInfo request);
  external JSPromise keys_2(RequestInfo request, CacheQueryOptions options);
}

@JS('CacheQueryOptions')
@staticInterop
class CacheQueryOptions {
  external factory CacheQueryOptions();
}

extension CacheQueryOptionsExtension on CacheQueryOptions {
  // TODO
  // TODO
  // TODO
}

@JS('CacheStorage')
@staticInterop
class CacheStorage {
  external factory CacheStorage();
}

extension CacheStorageExtension on CacheStorage {
  external JSPromise match(RequestInfo request);
  external JSPromise match_1(
      RequestInfo request, MultiCacheQueryOptions options);
  external JSPromise has(JSString cacheName);
  external JSPromise open(JSString cacheName);
  external JSPromise delete(JSString cacheName);
  external JSPromise keys();
}

@JS('MultiCacheQueryOptions')
@staticInterop
class MultiCacheQueryOptions extends CacheQueryOptions {
  external factory MultiCacheQueryOptions();
}

extension MultiCacheQueryOptionsExtension on MultiCacheQueryOptions {
  // TODO
}

@JS('FaceDetector')
@staticInterop
class FaceDetector {
  external factory FaceDetector();
  external factory FaceDetector.a1();
  external factory FaceDetector.a1_1(FaceDetectorOptions faceDetectorOptions);
}

extension FaceDetectorExtension on FaceDetector {
  external JSPromise detect(ImageBitmapSource image);
}

@JS('FaceDetectorOptions')
@staticInterop
class FaceDetectorOptions {
  external factory FaceDetectorOptions();
}

extension FaceDetectorOptionsExtension on FaceDetectorOptions {
  // TODO
  // TODO
}

@JS('DetectedFace')
@staticInterop
class DetectedFace {
  external factory DetectedFace();
}

extension DetectedFaceExtension on DetectedFace {
  // TODO
  // TODO
}

@JS('Landmark')
@staticInterop
class Landmark {
  external factory Landmark();
}

extension LandmarkExtension on Landmark {
  // TODO
  // TODO
}

@JS('BarcodeDetector')
@staticInterop
class BarcodeDetector {
  external factory BarcodeDetector();
  external factory BarcodeDetector.a1();
  external factory BarcodeDetector.a1_1(
      BarcodeDetectorOptions barcodeDetectorOptions);
  external static JSPromise getSupportedFormats();
}

extension BarcodeDetectorExtension on BarcodeDetector {
  external JSPromise detect(ImageBitmapSource image);
}

@JS('BarcodeDetectorOptions')
@staticInterop
class BarcodeDetectorOptions {
  external factory BarcodeDetectorOptions();
}

extension BarcodeDetectorOptionsExtension on BarcodeDetectorOptions {
  // TODO
}

@JS('DetectedBarcode')
@staticInterop
class DetectedBarcode {
  external factory DetectedBarcode();
}

extension DetectedBarcodeExtension on DetectedBarcode {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('SpeechRecognition')
@staticInterop
class SpeechRecognition extends EventTarget {
  external factory SpeechRecognition();
}

extension SpeechRecognitionExtension on SpeechRecognition {
  external SpeechGrammarList get grammars;
  external set grammars(SpeechGrammarList value);
  external JSString get lang;
  external set lang(JSString value);
  external JSBoolean get continuous;
  external set continuous(JSBoolean value);
  external JSBoolean get interimResults;
  external set interimResults(JSBoolean value);
  external JSNumber get maxAlternatives;
  external set maxAlternatives(JSNumber value);
  external JSUndefined start();
  external JSUndefined stop();
  external JSUndefined abort();
  external EventHandler get onaudiostart;
  external set onaudiostart(EventHandler value);
  external EventHandler get onsoundstart;
  external set onsoundstart(EventHandler value);
  external EventHandler get onspeechstart;
  external set onspeechstart(EventHandler value);
  external EventHandler get onspeechend;
  external set onspeechend(EventHandler value);
  external EventHandler get onsoundend;
  external set onsoundend(EventHandler value);
  external EventHandler get onaudioend;
  external set onaudioend(EventHandler value);
  external EventHandler get onresult;
  external set onresult(EventHandler value);
  external EventHandler get onnomatch;
  external set onnomatch(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onend;
  external set onend(EventHandler value);
}

@JS('SpeechRecognitionErrorEvent')
@staticInterop
class SpeechRecognitionErrorEvent extends Event {
  external factory SpeechRecognitionErrorEvent();
  external factory SpeechRecognitionErrorEvent.a1(
      JSString type, SpeechRecognitionErrorEventInit eventInitDict);
}

extension SpeechRecognitionErrorEventExtension on SpeechRecognitionErrorEvent {
  external SpeechRecognitionErrorCode get error;
  external JSString get message;
}

@JS('SpeechRecognitionErrorEventInit')
@staticInterop
class SpeechRecognitionErrorEventInit extends EventInit {
  external factory SpeechRecognitionErrorEventInit();
}

extension SpeechRecognitionErrorEventInitExtension
    on SpeechRecognitionErrorEventInit {
  // TODO
  // TODO
}

@JS('SpeechRecognitionAlternative')
@staticInterop
class SpeechRecognitionAlternative {
  external factory SpeechRecognitionAlternative();
}

extension SpeechRecognitionAlternativeExtension
    on SpeechRecognitionAlternative {
  external JSString get transcript;
  external JSNumber get confidence;
}

@JS('SpeechRecognitionResult')
@staticInterop
class SpeechRecognitionResult {
  external factory SpeechRecognitionResult();
}

extension SpeechRecognitionResultExtension on SpeechRecognitionResult {
  external JSNumber get length;
  external SpeechRecognitionAlternative item(JSNumber index);
  external JSBoolean get isFinal;
}

@JS('SpeechRecognitionResultList')
@staticInterop
class SpeechRecognitionResultList {
  external factory SpeechRecognitionResultList();
}

extension SpeechRecognitionResultListExtension on SpeechRecognitionResultList {
  external JSNumber get length;
  external SpeechRecognitionResult item(JSNumber index);
}

@JS('SpeechRecognitionEvent')
@staticInterop
class SpeechRecognitionEvent extends Event {
  external factory SpeechRecognitionEvent();
  external factory SpeechRecognitionEvent.a1(
      JSString type, SpeechRecognitionEventInit eventInitDict);
}

extension SpeechRecognitionEventExtension on SpeechRecognitionEvent {
  external JSNumber get resultIndex;
  external SpeechRecognitionResultList get results;
}

@JS('SpeechRecognitionEventInit')
@staticInterop
class SpeechRecognitionEventInit extends EventInit {
  external factory SpeechRecognitionEventInit();
}

extension SpeechRecognitionEventInitExtension on SpeechRecognitionEventInit {
  // TODO
  // TODO
}

@JS('SpeechGrammar')
@staticInterop
class SpeechGrammar {
  external factory SpeechGrammar();
}

extension SpeechGrammarExtension on SpeechGrammar {
  external JSString get src;
  external set src(JSString value);
  external JSNumber get weight;
  external set weight(JSNumber value);
}

@JS('SpeechGrammarList')
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList();
}

extension SpeechGrammarListExtension on SpeechGrammarList {
  external JSNumber get length;
  external SpeechGrammar item(JSNumber index);
  external JSUndefined addFromURI(JSString src);
  external JSUndefined addFromURI_1(JSString src, JSNumber weight);
  external JSUndefined addFromString(JSString string);
  external JSUndefined addFromString_1(JSString string, JSNumber weight);
}

@JS('SpeechSynthesis')
@staticInterop
class SpeechSynthesis extends EventTarget {
  external factory SpeechSynthesis();
}

extension SpeechSynthesisExtension on SpeechSynthesis {
  external JSBoolean get pending;
  external JSBoolean get speaking;
  external JSBoolean get paused;
  external EventHandler get onvoiceschanged;
  external set onvoiceschanged(EventHandler value);
  external JSUndefined speak(SpeechSynthesisUtterance utterance);
  external JSUndefined cancel();
  external JSUndefined pause();
  external JSUndefined resume();
  external JSArray getVoices();
}

@JS('SpeechSynthesisUtterance')
@staticInterop
class SpeechSynthesisUtterance extends EventTarget {
  external factory SpeechSynthesisUtterance();
  external factory SpeechSynthesisUtterance.a1();
  external factory SpeechSynthesisUtterance.a1_1(JSString text);
}

extension SpeechSynthesisUtteranceExtension on SpeechSynthesisUtterance {
  external JSString get text;
  external set text(JSString value);
  external JSString get lang;
  external set lang(JSString value);
  external SpeechSynthesisVoice? get voice;
  external set voice(SpeechSynthesisVoice? value);
  external JSNumber get volume;
  external set volume(JSNumber value);
  external JSNumber get rate;
  external set rate(JSNumber value);
  external JSNumber get pitch;
  external set pitch(JSNumber value);
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onend;
  external set onend(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external EventHandler get onmark;
  external set onmark(EventHandler value);
  external EventHandler get onboundary;
  external set onboundary(EventHandler value);
}

@JS('SpeechSynthesisEvent')
@staticInterop
class SpeechSynthesisEvent extends Event {
  external factory SpeechSynthesisEvent();
  external factory SpeechSynthesisEvent.a1(
      JSString type, SpeechSynthesisEventInit eventInitDict);
}

extension SpeechSynthesisEventExtension on SpeechSynthesisEvent {
  external SpeechSynthesisUtterance get utterance;
  external JSNumber get charIndex;
  external JSNumber get charLength;
  external JSNumber get elapsedTime;
  external JSString get name;
}

@JS('SpeechSynthesisEventInit')
@staticInterop
class SpeechSynthesisEventInit extends EventInit {
  external factory SpeechSynthesisEventInit();
}

extension SpeechSynthesisEventInitExtension on SpeechSynthesisEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('SpeechSynthesisErrorEvent')
@staticInterop
class SpeechSynthesisErrorEvent extends SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent();
  external factory SpeechSynthesisErrorEvent.a1(
      JSString type, SpeechSynthesisErrorEventInit eventInitDict);
}

extension SpeechSynthesisErrorEventExtension on SpeechSynthesisErrorEvent {
  external SpeechSynthesisErrorCode get error;
}

@JS('SpeechSynthesisErrorEventInit')
@staticInterop
class SpeechSynthesisErrorEventInit extends SpeechSynthesisEventInit {
  external factory SpeechSynthesisErrorEventInit();
}

extension SpeechSynthesisErrorEventInitExtension
    on SpeechSynthesisErrorEventInit {
  // TODO
}

@JS('SpeechSynthesisVoice')
@staticInterop
class SpeechSynthesisVoice {
  external factory SpeechSynthesisVoice();
}

extension SpeechSynthesisVoiceExtension on SpeechSynthesisVoice {
  external JSString get voiceURI;
  external JSString get name;
  external JSString get lang;
  external JSBoolean get localService;
  @JS('default')
  external JSBoolean get default0;
}

@JS('NavigatorStorage')
@staticInterop
class NavigatorStorage {
  external factory NavigatorStorage();
}

extension NavigatorStorageExtension on NavigatorStorage {
  external StorageManager get storage;
}

@JS('StorageEstimate')
@staticInterop
class StorageEstimate {
  external factory StorageEstimate();
}

extension StorageEstimateExtension on StorageEstimate {
  // TODO
  // TODO
}

@JS('ReadableStream')
@staticInterop
class ReadableStream {
  external factory ReadableStream();
  external factory ReadableStream.a1();
  external factory ReadableStream.a1_1(JSObject underlyingSource);
  external factory ReadableStream.a1_2(
      JSObject underlyingSource, QueuingStrategy strategy);
}

extension ReadableStreamExtension on ReadableStream {
  external JSBoolean get locked;
  external JSPromise cancel();
  external JSPromise cancel_1(JSAny reason);
  external ReadableStreamReader getReader();
  external ReadableStreamReader getReader_1(
      ReadableStreamGetReaderOptions options);
  external ReadableStream pipeThrough(ReadableWritablePair transform);
  external ReadableStream pipeThrough_1(
      ReadableWritablePair transform, StreamPipeOptions options);
  external JSPromise pipeTo(WritableStream destination);
  external JSPromise pipeTo_1(
      WritableStream destination, StreamPipeOptions options);
  external JSArray tee();
  // TODO
}

@JS('ReadableStreamGetReaderOptions')
@staticInterop
class ReadableStreamGetReaderOptions {
  external factory ReadableStreamGetReaderOptions();
}

extension ReadableStreamGetReaderOptionsExtension
    on ReadableStreamGetReaderOptions {
  // TODO
}

@JS('ReadableStreamIteratorOptions')
@staticInterop
class ReadableStreamIteratorOptions {
  external factory ReadableStreamIteratorOptions();
}

extension ReadableStreamIteratorOptionsExtension
    on ReadableStreamIteratorOptions {
  // TODO
}

@JS('ReadableWritablePair')
@staticInterop
class ReadableWritablePair {
  external factory ReadableWritablePair();
}

extension ReadableWritablePairExtension on ReadableWritablePair {
  // TODO
  // TODO
}

@JS('StreamPipeOptions')
@staticInterop
class StreamPipeOptions {
  external factory StreamPipeOptions();
}

extension StreamPipeOptionsExtension on StreamPipeOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('UnderlyingSource')
@staticInterop
class UnderlyingSource {
  external factory UnderlyingSource();
}

extension UnderlyingSourceExtension on UnderlyingSource {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ReadableStreamGenericReader')
@staticInterop
class ReadableStreamGenericReader {
  external factory ReadableStreamGenericReader();
}

extension ReadableStreamGenericReaderExtension on ReadableStreamGenericReader {
  external JSPromise get closed;
  external JSPromise cancel();
  external JSPromise cancel_1(JSAny reason);
}

@JS('ReadableStreamDefaultReader')
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external factory ReadableStreamDefaultReader();
  external factory ReadableStreamDefaultReader.a1(ReadableStream stream);
}

extension ReadableStreamDefaultReaderExtension on ReadableStreamDefaultReader {
  external JSPromise read();
  external JSUndefined releaseLock();
}

@JS('ReadableStreamReadResult')
@staticInterop
class ReadableStreamReadResult {
  external factory ReadableStreamReadResult();
}

extension ReadableStreamReadResultExtension on ReadableStreamReadResult {
  // TODO
  // TODO
}

@JS('ReadableStreamBYOBReader')
@staticInterop
class ReadableStreamBYOBReader implements ReadableStreamGenericReader {
  external factory ReadableStreamBYOBReader();
  external factory ReadableStreamBYOBReader.a1(ReadableStream stream);
}

extension ReadableStreamBYOBReaderExtension on ReadableStreamBYOBReader {
  external JSPromise read(ArrayBufferView view);
  external JSUndefined releaseLock();
}

@JS('ReadableStreamDefaultController')
@staticInterop
class ReadableStreamDefaultController {
  external factory ReadableStreamDefaultController();
}

extension ReadableStreamDefaultControllerExtension
    on ReadableStreamDefaultController {
  external JSNumber? get desiredSize;
  external JSUndefined close();
  external JSUndefined enqueue();
  external JSUndefined enqueue_1(JSAny chunk);
  external JSUndefined error();
  external JSUndefined error_1(JSAny e);
}

@JS('ReadableByteStreamController')
@staticInterop
class ReadableByteStreamController {
  external factory ReadableByteStreamController();
}

extension ReadableByteStreamControllerExtension
    on ReadableByteStreamController {
  external ReadableStreamBYOBRequest? get byobRequest;
  external JSNumber? get desiredSize;
  external JSUndefined close();
  external JSUndefined enqueue(ArrayBufferView chunk);
  external JSUndefined error();
  external JSUndefined error_1(JSAny e);
}

@JS('ReadableStreamBYOBRequest')
@staticInterop
class ReadableStreamBYOBRequest {
  external factory ReadableStreamBYOBRequest();
}

extension ReadableStreamBYOBRequestExtension on ReadableStreamBYOBRequest {
  external ArrayBufferView? get view;
  external JSUndefined respond(JSNumber bytesWritten);
  external JSUndefined respondWithNewView(ArrayBufferView view);
}

@JS('WritableStream')
@staticInterop
class WritableStream {
  external factory WritableStream();
  external factory WritableStream.a1();
  external factory WritableStream.a1_1(JSObject underlyingSink);
  external factory WritableStream.a1_2(
      JSObject underlyingSink, QueuingStrategy strategy);
}

extension WritableStreamExtension on WritableStream {
  external JSBoolean get locked;
  external JSPromise abort();
  external JSPromise abort_1(JSAny reason);
  external JSPromise close();
  external WritableStreamDefaultWriter getWriter();
}

@JS('UnderlyingSink')
@staticInterop
class UnderlyingSink {
  external factory UnderlyingSink();
}

extension UnderlyingSinkExtension on UnderlyingSink {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WritableStreamDefaultWriter')
@staticInterop
class WritableStreamDefaultWriter {
  external factory WritableStreamDefaultWriter();
  external factory WritableStreamDefaultWriter.a1(WritableStream stream);
}

extension WritableStreamDefaultWriterExtension on WritableStreamDefaultWriter {
  external JSPromise get closed;
  external JSNumber? get desiredSize;
  external JSPromise get ready;
  external JSPromise abort();
  external JSPromise abort_1(JSAny reason);
  external JSPromise close();
  external JSUndefined releaseLock();
  external JSPromise write();
  external JSPromise write_1(JSAny chunk);
}

@JS('WritableStreamDefaultController')
@staticInterop
class WritableStreamDefaultController {
  external factory WritableStreamDefaultController();
}

extension WritableStreamDefaultControllerExtension
    on WritableStreamDefaultController {
  external AbortSignal get signal;
  external JSUndefined error();
  external JSUndefined error_1(JSAny e);
}

@JS('TransformStream')
@staticInterop
class TransformStream {
  external factory TransformStream();
  external factory TransformStream.a1();
  external factory TransformStream.a1_1(JSObject transformer);
  external factory TransformStream.a1_2(
      JSObject transformer, QueuingStrategy writableStrategy);
  external factory TransformStream.a1_3(JSObject transformer,
      QueuingStrategy writableStrategy, QueuingStrategy readableStrategy);
}

extension TransformStreamExtension on TransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS('Transformer')
@staticInterop
class Transformer {
  external factory Transformer();
}

extension TransformerExtension on Transformer {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TransformStreamDefaultController')
@staticInterop
class TransformStreamDefaultController {
  external factory TransformStreamDefaultController();
}

extension TransformStreamDefaultControllerExtension
    on TransformStreamDefaultController {
  external JSNumber? get desiredSize;
  external JSUndefined enqueue();
  external JSUndefined enqueue_1(JSAny chunk);
  external JSUndefined error();
  external JSUndefined error_1(JSAny reason);
  external JSUndefined terminate();
}

@JS('QueuingStrategy')
@staticInterop
class QueuingStrategy {
  external factory QueuingStrategy();
}

extension QueuingStrategyExtension on QueuingStrategy {
  // TODO
  // TODO
}

@JS('QueuingStrategyInit')
@staticInterop
class QueuingStrategyInit {
  external factory QueuingStrategyInit();
}

extension QueuingStrategyInitExtension on QueuingStrategyInit {
  // TODO
}

@JS('ByteLengthQueuingStrategy')
@staticInterop
class ByteLengthQueuingStrategy {
  external factory ByteLengthQueuingStrategy();
  external factory ByteLengthQueuingStrategy.a1(QueuingStrategyInit init);
}

extension ByteLengthQueuingStrategyExtension on ByteLengthQueuingStrategy {
  external JSNumber get highWaterMark;
  external JSFunction get size;
}

@JS('CountQueuingStrategy')
@staticInterop
class CountQueuingStrategy {
  external factory CountQueuingStrategy();
  external factory CountQueuingStrategy.a1(QueuingStrategyInit init);
}

extension CountQueuingStrategyExtension on CountQueuingStrategy {
  external JSNumber get highWaterMark;
  external JSFunction get size;
}

@JS('GenericTransformStream')
@staticInterop
class GenericTransformStream {
  external factory GenericTransformStream();
}

extension GenericTransformStreamExtension on GenericTransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS('TimeEvent')
@staticInterop
class TimeEvent extends Event {
  external factory TimeEvent();
}

extension TimeEventExtension on TimeEvent {
  external Window? get view;
  external JSNumber get detail;
  external JSUndefined initTimeEvent(
      JSString typeArg, Window? viewArg, JSNumber detailArg);
}

@JS('SVGAnimationElement')
@staticInterop
class SVGAnimationElement extends SVGElement implements SVGTests {
  external factory SVGAnimationElement();
}

extension SVGAnimationElementExtension on SVGAnimationElement {
  external SVGElement? get targetElement;
  external EventHandler get onbegin;
  external set onbegin(EventHandler value);
  external EventHandler get onend;
  external set onend(EventHandler value);
  external EventHandler get onrepeat;
  external set onrepeat(EventHandler value);
  external JSNumber getStartTime();
  external JSNumber getCurrentTime();
  external JSNumber getSimpleDuration();
  external JSUndefined beginElement();
  external JSUndefined beginElementAt(JSNumber offset);
  external JSUndefined endElement();
  external JSUndefined endElementAt(JSNumber offset);
}

@JS('SVGAnimateElement')
@staticInterop
class SVGAnimateElement extends SVGAnimationElement {
  external factory SVGAnimateElement();
}

@JS('SVGSetElement')
@staticInterop
class SVGSetElement extends SVGAnimationElement {
  external factory SVGSetElement();
}

@JS('SVGAnimateMotionElement')
@staticInterop
class SVGAnimateMotionElement extends SVGAnimationElement {
  external factory SVGAnimateMotionElement();
}

@JS('SVGMPathElement')
@staticInterop
class SVGMPathElement extends SVGElement implements SVGURIReference {
  external factory SVGMPathElement();
}

@JS('SVGAnimateTransformElement')
@staticInterop
class SVGAnimateTransformElement extends SVGAnimationElement {
  external factory SVGAnimateTransformElement();
}

@JS('SVGDiscardElement')
@staticInterop
class SVGDiscardElement extends SVGAnimationElement {
  external factory SVGDiscardElement();
}

@JS()
external _TestUtils get TestUtils;

@JS('TestUtils')
@staticInterop
class _TestUtils {
  external factory _TestUtils();
}

extension _TestUtilsExtension on _TestUtils {
  external JSPromise gc();
}

@JS('TextDetector')
@staticInterop
class TextDetector {
  external factory TextDetector();
}

extension TextDetectorExtension on TextDetector {
  external JSPromise detect(ImageBitmapSource image);
}

@JS('DetectedText')
@staticInterop
class DetectedText {
  external factory DetectedText();
}

extension DetectedTextExtension on DetectedText {
  // TODO
  // TODO
  // TODO
}

@JS('TouchInit')
@staticInterop
class TouchInit {
  external factory TouchInit();
}

extension TouchInitExtension on TouchInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Touch')
@staticInterop
class Touch {
  external factory Touch();
  external factory Touch.a1(TouchInit touchInitDict);
}

extension TouchExtension on Touch {
  external JSNumber get identifier;
  external EventTarget get target;
  external JSNumber get screenX;
  external JSNumber get screenY;
  external JSNumber get clientX;
  external JSNumber get clientY;
  external JSNumber get pageX;
  external JSNumber get pageY;
  external JSNumber get radiusX;
  external JSNumber get radiusY;
  external JSNumber get rotationAngle;
  external JSNumber get force;
  external JSNumber get altitudeAngle;
  external JSNumber get azimuthAngle;
  external TouchType get touchType;
}

@JS('TouchList')
@staticInterop
class TouchList {
  external factory TouchList();
}

extension TouchListExtension on TouchList {
  external JSNumber get length;
  external Touch? item(JSNumber index);
}

@JS('TouchEventInit')
@staticInterop
class TouchEventInit extends EventModifierInit {
  external factory TouchEventInit();
}

extension TouchEventInitExtension on TouchEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('TouchEvent')
@staticInterop
class TouchEvent extends UIEvent {
  external factory TouchEvent();
  external factory TouchEvent.a1(JSString type);
  external factory TouchEvent.a1_1(JSString type, TouchEventInit eventInitDict);
}

extension TouchEventExtension on TouchEvent {
  external TouchList get touches;
  external TouchList get targetTouches;
  external TouchList get changedTouches;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean getModifierState(JSString keyArg);
}

@JS('TrustedHTML')
@staticInterop
class TrustedHTML {
  external factory TrustedHTML();
  external static TrustedHTML fromLiteral(JSObject templateStringsArray);
}

extension TrustedHTMLExtension on TrustedHTML {
  external JSString toJSON();
}

@JS('TrustedScript')
@staticInterop
class TrustedScript {
  external factory TrustedScript();
  external static TrustedScript fromLiteral(JSObject templateStringsArray);
}

extension TrustedScriptExtension on TrustedScript {
  external JSString toJSON();
}

@JS('TrustedScriptURL')
@staticInterop
class TrustedScriptURL {
  external factory TrustedScriptURL();
  external static TrustedScriptURL fromLiteral(JSObject templateStringsArray);
}

extension TrustedScriptURLExtension on TrustedScriptURL {
  external JSString toJSON();
}

@JS('TrustedTypePolicyFactory')
@staticInterop
class TrustedTypePolicyFactory {
  external factory TrustedTypePolicyFactory();
}

extension TrustedTypePolicyFactoryExtension on TrustedTypePolicyFactory {
  external TrustedTypePolicy createPolicy(JSString policyName);
  external TrustedTypePolicy createPolicy_1(
      JSString policyName, TrustedTypePolicyOptions policyOptions);
  external JSBoolean isHTML(JSAny value);
  external JSBoolean isScript(JSAny value);
  external JSBoolean isScriptURL(JSAny value);
  external TrustedHTML get emptyHTML;
  external TrustedScript get emptyScript;
  external JSString? getAttributeType(JSString tagName, JSString attribute);
  external JSString? getAttributeType_1(
      JSString tagName, JSString attribute, JSString elementNs);
  external JSString? getAttributeType_2(JSString tagName, JSString attribute,
      JSString elementNs, JSString attrNs);
  external JSString? getPropertyType(JSString tagName, JSString property);
  external JSString? getPropertyType_1(
      JSString tagName, JSString property, JSString elementNs);
  external TrustedTypePolicy? get defaultPolicy;
}

@JS('TrustedTypePolicy')
@staticInterop
class TrustedTypePolicy {
  external factory TrustedTypePolicy();
}

extension TrustedTypePolicyExtension on TrustedTypePolicy {
  external JSString get name;
  external TrustedHTML createHTML(JSString input, JSAny arguments);
  external TrustedScript createScript(JSString input, JSAny arguments);
  external TrustedScriptURL createScriptURL(JSString input, JSAny arguments);
}

@JS('TrustedTypePolicyOptions')
@staticInterop
class TrustedTypePolicyOptions {
  external factory TrustedTypePolicyOptions();
}

extension TrustedTypePolicyOptionsExtension on TrustedTypePolicyOptions {
  // TODO
  // TODO
  // TODO
}

@JS('NavigatorUABrandVersion')
@staticInterop
class NavigatorUABrandVersion {
  external factory NavigatorUABrandVersion();
}

extension NavigatorUABrandVersionExtension on NavigatorUABrandVersion {
  // TODO
  // TODO
}

@JS('UADataValues')
@staticInterop
class UADataValues {
  external factory UADataValues();
}

extension UADataValuesExtension on UADataValues {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('UALowEntropyJSON')
@staticInterop
class UALowEntropyJSON {
  external factory UALowEntropyJSON();
}

extension UALowEntropyJSONExtension on UALowEntropyJSON {
  // TODO
  // TODO
  // TODO
}

@JS('NavigatorUAData')
@staticInterop
class NavigatorUAData {
  external factory NavigatorUAData();
}

extension NavigatorUADataExtension on NavigatorUAData {
  external JSArray get brands;
  external JSBoolean get mobile;
  external JSString get platform;
  external JSPromise getHighEntropyValues(JSArray hints);
  external UALowEntropyJSON toJSON();
}

@JS('NavigatorUA')
@staticInterop
class NavigatorUA {
  external factory NavigatorUA();
}

extension NavigatorUAExtension on NavigatorUA {
  external NavigatorUAData get userAgentData;
}

@JS('FocusEvent')
@staticInterop
class FocusEvent extends UIEvent {
  external factory FocusEvent();
  external factory FocusEvent.a1(JSString type);
  external factory FocusEvent.a1_1(JSString type, FocusEventInit eventInitDict);
}

extension FocusEventExtension on FocusEvent {
  external EventTarget? get relatedTarget;
}

@JS('FocusEventInit')
@staticInterop
class FocusEventInit extends UIEventInit {
  external factory FocusEventInit();
}

extension FocusEventInitExtension on FocusEventInit {
  // TODO
}

@JS('EventModifierInit')
@staticInterop
class EventModifierInit extends UIEventInit {
  external factory EventModifierInit();
}

extension EventModifierInitExtension on EventModifierInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WheelEvent')
@staticInterop
class WheelEvent extends MouseEvent {
  external factory WheelEvent();
  external factory WheelEvent.a1(JSString type);
  external factory WheelEvent.a1_1(JSString type, WheelEventInit eventInitDict);
  external static JSNumber get DOM_DELTA_PIXEL;
  external static JSNumber get DOM_DELTA_LINE;
  external static JSNumber get DOM_DELTA_PAGE;
}

extension WheelEventExtension on WheelEvent {
  external JSNumber get deltaX;
  external JSNumber get deltaY;
  external JSNumber get deltaZ;
  external JSNumber get deltaMode;
}

@JS('WheelEventInit')
@staticInterop
class WheelEventInit extends MouseEventInit {
  external factory WheelEventInit();
}

extension WheelEventInitExtension on WheelEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('KeyboardEvent')
@staticInterop
class KeyboardEvent extends UIEvent {
  external factory KeyboardEvent();
  external factory KeyboardEvent.a1(JSString type);
  external factory KeyboardEvent.a1_1(
      JSString type, KeyboardEventInit eventInitDict);
  external static JSNumber get DOM_KEY_LOCATION_STANDARD;
  external static JSNumber get DOM_KEY_LOCATION_LEFT;
  external static JSNumber get DOM_KEY_LOCATION_RIGHT;
  external static JSNumber get DOM_KEY_LOCATION_NUMPAD;
}

extension KeyboardEventExtension on KeyboardEvent {
  external JSString get key;
  external JSString get code;
  external JSNumber get location;
  external JSBoolean get ctrlKey;
  external JSBoolean get shiftKey;
  external JSBoolean get altKey;
  external JSBoolean get metaKey;
  external JSBoolean get repeat;
  external JSBoolean get isComposing;
  external JSBoolean getModifierState(JSString keyArg);
  external JSUndefined initKeyboardEvent(JSString typeArg);
  external JSUndefined initKeyboardEvent_1(
      JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initKeyboardEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initKeyboardEvent_3(JSString typeArg,
      JSBoolean bubblesArg, JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initKeyboardEvent_4(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg);
  external JSUndefined initKeyboardEvent_5(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg);
  external JSUndefined initKeyboardEvent_6(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey);
  external JSUndefined initKeyboardEvent_7(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey,
      JSBoolean altKey);
  external JSUndefined initKeyboardEvent_8(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey,
      JSBoolean altKey,
      JSBoolean shiftKey);
  external JSUndefined initKeyboardEvent_9(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString keyArg,
      JSNumber locationArg,
      JSBoolean ctrlKey,
      JSBoolean altKey,
      JSBoolean shiftKey,
      JSBoolean metaKey);
  external JSNumber get charCode;
  external JSNumber get keyCode;
}

@JS('KeyboardEventInit')
@staticInterop
class KeyboardEventInit extends EventModifierInit {
  external factory KeyboardEventInit();
}

extension KeyboardEventInitExtension on KeyboardEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CompositionEvent')
@staticInterop
class CompositionEvent extends UIEvent {
  external factory CompositionEvent();
  external factory CompositionEvent.a1(JSString type);
  external factory CompositionEvent.a1_1(
      JSString type, CompositionEventInit eventInitDict);
}

extension CompositionEventExtension on CompositionEvent {
  external JSString get data;
  external JSUndefined initCompositionEvent(JSString typeArg);
  external JSUndefined initCompositionEvent_1(
      JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initCompositionEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initCompositionEvent_3(JSString typeArg,
      JSBoolean bubblesArg, JSBoolean cancelableArg, Window? viewArg);
  external JSUndefined initCompositionEvent_4(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Window? viewArg,
      JSString dataArg);
}

@JS('CompositionEventInit')
@staticInterop
class CompositionEventInit extends UIEventInit {
  external factory CompositionEventInit();
}

extension CompositionEventInitExtension on CompositionEventInit {
  // TODO
}

@JS('MutationEvent')
@staticInterop
class MutationEvent extends Event {
  external factory MutationEvent();
  external static JSNumber get MODIFICATION;
  external static JSNumber get ADDITION;
  external static JSNumber get REMOVAL;
}

extension MutationEventExtension on MutationEvent {
  external Node? get relatedNode;
  external JSString get prevValue;
  external JSString get newValue;
  external JSString get attrName;
  external JSNumber get attrChange;
  external JSUndefined initMutationEvent(JSString typeArg);
  external JSUndefined initMutationEvent_1(
      JSString typeArg, JSBoolean bubblesArg);
  external JSUndefined initMutationEvent_2(
      JSString typeArg, JSBoolean bubblesArg, JSBoolean cancelableArg);
  external JSUndefined initMutationEvent_3(JSString typeArg,
      JSBoolean bubblesArg, JSBoolean cancelableArg, Node? relatedNodeArg);
  external JSUndefined initMutationEvent_4(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg);
  external JSUndefined initMutationEvent_5(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg,
      JSString newValueArg);
  external JSUndefined initMutationEvent_6(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg,
      JSString newValueArg,
      JSString attrNameArg);
  external JSUndefined initMutationEvent_7(
      JSString typeArg,
      JSBoolean bubblesArg,
      JSBoolean cancelableArg,
      Node? relatedNodeArg,
      JSString prevValueArg,
      JSString newValueArg,
      JSString attrNameArg,
      JSNumber attrChangeArg);
}

@JS('URLSearchParams')
@staticInterop
class URLSearchParams {
  external factory URLSearchParams();
  external factory URLSearchParams.a1();
  external factory URLSearchParams.a1_1(JSAny init);
}

extension URLSearchParamsExtension on URLSearchParams {
  external JSUndefined append(JSString name, JSString value);
  external JSUndefined delete(JSString name);
  external JSString? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSUndefined set(JSString name, JSString value);
  external JSUndefined sort();
  // TODO
}

@JS('URLPattern')
@staticInterop
class URLPattern {
  external factory URLPattern();
  external factory URLPattern.a1(URLPatternInput input, JSString baseURL);
  external factory URLPattern.a1_1(
      URLPatternInput input, JSString baseURL, URLPatternOptions options);
  external factory URLPattern.a2();
  external factory URLPattern.a2_1(URLPatternInput input);
  external factory URLPattern.a2_2(
      URLPatternInput input, URLPatternOptions options);
}

extension URLPatternExtension on URLPattern {
  external JSBoolean test();
  external JSBoolean test_1(URLPatternInput input);
  external JSBoolean test_2(URLPatternInput input, JSString baseURL);
  external URLPatternResult? exec();
  external URLPatternResult? exec_1(URLPatternInput input);
  external URLPatternResult? exec_2(URLPatternInput input, JSString baseURL);
  external JSString get protocol;
  external JSString get username;
  external JSString get password;
  external JSString get hostname;
  external JSString get port;
  external JSString get pathname;
  external JSString get search;
  external JSString get hash;
}

@JS('URLPatternInit')
@staticInterop
class URLPatternInit {
  external factory URLPatternInit();
}

extension URLPatternInitExtension on URLPatternInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('URLPatternOptions')
@staticInterop
class URLPatternOptions {
  external factory URLPatternOptions();
}

extension URLPatternOptionsExtension on URLPatternOptions {
  // TODO
}

@JS('URLPatternResult')
@staticInterop
class URLPatternResult {
  external factory URLPatternResult();
}

extension URLPatternResultExtension on URLPatternResult {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('URLPatternComponentResult')
@staticInterop
class URLPatternComponentResult {
  external factory URLPatternComponentResult();
}

extension URLPatternComponentResultExtension on URLPatternComponentResult {
  // TODO
  // TODO
}

@JS('PerformanceMarkOptions')
@staticInterop
class PerformanceMarkOptions {
  external factory PerformanceMarkOptions();
}

extension PerformanceMarkOptionsExtension on PerformanceMarkOptions {
  // TODO
  // TODO
}

@JS('PerformanceMeasureOptions')
@staticInterop
class PerformanceMeasureOptions {
  external factory PerformanceMeasureOptions();
}

extension PerformanceMeasureOptionsExtension on PerformanceMeasureOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PerformanceMark')
@staticInterop
class PerformanceMark extends PerformanceEntry {
  external factory PerformanceMark();
  external factory PerformanceMark.a1(JSString markName);
  external factory PerformanceMark.a1_1(
      JSString markName, PerformanceMarkOptions markOptions);
}

extension PerformanceMarkExtension on PerformanceMark {
  external JSAny get detail;
}

@JS('PerformanceMeasure')
@staticInterop
class PerformanceMeasure extends PerformanceEntry {
  external factory PerformanceMeasure();
}

extension PerformanceMeasureExtension on PerformanceMeasure {
  external JSAny get detail;
}

@JS('VideoFrameCallbackMetadata')
@staticInterop
class VideoFrameCallbackMetadata {
  external factory VideoFrameCallbackMetadata();
}

extension VideoFrameCallbackMetadataExtension on VideoFrameCallbackMetadata {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VirtualKeyboard')
@staticInterop
class VirtualKeyboard extends EventTarget {
  external factory VirtualKeyboard();
}

extension VirtualKeyboardExtension on VirtualKeyboard {
  external JSUndefined show();
  external JSUndefined hide();
  external DOMRect get boundingRect;
  external JSBoolean get overlaysContent;
  external set overlaysContent(JSBoolean value);
  external EventHandler get ongeometrychange;
  external set ongeometrychange(EventHandler value);
}

@JS('ARIAMixin')
@staticInterop
class ARIAMixin {
  external factory ARIAMixin();
}

extension ARIAMixinExtension on ARIAMixin {
  external JSString? get role;
  external set role(JSString? value);
  external Element? get ariaActiveDescendantElement;
  external set ariaActiveDescendantElement(Element? value);
  external JSString? get ariaAtomic;
  external set ariaAtomic(JSString? value);
  external JSString? get ariaAutoComplete;
  external set ariaAutoComplete(JSString? value);
  external JSString? get ariaBusy;
  external set ariaBusy(JSString? value);
  external JSString? get ariaChecked;
  external set ariaChecked(JSString? value);
  external JSString? get ariaColCount;
  external set ariaColCount(JSString? value);
  external JSString? get ariaColIndex;
  external set ariaColIndex(JSString? value);
  external JSString? get ariaColIndexText;
  external set ariaColIndexText(JSString? value);
  external JSString? get ariaColSpan;
  external set ariaColSpan(JSString? value);
  external JSArray? get ariaControlsElements;
  external set ariaControlsElements(JSArray? value);
  external JSString? get ariaCurrent;
  external set ariaCurrent(JSString? value);
  external JSArray? get ariaDescribedByElements;
  external set ariaDescribedByElements(JSArray? value);
  external JSString? get ariaDescription;
  external set ariaDescription(JSString? value);
  external JSArray? get ariaDetailsElements;
  external set ariaDetailsElements(JSArray? value);
  external JSString? get ariaDisabled;
  external set ariaDisabled(JSString? value);
  external JSArray? get ariaErrorMessageElements;
  external set ariaErrorMessageElements(JSArray? value);
  external JSString? get ariaExpanded;
  external set ariaExpanded(JSString? value);
  external JSArray? get ariaFlowToElements;
  external set ariaFlowToElements(JSArray? value);
  external JSString? get ariaHasPopup;
  external set ariaHasPopup(JSString? value);
  external JSString? get ariaHidden;
  external set ariaHidden(JSString? value);
  external JSString? get ariaInvalid;
  external set ariaInvalid(JSString? value);
  external JSString? get ariaKeyShortcuts;
  external set ariaKeyShortcuts(JSString? value);
  external JSString? get ariaLabel;
  external set ariaLabel(JSString? value);
  external JSArray? get ariaLabelledByElements;
  external set ariaLabelledByElements(JSArray? value);
  external JSString? get ariaLevel;
  external set ariaLevel(JSString? value);
  external JSString? get ariaLive;
  external set ariaLive(JSString? value);
  external JSString? get ariaModal;
  external set ariaModal(JSString? value);
  external JSString? get ariaMultiLine;
  external set ariaMultiLine(JSString? value);
  external JSString? get ariaMultiSelectable;
  external set ariaMultiSelectable(JSString? value);
  external JSString? get ariaOrientation;
  external set ariaOrientation(JSString? value);
  external JSArray? get ariaOwnsElements;
  external set ariaOwnsElements(JSArray? value);
  external JSString? get ariaPlaceholder;
  external set ariaPlaceholder(JSString? value);
  external JSString? get ariaPosInSet;
  external set ariaPosInSet(JSString? value);
  external JSString? get ariaPressed;
  external set ariaPressed(JSString? value);
  external JSString? get ariaReadOnly;
  external set ariaReadOnly(JSString? value);
  external JSString? get ariaRequired;
  external set ariaRequired(JSString? value);
  external JSString? get ariaRoleDescription;
  external set ariaRoleDescription(JSString? value);
  external JSString? get ariaRowCount;
  external set ariaRowCount(JSString? value);
  external JSString? get ariaRowIndex;
  external set ariaRowIndex(JSString? value);
  external JSString? get ariaRowIndexText;
  external set ariaRowIndexText(JSString? value);
  external JSString? get ariaRowSpan;
  external set ariaRowSpan(JSString? value);
  external JSString? get ariaSelected;
  external set ariaSelected(JSString? value);
  external JSString? get ariaSetSize;
  external set ariaSetSize(JSString? value);
  external JSString? get ariaSort;
  external set ariaSort(JSString? value);
  external JSString? get ariaValueMax;
  external set ariaValueMax(JSString? value);
  external JSString? get ariaValueMin;
  external set ariaValueMin(JSString? value);
  external JSString? get ariaValueNow;
  external set ariaValueNow(JSString? value);
  external JSString? get ariaValueText;
  external set ariaValueText(JSString? value);
}

@JS('WebAssemblyInstantiatedSource')
@staticInterop
class WebAssemblyInstantiatedSource {
  external factory WebAssemblyInstantiatedSource();
}

extension WebAssemblyInstantiatedSourceExtension
    on WebAssemblyInstantiatedSource {
  // TODO
  // TODO
}

@JS()
external _WebAssembly get WebAssembly;

@JS('WebAssembly')
@staticInterop
class _WebAssembly {
  external factory _WebAssembly();
}

extension _WebAssemblyExtension on _WebAssembly {
  external JSBoolean validate(BufferSource bytes);
  external JSPromise compile(BufferSource bytes);
  external JSPromise instantiate(BufferSource bytes);
  external JSPromise instantiate_1(BufferSource bytes, JSObject importObject);
  @JS('instantiate')
  external JSPromise instantiate1(Module moduleObject);
  @JS('instantiate')
  external JSPromise instantiate1_1(Module moduleObject, JSObject importObject);
  external JSPromise compileStreaming(JSPromise source);
  external JSPromise instantiateStreaming(JSPromise source);
  external JSPromise instantiateStreaming_1(
      JSPromise source, JSObject importObject);
}

@JS('ModuleExportDescriptor')
@staticInterop
class ModuleExportDescriptor {
  external factory ModuleExportDescriptor();
}

extension ModuleExportDescriptorExtension on ModuleExportDescriptor {
  // TODO
  // TODO
}

@JS('ModuleImportDescriptor')
@staticInterop
class ModuleImportDescriptor {
  external factory ModuleImportDescriptor();
}

extension ModuleImportDescriptorExtension on ModuleImportDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('Module')
@staticInterop
class Module {
  external factory Module();
  external factory Module.a1(BufferSource bytes);
  external static JSArray exports(Module moduleObject);
  external static JSArray imports(Module moduleObject);
  external static JSArray customSections(
      Module moduleObject, JSString sectionName);
}

@JS('Instance')
@staticInterop
class Instance {
  external factory Instance();
  external factory Instance.a1(Module module);
  external factory Instance.a1_1(Module module, JSObject importObject);
}

extension InstanceExtension on Instance {
  external JSObject get exports;
}

@JS('MemoryDescriptor')
@staticInterop
class MemoryDescriptor {
  external factory MemoryDescriptor();
}

extension MemoryDescriptorExtension on MemoryDescriptor {
  // TODO
  // TODO
}

@JS('Memory')
@staticInterop
class Memory {
  external factory Memory();
  external factory Memory.a1(MemoryDescriptor descriptor);
}

extension MemoryExtension on Memory {
  external JSNumber grow(JSNumber delta);
  external JSArrayBuffer get buffer;
}

@JS('TableDescriptor')
@staticInterop
class TableDescriptor {
  external factory TableDescriptor();
}

extension TableDescriptorExtension on TableDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('Table')
@staticInterop
class Table {
  external factory Table();
  external factory Table.a1(TableDescriptor descriptor);
  external factory Table.a1_1(TableDescriptor descriptor, JSAny value);
}

extension TableExtension on Table {
  external JSNumber grow(JSNumber delta);
  external JSNumber grow_1(JSNumber delta, JSAny value);
  external JSAny get(JSNumber index);
  external JSUndefined set(JSNumber index);
  external JSUndefined set_1(JSNumber index, JSAny value);
  external JSNumber get length;
}

@JS('GlobalDescriptor')
@staticInterop
class GlobalDescriptor {
  external factory GlobalDescriptor();
}

extension GlobalDescriptorExtension on GlobalDescriptor {
  // TODO
  // TODO
}

@JS('Global')
@staticInterop
class Global {
  external factory Global();
  external factory Global.a1(GlobalDescriptor descriptor);
  external factory Global.a1_1(GlobalDescriptor descriptor, JSAny v);
}

extension GlobalExtension on Global {
  external JSAny valueOf();
  external JSAny get value;
  external set value(JSAny value);
}

@JS('Animation')
@staticInterop
class Animation extends EventTarget {
  external factory Animation();
  external factory Animation.a1();
  external factory Animation.a1_1(AnimationEffect? effect);
  external factory Animation.a1_2(
      AnimationEffect? effect, AnimationTimeline? timeline);
}

extension AnimationExtension on Animation {
  external CSSNumberish? get startTime;
  external set startTime(CSSNumberish? value);
  external CSSNumberish? get currentTime;
  external set currentTime(CSSNumberish? value);
  external JSString get id;
  external set id(JSString value);
  external AnimationEffect? get effect;
  external set effect(AnimationEffect? value);
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? value);
  external JSNumber get playbackRate;
  external set playbackRate(JSNumber value);
  external AnimationPlayState get playState;
  external AnimationReplaceState get replaceState;
  external JSBoolean get pending;
  external JSPromise get ready;
  external JSPromise get finished;
  external EventHandler get onfinish;
  external set onfinish(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get onremove;
  external set onremove(EventHandler value);
  external JSUndefined cancel();
  external JSUndefined finish();
  external JSUndefined play();
  external JSUndefined pause();
  external JSUndefined updatePlaybackRate(JSNumber playbackRate);
  external JSUndefined reverse();
  external JSUndefined persist();
  external JSUndefined commitStyles();
}

@JS('AnimationEffect')
@staticInterop
class AnimationEffect {
  external factory AnimationEffect();
}

extension AnimationEffectExtension on AnimationEffect {
  external GroupEffect? get parent;
  external AnimationEffect? get previousSibling;
  external AnimationEffect? get nextSibling;
  external JSUndefined before(AnimationEffect effects);
  external JSUndefined after(AnimationEffect effects);
  external JSUndefined replace(AnimationEffect effects);
  external JSUndefined remove();
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external JSUndefined updateTiming();
  external JSUndefined updateTiming_1(OptionalEffectTiming timing);
}

@JS('EffectTiming')
@staticInterop
class EffectTiming {
  external factory EffectTiming();
}

extension EffectTimingExtension on EffectTiming {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('OptionalEffectTiming')
@staticInterop
class OptionalEffectTiming {
  external factory OptionalEffectTiming();
}

extension OptionalEffectTimingExtension on OptionalEffectTiming {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ComputedEffectTiming')
@staticInterop
class ComputedEffectTiming extends EffectTiming {
  external factory ComputedEffectTiming();
}

extension ComputedEffectTimingExtension on ComputedEffectTiming {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GroupEffect')
@staticInterop
class GroupEffect {
  external factory GroupEffect();
  external factory GroupEffect.a1(JSArray? children);
  external factory GroupEffect.a1_1(JSArray? children, JSAny timing);
}

extension GroupEffectExtension on GroupEffect {
  external AnimationNodeList get children;
  external AnimationEffect? get firstChild;
  external AnimationEffect? get lastChild;
  external GroupEffect clone();
  external JSUndefined prepend(AnimationEffect effects);
  external JSUndefined append(AnimationEffect effects);
}

@JS('AnimationNodeList')
@staticInterop
class AnimationNodeList {
  external factory AnimationNodeList();
}

extension AnimationNodeListExtension on AnimationNodeList {
  external JSNumber get length;
  external AnimationEffect? item(JSNumber index);
}

@JS('SequenceEffect')
@staticInterop
class SequenceEffect extends GroupEffect {
  external factory SequenceEffect();
  external factory SequenceEffect.a1(JSArray? children);
  external factory SequenceEffect.a1_1(JSArray? children, JSAny timing);
}

extension SequenceEffectExtension on SequenceEffect {
  external SequenceEffect clone();
}

@JS('KeyframeEffect')
@staticInterop
class KeyframeEffect extends AnimationEffect {
  external factory KeyframeEffect();
  external factory KeyframeEffect.a1(Element? target, JSObject? keyframes);
  external factory KeyframeEffect.a1_1(
      Element? target, JSObject? keyframes, JSAny options);
  external factory KeyframeEffect.a2(KeyframeEffect source);
}

extension KeyframeEffectExtension on KeyframeEffect {
  external IterationCompositeOperation get iterationComposite;
  external set iterationComposite(IterationCompositeOperation value);
  external Element? get target;
  external set target(Element? value);
  external JSString? get pseudoElement;
  external set pseudoElement(JSString? value);
  external CompositeOperation get composite;
  external set composite(CompositeOperation value);
  external JSArray getKeyframes();
  external JSUndefined setKeyframes(JSObject? keyframes);
}

@JS('KeyframeEffectOptions')
@staticInterop
class KeyframeEffectOptions extends EffectTiming {
  external factory KeyframeEffectOptions();
}

extension KeyframeEffectOptionsExtension on KeyframeEffectOptions {
  // TODO
  // TODO
  // TODO
}

@JS('AnimationPlaybackEvent')
@staticInterop
class AnimationPlaybackEvent extends Event {
  external factory AnimationPlaybackEvent();
  external factory AnimationPlaybackEvent.a1(JSString type);
  external factory AnimationPlaybackEvent.a1_1(
      JSString type, AnimationPlaybackEventInit eventInitDict);
}

extension AnimationPlaybackEventExtension on AnimationPlaybackEvent {
  external CSSNumberish? get currentTime;
  external CSSNumberish? get timelineTime;
}

@JS('AnimationPlaybackEventInit')
@staticInterop
class AnimationPlaybackEventInit extends EventInit {
  external factory AnimationPlaybackEventInit();
}

extension AnimationPlaybackEventInitExtension on AnimationPlaybackEventInit {
  // TODO
  // TODO
}

@JS('DocumentTimelineOptions')
@staticInterop
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions();
}

extension DocumentTimelineOptionsExtension on DocumentTimelineOptions {
  // TODO
}

@JS('DocumentTimeline')
@staticInterop
class DocumentTimeline extends AnimationTimeline {
  external factory DocumentTimeline();
  external factory DocumentTimeline.a1();
  external factory DocumentTimeline.a1_1(DocumentTimelineOptions options);
}

@JS('BaseComputedKeyframe')
@staticInterop
class BaseComputedKeyframe {
  external factory BaseComputedKeyframe();
}

extension BaseComputedKeyframeExtension on BaseComputedKeyframe {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BasePropertyIndexedKeyframe')
@staticInterop
class BasePropertyIndexedKeyframe {
  external factory BasePropertyIndexedKeyframe();
}

extension BasePropertyIndexedKeyframeExtension on BasePropertyIndexedKeyframe {
  // TODO
  // TODO
  // TODO
}

@JS('BaseKeyframe')
@staticInterop
class BaseKeyframe {
  external factory BaseKeyframe();
}

extension BaseKeyframeExtension on BaseKeyframe {
  // TODO
  // TODO
  // TODO
}

@JS('Animatable')
@staticInterop
class Animatable {
  external factory Animatable();
}

extension AnimatableExtension on Animatable {
  external Animation animate(JSObject? keyframes);
  external Animation animate_1(JSObject? keyframes, JSAny options);
  external JSArray getAnimations();
  external JSArray getAnimations_1(GetAnimationsOptions options);
}

@JS('KeyframeAnimationOptions')
@staticInterop
class KeyframeAnimationOptions extends KeyframeEffectOptions {
  external factory KeyframeAnimationOptions();
}

extension KeyframeAnimationOptionsExtension on KeyframeAnimationOptions {
  // TODO
  // TODO
}

@JS('GetAnimationsOptions')
@staticInterop
class GetAnimationsOptions {
  external factory GetAnimationsOptions();
}

extension GetAnimationsOptionsExtension on GetAnimationsOptions {
  // TODO
}

@JS('LaunchParams')
@staticInterop
class LaunchParams {
  external factory LaunchParams();
}

extension LaunchParamsExtension on LaunchParams {
  external JSString? get targetURL;
  external JSArray get files;
}

@JS('LaunchQueue')
@staticInterop
class LaunchQueue {
  external factory LaunchQueue();
}

extension LaunchQueueExtension on LaunchQueue {
  external JSUndefined setConsumer(LaunchConsumer consumer);
}

@JS('BluetoothDataFilterInit')
@staticInterop
class BluetoothDataFilterInit {
  external factory BluetoothDataFilterInit();
}

extension BluetoothDataFilterInitExtension on BluetoothDataFilterInit {
  // TODO
  // TODO
}

@JS('BluetoothManufacturerDataFilterInit')
@staticInterop
class BluetoothManufacturerDataFilterInit extends BluetoothDataFilterInit {
  external factory BluetoothManufacturerDataFilterInit();
}

extension BluetoothManufacturerDataFilterInitExtension
    on BluetoothManufacturerDataFilterInit {
  // TODO
}

@JS('BluetoothServiceDataFilterInit')
@staticInterop
class BluetoothServiceDataFilterInit extends BluetoothDataFilterInit {
  external factory BluetoothServiceDataFilterInit();
}

extension BluetoothServiceDataFilterInitExtension
    on BluetoothServiceDataFilterInit {
  // TODO
}

@JS('BluetoothLEScanFilterInit')
@staticInterop
class BluetoothLEScanFilterInit {
  external factory BluetoothLEScanFilterInit();
}

extension BluetoothLEScanFilterInitExtension on BluetoothLEScanFilterInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RequestDeviceOptions')
@staticInterop
class RequestDeviceOptions {
  external factory RequestDeviceOptions();
}

extension RequestDeviceOptionsExtension on RequestDeviceOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('Bluetooth')
@staticInterop
class Bluetooth extends EventTarget
    implements
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  external factory Bluetooth();
}

extension BluetoothExtension on Bluetooth {
  external JSPromise getAvailability();
  external EventHandler get onavailabilitychanged;
  external set onavailabilitychanged(EventHandler value);
  external BluetoothDevice? get referringDevice;
  external JSPromise getDevices();
  external JSPromise requestDevice();
  external JSPromise requestDevice_1(RequestDeviceOptions options);
}

@JS('BluetoothPermissionDescriptor')
@staticInterop
class BluetoothPermissionDescriptor extends PermissionDescriptor {
  external factory BluetoothPermissionDescriptor();
}

extension BluetoothPermissionDescriptorExtension
    on BluetoothPermissionDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AllowedBluetoothDevice')
@staticInterop
class AllowedBluetoothDevice {
  external factory AllowedBluetoothDevice();
}

extension AllowedBluetoothDeviceExtension on AllowedBluetoothDevice {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BluetoothPermissionStorage')
@staticInterop
class BluetoothPermissionStorage {
  external factory BluetoothPermissionStorage();
}

extension BluetoothPermissionStorageExtension on BluetoothPermissionStorage {
  // TODO
}

@JS('BluetoothPermissionResult')
@staticInterop
class BluetoothPermissionResult extends PermissionStatus {
  external factory BluetoothPermissionResult();
}

extension BluetoothPermissionResultExtension on BluetoothPermissionResult {
  external JSArray get devices;
  external set devices(JSArray value);
}

@JS('ValueEvent')
@staticInterop
class ValueEvent extends Event {
  external factory ValueEvent();
  external factory ValueEvent.a1(JSString type);
  external factory ValueEvent.a1_1(JSString type, ValueEventInit initDict);
}

extension ValueEventExtension on ValueEvent {
  external JSAny get value;
}

@JS('ValueEventInit')
@staticInterop
class ValueEventInit extends EventInit {
  external factory ValueEventInit();
}

extension ValueEventInitExtension on ValueEventInit {
  // TODO
}

@JS('BluetoothDevice')
@staticInterop
class BluetoothDevice extends EventTarget
    implements
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  external factory BluetoothDevice();
}

extension BluetoothDeviceExtension on BluetoothDevice {
  external JSString get id;
  external JSString? get name;
  external BluetoothRemoteGATTServer? get gatt;
  external JSPromise forget();
  external JSPromise watchAdvertisements();
  external JSPromise watchAdvertisements_1(WatchAdvertisementsOptions options);
  external JSBoolean get watchingAdvertisements;
}

@JS('WatchAdvertisementsOptions')
@staticInterop
class WatchAdvertisementsOptions {
  external factory WatchAdvertisementsOptions();
}

extension WatchAdvertisementsOptionsExtension on WatchAdvertisementsOptions {
  // TODO
}

@JS('BluetoothManufacturerDataMap')
@staticInterop
class BluetoothManufacturerDataMap {
  external factory BluetoothManufacturerDataMap();
}

extension BluetoothManufacturerDataMapExtension
    on BluetoothManufacturerDataMap {
  // TODO
}

@JS('BluetoothServiceDataMap')
@staticInterop
class BluetoothServiceDataMap {
  external factory BluetoothServiceDataMap();
}

extension BluetoothServiceDataMapExtension on BluetoothServiceDataMap {
  // TODO
}

@JS('BluetoothAdvertisingEvent')
@staticInterop
class BluetoothAdvertisingEvent extends Event {
  external factory BluetoothAdvertisingEvent();
  external factory BluetoothAdvertisingEvent.a1(
      JSString type, BluetoothAdvertisingEventInit init);
}

extension BluetoothAdvertisingEventExtension on BluetoothAdvertisingEvent {
  external BluetoothDevice get device;
  external JSArray get uuids;
  external JSString? get name;
  external JSNumber? get appearance;
  external JSNumber? get txPower;
  external JSNumber? get rssi;
  external BluetoothManufacturerDataMap get manufacturerData;
  external BluetoothServiceDataMap get serviceData;
}

@JS('BluetoothAdvertisingEventInit')
@staticInterop
class BluetoothAdvertisingEventInit extends EventInit {
  external factory BluetoothAdvertisingEventInit();
}

extension BluetoothAdvertisingEventInitExtension
    on BluetoothAdvertisingEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BluetoothRemoteGATTServer')
@staticInterop
class BluetoothRemoteGATTServer {
  external factory BluetoothRemoteGATTServer();
}

extension BluetoothRemoteGATTServerExtension on BluetoothRemoteGATTServer {
  external BluetoothDevice get device;
  external JSBoolean get connected;
  external JSPromise connect();
  external JSUndefined disconnect();
  external JSPromise getPrimaryService(BluetoothServiceUUID service);
  external JSPromise getPrimaryServices();
  external JSPromise getPrimaryServices_1(BluetoothServiceUUID service);
}

@JS('BluetoothRemoteGATTService')
@staticInterop
class BluetoothRemoteGATTService extends EventTarget
    implements CharacteristicEventHandlers, ServiceEventHandlers {
  external factory BluetoothRemoteGATTService();
}

extension BluetoothRemoteGATTServiceExtension on BluetoothRemoteGATTService {
  external BluetoothDevice get device;
  external UUID get uuid;
  external JSBoolean get isPrimary;
  external JSPromise getCharacteristic(
      BluetoothCharacteristicUUID characteristic);
  external JSPromise getCharacteristics();
  external JSPromise getCharacteristics_1(
      BluetoothCharacteristicUUID characteristic);
  external JSPromise getIncludedService(BluetoothServiceUUID service);
  external JSPromise getIncludedServices();
  external JSPromise getIncludedServices_1(BluetoothServiceUUID service);
}

@JS('BluetoothRemoteGATTCharacteristic')
@staticInterop
class BluetoothRemoteGATTCharacteristic extends EventTarget
    implements CharacteristicEventHandlers {
  external factory BluetoothRemoteGATTCharacteristic();
}

extension BluetoothRemoteGATTCharacteristicExtension
    on BluetoothRemoteGATTCharacteristic {
  external BluetoothRemoteGATTService get service;
  external UUID get uuid;
  external BluetoothCharacteristicProperties get properties;
  external JSDataView? get value;
  external JSPromise getDescriptor(BluetoothDescriptorUUID descriptor);
  external JSPromise getDescriptors();
  external JSPromise getDescriptors_1(BluetoothDescriptorUUID descriptor);
  external JSPromise readValue();
  external JSPromise writeValue(BufferSource value);
  external JSPromise writeValueWithResponse(BufferSource value);
  external JSPromise writeValueWithoutResponse(BufferSource value);
  external JSPromise startNotifications();
  external JSPromise stopNotifications();
}

@JS('BluetoothCharacteristicProperties')
@staticInterop
class BluetoothCharacteristicProperties {
  external factory BluetoothCharacteristicProperties();
}

extension BluetoothCharacteristicPropertiesExtension
    on BluetoothCharacteristicProperties {
  external JSBoolean get broadcast;
  external JSBoolean get read;
  external JSBoolean get writeWithoutResponse;
  external JSBoolean get write;
  external JSBoolean get notify;
  external JSBoolean get indicate;
  external JSBoolean get authenticatedSignedWrites;
  external JSBoolean get reliableWrite;
  external JSBoolean get writableAuxiliaries;
}

@JS('BluetoothRemoteGATTDescriptor')
@staticInterop
class BluetoothRemoteGATTDescriptor {
  external factory BluetoothRemoteGATTDescriptor();
}

extension BluetoothRemoteGATTDescriptorExtension
    on BluetoothRemoteGATTDescriptor {
  external BluetoothRemoteGATTCharacteristic get characteristic;
  external UUID get uuid;
  external JSDataView? get value;
  external JSPromise readValue();
  external JSPromise writeValue(BufferSource value);
}

@JS('CharacteristicEventHandlers')
@staticInterop
class CharacteristicEventHandlers {
  external factory CharacteristicEventHandlers();
}

extension CharacteristicEventHandlersExtension on CharacteristicEventHandlers {
  external EventHandler get oncharacteristicvaluechanged;
  external set oncharacteristicvaluechanged(EventHandler value);
}

@JS('BluetoothDeviceEventHandlers')
@staticInterop
class BluetoothDeviceEventHandlers {
  external factory BluetoothDeviceEventHandlers();
}

extension BluetoothDeviceEventHandlersExtension
    on BluetoothDeviceEventHandlers {
  external EventHandler get onadvertisementreceived;
  external set onadvertisementreceived(EventHandler value);
  external EventHandler get ongattserverdisconnected;
  external set ongattserverdisconnected(EventHandler value);
}

@JS('ServiceEventHandlers')
@staticInterop
class ServiceEventHandlers {
  external factory ServiceEventHandlers();
}

extension ServiceEventHandlersExtension on ServiceEventHandlers {
  external EventHandler get onserviceadded;
  external set onserviceadded(EventHandler value);
  external EventHandler get onservicechanged;
  external set onservicechanged(EventHandler value);
  external EventHandler get onserviceremoved;
  external set onserviceremoved(EventHandler value);
}

@JS('BluetoothUUID')
@staticInterop
class BluetoothUUID {
  external factory BluetoothUUID();
  external static UUID getService(JSAny name);
  external static UUID getCharacteristic(JSAny name);
  external static UUID getDescriptor(JSAny name);
  external static UUID canonicalUUID(JSNumber alias);
}

@JS('NavigatorLocks')
@staticInterop
class NavigatorLocks {
  external factory NavigatorLocks();
}

extension NavigatorLocksExtension on NavigatorLocks {
  external LockManager get locks;
}

@JS('LockManager')
@staticInterop
class LockManager {
  external factory LockManager();
}

extension LockManagerExtension on LockManager {
  external JSPromise request(JSString name, LockGrantedCallback callback);
  @JS('request')
  external JSPromise request1(
      JSString name, LockOptions options, LockGrantedCallback callback);
  external JSPromise query();
}

@JS('LockOptions')
@staticInterop
class LockOptions {
  external factory LockOptions();
}

extension LockOptionsExtension on LockOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('LockManagerSnapshot')
@staticInterop
class LockManagerSnapshot {
  external factory LockManagerSnapshot();
}

extension LockManagerSnapshotExtension on LockManagerSnapshot {
  // TODO
  // TODO
}

@JS('LockInfo')
@staticInterop
class LockInfo {
  external factory LockInfo();
}

extension LockInfoExtension on LockInfo {
  // TODO
  // TODO
  // TODO
}

@JS('Lock')
@staticInterop
class Lock {
  external factory Lock();
}

extension LockExtension on Lock {
  external JSString get name;
  external LockMode get mode;
}

@JS('NDEFMessage')
@staticInterop
class NDEFMessage {
  external factory NDEFMessage();
  external factory NDEFMessage.a1(NDEFMessageInit messageInit);
}

extension NDEFMessageExtension on NDEFMessage {
  external JSArray get records;
}

@JS('NDEFMessageInit')
@staticInterop
class NDEFMessageInit {
  external factory NDEFMessageInit();
}

extension NDEFMessageInitExtension on NDEFMessageInit {
  // TODO
}

@JS('NDEFRecord')
@staticInterop
class NDEFRecord {
  external factory NDEFRecord();
  external factory NDEFRecord.a1(NDEFRecordInit recordInit);
}

extension NDEFRecordExtension on NDEFRecord {
  external JSString get recordType;
  external JSString? get mediaType;
  external JSString? get id;
  external JSDataView? get data;
  external JSString? get encoding;
  external JSString? get lang;
  external JSArray? toRecords();
}

@JS('NDEFRecordInit')
@staticInterop
class NDEFRecordInit {
  external factory NDEFRecordInit();
}

extension NDEFRecordInitExtension on NDEFRecordInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('NDEFReader')
@staticInterop
class NDEFReader extends EventTarget {
  external factory NDEFReader();
}

extension NDEFReaderExtension on NDEFReader {
  external EventHandler get onreading;
  external set onreading(EventHandler value);
  external EventHandler get onreadingerror;
  external set onreadingerror(EventHandler value);
  external JSPromise scan();
  external JSPromise scan_1(NDEFScanOptions options);
  external JSPromise write(NDEFMessageSource message);
  external JSPromise write_1(
      NDEFMessageSource message, NDEFWriteOptions options);
  external JSPromise makeReadOnly();
  external JSPromise makeReadOnly_1(NDEFMakeReadOnlyOptions options);
}

@JS('NDEFReadingEvent')
@staticInterop
class NDEFReadingEvent extends Event {
  external factory NDEFReadingEvent();
  external factory NDEFReadingEvent.a1(
      JSString type, NDEFReadingEventInit readingEventInitDict);
}

extension NDEFReadingEventExtension on NDEFReadingEvent {
  external JSString get serialNumber;
  external NDEFMessage get message;
}

@JS('NDEFReadingEventInit')
@staticInterop
class NDEFReadingEventInit extends EventInit {
  external factory NDEFReadingEventInit();
}

extension NDEFReadingEventInitExtension on NDEFReadingEventInit {
  // TODO
  // TODO
}

@JS('NDEFWriteOptions')
@staticInterop
class NDEFWriteOptions {
  external factory NDEFWriteOptions();
}

extension NDEFWriteOptionsExtension on NDEFWriteOptions {
  // TODO
  // TODO
}

@JS('NDEFMakeReadOnlyOptions')
@staticInterop
class NDEFMakeReadOnlyOptions {
  external factory NDEFMakeReadOnlyOptions();
}

extension NDEFMakeReadOnlyOptionsExtension on NDEFMakeReadOnlyOptions {
  // TODO
}

@JS('NDEFScanOptions')
@staticInterop
class NDEFScanOptions {
  external factory NDEFScanOptions();
}

extension NDEFScanOptionsExtension on NDEFScanOptions {
  // TODO
}

@JS('OTPCredential')
@staticInterop
class OTPCredential extends Credential {
  external factory OTPCredential();
}

extension OTPCredentialExtension on OTPCredential {
  external JSString get code;
}

@JS('OTPCredentialRequestOptions')
@staticInterop
class OTPCredentialRequestOptions {
  external factory OTPCredentialRequestOptions();
}

extension OTPCredentialRequestOptionsExtension on OTPCredentialRequestOptions {
  // TODO
}

@JS('ShareData')
@staticInterop
class ShareData {
  external factory ShareData();
}

extension ShareDataExtension on ShareData {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('BaseAudioContext')
@staticInterop
class BaseAudioContext extends EventTarget {
  external factory BaseAudioContext();
}

extension BaseAudioContextExtension on BaseAudioContext {
  external AudioDestinationNode get destination;
  external JSNumber get sampleRate;
  external JSNumber get currentTime;
  external AudioListener get listener;
  external AudioContextState get state;
  external AudioWorklet get audioWorklet;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(
      JSNumber numberOfChannels, JSNumber length, JSNumber sampleRate);
  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger();
  external ChannelMergerNode createChannelMerger_1(JSNumber numberOfInputs);
  external ChannelSplitterNode createChannelSplitter();
  external ChannelSplitterNode createChannelSplitter_1(
      JSNumber numberOfOutputs);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay();
  external DelayNode createDelay_1(JSNumber maxDelayTime);
  external DynamicsCompressorNode createDynamicsCompressor();
  external GainNode createGain();
  external IIRFilterNode createIIRFilter(JSArray feedforward, JSArray feedback);
  external OscillatorNode createOscillator();
  external PannerNode createPanner();
  external PeriodicWave createPeriodicWave(JSArray real, JSArray imag);
  external PeriodicWave createPeriodicWave_1(
      JSArray real, JSArray imag, PeriodicWaveConstraints constraints);
  external ScriptProcessorNode createScriptProcessor();
  external ScriptProcessorNode createScriptProcessor_1(JSNumber bufferSize);
  external ScriptProcessorNode createScriptProcessor_2(
      JSNumber bufferSize, JSNumber numberOfInputChannels);
  external ScriptProcessorNode createScriptProcessor_3(JSNumber bufferSize,
      JSNumber numberOfInputChannels, JSNumber numberOfOutputChannels);
  external StereoPannerNode createStereoPanner();
  external WaveShaperNode createWaveShaper();
  external JSPromise decodeAudioData(JSArrayBuffer audioData);
  external JSPromise decodeAudioData_1(
      JSArrayBuffer audioData, DecodeSuccessCallback? successCallback);
  external JSPromise decodeAudioData_2(
      JSArrayBuffer audioData,
      DecodeSuccessCallback? successCallback,
      DecodeErrorCallback? errorCallback);
}

@JS('AudioContext')
@staticInterop
class AudioContext extends BaseAudioContext {
  external factory AudioContext();
  external factory AudioContext.a1();
  external factory AudioContext.a1_1(AudioContextOptions contextOptions);
}

extension AudioContextExtension on AudioContext {
  external JSNumber get baseLatency;
  external JSNumber get outputLatency;
  external JSAny get sinkId;
  external AudioRenderCapacity get renderCapacity;
  external EventHandler get onsinkchange;
  external set onsinkchange(EventHandler value);
  external AudioTimestamp getOutputTimestamp();
  external JSPromise resume();
  external JSPromise suspend();
  external JSPromise close();
  external JSPromise setSinkId(JSAny sinkId);
  external MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);
  external MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);
  external MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);
  external MediaStreamAudioDestinationNode createMediaStreamDestination();
}

@JS('AudioContextOptions')
@staticInterop
class AudioContextOptions {
  external factory AudioContextOptions();
}

extension AudioContextOptionsExtension on AudioContextOptions {
  // TODO
  // TODO
  // TODO
}

@JS('AudioSinkOptions')
@staticInterop
class AudioSinkOptions {
  external factory AudioSinkOptions();
}

extension AudioSinkOptionsExtension on AudioSinkOptions {
  // TODO
}

@JS('AudioSinkInfo')
@staticInterop
class AudioSinkInfo {
  external factory AudioSinkInfo();
}

extension AudioSinkInfoExtension on AudioSinkInfo {
  external AudioSinkType get type;
}

@JS('AudioTimestamp')
@staticInterop
class AudioTimestamp {
  external factory AudioTimestamp();
}

extension AudioTimestampExtension on AudioTimestamp {
  // TODO
  // TODO
}

@JS('AudioRenderCapacity')
@staticInterop
class AudioRenderCapacity extends EventTarget {
  external factory AudioRenderCapacity();
}

extension AudioRenderCapacityExtension on AudioRenderCapacity {
  external JSUndefined start();
  external JSUndefined start_1(AudioRenderCapacityOptions options);
  external JSUndefined stop();
  external EventHandler get onupdate;
  external set onupdate(EventHandler value);
}

@JS('AudioRenderCapacityOptions')
@staticInterop
class AudioRenderCapacityOptions {
  external factory AudioRenderCapacityOptions();
}

extension AudioRenderCapacityOptionsExtension on AudioRenderCapacityOptions {
  // TODO
}

@JS('AudioRenderCapacityEvent')
@staticInterop
class AudioRenderCapacityEvent extends Event {
  external factory AudioRenderCapacityEvent();
  external factory AudioRenderCapacityEvent.a1(JSString type);
  external factory AudioRenderCapacityEvent.a1_1(
      JSString type, AudioRenderCapacityEventInit eventInitDict);
}

extension AudioRenderCapacityEventExtension on AudioRenderCapacityEvent {
  external JSNumber get timestamp;
  external JSNumber get averageLoad;
  external JSNumber get peakLoad;
  external JSNumber get underrunRatio;
}

@JS('AudioRenderCapacityEventInit')
@staticInterop
class AudioRenderCapacityEventInit extends EventInit {
  external factory AudioRenderCapacityEventInit();
}

extension AudioRenderCapacityEventInitExtension
    on AudioRenderCapacityEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('OfflineAudioContext')
@staticInterop
class OfflineAudioContext extends BaseAudioContext {
  external factory OfflineAudioContext();
  external factory OfflineAudioContext.a1(
      OfflineAudioContextOptions contextOptions);
  external factory OfflineAudioContext.a2(
      JSNumber numberOfChannels, JSNumber length, JSNumber sampleRate);
}

extension OfflineAudioContextExtension on OfflineAudioContext {
  external JSPromise startRendering();
  external JSPromise resume();
  external JSPromise suspend(JSNumber suspendTime);
  external JSNumber get length;
  external EventHandler get oncomplete;
  external set oncomplete(EventHandler value);
}

@JS('OfflineAudioContextOptions')
@staticInterop
class OfflineAudioContextOptions {
  external factory OfflineAudioContextOptions();
}

extension OfflineAudioContextOptionsExtension on OfflineAudioContextOptions {
  // TODO
  // TODO
  // TODO
}

@JS('OfflineAudioCompletionEvent')
@staticInterop
class OfflineAudioCompletionEvent extends Event {
  external factory OfflineAudioCompletionEvent();
  external factory OfflineAudioCompletionEvent.a1(
      JSString type, OfflineAudioCompletionEventInit eventInitDict);
}

extension OfflineAudioCompletionEventExtension on OfflineAudioCompletionEvent {
  external AudioBuffer get renderedBuffer;
}

@JS('OfflineAudioCompletionEventInit')
@staticInterop
class OfflineAudioCompletionEventInit extends EventInit {
  external factory OfflineAudioCompletionEventInit();
}

extension OfflineAudioCompletionEventInitExtension
    on OfflineAudioCompletionEventInit {
  // TODO
}

@JS('AudioBuffer')
@staticInterop
class AudioBuffer {
  external factory AudioBuffer();
  external factory AudioBuffer.a1(AudioBufferOptions options);
}

extension AudioBufferExtension on AudioBuffer {
  external JSNumber get sampleRate;
  external JSNumber get length;
  external JSNumber get duration;
  external JSNumber get numberOfChannels;
  external JSFloat32Array getChannelData(JSNumber channel);
  external JSUndefined copyFromChannel(
      JSFloat32Array destination, JSNumber channelNumber);
  external JSUndefined copyFromChannel_1(JSFloat32Array destination,
      JSNumber channelNumber, JSNumber bufferOffset);
  external JSUndefined copyToChannel(
      JSFloat32Array source, JSNumber channelNumber);
  external JSUndefined copyToChannel_1(
      JSFloat32Array source, JSNumber channelNumber, JSNumber bufferOffset);
}

@JS('AudioBufferOptions')
@staticInterop
class AudioBufferOptions {
  external factory AudioBufferOptions();
}

extension AudioBufferOptionsExtension on AudioBufferOptions {
  // TODO
  // TODO
  // TODO
}

@JS('AudioNode')
@staticInterop
class AudioNode extends EventTarget {
  external factory AudioNode();
}

extension AudioNodeExtension on AudioNode {
  external AudioNode connect(AudioNode destinationNode);
  external AudioNode connect_1(AudioNode destinationNode, JSNumber output);
  external AudioNode connect_2(
      AudioNode destinationNode, JSNumber output, JSNumber input);
  @JS('connect')
  external JSUndefined connect1(AudioParam destinationParam);
  @JS('connect')
  external JSUndefined connect1_1(AudioParam destinationParam, JSNumber output);
  external JSUndefined disconnect();
  @JS('disconnect')
  external JSUndefined disconnect1(JSNumber output);
  @JS('disconnect')
  external JSUndefined disconnect2(AudioNode destinationNode);
  @JS('disconnect')
  external JSUndefined disconnect3(AudioNode destinationNode, JSNumber output);
  @JS('disconnect')
  external JSUndefined disconnect4(
      AudioNode destinationNode, JSNumber output, JSNumber input);
  @JS('disconnect')
  external JSUndefined disconnect5(AudioParam destinationParam);
  @JS('disconnect')
  external JSUndefined disconnect6(
      AudioParam destinationParam, JSNumber output);
  external BaseAudioContext get context;
  external JSNumber get numberOfInputs;
  external JSNumber get numberOfOutputs;
  external JSNumber get channelCount;
  external set channelCount(JSNumber value);
  external ChannelCountMode get channelCountMode;
  external set channelCountMode(ChannelCountMode value);
  external ChannelInterpretation get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation value);
}

@JS('AudioNodeOptions')
@staticInterop
class AudioNodeOptions {
  external factory AudioNodeOptions();
}

extension AudioNodeOptionsExtension on AudioNodeOptions {
  // TODO
  // TODO
  // TODO
}

@JS('AudioParam')
@staticInterop
class AudioParam {
  external factory AudioParam();
}

extension AudioParamExtension on AudioParam {
  external JSNumber get value;
  external set value(JSNumber value);
  external AutomationRate get automationRate;
  external set automationRate(AutomationRate value);
  external JSNumber get defaultValue;
  external JSNumber get minValue;
  external JSNumber get maxValue;
  external AudioParam setValueAtTime(JSNumber value, JSNumber startTime);
  external AudioParam linearRampToValueAtTime(JSNumber value, JSNumber endTime);
  external AudioParam exponentialRampToValueAtTime(
      JSNumber value, JSNumber endTime);
  external AudioParam setTargetAtTime(
      JSNumber target, JSNumber startTime, JSNumber timeConstant);
  external AudioParam setValueCurveAtTime(
      JSArray values, JSNumber startTime, JSNumber duration);
  external AudioParam cancelScheduledValues(JSNumber cancelTime);
  external AudioParam cancelAndHoldAtTime(JSNumber cancelTime);
}

@JS('AudioScheduledSourceNode')
@staticInterop
class AudioScheduledSourceNode extends AudioNode {
  external factory AudioScheduledSourceNode();
}

extension AudioScheduledSourceNodeExtension on AudioScheduledSourceNode {
  external EventHandler get onended;
  external set onended(EventHandler value);
  external JSUndefined start();
  external JSUndefined start_1(JSNumber when);
  external JSUndefined stop();
  external JSUndefined stop_1(JSNumber when);
}

@JS('AnalyserNode')
@staticInterop
class AnalyserNode extends AudioNode {
  external factory AnalyserNode();
  external factory AnalyserNode.a1(BaseAudioContext context);
  external factory AnalyserNode.a1_1(
      BaseAudioContext context, AnalyserOptions options);
}

extension AnalyserNodeExtension on AnalyserNode {
  external JSUndefined getFloatFrequencyData(JSFloat32Array array);
  external JSUndefined getByteFrequencyData(JSUint8Array array);
  external JSUndefined getFloatTimeDomainData(JSFloat32Array array);
  external JSUndefined getByteTimeDomainData(JSUint8Array array);
  external JSNumber get fftSize;
  external set fftSize(JSNumber value);
  external JSNumber get frequencyBinCount;
  external JSNumber get minDecibels;
  external set minDecibels(JSNumber value);
  external JSNumber get maxDecibels;
  external set maxDecibels(JSNumber value);
  external JSNumber get smoothingTimeConstant;
  external set smoothingTimeConstant(JSNumber value);
}

@JS('AnalyserOptions')
@staticInterop
class AnalyserOptions extends AudioNodeOptions {
  external factory AnalyserOptions();
}

extension AnalyserOptionsExtension on AnalyserOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioBufferSourceNode')
@staticInterop
class AudioBufferSourceNode extends AudioScheduledSourceNode {
  external factory AudioBufferSourceNode();
  external factory AudioBufferSourceNode.a1(BaseAudioContext context);
  external factory AudioBufferSourceNode.a1_1(
      BaseAudioContext context, AudioBufferSourceOptions options);
}

extension AudioBufferSourceNodeExtension on AudioBufferSourceNode {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external AudioParam get playbackRate;
  external AudioParam get detune;
  external JSBoolean get loop;
  external set loop(JSBoolean value);
  external JSNumber get loopStart;
  external set loopStart(JSNumber value);
  external JSNumber get loopEnd;
  external set loopEnd(JSNumber value);
  external JSUndefined start();
  external JSUndefined start_1(JSNumber when);
  external JSUndefined start_2(JSNumber when, JSNumber offset);
  external JSUndefined start_3(
      JSNumber when, JSNumber offset, JSNumber duration);
}

@JS('AudioBufferSourceOptions')
@staticInterop
class AudioBufferSourceOptions {
  external factory AudioBufferSourceOptions();
}

extension AudioBufferSourceOptionsExtension on AudioBufferSourceOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioDestinationNode')
@staticInterop
class AudioDestinationNode extends AudioNode {
  external factory AudioDestinationNode();
}

extension AudioDestinationNodeExtension on AudioDestinationNode {
  external JSNumber get maxChannelCount;
}

@JS('AudioListener')
@staticInterop
class AudioListener {
  external factory AudioListener();
}

extension AudioListenerExtension on AudioListener {
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get forwardX;
  external AudioParam get forwardY;
  external AudioParam get forwardZ;
  external AudioParam get upX;
  external AudioParam get upY;
  external AudioParam get upZ;
  external JSUndefined setPosition(JSNumber x, JSNumber y, JSNumber z);
  external JSUndefined setOrientation(JSNumber x, JSNumber y, JSNumber z,
      JSNumber xUp, JSNumber yUp, JSNumber zUp);
}

@JS('AudioProcessingEvent')
@staticInterop
class AudioProcessingEvent extends Event {
  external factory AudioProcessingEvent();
  external factory AudioProcessingEvent.a1(
      JSString type, AudioProcessingEventInit eventInitDict);
}

extension AudioProcessingEventExtension on AudioProcessingEvent {
  external JSNumber get playbackTime;
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
}

@JS('AudioProcessingEventInit')
@staticInterop
class AudioProcessingEventInit extends EventInit {
  external factory AudioProcessingEventInit();
}

extension AudioProcessingEventInitExtension on AudioProcessingEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('BiquadFilterNode')
@staticInterop
class BiquadFilterNode extends AudioNode {
  external factory BiquadFilterNode();
  external factory BiquadFilterNode.a1(BaseAudioContext context);
  external factory BiquadFilterNode.a1_1(
      BaseAudioContext context, BiquadFilterOptions options);
}

extension BiquadFilterNodeExtension on BiquadFilterNode {
  external BiquadFilterType get type;
  external set type(BiquadFilterType value);
  external AudioParam get frequency;
  external AudioParam get detune;
  external AudioParam get Q;
  external AudioParam get gain;
  external JSUndefined getFrequencyResponse(JSFloat32Array frequencyHz,
      JSFloat32Array magResponse, JSFloat32Array phaseResponse);
}

@JS('BiquadFilterOptions')
@staticInterop
class BiquadFilterOptions extends AudioNodeOptions {
  external factory BiquadFilterOptions();
}

extension BiquadFilterOptionsExtension on BiquadFilterOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ChannelMergerNode')
@staticInterop
class ChannelMergerNode extends AudioNode {
  external factory ChannelMergerNode();
  external factory ChannelMergerNode.a1(BaseAudioContext context);
  external factory ChannelMergerNode.a1_1(
      BaseAudioContext context, ChannelMergerOptions options);
}

@JS('ChannelMergerOptions')
@staticInterop
class ChannelMergerOptions extends AudioNodeOptions {
  external factory ChannelMergerOptions();
}

extension ChannelMergerOptionsExtension on ChannelMergerOptions {
  // TODO
}

@JS('ChannelSplitterNode')
@staticInterop
class ChannelSplitterNode extends AudioNode {
  external factory ChannelSplitterNode();
  external factory ChannelSplitterNode.a1(BaseAudioContext context);
  external factory ChannelSplitterNode.a1_1(
      BaseAudioContext context, ChannelSplitterOptions options);
}

@JS('ChannelSplitterOptions')
@staticInterop
class ChannelSplitterOptions extends AudioNodeOptions {
  external factory ChannelSplitterOptions();
}

extension ChannelSplitterOptionsExtension on ChannelSplitterOptions {
  // TODO
}

@JS('ConstantSourceNode')
@staticInterop
class ConstantSourceNode extends AudioScheduledSourceNode {
  external factory ConstantSourceNode();
  external factory ConstantSourceNode.a1(BaseAudioContext context);
  external factory ConstantSourceNode.a1_1(
      BaseAudioContext context, ConstantSourceOptions options);
}

extension ConstantSourceNodeExtension on ConstantSourceNode {
  external AudioParam get offset;
}

@JS('ConstantSourceOptions')
@staticInterop
class ConstantSourceOptions {
  external factory ConstantSourceOptions();
}

extension ConstantSourceOptionsExtension on ConstantSourceOptions {
  // TODO
}

@JS('ConvolverNode')
@staticInterop
class ConvolverNode extends AudioNode {
  external factory ConvolverNode();
  external factory ConvolverNode.a1(BaseAudioContext context);
  external factory ConvolverNode.a1_1(
      BaseAudioContext context, ConvolverOptions options);
}

extension ConvolverNodeExtension on ConvolverNode {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external JSBoolean get normalize;
  external set normalize(JSBoolean value);
}

@JS('ConvolverOptions')
@staticInterop
class ConvolverOptions extends AudioNodeOptions {
  external factory ConvolverOptions();
}

extension ConvolverOptionsExtension on ConvolverOptions {
  // TODO
  // TODO
}

@JS('DelayNode')
@staticInterop
class DelayNode extends AudioNode {
  external factory DelayNode();
  external factory DelayNode.a1(BaseAudioContext context);
  external factory DelayNode.a1_1(
      BaseAudioContext context, DelayOptions options);
}

extension DelayNodeExtension on DelayNode {
  external AudioParam get delayTime;
}

@JS('DelayOptions')
@staticInterop
class DelayOptions extends AudioNodeOptions {
  external factory DelayOptions();
}

extension DelayOptionsExtension on DelayOptions {
  // TODO
  // TODO
}

@JS('DynamicsCompressorNode')
@staticInterop
class DynamicsCompressorNode extends AudioNode {
  external factory DynamicsCompressorNode();
  external factory DynamicsCompressorNode.a1(BaseAudioContext context);
  external factory DynamicsCompressorNode.a1_1(
      BaseAudioContext context, DynamicsCompressorOptions options);
}

extension DynamicsCompressorNodeExtension on DynamicsCompressorNode {
  external AudioParam get threshold;
  external AudioParam get knee;
  external AudioParam get ratio;
  external JSNumber get reduction;
  external AudioParam get attack;
  external AudioParam get release;
}

@JS('DynamicsCompressorOptions')
@staticInterop
class DynamicsCompressorOptions extends AudioNodeOptions {
  external factory DynamicsCompressorOptions();
}

extension DynamicsCompressorOptionsExtension on DynamicsCompressorOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GainNode')
@staticInterop
class GainNode extends AudioNode {
  external factory GainNode();
  external factory GainNode.a1(BaseAudioContext context);
  external factory GainNode.a1_1(BaseAudioContext context, GainOptions options);
}

extension GainNodeExtension on GainNode {
  external AudioParam get gain;
}

@JS('GainOptions')
@staticInterop
class GainOptions extends AudioNodeOptions {
  external factory GainOptions();
}

extension GainOptionsExtension on GainOptions {
  // TODO
}

@JS('IIRFilterNode')
@staticInterop
class IIRFilterNode extends AudioNode {
  external factory IIRFilterNode();
  external factory IIRFilterNode.a1(
      BaseAudioContext context, IIRFilterOptions options);
}

extension IIRFilterNodeExtension on IIRFilterNode {
  external JSUndefined getFrequencyResponse(JSFloat32Array frequencyHz,
      JSFloat32Array magResponse, JSFloat32Array phaseResponse);
}

@JS('IIRFilterOptions')
@staticInterop
class IIRFilterOptions extends AudioNodeOptions {
  external factory IIRFilterOptions();
}

extension IIRFilterOptionsExtension on IIRFilterOptions {
  // TODO
  // TODO
}

@JS('MediaElementAudioSourceNode')
@staticInterop
class MediaElementAudioSourceNode extends AudioNode {
  external factory MediaElementAudioSourceNode();
  external factory MediaElementAudioSourceNode.a1(
      AudioContext context, MediaElementAudioSourceOptions options);
}

extension MediaElementAudioSourceNodeExtension on MediaElementAudioSourceNode {
  external HTMLMediaElement get mediaElement;
}

@JS('MediaElementAudioSourceOptions')
@staticInterop
class MediaElementAudioSourceOptions {
  external factory MediaElementAudioSourceOptions();
}

extension MediaElementAudioSourceOptionsExtension
    on MediaElementAudioSourceOptions {
  // TODO
}

@JS('MediaStreamAudioDestinationNode')
@staticInterop
class MediaStreamAudioDestinationNode extends AudioNode {
  external factory MediaStreamAudioDestinationNode();
  external factory MediaStreamAudioDestinationNode.a1(AudioContext context);
  external factory MediaStreamAudioDestinationNode.a1_1(
      AudioContext context, AudioNodeOptions options);
}

extension MediaStreamAudioDestinationNodeExtension
    on MediaStreamAudioDestinationNode {
  external MediaStream get stream;
}

@JS('MediaStreamAudioSourceNode')
@staticInterop
class MediaStreamAudioSourceNode extends AudioNode {
  external factory MediaStreamAudioSourceNode();
  external factory MediaStreamAudioSourceNode.a1(
      AudioContext context, MediaStreamAudioSourceOptions options);
}

extension MediaStreamAudioSourceNodeExtension on MediaStreamAudioSourceNode {
  external MediaStream get mediaStream;
}

@JS('MediaStreamAudioSourceOptions')
@staticInterop
class MediaStreamAudioSourceOptions {
  external factory MediaStreamAudioSourceOptions();
}

extension MediaStreamAudioSourceOptionsExtension
    on MediaStreamAudioSourceOptions {
  // TODO
}

@JS('MediaStreamTrackAudioSourceNode')
@staticInterop
class MediaStreamTrackAudioSourceNode extends AudioNode {
  external factory MediaStreamTrackAudioSourceNode();
  external factory MediaStreamTrackAudioSourceNode.a1(
      AudioContext context, MediaStreamTrackAudioSourceOptions options);
}

@JS('MediaStreamTrackAudioSourceOptions')
@staticInterop
class MediaStreamTrackAudioSourceOptions {
  external factory MediaStreamTrackAudioSourceOptions();
}

extension MediaStreamTrackAudioSourceOptionsExtension
    on MediaStreamTrackAudioSourceOptions {
  // TODO
}

@JS('OscillatorNode')
@staticInterop
class OscillatorNode extends AudioScheduledSourceNode {
  external factory OscillatorNode();
  external factory OscillatorNode.a1(BaseAudioContext context);
  external factory OscillatorNode.a1_1(
      BaseAudioContext context, OscillatorOptions options);
}

extension OscillatorNodeExtension on OscillatorNode {
  external OscillatorType get type;
  external set type(OscillatorType value);
  external AudioParam get frequency;
  external AudioParam get detune;
  external JSUndefined setPeriodicWave(PeriodicWave periodicWave);
}

@JS('OscillatorOptions')
@staticInterop
class OscillatorOptions extends AudioNodeOptions {
  external factory OscillatorOptions();
}

extension OscillatorOptionsExtension on OscillatorOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PannerNode')
@staticInterop
class PannerNode extends AudioNode {
  external factory PannerNode();
  external factory PannerNode.a1(BaseAudioContext context);
  external factory PannerNode.a1_1(
      BaseAudioContext context, PannerOptions options);
}

extension PannerNodeExtension on PannerNode {
  external PanningModelType get panningModel;
  external set panningModel(PanningModelType value);
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get orientationX;
  external AudioParam get orientationY;
  external AudioParam get orientationZ;
  external DistanceModelType get distanceModel;
  external set distanceModel(DistanceModelType value);
  external JSNumber get refDistance;
  external set refDistance(JSNumber value);
  external JSNumber get maxDistance;
  external set maxDistance(JSNumber value);
  external JSNumber get rolloffFactor;
  external set rolloffFactor(JSNumber value);
  external JSNumber get coneInnerAngle;
  external set coneInnerAngle(JSNumber value);
  external JSNumber get coneOuterAngle;
  external set coneOuterAngle(JSNumber value);
  external JSNumber get coneOuterGain;
  external set coneOuterGain(JSNumber value);
  external JSUndefined setPosition(JSNumber x, JSNumber y, JSNumber z);
  external JSUndefined setOrientation(JSNumber x, JSNumber y, JSNumber z);
}

@JS('PannerOptions')
@staticInterop
class PannerOptions extends AudioNodeOptions {
  external factory PannerOptions();
}

extension PannerOptionsExtension on PannerOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PeriodicWave')
@staticInterop
class PeriodicWave {
  external factory PeriodicWave();
  external factory PeriodicWave.a1(BaseAudioContext context);
  external factory PeriodicWave.a1_1(
      BaseAudioContext context, PeriodicWaveOptions options);
}

@JS('PeriodicWaveConstraints')
@staticInterop
class PeriodicWaveConstraints {
  external factory PeriodicWaveConstraints();
}

extension PeriodicWaveConstraintsExtension on PeriodicWaveConstraints {
  // TODO
}

@JS('PeriodicWaveOptions')
@staticInterop
class PeriodicWaveOptions extends PeriodicWaveConstraints {
  external factory PeriodicWaveOptions();
}

extension PeriodicWaveOptionsExtension on PeriodicWaveOptions {
  // TODO
  // TODO
}

@JS('ScriptProcessorNode')
@staticInterop
class ScriptProcessorNode extends AudioNode {
  external factory ScriptProcessorNode();
}

extension ScriptProcessorNodeExtension on ScriptProcessorNode {
  external EventHandler get onaudioprocess;
  external set onaudioprocess(EventHandler value);
  external JSNumber get bufferSize;
}

@JS('StereoPannerNode')
@staticInterop
class StereoPannerNode extends AudioNode {
  external factory StereoPannerNode();
  external factory StereoPannerNode.a1(BaseAudioContext context);
  external factory StereoPannerNode.a1_1(
      BaseAudioContext context, StereoPannerOptions options);
}

extension StereoPannerNodeExtension on StereoPannerNode {
  external AudioParam get pan;
}

@JS('StereoPannerOptions')
@staticInterop
class StereoPannerOptions extends AudioNodeOptions {
  external factory StereoPannerOptions();
}

extension StereoPannerOptionsExtension on StereoPannerOptions {
  // TODO
}

@JS('WaveShaperNode')
@staticInterop
class WaveShaperNode extends AudioNode {
  external factory WaveShaperNode();
  external factory WaveShaperNode.a1(BaseAudioContext context);
  external factory WaveShaperNode.a1_1(
      BaseAudioContext context, WaveShaperOptions options);
}

extension WaveShaperNodeExtension on WaveShaperNode {
  external JSFloat32Array? get curve;
  external set curve(JSFloat32Array? value);
  external OverSampleType get oversample;
  external set oversample(OverSampleType value);
}

@JS('WaveShaperOptions')
@staticInterop
class WaveShaperOptions extends AudioNodeOptions {
  external factory WaveShaperOptions();
}

extension WaveShaperOptionsExtension on WaveShaperOptions {
  // TODO
  // TODO
}

@JS('AudioWorklet')
@staticInterop
class AudioWorklet extends Worklet {
  external factory AudioWorklet();
}

extension AudioWorkletExtension on AudioWorklet {
  external MessagePort get port;
}

@JS('AudioWorkletGlobalScope')
@staticInterop
class AudioWorkletGlobalScope extends WorkletGlobalScope {
  external factory AudioWorkletGlobalScope();
}

extension AudioWorkletGlobalScopeExtension on AudioWorkletGlobalScope {
  external JSUndefined registerProcessor(
      JSString name, AudioWorkletProcessorConstructor processorCtor);
  external JSNumber get currentFrame;
  external JSNumber get currentTime;
  external JSNumber get sampleRate;
  external MessagePort get port;
}

@JS('AudioParamMap')
@staticInterop
class AudioParamMap {
  external factory AudioParamMap();
}

extension AudioParamMapExtension on AudioParamMap {
  // TODO
}

@JS('AudioWorkletNode')
@staticInterop
class AudioWorkletNode extends AudioNode {
  external factory AudioWorkletNode();
  external factory AudioWorkletNode.a1(BaseAudioContext context, JSString name);
  external factory AudioWorkletNode.a1_1(
      BaseAudioContext context, JSString name, AudioWorkletNodeOptions options);
}

extension AudioWorkletNodeExtension on AudioWorkletNode {
  external AudioParamMap get parameters;
  external MessagePort get port;
  external EventHandler get onprocessorerror;
  external set onprocessorerror(EventHandler value);
}

@JS('AudioWorkletNodeOptions')
@staticInterop
class AudioWorkletNodeOptions extends AudioNodeOptions {
  external factory AudioWorkletNodeOptions();
}

extension AudioWorkletNodeOptionsExtension on AudioWorkletNodeOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioWorkletProcessor')
@staticInterop
class AudioWorkletProcessor {
  external factory AudioWorkletProcessor();
}

extension AudioWorkletProcessorExtension on AudioWorkletProcessor {
  external MessagePort get port;
}

@JS('AudioParamDescriptor')
@staticInterop
class AudioParamDescriptor {
  external factory AudioParamDescriptor();
}

extension AudioParamDescriptorExtension on AudioParamDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredential')
@staticInterop
class PublicKeyCredential extends Credential {
  external factory PublicKeyCredential();
  external static JSPromise isConditionalMediationAvailable();
  external static JSPromise isUserVerifyingPlatformAuthenticatorAvailable();
  external static PublicKeyCredentialCreationOptions
      parseCreationOptionsFromJSON(
          PublicKeyCredentialCreationOptionsJSON options);
  external static PublicKeyCredentialRequestOptions parseRequestOptionsFromJSON(
      PublicKeyCredentialRequestOptionsJSON options);
}

extension PublicKeyCredentialExtension on PublicKeyCredential {
  external JSArrayBuffer get rawId;
  external AuthenticatorResponse get response;
  external JSString? get authenticatorAttachment;
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();
  external PublicKeyCredentialJSON toJSON();
}

@JS('RegistrationResponseJSON')
@staticInterop
class RegistrationResponseJSON {
  external factory RegistrationResponseJSON();
}

extension RegistrationResponseJSONExtension on RegistrationResponseJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticatorAttestationResponseJSON')
@staticInterop
class AuthenticatorAttestationResponseJSON {
  external factory AuthenticatorAttestationResponseJSON();
}

extension AuthenticatorAttestationResponseJSONExtension
    on AuthenticatorAttestationResponseJSON {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationResponseJSON')
@staticInterop
class AuthenticationResponseJSON {
  external factory AuthenticationResponseJSON();
}

extension AuthenticationResponseJSONExtension on AuthenticationResponseJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticatorAssertionResponseJSON')
@staticInterop
class AuthenticatorAssertionResponseJSON {
  external factory AuthenticatorAssertionResponseJSON();
}

extension AuthenticatorAssertionResponseJSONExtension
    on AuthenticatorAssertionResponseJSON {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientOutputsJSON')
@staticInterop
class AuthenticationExtensionsClientOutputsJSON {
  external factory AuthenticationExtensionsClientOutputsJSON();
}

@JS('PublicKeyCredentialCreationOptionsJSON')
@staticInterop
class PublicKeyCredentialCreationOptionsJSON {
  external factory PublicKeyCredentialCreationOptionsJSON();
}

extension PublicKeyCredentialCreationOptionsJSONExtension
    on PublicKeyCredentialCreationOptionsJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialUserEntityJSON')
@staticInterop
class PublicKeyCredentialUserEntityJSON {
  external factory PublicKeyCredentialUserEntityJSON();
}

extension PublicKeyCredentialUserEntityJSONExtension
    on PublicKeyCredentialUserEntityJSON {
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialDescriptorJSON')
@staticInterop
class PublicKeyCredentialDescriptorJSON {
  external factory PublicKeyCredentialDescriptorJSON();
}

extension PublicKeyCredentialDescriptorJSONExtension
    on PublicKeyCredentialDescriptorJSON {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsClientInputsJSON')
@staticInterop
class AuthenticationExtensionsClientInputsJSON {
  external factory AuthenticationExtensionsClientInputsJSON();
}

@JS('PublicKeyCredentialRequestOptionsJSON')
@staticInterop
class PublicKeyCredentialRequestOptionsJSON {
  external factory PublicKeyCredentialRequestOptionsJSON();
}

extension PublicKeyCredentialRequestOptionsJSONExtension
    on PublicKeyCredentialRequestOptionsJSON {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticatorResponse')
@staticInterop
class AuthenticatorResponse {
  external factory AuthenticatorResponse();
}

extension AuthenticatorResponseExtension on AuthenticatorResponse {
  external JSArrayBuffer get clientDataJSON;
}

@JS('AuthenticatorAttestationResponse')
@staticInterop
class AuthenticatorAttestationResponse extends AuthenticatorResponse {
  external factory AuthenticatorAttestationResponse();
}

extension AuthenticatorAttestationResponseExtension
    on AuthenticatorAttestationResponse {
  external JSArrayBuffer get attestationObject;
  external JSArray getTransports();
  external JSArrayBuffer getAuthenticatorData();
  external JSArrayBuffer? getPublicKey();
  external COSEAlgorithmIdentifier getPublicKeyAlgorithm();
}

@JS('AuthenticatorAssertionResponse')
@staticInterop
class AuthenticatorAssertionResponse extends AuthenticatorResponse {
  external factory AuthenticatorAssertionResponse();
}

extension AuthenticatorAssertionResponseExtension
    on AuthenticatorAssertionResponse {
  external JSArrayBuffer get authenticatorData;
  external JSArrayBuffer get signature;
  external JSArrayBuffer? get userHandle;
  external JSArrayBuffer? get attestationObject;
}

@JS('PublicKeyCredentialParameters')
@staticInterop
class PublicKeyCredentialParameters {
  external factory PublicKeyCredentialParameters();
}

extension PublicKeyCredentialParametersExtension
    on PublicKeyCredentialParameters {
  // TODO
  // TODO
}

@JS('PublicKeyCredentialCreationOptions')
@staticInterop
class PublicKeyCredentialCreationOptions {
  external factory PublicKeyCredentialCreationOptions();
}

extension PublicKeyCredentialCreationOptionsExtension
    on PublicKeyCredentialCreationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialEntity')
@staticInterop
class PublicKeyCredentialEntity {
  external factory PublicKeyCredentialEntity();
}

extension PublicKeyCredentialEntityExtension on PublicKeyCredentialEntity {
  // TODO
}

@JS('PublicKeyCredentialRpEntity')
@staticInterop
class PublicKeyCredentialRpEntity extends PublicKeyCredentialEntity {
  external factory PublicKeyCredentialRpEntity();
}

extension PublicKeyCredentialRpEntityExtension on PublicKeyCredentialRpEntity {
  // TODO
}

@JS('PublicKeyCredentialUserEntity')
@staticInterop
class PublicKeyCredentialUserEntity extends PublicKeyCredentialEntity {
  external factory PublicKeyCredentialUserEntity();
}

extension PublicKeyCredentialUserEntityExtension
    on PublicKeyCredentialUserEntity {
  // TODO
  // TODO
}

@JS('AuthenticatorSelectionCriteria')
@staticInterop
class AuthenticatorSelectionCriteria {
  external factory AuthenticatorSelectionCriteria();
}

extension AuthenticatorSelectionCriteriaExtension
    on AuthenticatorSelectionCriteria {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PublicKeyCredentialRequestOptions')
@staticInterop
class PublicKeyCredentialRequestOptions {
  external factory PublicKeyCredentialRequestOptions();
}

extension PublicKeyCredentialRequestOptionsExtension
    on PublicKeyCredentialRequestOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CollectedClientData')
@staticInterop
class CollectedClientData {
  external factory CollectedClientData();
}

extension CollectedClientDataExtension on CollectedClientData {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TokenBinding')
@staticInterop
class TokenBinding {
  external factory TokenBinding();
}

extension TokenBindingExtension on TokenBinding {
  // TODO
  // TODO
}

@JS('PublicKeyCredentialDescriptor')
@staticInterop
class PublicKeyCredentialDescriptor {
  external factory PublicKeyCredentialDescriptor();
}

extension PublicKeyCredentialDescriptorExtension
    on PublicKeyCredentialDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('CredentialPropertiesOutput')
@staticInterop
class CredentialPropertiesOutput {
  external factory CredentialPropertiesOutput();
}

extension CredentialPropertiesOutputExtension on CredentialPropertiesOutput {
  // TODO
}

@JS('AuthenticationExtensionsPRFValues')
@staticInterop
class AuthenticationExtensionsPRFValues {
  external factory AuthenticationExtensionsPRFValues();
}

extension AuthenticationExtensionsPRFValuesExtension
    on AuthenticationExtensionsPRFValues {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsPRFInputs')
@staticInterop
class AuthenticationExtensionsPRFInputs {
  external factory AuthenticationExtensionsPRFInputs();
}

extension AuthenticationExtensionsPRFInputsExtension
    on AuthenticationExtensionsPRFInputs {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsPRFOutputs')
@staticInterop
class AuthenticationExtensionsPRFOutputs {
  external factory AuthenticationExtensionsPRFOutputs();
}

extension AuthenticationExtensionsPRFOutputsExtension
    on AuthenticationExtensionsPRFOutputs {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsLargeBlobInputs')
@staticInterop
class AuthenticationExtensionsLargeBlobInputs {
  external factory AuthenticationExtensionsLargeBlobInputs();
}

extension AuthenticationExtensionsLargeBlobInputsExtension
    on AuthenticationExtensionsLargeBlobInputs {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsLargeBlobOutputs')
@staticInterop
class AuthenticationExtensionsLargeBlobOutputs {
  external factory AuthenticationExtensionsLargeBlobOutputs();
}

extension AuthenticationExtensionsLargeBlobOutputsExtension
    on AuthenticationExtensionsLargeBlobOutputs {
  // TODO
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsDevicePublicKeyInputs')
@staticInterop
class AuthenticationExtensionsDevicePublicKeyInputs {
  external factory AuthenticationExtensionsDevicePublicKeyInputs();
}

extension AuthenticationExtensionsDevicePublicKeyInputsExtension
    on AuthenticationExtensionsDevicePublicKeyInputs {
  // TODO
  // TODO
}

@JS('AuthenticationExtensionsDevicePublicKeyOutputs')
@staticInterop
class AuthenticationExtensionsDevicePublicKeyOutputs {
  external factory AuthenticationExtensionsDevicePublicKeyOutputs();
}

extension AuthenticationExtensionsDevicePublicKeyOutputsExtension
    on AuthenticationExtensionsDevicePublicKeyOutputs {
  // TODO
  // TODO
}

@JS('AudioEncoderConfig')
@staticInterop
class AudioEncoderConfig {
  external factory AudioEncoderConfig();
}

extension AudioEncoderConfigExtension on AudioEncoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AacEncoderConfig')
@staticInterop
class AacEncoderConfig {
  external factory AacEncoderConfig();
}

extension AacEncoderConfigExtension on AacEncoderConfig {
  // TODO
}

@JS('VideoEncoderConfig')
@staticInterop
class VideoEncoderConfig {
  external factory VideoEncoderConfig();
}

extension VideoEncoderConfigExtension on VideoEncoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AvcEncoderConfig')
@staticInterop
class AvcEncoderConfig {
  external factory AvcEncoderConfig();
}

extension AvcEncoderConfigExtension on AvcEncoderConfig {
  // TODO
}

@JS('FlacEncoderConfig')
@staticInterop
class FlacEncoderConfig {
  external factory FlacEncoderConfig();
}

extension FlacEncoderConfigExtension on FlacEncoderConfig {
  // TODO
  // TODO
}

@JS('HevcEncoderConfig')
@staticInterop
class HevcEncoderConfig {
  external factory HevcEncoderConfig();
}

extension HevcEncoderConfigExtension on HevcEncoderConfig {
  // TODO
}

@JS('OpusEncoderConfig')
@staticInterop
class OpusEncoderConfig {
  external factory OpusEncoderConfig();
}

extension OpusEncoderConfigExtension on OpusEncoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioDecoder')
@staticInterop
class AudioDecoder {
  external factory AudioDecoder();
  external factory AudioDecoder.a1(AudioDecoderInit init);
  external static JSPromise isConfigSupported(AudioDecoderConfig config);
}

extension AudioDecoderExtension on AudioDecoder {
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(AudioDecoderConfig config);
  external JSUndefined decode(EncodedAudioChunk chunk);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('AudioDecoderInit')
@staticInterop
class AudioDecoderInit {
  external factory AudioDecoderInit();
}

extension AudioDecoderInitExtension on AudioDecoderInit {
  // TODO
  // TODO
}

@JS('VideoDecoder')
@staticInterop
class VideoDecoder {
  external factory VideoDecoder();
  external factory VideoDecoder.a1(VideoDecoderInit init);
  external static JSPromise isConfigSupported(VideoDecoderConfig config);
}

extension VideoDecoderExtension on VideoDecoder {
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(VideoDecoderConfig config);
  external JSUndefined decode(EncodedVideoChunk chunk);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('VideoDecoderInit')
@staticInterop
class VideoDecoderInit {
  external factory VideoDecoderInit();
}

extension VideoDecoderInitExtension on VideoDecoderInit {
  // TODO
  // TODO
}

@JS('AudioEncoder')
@staticInterop
class AudioEncoder {
  external factory AudioEncoder();
  external factory AudioEncoder.a1(AudioEncoderInit init);
  external static JSPromise isConfigSupported(AudioEncoderConfig config);
}

extension AudioEncoderExtension on AudioEncoder {
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(AudioEncoderConfig config);
  external JSUndefined encode(AudioData data);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('AudioEncoderInit')
@staticInterop
class AudioEncoderInit {
  external factory AudioEncoderInit();
}

extension AudioEncoderInitExtension on AudioEncoderInit {
  // TODO
  // TODO
}

@JS('EncodedAudioChunkMetadata')
@staticInterop
class EncodedAudioChunkMetadata {
  external factory EncodedAudioChunkMetadata();
}

extension EncodedAudioChunkMetadataExtension on EncodedAudioChunkMetadata {
  // TODO
}

@JS('VideoEncoder')
@staticInterop
class VideoEncoder {
  external factory VideoEncoder();
  external factory VideoEncoder.a1(VideoEncoderInit init);
  external static JSPromise isConfigSupported(VideoEncoderConfig config);
}

extension VideoEncoderExtension on VideoEncoder {
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(VideoEncoderConfig config);
  external JSUndefined encode(VideoFrame frame);
  external JSUndefined encode_1(
      VideoFrame frame, VideoEncoderEncodeOptions options);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('VideoEncoderInit')
@staticInterop
class VideoEncoderInit {
  external factory VideoEncoderInit();
}

extension VideoEncoderInitExtension on VideoEncoderInit {
  // TODO
  // TODO
}

@JS('EncodedVideoChunkMetadata')
@staticInterop
class EncodedVideoChunkMetadata {
  external factory EncodedVideoChunkMetadata();
}

extension EncodedVideoChunkMetadataExtension on EncodedVideoChunkMetadata {
  // TODO
  // TODO
  // TODO
}

@JS('SvcOutputMetadata')
@staticInterop
class SvcOutputMetadata {
  external factory SvcOutputMetadata();
}

extension SvcOutputMetadataExtension on SvcOutputMetadata {
  // TODO
}

@JS('AudioDecoderSupport')
@staticInterop
class AudioDecoderSupport {
  external factory AudioDecoderSupport();
}

extension AudioDecoderSupportExtension on AudioDecoderSupport {
  // TODO
  // TODO
}

@JS('VideoDecoderSupport')
@staticInterop
class VideoDecoderSupport {
  external factory VideoDecoderSupport();
}

extension VideoDecoderSupportExtension on VideoDecoderSupport {
  // TODO
  // TODO
}

@JS('AudioEncoderSupport')
@staticInterop
class AudioEncoderSupport {
  external factory AudioEncoderSupport();
}

extension AudioEncoderSupportExtension on AudioEncoderSupport {
  // TODO
  // TODO
}

@JS('VideoEncoderSupport')
@staticInterop
class VideoEncoderSupport {
  external factory VideoEncoderSupport();
}

extension VideoEncoderSupportExtension on VideoEncoderSupport {
  // TODO
  // TODO
}

@JS('AudioDecoderConfig')
@staticInterop
class AudioDecoderConfig {
  external factory AudioDecoderConfig();
}

extension AudioDecoderConfigExtension on AudioDecoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoDecoderConfig')
@staticInterop
class VideoDecoderConfig {
  external factory VideoDecoderConfig();
}

extension VideoDecoderConfigExtension on VideoDecoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoEncoderEncodeOptions')
@staticInterop
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions();
}

extension VideoEncoderEncodeOptionsExtension on VideoEncoderEncodeOptions {
  // TODO
}

@JS('EncodedAudioChunk')
@staticInterop
class EncodedAudioChunk {
  external factory EncodedAudioChunk();
  external factory EncodedAudioChunk.a1(EncodedAudioChunkInit init);
}

extension EncodedAudioChunkExtension on EncodedAudioChunk {
  external EncodedAudioChunkType get type;
  external JSNumber get timestamp;
  external JSNumber? get duration;
  external JSNumber get byteLength;
  external JSUndefined copyTo(BufferSource destination);
}

@JS('EncodedAudioChunkInit')
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit();
}

extension EncodedAudioChunkInitExtension on EncodedAudioChunkInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('EncodedVideoChunk')
@staticInterop
class EncodedVideoChunk {
  external factory EncodedVideoChunk();
  external factory EncodedVideoChunk.a1(EncodedVideoChunkInit init);
}

extension EncodedVideoChunkExtension on EncodedVideoChunk {
  external EncodedVideoChunkType get type;
  external JSNumber get timestamp;
  external JSNumber? get duration;
  external JSNumber get byteLength;
  external JSUndefined copyTo(BufferSource destination);
}

@JS('EncodedVideoChunkInit')
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit();
}

extension EncodedVideoChunkInitExtension on EncodedVideoChunkInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioData')
@staticInterop
class AudioData {
  external factory AudioData();
  external factory AudioData.a1(AudioDataInit init);
}

extension AudioDataExtension on AudioData {
  external AudioSampleFormat? get format;
  external JSNumber get sampleRate;
  external JSNumber get numberOfFrames;
  external JSNumber get numberOfChannels;
  external JSNumber get duration;
  external JSNumber get timestamp;
  external JSNumber allocationSize(AudioDataCopyToOptions options);
  external JSUndefined copyTo(
      BufferSource destination, AudioDataCopyToOptions options);
  external AudioData clone();
  external JSUndefined close();
}

@JS('AudioDataInit')
@staticInterop
class AudioDataInit {
  external factory AudioDataInit();
}

extension AudioDataInitExtension on AudioDataInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioDataCopyToOptions')
@staticInterop
class AudioDataCopyToOptions {
  external factory AudioDataCopyToOptions();
}

extension AudioDataCopyToOptionsExtension on AudioDataCopyToOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoFrame')
@staticInterop
class VideoFrame {
  external factory VideoFrame();
  external factory VideoFrame.a1(CanvasImageSource image);
  external factory VideoFrame.a1_1(
      CanvasImageSource image, VideoFrameInit init);
  external factory VideoFrame.a2(BufferSource data, VideoFrameBufferInit init);
}

extension VideoFrameExtension on VideoFrame {
  external VideoPixelFormat? get format;
  external JSNumber get codedWidth;
  external JSNumber get codedHeight;
  external DOMRectReadOnly? get codedRect;
  external DOMRectReadOnly? get visibleRect;
  external JSNumber get displayWidth;
  external JSNumber get displayHeight;
  external JSNumber? get duration;
  external JSNumber get timestamp;
  external VideoColorSpace get colorSpace;
  external VideoFrameMetadata metadata();
  external JSNumber allocationSize();
  external JSNumber allocationSize_1(VideoFrameCopyToOptions options);
  external JSPromise copyTo(BufferSource destination);
  external JSPromise copyTo_1(
      BufferSource destination, VideoFrameCopyToOptions options);
  external VideoFrame clone();
  external JSUndefined close();
}

@JS('VideoFrameInit')
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit();
}

extension VideoFrameInitExtension on VideoFrameInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoFrameBufferInit')
@staticInterop
class VideoFrameBufferInit {
  external factory VideoFrameBufferInit();
}

extension VideoFrameBufferInitExtension on VideoFrameBufferInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoFrameMetadata')
@staticInterop
class VideoFrameMetadata {
  external factory VideoFrameMetadata();
}

@JS('VideoFrameCopyToOptions')
@staticInterop
class VideoFrameCopyToOptions {
  external factory VideoFrameCopyToOptions();
}

extension VideoFrameCopyToOptionsExtension on VideoFrameCopyToOptions {
  // TODO
  // TODO
}

@JS('PlaneLayout')
@staticInterop
class PlaneLayout {
  external factory PlaneLayout();
}

extension PlaneLayoutExtension on PlaneLayout {
  // TODO
  // TODO
}

@JS('VideoColorSpace')
@staticInterop
class VideoColorSpace {
  external factory VideoColorSpace();
  external factory VideoColorSpace.a1();
  external factory VideoColorSpace.a1_1(VideoColorSpaceInit init);
}

extension VideoColorSpaceExtension on VideoColorSpace {
  external VideoColorPrimaries? get primaries;
  external VideoTransferCharacteristics? get transfer;
  external VideoMatrixCoefficients? get matrix;
  external JSBoolean? get fullRange;
  external VideoColorSpaceInit toJSON();
}

@JS('VideoColorSpaceInit')
@staticInterop
class VideoColorSpaceInit {
  external factory VideoColorSpaceInit();
}

extension VideoColorSpaceInitExtension on VideoColorSpaceInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ImageDecoder')
@staticInterop
class ImageDecoder {
  external factory ImageDecoder();
  external factory ImageDecoder.a1(ImageDecoderInit init);
  external static JSPromise isTypeSupported(JSString type);
}

extension ImageDecoderExtension on ImageDecoder {
  external JSString get type;
  external JSBoolean get complete;
  external JSPromise get completed;
  external ImageTrackList get tracks;
  external JSPromise decode();
  external JSPromise decode_1(ImageDecodeOptions options);
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('ImageDecoderInit')
@staticInterop
class ImageDecoderInit {
  external factory ImageDecoderInit();
}

extension ImageDecoderInitExtension on ImageDecoderInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ImageDecodeOptions')
@staticInterop
class ImageDecodeOptions {
  external factory ImageDecodeOptions();
}

extension ImageDecodeOptionsExtension on ImageDecodeOptions {
  // TODO
  // TODO
}

@JS('ImageDecodeResult')
@staticInterop
class ImageDecodeResult {
  external factory ImageDecodeResult();
}

extension ImageDecodeResultExtension on ImageDecodeResult {
  // TODO
  // TODO
}

@JS('ImageTrackList')
@staticInterop
class ImageTrackList {
  external factory ImageTrackList();
}

extension ImageTrackListExtension on ImageTrackList {
  external JSPromise get ready;
  external JSNumber get length;
  external JSNumber get selectedIndex;
  external ImageTrack? get selectedTrack;
}

@JS('ImageTrack')
@staticInterop
class ImageTrack {
  external factory ImageTrack();
}

extension ImageTrackExtension on ImageTrack {
  external JSBoolean get animated;
  external JSNumber get frameCount;
  external JSNumber get repetitionCount;
  external JSBoolean get selected;
  external set selected(JSBoolean value);
}

@JS('Ed448Params')
@staticInterop
class Ed448Params extends Algorithm {
  external factory Ed448Params();
}

extension Ed448ParamsExtension on Ed448Params {
  // TODO
}

@JS('NavigatorAutomationInformation')
@staticInterop
class NavigatorAutomationInformation {
  external factory NavigatorAutomationInformation();
}

extension NavigatorAutomationInformationExtension
    on NavigatorAutomationInformation {
  external JSBoolean get webdriver;
}

@JS('WebGLContextAttributes')
@staticInterop
class WebGLContextAttributes {
  external factory WebGLContextAttributes();
}

extension WebGLContextAttributesExtension on WebGLContextAttributes {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebGLObject')
@staticInterop
class WebGLObject {
  external factory WebGLObject();
}

@JS('WebGLBuffer')
@staticInterop
class WebGLBuffer extends WebGLObject {
  external factory WebGLBuffer();
}

@JS('WebGLFramebuffer')
@staticInterop
class WebGLFramebuffer extends WebGLObject {
  external factory WebGLFramebuffer();
}

@JS('WebGLProgram')
@staticInterop
class WebGLProgram extends WebGLObject {
  external factory WebGLProgram();
}

@JS('WebGLRenderbuffer')
@staticInterop
class WebGLRenderbuffer extends WebGLObject {
  external factory WebGLRenderbuffer();
}

@JS('WebGLShader')
@staticInterop
class WebGLShader extends WebGLObject {
  external factory WebGLShader();
}

@JS('WebGLTexture')
@staticInterop
class WebGLTexture extends WebGLObject {
  external factory WebGLTexture();
}

@JS('WebGLUniformLocation')
@staticInterop
class WebGLUniformLocation {
  external factory WebGLUniformLocation();
}

@JS('WebGLActiveInfo')
@staticInterop
class WebGLActiveInfo {
  external factory WebGLActiveInfo();
}

extension WebGLActiveInfoExtension on WebGLActiveInfo {
  external GLint get size;
  external GLenum get type;
  external JSString get name;
}

@JS('WebGLShaderPrecisionFormat')
@staticInterop
class WebGLShaderPrecisionFormat {
  external factory WebGLShaderPrecisionFormat();
}

extension WebGLShaderPrecisionFormatExtension on WebGLShaderPrecisionFormat {
  external GLint get rangeMin;
  external GLint get rangeMax;
  external GLint get precision;
}

@JS('WebGLRenderingContextBase')
@staticInterop
class WebGLRenderingContextBase {
  external factory WebGLRenderingContextBase();
  external static GLenum get DEPTH_BUFFER_BIT;
  external static GLenum get STENCIL_BUFFER_BIT;
  external static GLenum get COLOR_BUFFER_BIT;
  external static GLenum get POINTS;
  external static GLenum get LINES;
  external static GLenum get LINE_LOOP;
  external static GLenum get LINE_STRIP;
  external static GLenum get TRIANGLES;
  external static GLenum get TRIANGLE_STRIP;
  external static GLenum get TRIANGLE_FAN;
  external static GLenum get ZERO;
  external static GLenum get ONE;
  external static GLenum get SRC_COLOR;
  external static GLenum get ONE_MINUS_SRC_COLOR;
  external static GLenum get SRC_ALPHA;
  external static GLenum get ONE_MINUS_SRC_ALPHA;
  external static GLenum get DST_ALPHA;
  external static GLenum get ONE_MINUS_DST_ALPHA;
  external static GLenum get DST_COLOR;
  external static GLenum get ONE_MINUS_DST_COLOR;
  external static GLenum get SRC_ALPHA_SATURATE;
  external static GLenum get FUNC_ADD;
  external static GLenum get BLEND_EQUATION;
  external static GLenum get BLEND_EQUATION_RGB;
  external static GLenum get BLEND_EQUATION_ALPHA;
  external static GLenum get FUNC_SUBTRACT;
  external static GLenum get FUNC_REVERSE_SUBTRACT;
  external static GLenum get BLEND_DST_RGB;
  external static GLenum get BLEND_SRC_RGB;
  external static GLenum get BLEND_DST_ALPHA;
  external static GLenum get BLEND_SRC_ALPHA;
  external static GLenum get CONSTANT_COLOR;
  external static GLenum get ONE_MINUS_CONSTANT_COLOR;
  external static GLenum get CONSTANT_ALPHA;
  external static GLenum get ONE_MINUS_CONSTANT_ALPHA;
  external static GLenum get BLEND_COLOR;
  external static GLenum get ARRAY_BUFFER;
  external static GLenum get ELEMENT_ARRAY_BUFFER;
  external static GLenum get ARRAY_BUFFER_BINDING;
  external static GLenum get ELEMENT_ARRAY_BUFFER_BINDING;
  external static GLenum get STREAM_DRAW;
  external static GLenum get STATIC_DRAW;
  external static GLenum get DYNAMIC_DRAW;
  external static GLenum get BUFFER_SIZE;
  external static GLenum get BUFFER_USAGE;
  external static GLenum get CURRENT_VERTEX_ATTRIB;
  external static GLenum get FRONT;
  external static GLenum get BACK;
  external static GLenum get FRONT_AND_BACK;
  external static GLenum get CULL_FACE;
  external static GLenum get BLEND;
  external static GLenum get DITHER;
  external static GLenum get STENCIL_TEST;
  external static GLenum get DEPTH_TEST;
  external static GLenum get SCISSOR_TEST;
  external static GLenum get POLYGON_OFFSET_FILL;
  external static GLenum get SAMPLE_ALPHA_TO_COVERAGE;
  external static GLenum get SAMPLE_COVERAGE;
  external static GLenum get NO_ERROR;
  external static GLenum get INVALID_ENUM;
  external static GLenum get INVALID_VALUE;
  external static GLenum get INVALID_OPERATION;
  external static GLenum get OUT_OF_MEMORY;
  external static GLenum get CW;
  external static GLenum get CCW;
  external static GLenum get LINE_WIDTH;
  external static GLenum get ALIASED_POINT_SIZE_RANGE;
  external static GLenum get ALIASED_LINE_WIDTH_RANGE;
  external static GLenum get CULL_FACE_MODE;
  external static GLenum get FRONT_FACE;
  external static GLenum get DEPTH_RANGE;
  external static GLenum get DEPTH_WRITEMASK;
  external static GLenum get DEPTH_CLEAR_VALUE;
  external static GLenum get DEPTH_FUNC;
  external static GLenum get STENCIL_CLEAR_VALUE;
  external static GLenum get STENCIL_FUNC;
  external static GLenum get STENCIL_FAIL;
  external static GLenum get STENCIL_PASS_DEPTH_FAIL;
  external static GLenum get STENCIL_PASS_DEPTH_PASS;
  external static GLenum get STENCIL_REF;
  external static GLenum get STENCIL_VALUE_MASK;
  external static GLenum get STENCIL_WRITEMASK;
  external static GLenum get STENCIL_BACK_FUNC;
  external static GLenum get STENCIL_BACK_FAIL;
  external static GLenum get STENCIL_BACK_PASS_DEPTH_FAIL;
  external static GLenum get STENCIL_BACK_PASS_DEPTH_PASS;
  external static GLenum get STENCIL_BACK_REF;
  external static GLenum get STENCIL_BACK_VALUE_MASK;
  external static GLenum get STENCIL_BACK_WRITEMASK;
  external static GLenum get VIEWPORT;
  external static GLenum get SCISSOR_BOX;
  external static GLenum get COLOR_CLEAR_VALUE;
  external static GLenum get COLOR_WRITEMASK;
  external static GLenum get UNPACK_ALIGNMENT;
  external static GLenum get PACK_ALIGNMENT;
  external static GLenum get MAX_TEXTURE_SIZE;
  external static GLenum get MAX_VIEWPORT_DIMS;
  external static GLenum get SUBPIXEL_BITS;
  external static GLenum get RED_BITS;
  external static GLenum get GREEN_BITS;
  external static GLenum get BLUE_BITS;
  external static GLenum get ALPHA_BITS;
  external static GLenum get DEPTH_BITS;
  external static GLenum get STENCIL_BITS;
  external static GLenum get POLYGON_OFFSET_UNITS;
  external static GLenum get POLYGON_OFFSET_FACTOR;
  external static GLenum get TEXTURE_BINDING_2D;
  external static GLenum get SAMPLE_BUFFERS;
  external static GLenum get SAMPLES;
  external static GLenum get SAMPLE_COVERAGE_VALUE;
  external static GLenum get SAMPLE_COVERAGE_INVERT;
  external static GLenum get COMPRESSED_TEXTURE_FORMATS;
  external static GLenum get DONT_CARE;
  external static GLenum get FASTEST;
  external static GLenum get NICEST;
  external static GLenum get GENERATE_MIPMAP_HINT;
  external static GLenum get BYTE;
  external static GLenum get UNSIGNED_BYTE;
  external static GLenum get SHORT;
  external static GLenum get UNSIGNED_SHORT;
  external static GLenum get INT;
  external static GLenum get UNSIGNED_INT;
  external static GLenum get FLOAT;
  external static GLenum get DEPTH_COMPONENT;
  external static GLenum get ALPHA;
  external static GLenum get RGB;
  external static GLenum get RGBA;
  external static GLenum get LUMINANCE;
  external static GLenum get LUMINANCE_ALPHA;
  external static GLenum get UNSIGNED_SHORT_4_4_4_4;
  external static GLenum get UNSIGNED_SHORT_5_5_5_1;
  external static GLenum get UNSIGNED_SHORT_5_6_5;
  external static GLenum get FRAGMENT_SHADER;
  external static GLenum get VERTEX_SHADER;
  external static GLenum get MAX_VERTEX_ATTRIBS;
  external static GLenum get MAX_VERTEX_UNIFORM_VECTORS;
  external static GLenum get MAX_VARYING_VECTORS;
  external static GLenum get MAX_COMBINED_TEXTURE_IMAGE_UNITS;
  external static GLenum get MAX_VERTEX_TEXTURE_IMAGE_UNITS;
  external static GLenum get MAX_TEXTURE_IMAGE_UNITS;
  external static GLenum get MAX_FRAGMENT_UNIFORM_VECTORS;
  external static GLenum get SHADER_TYPE;
  external static GLenum get DELETE_STATUS;
  external static GLenum get LINK_STATUS;
  external static GLenum get VALIDATE_STATUS;
  external static GLenum get ATTACHED_SHADERS;
  external static GLenum get ACTIVE_UNIFORMS;
  external static GLenum get ACTIVE_ATTRIBUTES;
  external static GLenum get SHADING_LANGUAGE_VERSION;
  external static GLenum get CURRENT_PROGRAM;
  external static GLenum get NEVER;
  external static GLenum get LESS;
  external static GLenum get EQUAL;
  external static GLenum get LEQUAL;
  external static GLenum get GREATER;
  external static GLenum get NOTEQUAL;
  external static GLenum get GEQUAL;
  external static GLenum get ALWAYS;
  external static GLenum get KEEP;
  external static GLenum get REPLACE;
  external static GLenum get INCR;
  external static GLenum get DECR;
  external static GLenum get INVERT;
  external static GLenum get INCR_WRAP;
  external static GLenum get DECR_WRAP;
  external static GLenum get VENDOR;
  external static GLenum get RENDERER;
  external static GLenum get VERSION;
  external static GLenum get NEAREST;
  external static GLenum get LINEAR;
  external static GLenum get NEAREST_MIPMAP_NEAREST;
  external static GLenum get LINEAR_MIPMAP_NEAREST;
  external static GLenum get NEAREST_MIPMAP_LINEAR;
  external static GLenum get LINEAR_MIPMAP_LINEAR;
  external static GLenum get TEXTURE_MAG_FILTER;
  external static GLenum get TEXTURE_MIN_FILTER;
  external static GLenum get TEXTURE_WRAP_S;
  external static GLenum get TEXTURE_WRAP_T;
  external static GLenum get TEXTURE_2D;
  external static GLenum get TEXTURE;
  external static GLenum get TEXTURE_CUBE_MAP;
  external static GLenum get TEXTURE_BINDING_CUBE_MAP;
  external static GLenum get TEXTURE_CUBE_MAP_POSITIVE_X;
  external static GLenum get TEXTURE_CUBE_MAP_NEGATIVE_X;
  external static GLenum get TEXTURE_CUBE_MAP_POSITIVE_Y;
  external static GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Y;
  external static GLenum get TEXTURE_CUBE_MAP_POSITIVE_Z;
  external static GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Z;
  external static GLenum get MAX_CUBE_MAP_TEXTURE_SIZE;
  external static GLenum get TEXTURE0;
  external static GLenum get TEXTURE1;
  external static GLenum get TEXTURE2;
  external static GLenum get TEXTURE3;
  external static GLenum get TEXTURE4;
  external static GLenum get TEXTURE5;
  external static GLenum get TEXTURE6;
  external static GLenum get TEXTURE7;
  external static GLenum get TEXTURE8;
  external static GLenum get TEXTURE9;
  external static GLenum get TEXTURE10;
  external static GLenum get TEXTURE11;
  external static GLenum get TEXTURE12;
  external static GLenum get TEXTURE13;
  external static GLenum get TEXTURE14;
  external static GLenum get TEXTURE15;
  external static GLenum get TEXTURE16;
  external static GLenum get TEXTURE17;
  external static GLenum get TEXTURE18;
  external static GLenum get TEXTURE19;
  external static GLenum get TEXTURE20;
  external static GLenum get TEXTURE21;
  external static GLenum get TEXTURE22;
  external static GLenum get TEXTURE23;
  external static GLenum get TEXTURE24;
  external static GLenum get TEXTURE25;
  external static GLenum get TEXTURE26;
  external static GLenum get TEXTURE27;
  external static GLenum get TEXTURE28;
  external static GLenum get TEXTURE29;
  external static GLenum get TEXTURE30;
  external static GLenum get TEXTURE31;
  external static GLenum get ACTIVE_TEXTURE;
  external static GLenum get REPEAT;
  external static GLenum get CLAMP_TO_EDGE;
  external static GLenum get MIRRORED_REPEAT;
  external static GLenum get FLOAT_VEC2;
  external static GLenum get FLOAT_VEC3;
  external static GLenum get FLOAT_VEC4;
  external static GLenum get INT_VEC2;
  external static GLenum get INT_VEC3;
  external static GLenum get INT_VEC4;
  external static GLenum get BOOL;
  external static GLenum get BOOL_VEC2;
  external static GLenum get BOOL_VEC3;
  external static GLenum get BOOL_VEC4;
  external static GLenum get FLOAT_MAT2;
  external static GLenum get FLOAT_MAT3;
  external static GLenum get FLOAT_MAT4;
  external static GLenum get SAMPLER_2D;
  external static GLenum get SAMPLER_CUBE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_ENABLED;
  external static GLenum get VERTEX_ATTRIB_ARRAY_SIZE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_STRIDE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_TYPE;
  external static GLenum get VERTEX_ATTRIB_ARRAY_NORMALIZED;
  external static GLenum get VERTEX_ATTRIB_ARRAY_POINTER;
  external static GLenum get VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
  external static GLenum get IMPLEMENTATION_COLOR_READ_TYPE;
  external static GLenum get IMPLEMENTATION_COLOR_READ_FORMAT;
  external static GLenum get COMPILE_STATUS;
  external static GLenum get LOW_FLOAT;
  external static GLenum get MEDIUM_FLOAT;
  external static GLenum get HIGH_FLOAT;
  external static GLenum get LOW_INT;
  external static GLenum get MEDIUM_INT;
  external static GLenum get HIGH_INT;
  external static GLenum get FRAMEBUFFER;
  external static GLenum get RENDERBUFFER;
  external static GLenum get RGBA4;
  external static GLenum get RGB5_A1;
  external static GLenum get RGB565;
  external static GLenum get DEPTH_COMPONENT16;
  external static GLenum get STENCIL_INDEX8;
  external static GLenum get DEPTH_STENCIL;
  external static GLenum get RENDERBUFFER_WIDTH;
  external static GLenum get RENDERBUFFER_HEIGHT;
  external static GLenum get RENDERBUFFER_INTERNAL_FORMAT;
  external static GLenum get RENDERBUFFER_RED_SIZE;
  external static GLenum get RENDERBUFFER_GREEN_SIZE;
  external static GLenum get RENDERBUFFER_BLUE_SIZE;
  external static GLenum get RENDERBUFFER_ALPHA_SIZE;
  external static GLenum get RENDERBUFFER_DEPTH_SIZE;
  external static GLenum get RENDERBUFFER_STENCIL_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
  external static GLenum get COLOR_ATTACHMENT0;
  external static GLenum get DEPTH_ATTACHMENT;
  external static GLenum get STENCIL_ATTACHMENT;
  external static GLenum get DEPTH_STENCIL_ATTACHMENT;
  external static GLenum get NONE;
  external static GLenum get FRAMEBUFFER_COMPLETE;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
  external static GLenum get FRAMEBUFFER_UNSUPPORTED;
  external static GLenum get FRAMEBUFFER_BINDING;
  external static GLenum get RENDERBUFFER_BINDING;
  external static GLenum get MAX_RENDERBUFFER_SIZE;
  external static GLenum get INVALID_FRAMEBUFFER_OPERATION;
  external static GLenum get UNPACK_FLIP_Y_WEBGL;
  external static GLenum get UNPACK_PREMULTIPLY_ALPHA_WEBGL;
  external static GLenum get CONTEXT_LOST_WEBGL;
  external static GLenum get UNPACK_COLORSPACE_CONVERSION_WEBGL;
  external static GLenum get BROWSER_DEFAULT_WEBGL;
}

extension WebGLRenderingContextBaseExtension on WebGLRenderingContextBase {
  external JSAny get canvas;
  external GLsizei get drawingBufferWidth;
  external GLsizei get drawingBufferHeight;
  external PredefinedColorSpace get drawingBufferColorSpace;
  external set drawingBufferColorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get unpackColorSpace;
  external set unpackColorSpace(PredefinedColorSpace value);
  external WebGLContextAttributes? getContextAttributes();
  external JSBoolean isContextLost();
  external JSArray? getSupportedExtensions();
  external JSObject? getExtension(JSString name);
  external JSUndefined activeTexture(GLenum texture);
  external JSUndefined attachShader(WebGLProgram program, WebGLShader shader);
  external JSUndefined bindAttribLocation(
      WebGLProgram program, GLuint index, JSString name);
  external JSUndefined bindBuffer(GLenum target, WebGLBuffer? buffer);
  external JSUndefined bindFramebuffer(
      GLenum target, WebGLFramebuffer? framebuffer);
  external JSUndefined bindRenderbuffer(
      GLenum target, WebGLRenderbuffer? renderbuffer);
  external JSUndefined bindTexture(GLenum target, WebGLTexture? texture);
  external JSUndefined blendColor(
      GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
  external JSUndefined blendEquation(GLenum mode);
  external JSUndefined blendEquationSeparate(GLenum modeRGB, GLenum modeAlpha);
  external JSUndefined blendFunc(GLenum sfactor, GLenum dfactor);
  external JSUndefined blendFuncSeparate(
      GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
  external GLenum checkFramebufferStatus(GLenum target);
  external JSUndefined clear(GLbitfield mask);
  external JSUndefined clearColor(
      GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
  external JSUndefined clearDepth(GLclampf depth);
  external JSUndefined clearStencil(GLint s);
  external JSUndefined colorMask(
      GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
  external JSUndefined compileShader(WebGLShader shader);
  external JSUndefined copyTexImage2D(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLint x,
      GLint y,
      GLsizei width,
      GLsizei height,
      GLint border);
  external JSUndefined copyTexSubImage2D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint x,
      GLint y,
      GLsizei width,
      GLsizei height);
  external WebGLBuffer? createBuffer();
  external WebGLFramebuffer? createFramebuffer();
  external WebGLProgram? createProgram();
  external WebGLRenderbuffer? createRenderbuffer();
  external WebGLShader? createShader(GLenum type);
  external WebGLTexture? createTexture();
  external JSUndefined cullFace(GLenum mode);
  external JSUndefined deleteBuffer(WebGLBuffer? buffer);
  external JSUndefined deleteFramebuffer(WebGLFramebuffer? framebuffer);
  external JSUndefined deleteProgram(WebGLProgram? program);
  external JSUndefined deleteRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external JSUndefined deleteShader(WebGLShader? shader);
  external JSUndefined deleteTexture(WebGLTexture? texture);
  external JSUndefined depthFunc(GLenum func);
  external JSUndefined depthMask(GLboolean flag);
  external JSUndefined depthRange(GLclampf zNear, GLclampf zFar);
  external JSUndefined detachShader(WebGLProgram program, WebGLShader shader);
  external JSUndefined disable(GLenum cap);
  external JSUndefined disableVertexAttribArray(GLuint index);
  external JSUndefined drawArrays(GLenum mode, GLint first, GLsizei count);
  external JSUndefined drawElements(
      GLenum mode, GLsizei count, GLenum type, GLintptr offset);
  external JSUndefined enable(GLenum cap);
  external JSUndefined enableVertexAttribArray(GLuint index);
  external JSUndefined finish();
  external JSUndefined flush();
  external JSUndefined framebufferRenderbuffer(GLenum target, GLenum attachment,
      GLenum renderbuffertarget, WebGLRenderbuffer? renderbuffer);
  external JSUndefined framebufferTexture2D(GLenum target, GLenum attachment,
      GLenum textarget, WebGLTexture? texture, GLint level);
  external JSUndefined frontFace(GLenum mode);
  external JSUndefined generateMipmap(GLenum target);
  external WebGLActiveInfo? getActiveAttrib(WebGLProgram program, GLuint index);
  external WebGLActiveInfo? getActiveUniform(
      WebGLProgram program, GLuint index);
  external JSArray? getAttachedShaders(WebGLProgram program);
  external GLint getAttribLocation(WebGLProgram program, JSString name);
  external JSAny getBufferParameter(GLenum target, GLenum pname);
  external JSAny getParameter(GLenum pname);
  external GLenum getError();
  external JSAny getFramebufferAttachmentParameter(
      GLenum target, GLenum attachment, GLenum pname);
  external JSAny getProgramParameter(WebGLProgram program, GLenum pname);
  external JSString? getProgramInfoLog(WebGLProgram program);
  external JSAny getRenderbufferParameter(GLenum target, GLenum pname);
  external JSAny getShaderParameter(WebGLShader shader, GLenum pname);
  external WebGLShaderPrecisionFormat? getShaderPrecisionFormat(
      GLenum shadertype, GLenum precisiontype);
  external JSString? getShaderInfoLog(WebGLShader shader);
  external JSString? getShaderSource(WebGLShader shader);
  external JSAny getTexParameter(GLenum target, GLenum pname);
  external JSAny getUniform(
      WebGLProgram program, WebGLUniformLocation location);
  external WebGLUniformLocation? getUniformLocation(
      WebGLProgram program, JSString name);
  external JSAny getVertexAttrib(GLuint index, GLenum pname);
  external GLintptr getVertexAttribOffset(GLuint index, GLenum pname);
  external JSUndefined hint(GLenum target, GLenum mode);
  external GLboolean isBuffer(WebGLBuffer? buffer);
  external GLboolean isEnabled(GLenum cap);
  external GLboolean isFramebuffer(WebGLFramebuffer? framebuffer);
  external GLboolean isProgram(WebGLProgram? program);
  external GLboolean isRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external GLboolean isShader(WebGLShader? shader);
  external GLboolean isTexture(WebGLTexture? texture);
  external JSUndefined lineWidth(GLfloat width);
  external JSUndefined linkProgram(WebGLProgram program);
  external JSUndefined pixelStorei(GLenum pname, GLint param);
  external JSUndefined polygonOffset(GLfloat factor, GLfloat units);
  external JSUndefined renderbufferStorage(
      GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
  external JSUndefined sampleCoverage(GLclampf value, GLboolean invert);
  external JSUndefined scissor(GLint x, GLint y, GLsizei width, GLsizei height);
  external JSUndefined shaderSource(WebGLShader shader, JSString source);
  external JSUndefined stencilFunc(GLenum func, GLint ref, GLuint mask);
  external JSUndefined stencilFuncSeparate(
      GLenum face, GLenum func, GLint ref, GLuint mask);
  external JSUndefined stencilMask(GLuint mask);
  external JSUndefined stencilMaskSeparate(GLenum face, GLuint mask);
  external JSUndefined stencilOp(GLenum fail, GLenum zfail, GLenum zpass);
  external JSUndefined stencilOpSeparate(
      GLenum face, GLenum fail, GLenum zfail, GLenum zpass);
  external JSUndefined texParameterf(
      GLenum target, GLenum pname, GLfloat param);
  external JSUndefined texParameteri(GLenum target, GLenum pname, GLint param);
  external JSUndefined uniform1f(WebGLUniformLocation? location, GLfloat x);
  external JSUndefined uniform2f(
      WebGLUniformLocation? location, GLfloat x, GLfloat y);
  external JSUndefined uniform3f(
      WebGLUniformLocation? location, GLfloat x, GLfloat y, GLfloat z);
  external JSUndefined uniform4f(WebGLUniformLocation? location, GLfloat x,
      GLfloat y, GLfloat z, GLfloat w);
  external JSUndefined uniform1i(WebGLUniformLocation? location, GLint x);
  external JSUndefined uniform2i(
      WebGLUniformLocation? location, GLint x, GLint y);
  external JSUndefined uniform3i(
      WebGLUniformLocation? location, GLint x, GLint y, GLint z);
  external JSUndefined uniform4i(
      WebGLUniformLocation? location, GLint x, GLint y, GLint z, GLint w);
  external JSUndefined useProgram(WebGLProgram? program);
  external JSUndefined validateProgram(WebGLProgram program);
  external JSUndefined vertexAttrib1f(GLuint index, GLfloat x);
  external JSUndefined vertexAttrib2f(GLuint index, GLfloat x, GLfloat y);
  external JSUndefined vertexAttrib3f(
      GLuint index, GLfloat x, GLfloat y, GLfloat z);
  external JSUndefined vertexAttrib4f(
      GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
  external JSUndefined vertexAttrib1fv(GLuint index, Float32List values);
  external JSUndefined vertexAttrib2fv(GLuint index, Float32List values);
  external JSUndefined vertexAttrib3fv(GLuint index, Float32List values);
  external JSUndefined vertexAttrib4fv(GLuint index, Float32List values);
  external JSUndefined vertexAttribPointer(GLuint index, GLint size,
      GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset);
  external JSUndefined viewport(
      GLint x, GLint y, GLsizei width, GLsizei height);
  external JSPromise makeXRCompatible();
}

@JS('WebGLRenderingContextOverloads')
@staticInterop
class WebGLRenderingContextOverloads {
  external factory WebGLRenderingContextOverloads();
}

extension WebGLRenderingContextOverloadsExtension
    on WebGLRenderingContextOverloads {
  external JSUndefined bufferData(GLenum target, GLsizeiptr size, GLenum usage);
  @JS('bufferData')
  external JSUndefined bufferData1(
      GLenum target, BufferSource? data, GLenum usage);
  external JSUndefined bufferSubData(
      GLenum target, GLintptr offset, BufferSource data);
  external JSUndefined compressedTexImage2D(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      ArrayBufferView data);
  external JSUndefined compressedTexSubImage2D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      ArrayBufferView data);
  external JSUndefined readPixels(GLint x, GLint y, GLsizei width,
      GLsizei height, GLenum format, GLenum type, ArrayBufferView? pixels);
  external JSUndefined texImage2D(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      ArrayBufferView? pixels);
  @JS('texImage2D')
  external JSUndefined texImage2D1(GLenum target, GLint level,
      GLint internalformat, GLenum format, GLenum type, TexImageSource source);
  external JSUndefined texSubImage2D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLenum type,
      ArrayBufferView? pixels);
  @JS('texSubImage2D')
  external JSUndefined texSubImage2D1(GLenum target, GLint level, GLint xoffset,
      GLint yoffset, GLenum format, GLenum type, TexImageSource source);
  external JSUndefined uniform1fv(
      WebGLUniformLocation? location, Float32List v);
  external JSUndefined uniform2fv(
      WebGLUniformLocation? location, Float32List v);
  external JSUndefined uniform3fv(
      WebGLUniformLocation? location, Float32List v);
  external JSUndefined uniform4fv(
      WebGLUniformLocation? location, Float32List v);
  external JSUndefined uniform1iv(WebGLUniformLocation? location, Int32List v);
  external JSUndefined uniform2iv(WebGLUniformLocation? location, Int32List v);
  external JSUndefined uniform3iv(WebGLUniformLocation? location, Int32List v);
  external JSUndefined uniform4iv(WebGLUniformLocation? location, Int32List v);
  external JSUndefined uniformMatrix2fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List value);
  external JSUndefined uniformMatrix3fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List value);
  external JSUndefined uniformMatrix4fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List value);
}

@JS('WebGLRenderingContext')
@staticInterop
class WebGLRenderingContext
    implements WebGLRenderingContextBase, WebGLRenderingContextOverloads {
  external factory WebGLRenderingContext();
}

@JS('WebGLContextEvent')
@staticInterop
class WebGLContextEvent extends Event {
  external factory WebGLContextEvent();
  external factory WebGLContextEvent.a1(JSString type);
  external factory WebGLContextEvent.a1_1(
      JSString type, WebGLContextEventInit eventInit);
}

extension WebGLContextEventExtension on WebGLContextEvent {
  external JSString get statusMessage;
}

@JS('WebGLContextEventInit')
@staticInterop
class WebGLContextEventInit extends EventInit {
  external factory WebGLContextEventInit();
}

extension WebGLContextEventInitExtension on WebGLContextEventInit {
  // TODO
}

@JS('WebGLQuery')
@staticInterop
class WebGLQuery extends WebGLObject {
  external factory WebGLQuery();
}

@JS('WebGLSampler')
@staticInterop
class WebGLSampler extends WebGLObject {
  external factory WebGLSampler();
}

@JS('WebGLSync')
@staticInterop
class WebGLSync extends WebGLObject {
  external factory WebGLSync();
}

@JS('WebGLTransformFeedback')
@staticInterop
class WebGLTransformFeedback extends WebGLObject {
  external factory WebGLTransformFeedback();
}

@JS('WebGLVertexArrayObject')
@staticInterop
class WebGLVertexArrayObject extends WebGLObject {
  external factory WebGLVertexArrayObject();
}

@JS('WebGL2RenderingContextBase')
@staticInterop
class WebGL2RenderingContextBase {
  external factory WebGL2RenderingContextBase();
  external static GLenum get READ_BUFFER;
  external static GLenum get UNPACK_ROW_LENGTH;
  external static GLenum get UNPACK_SKIP_ROWS;
  external static GLenum get UNPACK_SKIP_PIXELS;
  external static GLenum get PACK_ROW_LENGTH;
  external static GLenum get PACK_SKIP_ROWS;
  external static GLenum get PACK_SKIP_PIXELS;
  external static GLenum get COLOR;
  external static GLenum get DEPTH;
  external static GLenum get STENCIL;
  external static GLenum get RED;
  external static GLenum get RGB8;
  external static GLenum get RGBA8;
  external static GLenum get RGB10_A2;
  external static GLenum get TEXTURE_BINDING_3D;
  external static GLenum get UNPACK_SKIP_IMAGES;
  external static GLenum get UNPACK_IMAGE_HEIGHT;
  external static GLenum get TEXTURE_3D;
  external static GLenum get TEXTURE_WRAP_R;
  external static GLenum get MAX_3D_TEXTURE_SIZE;
  external static GLenum get UNSIGNED_INT_2_10_10_10_REV;
  external static GLenum get MAX_ELEMENTS_VERTICES;
  external static GLenum get MAX_ELEMENTS_INDICES;
  external static GLenum get TEXTURE_MIN_LOD;
  external static GLenum get TEXTURE_MAX_LOD;
  external static GLenum get TEXTURE_BASE_LEVEL;
  external static GLenum get TEXTURE_MAX_LEVEL;
  external static GLenum get MIN;
  external static GLenum get MAX;
  external static GLenum get DEPTH_COMPONENT24;
  external static GLenum get MAX_TEXTURE_LOD_BIAS;
  external static GLenum get TEXTURE_COMPARE_MODE;
  external static GLenum get TEXTURE_COMPARE_FUNC;
  external static GLenum get CURRENT_QUERY;
  external static GLenum get QUERY_RESULT;
  external static GLenum get QUERY_RESULT_AVAILABLE;
  external static GLenum get STREAM_READ;
  external static GLenum get STREAM_COPY;
  external static GLenum get STATIC_READ;
  external static GLenum get STATIC_COPY;
  external static GLenum get DYNAMIC_READ;
  external static GLenum get DYNAMIC_COPY;
  external static GLenum get MAX_DRAW_BUFFERS;
  external static GLenum get DRAW_BUFFER0;
  external static GLenum get DRAW_BUFFER1;
  external static GLenum get DRAW_BUFFER2;
  external static GLenum get DRAW_BUFFER3;
  external static GLenum get DRAW_BUFFER4;
  external static GLenum get DRAW_BUFFER5;
  external static GLenum get DRAW_BUFFER6;
  external static GLenum get DRAW_BUFFER7;
  external static GLenum get DRAW_BUFFER8;
  external static GLenum get DRAW_BUFFER9;
  external static GLenum get DRAW_BUFFER10;
  external static GLenum get DRAW_BUFFER11;
  external static GLenum get DRAW_BUFFER12;
  external static GLenum get DRAW_BUFFER13;
  external static GLenum get DRAW_BUFFER14;
  external static GLenum get DRAW_BUFFER15;
  external static GLenum get MAX_FRAGMENT_UNIFORM_COMPONENTS;
  external static GLenum get MAX_VERTEX_UNIFORM_COMPONENTS;
  external static GLenum get SAMPLER_3D;
  external static GLenum get SAMPLER_2D_SHADOW;
  external static GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT;
  external static GLenum get PIXEL_PACK_BUFFER;
  external static GLenum get PIXEL_UNPACK_BUFFER;
  external static GLenum get PIXEL_PACK_BUFFER_BINDING;
  external static GLenum get PIXEL_UNPACK_BUFFER_BINDING;
  external static GLenum get FLOAT_MAT2x3;
  external static GLenum get FLOAT_MAT2x4;
  external static GLenum get FLOAT_MAT3x2;
  external static GLenum get FLOAT_MAT3x4;
  external static GLenum get FLOAT_MAT4x2;
  external static GLenum get FLOAT_MAT4x3;
  external static GLenum get SRGB;
  external static GLenum get SRGB8;
  external static GLenum get SRGB8_ALPHA8;
  external static GLenum get COMPARE_REF_TO_TEXTURE;
  external static GLenum get RGBA32F;
  external static GLenum get RGB32F;
  external static GLenum get RGBA16F;
  external static GLenum get RGB16F;
  external static GLenum get VERTEX_ATTRIB_ARRAY_INTEGER;
  external static GLenum get MAX_ARRAY_TEXTURE_LAYERS;
  external static GLenum get MIN_PROGRAM_TEXEL_OFFSET;
  external static GLenum get MAX_PROGRAM_TEXEL_OFFSET;
  external static GLenum get MAX_VARYING_COMPONENTS;
  external static GLenum get TEXTURE_2D_ARRAY;
  external static GLenum get TEXTURE_BINDING_2D_ARRAY;
  external static GLenum get R11F_G11F_B10F;
  external static GLenum get UNSIGNED_INT_10F_11F_11F_REV;
  external static GLenum get RGB9_E5;
  external static GLenum get UNSIGNED_INT_5_9_9_9_REV;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_MODE;
  external static GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS;
  external static GLenum get TRANSFORM_FEEDBACK_VARYINGS;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_START;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_SIZE;
  external static GLenum get TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
  external static GLenum get RASTERIZER_DISCARD;
  external static GLenum get MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS;
  external static GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS;
  external static GLenum get INTERLEAVED_ATTRIBS;
  external static GLenum get SEPARATE_ATTRIBS;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER;
  external static GLenum get TRANSFORM_FEEDBACK_BUFFER_BINDING;
  external static GLenum get RGBA32UI;
  external static GLenum get RGB32UI;
  external static GLenum get RGBA16UI;
  external static GLenum get RGB16UI;
  external static GLenum get RGBA8UI;
  external static GLenum get RGB8UI;
  external static GLenum get RGBA32I;
  external static GLenum get RGB32I;
  external static GLenum get RGBA16I;
  external static GLenum get RGB16I;
  external static GLenum get RGBA8I;
  external static GLenum get RGB8I;
  external static GLenum get RED_INTEGER;
  external static GLenum get RGB_INTEGER;
  external static GLenum get RGBA_INTEGER;
  external static GLenum get SAMPLER_2D_ARRAY;
  external static GLenum get SAMPLER_2D_ARRAY_SHADOW;
  external static GLenum get SAMPLER_CUBE_SHADOW;
  external static GLenum get UNSIGNED_INT_VEC2;
  external static GLenum get UNSIGNED_INT_VEC3;
  external static GLenum get UNSIGNED_INT_VEC4;
  external static GLenum get INT_SAMPLER_2D;
  external static GLenum get INT_SAMPLER_3D;
  external static GLenum get INT_SAMPLER_CUBE;
  external static GLenum get INT_SAMPLER_2D_ARRAY;
  external static GLenum get UNSIGNED_INT_SAMPLER_2D;
  external static GLenum get UNSIGNED_INT_SAMPLER_3D;
  external static GLenum get UNSIGNED_INT_SAMPLER_CUBE;
  external static GLenum get UNSIGNED_INT_SAMPLER_2D_ARRAY;
  external static GLenum get DEPTH_COMPONENT32F;
  external static GLenum get DEPTH32F_STENCIL8;
  external static GLenum get FLOAT_32_UNSIGNED_INT_24_8_REV;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_RED_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_GREEN_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_BLUE_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE;
  external static GLenum get FRAMEBUFFER_DEFAULT;
  external static GLenum get UNSIGNED_INT_24_8;
  external static GLenum get DEPTH24_STENCIL8;
  external static GLenum get UNSIGNED_NORMALIZED;
  external static GLenum get DRAW_FRAMEBUFFER_BINDING;
  external static GLenum get READ_FRAMEBUFFER;
  external static GLenum get DRAW_FRAMEBUFFER;
  external static GLenum get READ_FRAMEBUFFER_BINDING;
  external static GLenum get RENDERBUFFER_SAMPLES;
  external static GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER;
  external static GLenum get MAX_COLOR_ATTACHMENTS;
  external static GLenum get COLOR_ATTACHMENT1;
  external static GLenum get COLOR_ATTACHMENT2;
  external static GLenum get COLOR_ATTACHMENT3;
  external static GLenum get COLOR_ATTACHMENT4;
  external static GLenum get COLOR_ATTACHMENT5;
  external static GLenum get COLOR_ATTACHMENT6;
  external static GLenum get COLOR_ATTACHMENT7;
  external static GLenum get COLOR_ATTACHMENT8;
  external static GLenum get COLOR_ATTACHMENT9;
  external static GLenum get COLOR_ATTACHMENT10;
  external static GLenum get COLOR_ATTACHMENT11;
  external static GLenum get COLOR_ATTACHMENT12;
  external static GLenum get COLOR_ATTACHMENT13;
  external static GLenum get COLOR_ATTACHMENT14;
  external static GLenum get COLOR_ATTACHMENT15;
  external static GLenum get FRAMEBUFFER_INCOMPLETE_MULTISAMPLE;
  external static GLenum get MAX_SAMPLES;
  external static GLenum get HALF_FLOAT;
  external static GLenum get RG;
  external static GLenum get RG_INTEGER;
  external static GLenum get R8;
  external static GLenum get RG8;
  external static GLenum get R16F;
  external static GLenum get R32F;
  external static GLenum get RG16F;
  external static GLenum get RG32F;
  external static GLenum get R8I;
  external static GLenum get R8UI;
  external static GLenum get R16I;
  external static GLenum get R16UI;
  external static GLenum get R32I;
  external static GLenum get R32UI;
  external static GLenum get RG8I;
  external static GLenum get RG8UI;
  external static GLenum get RG16I;
  external static GLenum get RG16UI;
  external static GLenum get RG32I;
  external static GLenum get RG32UI;
  external static GLenum get VERTEX_ARRAY_BINDING;
  external static GLenum get R8_SNORM;
  external static GLenum get RG8_SNORM;
  external static GLenum get RGB8_SNORM;
  external static GLenum get RGBA8_SNORM;
  external static GLenum get SIGNED_NORMALIZED;
  external static GLenum get COPY_READ_BUFFER;
  external static GLenum get COPY_WRITE_BUFFER;
  external static GLenum get COPY_READ_BUFFER_BINDING;
  external static GLenum get COPY_WRITE_BUFFER_BINDING;
  external static GLenum get UNIFORM_BUFFER;
  external static GLenum get UNIFORM_BUFFER_BINDING;
  external static GLenum get UNIFORM_BUFFER_START;
  external static GLenum get UNIFORM_BUFFER_SIZE;
  external static GLenum get MAX_VERTEX_UNIFORM_BLOCKS;
  external static GLenum get MAX_FRAGMENT_UNIFORM_BLOCKS;
  external static GLenum get MAX_COMBINED_UNIFORM_BLOCKS;
  external static GLenum get MAX_UNIFORM_BUFFER_BINDINGS;
  external static GLenum get MAX_UNIFORM_BLOCK_SIZE;
  external static GLenum get MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
  external static GLenum get MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
  external static GLenum get UNIFORM_BUFFER_OFFSET_ALIGNMENT;
  external static GLenum get ACTIVE_UNIFORM_BLOCKS;
  external static GLenum get UNIFORM_TYPE;
  external static GLenum get UNIFORM_SIZE;
  external static GLenum get UNIFORM_BLOCK_INDEX;
  external static GLenum get UNIFORM_OFFSET;
  external static GLenum get UNIFORM_ARRAY_STRIDE;
  external static GLenum get UNIFORM_MATRIX_STRIDE;
  external static GLenum get UNIFORM_IS_ROW_MAJOR;
  external static GLenum get UNIFORM_BLOCK_BINDING;
  external static GLenum get UNIFORM_BLOCK_DATA_SIZE;
  external static GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORMS;
  external static GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES;
  external static GLenum get UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER;
  external static GLenum get UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER;
  external static GLenum get INVALID_INDEX;
  external static GLenum get MAX_VERTEX_OUTPUT_COMPONENTS;
  external static GLenum get MAX_FRAGMENT_INPUT_COMPONENTS;
  external static GLenum get MAX_SERVER_WAIT_TIMEOUT;
  external static GLenum get OBJECT_TYPE;
  external static GLenum get SYNC_CONDITION;
  external static GLenum get SYNC_STATUS;
  external static GLenum get SYNC_FLAGS;
  external static GLenum get SYNC_FENCE;
  external static GLenum get SYNC_GPU_COMMANDS_COMPLETE;
  external static GLenum get UNSIGNALED;
  external static GLenum get SIGNALED;
  external static GLenum get ALREADY_SIGNALED;
  external static GLenum get TIMEOUT_EXPIRED;
  external static GLenum get CONDITION_SATISFIED;
  external static GLenum get WAIT_FAILED;
  external static GLenum get SYNC_FLUSH_COMMANDS_BIT;
  external static GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR;
  external static GLenum get ANY_SAMPLES_PASSED;
  external static GLenum get ANY_SAMPLES_PASSED_CONSERVATIVE;
  external static GLenum get SAMPLER_BINDING;
  external static GLenum get RGB10_A2UI;
  external static GLenum get INT_2_10_10_10_REV;
  external static GLenum get TRANSFORM_FEEDBACK;
  external static GLenum get TRANSFORM_FEEDBACK_PAUSED;
  external static GLenum get TRANSFORM_FEEDBACK_ACTIVE;
  external static GLenum get TRANSFORM_FEEDBACK_BINDING;
  external static GLenum get TEXTURE_IMMUTABLE_FORMAT;
  external static GLenum get MAX_ELEMENT_INDEX;
  external static GLenum get TEXTURE_IMMUTABLE_LEVELS;
  external static GLint64 get TIMEOUT_IGNORED;
  external static GLenum get MAX_CLIENT_WAIT_TIMEOUT_WEBGL;
}

extension WebGL2RenderingContextBaseExtension on WebGL2RenderingContextBase {
  external JSUndefined copyBufferSubData(GLenum readTarget, GLenum writeTarget,
      GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
  external JSUndefined getBufferSubData(
      GLenum target, GLintptr srcByteOffset, ArrayBufferView dstBuffer);
  external JSUndefined getBufferSubData_1(GLenum target, GLintptr srcByteOffset,
      ArrayBufferView dstBuffer, GLuint dstOffset);
  external JSUndefined getBufferSubData_2(GLenum target, GLintptr srcByteOffset,
      ArrayBufferView dstBuffer, GLuint dstOffset, GLuint length);
  external JSUndefined blitFramebuffer(
      GLint srcX0,
      GLint srcY0,
      GLint srcX1,
      GLint srcY1,
      GLint dstX0,
      GLint dstY0,
      GLint dstX1,
      GLint dstY1,
      GLbitfield mask,
      GLenum filter);
  external JSUndefined framebufferTextureLayer(GLenum target, GLenum attachment,
      WebGLTexture? texture, GLint level, GLint layer);
  external JSUndefined invalidateFramebuffer(
      GLenum target, JSArray attachments);
  external JSUndefined invalidateSubFramebuffer(GLenum target,
      JSArray attachments, GLint x, GLint y, GLsizei width, GLsizei height);
  external JSUndefined readBuffer(GLenum src);
  external JSAny getInternalformatParameter(
      GLenum target, GLenum internalformat, GLenum pname);
  external JSUndefined renderbufferStorageMultisample(GLenum target,
      GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
  external JSUndefined texStorage2D(GLenum target, GLsizei levels,
      GLenum internalformat, GLsizei width, GLsizei height);
  external JSUndefined texStorage3D(GLenum target, GLsizei levels,
      GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
  external JSUndefined texImage3D(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      GLenum format,
      GLenum type,
      GLintptr pboOffset);
  @JS('texImage3D')
  external JSUndefined texImage3D1(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      GLenum format,
      GLenum type,
      TexImageSource source);
  @JS('texImage3D')
  external JSUndefined texImage3D2(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      GLenum format,
      GLenum type,
      ArrayBufferView? srcData);
  @JS('texImage3D')
  external JSUndefined texImage3D3(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      GLenum format,
      GLenum type,
      ArrayBufferView srcData,
      GLuint srcOffset);
  external JSUndefined texSubImage3D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      GLenum type,
      GLintptr pboOffset);
  @JS('texSubImage3D')
  external JSUndefined texSubImage3D1(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      GLenum type,
      TexImageSource source);
  @JS('texSubImage3D')
  external JSUndefined texSubImage3D2(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      GLenum type,
      ArrayBufferView? srcData);
  @JS('texSubImage3D')
  external JSUndefined texSubImage3D2_1(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      GLenum type,
      ArrayBufferView? srcData,
      GLuint srcOffset);
  external JSUndefined copyTexSubImage3D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLint x,
      GLint y,
      GLsizei width,
      GLsizei height);
  external JSUndefined compressedTexImage3D(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      GLsizei imageSize,
      GLintptr offset);
  @JS('compressedTexImage3D')
  external JSUndefined compressedTexImage3D1(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      ArrayBufferView srcData);
  @JS('compressedTexImage3D')
  external JSUndefined compressedTexImage3D1_1(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      ArrayBufferView srcData,
      GLuint srcOffset);
  @JS('compressedTexImage3D')
  external JSUndefined compressedTexImage3D1_2(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLint border,
      ArrayBufferView srcData,
      GLuint srcOffset,
      GLuint srcLengthOverride);
  external JSUndefined compressedTexSubImage3D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      GLsizei imageSize,
      GLintptr offset);
  @JS('compressedTexSubImage3D')
  external JSUndefined compressedTexSubImage3D1(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      ArrayBufferView srcData);
  @JS('compressedTexSubImage3D')
  external JSUndefined compressedTexSubImage3D1_1(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      ArrayBufferView srcData,
      GLuint srcOffset);
  @JS('compressedTexSubImage3D')
  external JSUndefined compressedTexSubImage3D1_2(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLint zoffset,
      GLsizei width,
      GLsizei height,
      GLsizei depth,
      GLenum format,
      ArrayBufferView srcData,
      GLuint srcOffset,
      GLuint srcLengthOverride);
  external GLint getFragDataLocation(WebGLProgram program, JSString name);
  external JSUndefined uniform1ui(WebGLUniformLocation? location, GLuint v0);
  external JSUndefined uniform2ui(
      WebGLUniformLocation? location, GLuint v0, GLuint v1);
  external JSUndefined uniform3ui(
      WebGLUniformLocation? location, GLuint v0, GLuint v1, GLuint v2);
  external JSUndefined uniform4ui(WebGLUniformLocation? location, GLuint v0,
      GLuint v1, GLuint v2, GLuint v3);
  external JSUndefined uniform1uiv(
      WebGLUniformLocation? location, Uint32List data);
  external JSUndefined uniform1uiv_1(
      WebGLUniformLocation? location, Uint32List data, GLuint srcOffset);
  external JSUndefined uniform1uiv_2(WebGLUniformLocation? location,
      Uint32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform2uiv(
      WebGLUniformLocation? location, Uint32List data);
  external JSUndefined uniform2uiv_1(
      WebGLUniformLocation? location, Uint32List data, GLuint srcOffset);
  external JSUndefined uniform2uiv_2(WebGLUniformLocation? location,
      Uint32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform3uiv(
      WebGLUniformLocation? location, Uint32List data);
  external JSUndefined uniform3uiv_1(
      WebGLUniformLocation? location, Uint32List data, GLuint srcOffset);
  external JSUndefined uniform3uiv_2(WebGLUniformLocation? location,
      Uint32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform4uiv(
      WebGLUniformLocation? location, Uint32List data);
  external JSUndefined uniform4uiv_1(
      WebGLUniformLocation? location, Uint32List data, GLuint srcOffset);
  external JSUndefined uniform4uiv_2(WebGLUniformLocation? location,
      Uint32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniformMatrix3x2fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix3x2fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix3x2fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix4x2fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix4x2fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix4x2fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix2x3fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix2x3fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix2x3fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix4x3fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix4x3fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix4x3fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix2x4fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix2x4fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix2x4fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix3x4fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix3x4fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix3x4fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined vertexAttribI4i(
      GLuint index, GLint x, GLint y, GLint z, GLint w);
  external JSUndefined vertexAttribI4iv(GLuint index, Int32List values);
  external JSUndefined vertexAttribI4ui(
      GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
  external JSUndefined vertexAttribI4uiv(GLuint index, Uint32List values);
  external JSUndefined vertexAttribIPointer(
      GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
  external JSUndefined vertexAttribDivisor(GLuint index, GLuint divisor);
  external JSUndefined drawArraysInstanced(
      GLenum mode, GLint first, GLsizei count, GLsizei instanceCount);
  external JSUndefined drawElementsInstanced(GLenum mode, GLsizei count,
      GLenum type, GLintptr offset, GLsizei instanceCount);
  external JSUndefined drawRangeElements(GLenum mode, GLuint start, GLuint end,
      GLsizei count, GLenum type, GLintptr offset);
  external JSUndefined drawBuffers(JSArray buffers);
  external JSUndefined clearBufferfv(
      GLenum buffer, GLint drawbuffer, Float32List values);
  external JSUndefined clearBufferfv_1(
      GLenum buffer, GLint drawbuffer, Float32List values, GLuint srcOffset);
  external JSUndefined clearBufferiv(
      GLenum buffer, GLint drawbuffer, Int32List values);
  external JSUndefined clearBufferiv_1(
      GLenum buffer, GLint drawbuffer, Int32List values, GLuint srcOffset);
  external JSUndefined clearBufferuiv(
      GLenum buffer, GLint drawbuffer, Uint32List values);
  external JSUndefined clearBufferuiv_1(
      GLenum buffer, GLint drawbuffer, Uint32List values, GLuint srcOffset);
  external JSUndefined clearBufferfi(
      GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
  external WebGLQuery? createQuery();
  external JSUndefined deleteQuery(WebGLQuery? query);
  external GLboolean isQuery(WebGLQuery? query);
  external JSUndefined beginQuery(GLenum target, WebGLQuery query);
  external JSUndefined endQuery(GLenum target);
  external WebGLQuery? getQuery(GLenum target, GLenum pname);
  external JSAny getQueryParameter(WebGLQuery query, GLenum pname);
  external WebGLSampler? createSampler();
  external JSUndefined deleteSampler(WebGLSampler? sampler);
  external GLboolean isSampler(WebGLSampler? sampler);
  external JSUndefined bindSampler(GLuint unit, WebGLSampler? sampler);
  external JSUndefined samplerParameteri(
      WebGLSampler sampler, GLenum pname, GLint param);
  external JSUndefined samplerParameterf(
      WebGLSampler sampler, GLenum pname, GLfloat param);
  external JSAny getSamplerParameter(WebGLSampler sampler, GLenum pname);
  external WebGLSync? fenceSync(GLenum condition, GLbitfield flags);
  external GLboolean isSync(WebGLSync? sync);
  external JSUndefined deleteSync(WebGLSync? sync);
  external GLenum clientWaitSync(
      WebGLSync sync, GLbitfield flags, GLuint64 timeout);
  external JSUndefined waitSync(
      WebGLSync sync, GLbitfield flags, GLint64 timeout);
  external JSAny getSyncParameter(WebGLSync sync, GLenum pname);
  external WebGLTransformFeedback? createTransformFeedback();
  external JSUndefined deleteTransformFeedback(WebGLTransformFeedback? tf);
  external GLboolean isTransformFeedback(WebGLTransformFeedback? tf);
  external JSUndefined bindTransformFeedback(
      GLenum target, WebGLTransformFeedback? tf);
  external JSUndefined beginTransformFeedback(GLenum primitiveMode);
  external JSUndefined endTransformFeedback();
  external JSUndefined transformFeedbackVaryings(
      WebGLProgram program, JSArray varyings, GLenum bufferMode);
  external WebGLActiveInfo? getTransformFeedbackVarying(
      WebGLProgram program, GLuint index);
  external JSUndefined pauseTransformFeedback();
  external JSUndefined resumeTransformFeedback();
  external JSUndefined bindBufferBase(
      GLenum target, GLuint index, WebGLBuffer? buffer);
  external JSUndefined bindBufferRange(GLenum target, GLuint index,
      WebGLBuffer? buffer, GLintptr offset, GLsizeiptr size);
  external JSAny getIndexedParameter(GLenum target, GLuint index);
  external JSArray? getUniformIndices(
      WebGLProgram program, JSArray uniformNames);
  external JSAny getActiveUniforms(
      WebGLProgram program, JSArray uniformIndices, GLenum pname);
  external GLuint getUniformBlockIndex(
      WebGLProgram program, JSString uniformBlockName);
  external JSAny getActiveUniformBlockParameter(
      WebGLProgram program, GLuint uniformBlockIndex, GLenum pname);
  external JSString? getActiveUniformBlockName(
      WebGLProgram program, GLuint uniformBlockIndex);
  external JSUndefined uniformBlockBinding(WebGLProgram program,
      GLuint uniformBlockIndex, GLuint uniformBlockBinding);
  external WebGLVertexArrayObject? createVertexArray();
  external JSUndefined deleteVertexArray(WebGLVertexArrayObject? vertexArray);
  external GLboolean isVertexArray(WebGLVertexArrayObject? vertexArray);
  external JSUndefined bindVertexArray(WebGLVertexArrayObject? array);
}

@JS('WebGL2RenderingContextOverloads')
@staticInterop
class WebGL2RenderingContextOverloads {
  external factory WebGL2RenderingContextOverloads();
}

extension WebGL2RenderingContextOverloadsExtension
    on WebGL2RenderingContextOverloads {
  external JSUndefined bufferData(GLenum target, GLsizeiptr size, GLenum usage);
  @JS('bufferData')
  external JSUndefined bufferData1(
      GLenum target, BufferSource? srcData, GLenum usage);
  external JSUndefined bufferSubData(
      GLenum target, GLintptr dstByteOffset, BufferSource srcData);
  @JS('bufferData')
  external JSUndefined bufferData2(
      GLenum target, ArrayBufferView srcData, GLenum usage, GLuint srcOffset);
  @JS('bufferData')
  external JSUndefined bufferData2_1(GLenum target, ArrayBufferView srcData,
      GLenum usage, GLuint srcOffset, GLuint length);
  @JS('bufferSubData')
  external JSUndefined bufferSubData1(GLenum target, GLintptr dstByteOffset,
      ArrayBufferView srcData, GLuint srcOffset);
  @JS('bufferSubData')
  external JSUndefined bufferSubData1_1(GLenum target, GLintptr dstByteOffset,
      ArrayBufferView srcData, GLuint srcOffset, GLuint length);
  external JSUndefined texImage2D(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      ArrayBufferView? pixels);
  @JS('texImage2D')
  external JSUndefined texImage2D1(GLenum target, GLint level,
      GLint internalformat, GLenum format, GLenum type, TexImageSource source);
  external JSUndefined texSubImage2D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLenum type,
      ArrayBufferView? pixels);
  @JS('texSubImage2D')
  external JSUndefined texSubImage2D1(GLenum target, GLint level, GLint xoffset,
      GLint yoffset, GLenum format, GLenum type, TexImageSource source);
  @JS('texImage2D')
  external JSUndefined texImage2D2(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      GLintptr pboOffset);
  @JS('texImage2D')
  external JSUndefined texImage2D3(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      TexImageSource source);
  @JS('texImage2D')
  external JSUndefined texImage2D4(
      GLenum target,
      GLint level,
      GLint internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      ArrayBufferView srcData,
      GLuint srcOffset);
  @JS('texSubImage2D')
  external JSUndefined texSubImage2D2(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLenum type,
      GLintptr pboOffset);
  @JS('texSubImage2D')
  external JSUndefined texSubImage2D3(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLenum type,
      TexImageSource source);
  @JS('texSubImage2D')
  external JSUndefined texSubImage2D4(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLenum type,
      ArrayBufferView srcData,
      GLuint srcOffset);
  external JSUndefined compressedTexImage2D(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLsizei imageSize,
      GLintptr offset);
  @JS('compressedTexImage2D')
  external JSUndefined compressedTexImage2D1(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      ArrayBufferView srcData);
  @JS('compressedTexImage2D')
  external JSUndefined compressedTexImage2D1_1(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      ArrayBufferView srcData,
      GLuint srcOffset);
  @JS('compressedTexImage2D')
  external JSUndefined compressedTexImage2D1_2(
      GLenum target,
      GLint level,
      GLenum internalformat,
      GLsizei width,
      GLsizei height,
      GLint border,
      ArrayBufferView srcData,
      GLuint srcOffset,
      GLuint srcLengthOverride);
  external JSUndefined compressedTexSubImage2D(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLsizei imageSize,
      GLintptr offset);
  @JS('compressedTexSubImage2D')
  external JSUndefined compressedTexSubImage2D1(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      ArrayBufferView srcData);
  @JS('compressedTexSubImage2D')
  external JSUndefined compressedTexSubImage2D1_1(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      ArrayBufferView srcData,
      GLuint srcOffset);
  @JS('compressedTexSubImage2D')
  external JSUndefined compressedTexSubImage2D1_2(
      GLenum target,
      GLint level,
      GLint xoffset,
      GLint yoffset,
      GLsizei width,
      GLsizei height,
      GLenum format,
      ArrayBufferView srcData,
      GLuint srcOffset,
      GLuint srcLengthOverride);
  external JSUndefined uniform1fv(
      WebGLUniformLocation? location, Float32List data);
  external JSUndefined uniform1fv_1(
      WebGLUniformLocation? location, Float32List data, GLuint srcOffset);
  external JSUndefined uniform1fv_2(WebGLUniformLocation? location,
      Float32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform2fv(
      WebGLUniformLocation? location, Float32List data);
  external JSUndefined uniform2fv_1(
      WebGLUniformLocation? location, Float32List data, GLuint srcOffset);
  external JSUndefined uniform2fv_2(WebGLUniformLocation? location,
      Float32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform3fv(
      WebGLUniformLocation? location, Float32List data);
  external JSUndefined uniform3fv_1(
      WebGLUniformLocation? location, Float32List data, GLuint srcOffset);
  external JSUndefined uniform3fv_2(WebGLUniformLocation? location,
      Float32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform4fv(
      WebGLUniformLocation? location, Float32List data);
  external JSUndefined uniform4fv_1(
      WebGLUniformLocation? location, Float32List data, GLuint srcOffset);
  external JSUndefined uniform4fv_2(WebGLUniformLocation? location,
      Float32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform1iv(
      WebGLUniformLocation? location, Int32List data);
  external JSUndefined uniform1iv_1(
      WebGLUniformLocation? location, Int32List data, GLuint srcOffset);
  external JSUndefined uniform1iv_2(WebGLUniformLocation? location,
      Int32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform2iv(
      WebGLUniformLocation? location, Int32List data);
  external JSUndefined uniform2iv_1(
      WebGLUniformLocation? location, Int32List data, GLuint srcOffset);
  external JSUndefined uniform2iv_2(WebGLUniformLocation? location,
      Int32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform3iv(
      WebGLUniformLocation? location, Int32List data);
  external JSUndefined uniform3iv_1(
      WebGLUniformLocation? location, Int32List data, GLuint srcOffset);
  external JSUndefined uniform3iv_2(WebGLUniformLocation? location,
      Int32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniform4iv(
      WebGLUniformLocation? location, Int32List data);
  external JSUndefined uniform4iv_1(
      WebGLUniformLocation? location, Int32List data, GLuint srcOffset);
  external JSUndefined uniform4iv_2(WebGLUniformLocation? location,
      Int32List data, GLuint srcOffset, GLuint srcLength);
  external JSUndefined uniformMatrix2fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix2fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix2fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix3fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix3fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix3fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined uniformMatrix4fv(
      WebGLUniformLocation? location, GLboolean transpose, Float32List data);
  external JSUndefined uniformMatrix4fv_1(WebGLUniformLocation? location,
      GLboolean transpose, Float32List data, GLuint srcOffset);
  external JSUndefined uniformMatrix4fv_2(
      WebGLUniformLocation? location,
      GLboolean transpose,
      Float32List data,
      GLuint srcOffset,
      GLuint srcLength);
  external JSUndefined readPixels(GLint x, GLint y, GLsizei width,
      GLsizei height, GLenum format, GLenum type, ArrayBufferView? dstData);
  @JS('readPixels')
  external JSUndefined readPixels1(GLint x, GLint y, GLsizei width,
      GLsizei height, GLenum format, GLenum type, GLintptr offset);
  @JS('readPixels')
  external JSUndefined readPixels2(
      GLint x,
      GLint y,
      GLsizei width,
      GLsizei height,
      GLenum format,
      GLenum type,
      ArrayBufferView dstData,
      GLuint dstOffset);
}

@JS('WebGL2RenderingContext')
@staticInterop
class WebGL2RenderingContext
    implements
        WebGLRenderingContextBase,
        WebGL2RenderingContextBase,
        WebGL2RenderingContextOverloads {
  external factory WebGL2RenderingContext();
}

@JS('GPUObjectBase')
@staticInterop
class GPUObjectBase {
  external factory GPUObjectBase();
}

extension GPUObjectBaseExtension on GPUObjectBase {
  external JSString get label;
  external set label(JSString value);
}

@JS('GPUObjectDescriptorBase')
@staticInterop
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase();
}

extension GPUObjectDescriptorBaseExtension on GPUObjectDescriptorBase {
  // TODO
}

@JS('GPUSupportedLimits')
@staticInterop
class GPUSupportedLimits {
  external factory GPUSupportedLimits();
}

extension GPUSupportedLimitsExtension on GPUSupportedLimits {
  external JSNumber get maxTextureDimension1D;
  external JSNumber get maxTextureDimension2D;
  external JSNumber get maxTextureDimension3D;
  external JSNumber get maxTextureArrayLayers;
  external JSNumber get maxBindGroups;
  external JSNumber get maxBindingsPerBindGroup;
  external JSNumber get maxDynamicUniformBuffersPerPipelineLayout;
  external JSNumber get maxDynamicStorageBuffersPerPipelineLayout;
  external JSNumber get maxSampledTexturesPerShaderStage;
  external JSNumber get maxSamplersPerShaderStage;
  external JSNumber get maxStorageBuffersPerShaderStage;
  external JSNumber get maxStorageTexturesPerShaderStage;
  external JSNumber get maxUniformBuffersPerShaderStage;
  external JSNumber get maxUniformBufferBindingSize;
  external JSNumber get maxStorageBufferBindingSize;
  external JSNumber get minUniformBufferOffsetAlignment;
  external JSNumber get minStorageBufferOffsetAlignment;
  external JSNumber get maxVertexBuffers;
  external JSNumber get maxBufferSize;
  external JSNumber get maxVertexAttributes;
  external JSNumber get maxVertexBufferArrayStride;
  external JSNumber get maxInterStageShaderComponents;
  external JSNumber get maxInterStageShaderVariables;
  external JSNumber get maxColorAttachments;
  external JSNumber get maxColorAttachmentBytesPerSample;
  external JSNumber get maxComputeWorkgroupStorageSize;
  external JSNumber get maxComputeInvocationsPerWorkgroup;
  external JSNumber get maxComputeWorkgroupSizeX;
  external JSNumber get maxComputeWorkgroupSizeY;
  external JSNumber get maxComputeWorkgroupSizeZ;
  external JSNumber get maxComputeWorkgroupsPerDimension;
}

@JS('GPUSupportedFeatures')
@staticInterop
class GPUSupportedFeatures {
  external factory GPUSupportedFeatures();
}

extension GPUSupportedFeaturesExtension on GPUSupportedFeatures {
  // TODO
}

@JS('GPUAdapterInfo')
@staticInterop
class GPUAdapterInfo {
  external factory GPUAdapterInfo();
}

extension GPUAdapterInfoExtension on GPUAdapterInfo {
  external JSString get vendor;
  external JSString get architecture;
  external JSString get device;
  external JSString get description;
}

@JS('NavigatorGPU')
@staticInterop
class NavigatorGPU {
  external factory NavigatorGPU();
}

extension NavigatorGPUExtension on NavigatorGPU {
  external GPU get gpu;
}

@JS('GPU')
@staticInterop
class GPU {
  external factory GPU();
}

extension GPUExtension on GPU {
  external JSPromise requestAdapter();
  external JSPromise requestAdapter_1(GPURequestAdapterOptions options);
  external GPUTextureFormat getPreferredCanvasFormat();
}

@JS('GPURequestAdapterOptions')
@staticInterop
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions();
}

extension GPURequestAdapterOptionsExtension on GPURequestAdapterOptions {
  // TODO
  // TODO
}

@JS('GPUAdapter')
@staticInterop
class GPUAdapter {
  external factory GPUAdapter();
}

extension GPUAdapterExtension on GPUAdapter {
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external JSBoolean get isFallbackAdapter;
  external JSPromise requestDevice();
  external JSPromise requestDevice_1(GPUDeviceDescriptor descriptor);
  external JSPromise requestAdapterInfo();
  external JSPromise requestAdapterInfo_1(JSArray unmaskHints);
}

@JS('GPUDeviceDescriptor')
@staticInterop
class GPUDeviceDescriptor extends GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor();
}

extension GPUDeviceDescriptorExtension on GPUDeviceDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('GPUDevice')
@staticInterop
class GPUDevice extends EventTarget implements GPUObjectBase {
  external factory GPUDevice();
}

extension GPUDeviceExtension on GPUDevice {
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external JSUndefined destroy();
  external GPUBuffer createBuffer(GPUBufferDescriptor descriptor);
  external GPUTexture createTexture(GPUTextureDescriptor descriptor);
  external GPUSampler createSampler();
  external GPUSampler createSampler_1(GPUSamplerDescriptor descriptor);
  external GPUExternalTexture importExternalTexture(
      GPUExternalTextureDescriptor descriptor);
  external GPUBindGroupLayout createBindGroupLayout(
      GPUBindGroupLayoutDescriptor descriptor);
  external GPUPipelineLayout createPipelineLayout(
      GPUPipelineLayoutDescriptor descriptor);
  external GPUBindGroup createBindGroup(GPUBindGroupDescriptor descriptor);
  external GPUShaderModule createShaderModule(
      GPUShaderModuleDescriptor descriptor);
  external GPUComputePipeline createComputePipeline(
      GPUComputePipelineDescriptor descriptor);
  external GPURenderPipeline createRenderPipeline(
      GPURenderPipelineDescriptor descriptor);
  external JSPromise createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);
  external JSPromise createRenderPipelineAsync(
      GPURenderPipelineDescriptor descriptor);
  external GPUCommandEncoder createCommandEncoder();
  external GPUCommandEncoder createCommandEncoder_1(
      GPUCommandEncoderDescriptor descriptor);
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);
  external JSPromise get lost;
  external JSUndefined pushErrorScope(GPUErrorFilter filter);
  external JSPromise popErrorScope();
  external EventHandler get onuncapturederror;
  external set onuncapturederror(EventHandler value);
}

@JS('GPUBuffer')
@staticInterop
class GPUBuffer implements GPUObjectBase {
  external factory GPUBuffer();
}

extension GPUBufferExtension on GPUBuffer {
  external GPUSize64 get size;
  external GPUBufferUsageFlags get usage;
  external GPUBufferMapState get mapState;
  external JSPromise mapAsync(GPUMapModeFlags mode);
  external JSPromise mapAsync_1(GPUMapModeFlags mode, GPUSize64 offset);
  external JSPromise mapAsync_2(
      GPUMapModeFlags mode, GPUSize64 offset, GPUSize64 size);
  external JSArrayBuffer getMappedRange();
  external JSArrayBuffer getMappedRange_1(GPUSize64 offset);
  external JSArrayBuffer getMappedRange_2(GPUSize64 offset, GPUSize64 size);
  external JSUndefined unmap();
  external JSUndefined destroy();
}

@JS('GPUBufferDescriptor')
@staticInterop
class GPUBufferDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor();
}

extension GPUBufferDescriptorExtension on GPUBufferDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS()
external _GPUBufferUsage get GPUBufferUsage;

@JS('GPUBufferUsage')
@staticInterop
class _GPUBufferUsage {
  external factory _GPUBufferUsage();
  external static GPUFlagsConstant get MAP_READ;
  external static GPUFlagsConstant get MAP_WRITE;
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get INDEX;
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get UNIFORM;
  external static GPUFlagsConstant get STORAGE;
  external static GPUFlagsConstant get INDIRECT;
  external static GPUFlagsConstant get QUERY_RESOLVE;
}

@JS()
external _GPUMapMode get GPUMapMode;

@JS('GPUMapMode')
@staticInterop
class _GPUMapMode {
  external factory _GPUMapMode();
  external static GPUFlagsConstant get READ;
  external static GPUFlagsConstant get WRITE;
}

@JS('GPUTexture')
@staticInterop
class GPUTexture implements GPUObjectBase {
  external factory GPUTexture();
}

extension GPUTextureExtension on GPUTexture {
  external GPUTextureView createView();
  external GPUTextureView createView_1(GPUTextureViewDescriptor descriptor);
  external JSUndefined destroy();
  external GPUIntegerCoordinate get width;
  external GPUIntegerCoordinate get height;
  external GPUIntegerCoordinate get depthOrArrayLayers;
  external GPUIntegerCoordinate get mipLevelCount;
  external GPUSize32 get sampleCount;
  external GPUTextureDimension get dimension;
  external GPUTextureFormat get format;
  external GPUTextureUsageFlags get usage;
}

@JS('GPUTextureDescriptor')
@staticInterop
class GPUTextureDescriptor extends GPUObjectDescriptorBase {
  external factory GPUTextureDescriptor();
}

extension GPUTextureDescriptorExtension on GPUTextureDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS()
external _GPUTextureUsage get GPUTextureUsage;

@JS('GPUTextureUsage')
@staticInterop
class _GPUTextureUsage {
  external factory _GPUTextureUsage();
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get TEXTURE_BINDING;
  external static GPUFlagsConstant get STORAGE_BINDING;
  external static GPUFlagsConstant get RENDER_ATTACHMENT;
}

@JS('GPUTextureView')
@staticInterop
class GPUTextureView implements GPUObjectBase {
  external factory GPUTextureView();
}

@JS('GPUTextureViewDescriptor')
@staticInterop
class GPUTextureViewDescriptor extends GPUObjectDescriptorBase {
  external factory GPUTextureViewDescriptor();
}

extension GPUTextureViewDescriptorExtension on GPUTextureViewDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUExternalTexture')
@staticInterop
class GPUExternalTexture implements GPUObjectBase {
  external factory GPUExternalTexture();
}

@JS('GPUExternalTextureDescriptor')
@staticInterop
class GPUExternalTextureDescriptor extends GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor();
}

extension GPUExternalTextureDescriptorExtension
    on GPUExternalTextureDescriptor {
  // TODO
  // TODO
}

@JS('GPUSampler')
@staticInterop
class GPUSampler implements GPUObjectBase {
  external factory GPUSampler();
}

@JS('GPUSamplerDescriptor')
@staticInterop
class GPUSamplerDescriptor extends GPUObjectDescriptorBase {
  external factory GPUSamplerDescriptor();
}

extension GPUSamplerDescriptorExtension on GPUSamplerDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUBindGroupLayout')
@staticInterop
class GPUBindGroupLayout implements GPUObjectBase {
  external factory GPUBindGroupLayout();
}

@JS('GPUBindGroupLayoutDescriptor')
@staticInterop
class GPUBindGroupLayoutDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBindGroupLayoutDescriptor();
}

extension GPUBindGroupLayoutDescriptorExtension
    on GPUBindGroupLayoutDescriptor {
  // TODO
}

@JS('GPUBindGroupLayoutEntry')
@staticInterop
class GPUBindGroupLayoutEntry {
  external factory GPUBindGroupLayoutEntry();
}

extension GPUBindGroupLayoutEntryExtension on GPUBindGroupLayoutEntry {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS()
external _GPUShaderStage get GPUShaderStage;

@JS('GPUShaderStage')
@staticInterop
class _GPUShaderStage {
  external factory _GPUShaderStage();
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get FRAGMENT;
  external static GPUFlagsConstant get COMPUTE;
}

@JS('GPUBufferBindingLayout')
@staticInterop
class GPUBufferBindingLayout {
  external factory GPUBufferBindingLayout();
}

extension GPUBufferBindingLayoutExtension on GPUBufferBindingLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUSamplerBindingLayout')
@staticInterop
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout();
}

extension GPUSamplerBindingLayoutExtension on GPUSamplerBindingLayout {
  // TODO
}

@JS('GPUTextureBindingLayout')
@staticInterop
class GPUTextureBindingLayout {
  external factory GPUTextureBindingLayout();
}

extension GPUTextureBindingLayoutExtension on GPUTextureBindingLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUStorageTextureBindingLayout')
@staticInterop
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout();
}

extension GPUStorageTextureBindingLayoutExtension
    on GPUStorageTextureBindingLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUExternalTextureBindingLayout')
@staticInterop
class GPUExternalTextureBindingLayout {
  external factory GPUExternalTextureBindingLayout();
}

@JS('GPUBindGroup')
@staticInterop
class GPUBindGroup implements GPUObjectBase {
  external factory GPUBindGroup();
}

@JS('GPUBindGroupDescriptor')
@staticInterop
class GPUBindGroupDescriptor extends GPUObjectDescriptorBase {
  external factory GPUBindGroupDescriptor();
}

extension GPUBindGroupDescriptorExtension on GPUBindGroupDescriptor {
  // TODO
  // TODO
}

@JS('GPUBindGroupEntry')
@staticInterop
class GPUBindGroupEntry {
  external factory GPUBindGroupEntry();
}

extension GPUBindGroupEntryExtension on GPUBindGroupEntry {
  // TODO
  // TODO
}

@JS('GPUBufferBinding')
@staticInterop
class GPUBufferBinding {
  external factory GPUBufferBinding();
}

extension GPUBufferBindingExtension on GPUBufferBinding {
  // TODO
  // TODO
  // TODO
}

@JS('GPUPipelineLayout')
@staticInterop
class GPUPipelineLayout implements GPUObjectBase {
  external factory GPUPipelineLayout();
}

@JS('GPUPipelineLayoutDescriptor')
@staticInterop
class GPUPipelineLayoutDescriptor extends GPUObjectDescriptorBase {
  external factory GPUPipelineLayoutDescriptor();
}

extension GPUPipelineLayoutDescriptorExtension on GPUPipelineLayoutDescriptor {
  // TODO
}

@JS('GPUShaderModule')
@staticInterop
class GPUShaderModule implements GPUObjectBase {
  external factory GPUShaderModule();
}

extension GPUShaderModuleExtension on GPUShaderModule {
  external JSPromise compilationInfo();
}

@JS('GPUShaderModuleDescriptor')
@staticInterop
class GPUShaderModuleDescriptor extends GPUObjectDescriptorBase {
  external factory GPUShaderModuleDescriptor();
}

extension GPUShaderModuleDescriptorExtension on GPUShaderModuleDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('GPUShaderModuleCompilationHint')
@staticInterop
class GPUShaderModuleCompilationHint {
  external factory GPUShaderModuleCompilationHint();
}

extension GPUShaderModuleCompilationHintExtension
    on GPUShaderModuleCompilationHint {
  // TODO
}

@JS('GPUCompilationMessage')
@staticInterop
class GPUCompilationMessage {
  external factory GPUCompilationMessage();
}

extension GPUCompilationMessageExtension on GPUCompilationMessage {
  external JSString get message;
  external GPUCompilationMessageType get type;
  external JSNumber get lineNum;
  external JSNumber get linePos;
  external JSNumber get offset;
  external JSNumber get length;
}

@JS('GPUCompilationInfo')
@staticInterop
class GPUCompilationInfo {
  external factory GPUCompilationInfo();
}

extension GPUCompilationInfoExtension on GPUCompilationInfo {
  external JSArray get messages;
}

@JS('GPUPipelineError')
@staticInterop
class GPUPipelineError extends DOMException {
  external factory GPUPipelineError();
  external factory GPUPipelineError.a1(
      JSString message, GPUPipelineErrorInit options);
}

extension GPUPipelineErrorExtension on GPUPipelineError {
  external GPUPipelineErrorReason get reason;
}

@JS('GPUPipelineErrorInit')
@staticInterop
class GPUPipelineErrorInit {
  external factory GPUPipelineErrorInit();
}

extension GPUPipelineErrorInitExtension on GPUPipelineErrorInit {
  // TODO
}

@JS('GPUPipelineDescriptorBase')
@staticInterop
class GPUPipelineDescriptorBase extends GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase();
}

extension GPUPipelineDescriptorBaseExtension on GPUPipelineDescriptorBase {
  // TODO
}

@JS('GPUPipelineBase')
@staticInterop
class GPUPipelineBase {
  external factory GPUPipelineBase();
}

extension GPUPipelineBaseExtension on GPUPipelineBase {
  external GPUBindGroupLayout getBindGroupLayout(JSNumber index);
}

@JS('GPUProgrammableStage')
@staticInterop
class GPUProgrammableStage {
  external factory GPUProgrammableStage();
}

extension GPUProgrammableStageExtension on GPUProgrammableStage {
  // TODO
  // TODO
  // TODO
}

@JS('GPUComputePipeline')
@staticInterop
class GPUComputePipeline implements GPUObjectBase, GPUPipelineBase {
  external factory GPUComputePipeline();
}

@JS('GPUComputePipelineDescriptor')
@staticInterop
class GPUComputePipelineDescriptor extends GPUPipelineDescriptorBase {
  external factory GPUComputePipelineDescriptor();
}

extension GPUComputePipelineDescriptorExtension
    on GPUComputePipelineDescriptor {
  // TODO
}

@JS('GPURenderPipeline')
@staticInterop
class GPURenderPipeline implements GPUObjectBase, GPUPipelineBase {
  external factory GPURenderPipeline();
}

@JS('GPURenderPipelineDescriptor')
@staticInterop
class GPURenderPipelineDescriptor extends GPUPipelineDescriptorBase {
  external factory GPURenderPipelineDescriptor();
}

extension GPURenderPipelineDescriptorExtension on GPURenderPipelineDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUPrimitiveState')
@staticInterop
class GPUPrimitiveState {
  external factory GPUPrimitiveState();
}

extension GPUPrimitiveStateExtension on GPUPrimitiveState {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUMultisampleState')
@staticInterop
class GPUMultisampleState {
  external factory GPUMultisampleState();
}

extension GPUMultisampleStateExtension on GPUMultisampleState {
  // TODO
  // TODO
  // TODO
}

@JS('GPUFragmentState')
@staticInterop
class GPUFragmentState extends GPUProgrammableStage {
  external factory GPUFragmentState();
}

extension GPUFragmentStateExtension on GPUFragmentState {
  // TODO
}

@JS('GPUColorTargetState')
@staticInterop
class GPUColorTargetState {
  external factory GPUColorTargetState();
}

extension GPUColorTargetStateExtension on GPUColorTargetState {
  // TODO
  // TODO
  // TODO
}

@JS('GPUBlendState')
@staticInterop
class GPUBlendState {
  external factory GPUBlendState();
}

extension GPUBlendStateExtension on GPUBlendState {
  // TODO
  // TODO
}

@JS()
external _GPUColorWrite get GPUColorWrite;

@JS('GPUColorWrite')
@staticInterop
class _GPUColorWrite {
  external factory _GPUColorWrite();
  external static GPUFlagsConstant get RED;
  external static GPUFlagsConstant get GREEN;
  external static GPUFlagsConstant get BLUE;
  external static GPUFlagsConstant get ALPHA;
  external static GPUFlagsConstant get ALL;
}

@JS('GPUBlendComponent')
@staticInterop
class GPUBlendComponent {
  external factory GPUBlendComponent();
}

extension GPUBlendComponentExtension on GPUBlendComponent {
  // TODO
  // TODO
  // TODO
}

@JS('GPUDepthStencilState')
@staticInterop
class GPUDepthStencilState {
  external factory GPUDepthStencilState();
}

extension GPUDepthStencilStateExtension on GPUDepthStencilState {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUStencilFaceState')
@staticInterop
class GPUStencilFaceState {
  external factory GPUStencilFaceState();
}

extension GPUStencilFaceStateExtension on GPUStencilFaceState {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUVertexState')
@staticInterop
class GPUVertexState extends GPUProgrammableStage {
  external factory GPUVertexState();
}

extension GPUVertexStateExtension on GPUVertexState {
  // TODO
}

@JS('GPUVertexBufferLayout')
@staticInterop
class GPUVertexBufferLayout {
  external factory GPUVertexBufferLayout();
}

extension GPUVertexBufferLayoutExtension on GPUVertexBufferLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUVertexAttribute')
@staticInterop
class GPUVertexAttribute {
  external factory GPUVertexAttribute();
}

extension GPUVertexAttributeExtension on GPUVertexAttribute {
  // TODO
  // TODO
  // TODO
}

@JS('GPUImageDataLayout')
@staticInterop
class GPUImageDataLayout {
  external factory GPUImageDataLayout();
}

extension GPUImageDataLayoutExtension on GPUImageDataLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPUImageCopyBuffer')
@staticInterop
class GPUImageCopyBuffer extends GPUImageDataLayout {
  external factory GPUImageCopyBuffer();
}

extension GPUImageCopyBufferExtension on GPUImageCopyBuffer {
  // TODO
}

@JS('GPUImageCopyTexture')
@staticInterop
class GPUImageCopyTexture {
  external factory GPUImageCopyTexture();
}

extension GPUImageCopyTextureExtension on GPUImageCopyTexture {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUImageCopyTextureTagged')
@staticInterop
class GPUImageCopyTextureTagged extends GPUImageCopyTexture {
  external factory GPUImageCopyTextureTagged();
}

extension GPUImageCopyTextureTaggedExtension on GPUImageCopyTextureTagged {
  // TODO
  // TODO
}

@JS('GPUImageCopyExternalImage')
@staticInterop
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage();
}

extension GPUImageCopyExternalImageExtension on GPUImageCopyExternalImage {
  // TODO
  // TODO
  // TODO
}

@JS('GPUCommandBuffer')
@staticInterop
class GPUCommandBuffer implements GPUObjectBase {
  external factory GPUCommandBuffer();
}

@JS('GPUCommandBufferDescriptor')
@staticInterop
class GPUCommandBufferDescriptor extends GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

@JS('GPUCommandsMixin')
@staticInterop
class GPUCommandsMixin {
  external factory GPUCommandsMixin();
}

@JS('GPUCommandEncoder')
@staticInterop
class GPUCommandEncoder
    implements GPUObjectBase, GPUCommandsMixin, GPUDebugCommandsMixin {
  external factory GPUCommandEncoder();
}

extension GPUCommandEncoderExtension on GPUCommandEncoder {
  external GPURenderPassEncoder beginRenderPass(
      GPURenderPassDescriptor descriptor);
  external GPUComputePassEncoder beginComputePass();
  external GPUComputePassEncoder beginComputePass_1(
      GPUComputePassDescriptor descriptor);
  external JSUndefined copyBufferToBuffer(
      GPUBuffer source,
      GPUSize64 sourceOffset,
      GPUBuffer destination,
      GPUSize64 destinationOffset,
      GPUSize64 size);
  external JSUndefined copyBufferToTexture(GPUImageCopyBuffer source,
      GPUImageCopyTexture destination, GPUExtent3D copySize);
  external JSUndefined copyTextureToBuffer(GPUImageCopyTexture source,
      GPUImageCopyBuffer destination, GPUExtent3D copySize);
  external JSUndefined copyTextureToTexture(GPUImageCopyTexture source,
      GPUImageCopyTexture destination, GPUExtent3D copySize);
  external JSUndefined clearBuffer(GPUBuffer buffer);
  external JSUndefined clearBuffer_1(GPUBuffer buffer, GPUSize64 offset);
  external JSUndefined clearBuffer_2(
      GPUBuffer buffer, GPUSize64 offset, GPUSize64 size);
  external JSUndefined writeTimestamp(
      GPUQuerySet querySet, GPUSize32 queryIndex);
  external JSUndefined resolveQuerySet(
      GPUQuerySet querySet,
      GPUSize32 firstQuery,
      GPUSize32 queryCount,
      GPUBuffer destination,
      GPUSize64 destinationOffset);
  external GPUCommandBuffer finish();
  external GPUCommandBuffer finish_1(GPUCommandBufferDescriptor descriptor);
}

@JS('GPUCommandEncoderDescriptor')
@staticInterop
class GPUCommandEncoderDescriptor extends GPUObjectDescriptorBase {
  external factory GPUCommandEncoderDescriptor();
}

@JS('GPUBindingCommandsMixin')
@staticInterop
class GPUBindingCommandsMixin {
  external factory GPUBindingCommandsMixin();
}

extension GPUBindingCommandsMixinExtension on GPUBindingCommandsMixin {
  external JSUndefined setBindGroup(GPUIndex32 index, GPUBindGroup bindGroup);
  external JSUndefined setBindGroup_1(
      GPUIndex32 index, GPUBindGroup bindGroup, JSArray dynamicOffsets);
  @JS('setBindGroup')
  external JSUndefined setBindGroup1(
      GPUIndex32 index,
      GPUBindGroup bindGroup,
      JSUint32Array dynamicOffsetsData,
      GPUSize64 dynamicOffsetsDataStart,
      GPUSize32 dynamicOffsetsDataLength);
}

@JS('GPUDebugCommandsMixin')
@staticInterop
class GPUDebugCommandsMixin {
  external factory GPUDebugCommandsMixin();
}

extension GPUDebugCommandsMixinExtension on GPUDebugCommandsMixin {
  external JSUndefined pushDebugGroup(JSString groupLabel);
  external JSUndefined popDebugGroup();
  external JSUndefined insertDebugMarker(JSString markerLabel);
}

@JS('GPUComputePassEncoder')
@staticInterop
class GPUComputePassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin {
  external factory GPUComputePassEncoder();
}

extension GPUComputePassEncoderExtension on GPUComputePassEncoder {
  external JSUndefined setPipeline(GPUComputePipeline pipeline);
  external JSUndefined dispatchWorkgroups(GPUSize32 workgroupCountX);
  external JSUndefined dispatchWorkgroups_1(
      GPUSize32 workgroupCountX, GPUSize32 workgroupCountY);
  external JSUndefined dispatchWorkgroups_2(GPUSize32 workgroupCountX,
      GPUSize32 workgroupCountY, GPUSize32 workgroupCountZ);
  external JSUndefined dispatchWorkgroupsIndirect(
      GPUBuffer indirectBuffer, GPUSize64 indirectOffset);
  external JSUndefined end();
}

@JS('GPUComputePassTimestampWrite')
@staticInterop
class GPUComputePassTimestampWrite {
  external factory GPUComputePassTimestampWrite();
}

extension GPUComputePassTimestampWriteExtension
    on GPUComputePassTimestampWrite {
  // TODO
  // TODO
  // TODO
}

@JS('GPUComputePassDescriptor')
@staticInterop
class GPUComputePassDescriptor extends GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor();
}

extension GPUComputePassDescriptorExtension on GPUComputePassDescriptor {
  // TODO
}

@JS('GPURenderPassEncoder')
@staticInterop
class GPURenderPassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {
  external factory GPURenderPassEncoder();
}

extension GPURenderPassEncoderExtension on GPURenderPassEncoder {
  external JSUndefined setViewport(JSNumber x, JSNumber y, JSNumber width,
      JSNumber height, JSNumber minDepth, JSNumber maxDepth);
  external JSUndefined setScissorRect(
      GPUIntegerCoordinate x,
      GPUIntegerCoordinate y,
      GPUIntegerCoordinate width,
      GPUIntegerCoordinate height);
  external JSUndefined setBlendConstant(GPUColor color);
  external JSUndefined setStencilReference(GPUStencilValue reference);
  external JSUndefined beginOcclusionQuery(GPUSize32 queryIndex);
  external JSUndefined endOcclusionQuery();
  external JSUndefined executeBundles(JSArray bundles);
  external JSUndefined end();
}

@JS('GPURenderPassTimestampWrite')
@staticInterop
class GPURenderPassTimestampWrite {
  external factory GPURenderPassTimestampWrite();
}

extension GPURenderPassTimestampWriteExtension on GPURenderPassTimestampWrite {
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassDescriptor')
@staticInterop
class GPURenderPassDescriptor extends GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor();
}

extension GPURenderPassDescriptorExtension on GPURenderPassDescriptor {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassColorAttachment')
@staticInterop
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment();
}

extension GPURenderPassColorAttachmentExtension
    on GPURenderPassColorAttachment {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassDepthStencilAttachment')
@staticInterop
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment();
}

extension GPURenderPassDepthStencilAttachmentExtension
    on GPURenderPassDepthStencilAttachment {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderPassLayout')
@staticInterop
class GPURenderPassLayout extends GPUObjectDescriptorBase {
  external factory GPURenderPassLayout();
}

extension GPURenderPassLayoutExtension on GPURenderPassLayout {
  // TODO
  // TODO
  // TODO
}

@JS('GPURenderCommandsMixin')
@staticInterop
class GPURenderCommandsMixin {
  external factory GPURenderCommandsMixin();
}

extension GPURenderCommandsMixinExtension on GPURenderCommandsMixin {
  external JSUndefined setPipeline(GPURenderPipeline pipeline);
  external JSUndefined setIndexBuffer(
      GPUBuffer buffer, GPUIndexFormat indexFormat);
  external JSUndefined setIndexBuffer_1(
      GPUBuffer buffer, GPUIndexFormat indexFormat, GPUSize64 offset);
  external JSUndefined setIndexBuffer_2(GPUBuffer buffer,
      GPUIndexFormat indexFormat, GPUSize64 offset, GPUSize64 size);
  external JSUndefined setVertexBuffer(GPUIndex32 slot, GPUBuffer buffer);
  external JSUndefined setVertexBuffer_1(
      GPUIndex32 slot, GPUBuffer buffer, GPUSize64 offset);
  external JSUndefined setVertexBuffer_2(
      GPUIndex32 slot, GPUBuffer buffer, GPUSize64 offset, GPUSize64 size);
  external JSUndefined draw(GPUSize32 vertexCount);
  external JSUndefined draw_1(GPUSize32 vertexCount, GPUSize32 instanceCount);
  external JSUndefined draw_2(
      GPUSize32 vertexCount, GPUSize32 instanceCount, GPUSize32 firstVertex);
  external JSUndefined draw_3(GPUSize32 vertexCount, GPUSize32 instanceCount,
      GPUSize32 firstVertex, GPUSize32 firstInstance);
  external JSUndefined drawIndexed(GPUSize32 indexCount);
  external JSUndefined drawIndexed_1(
      GPUSize32 indexCount, GPUSize32 instanceCount);
  external JSUndefined drawIndexed_2(
      GPUSize32 indexCount, GPUSize32 instanceCount, GPUSize32 firstIndex);
  external JSUndefined drawIndexed_3(
      GPUSize32 indexCount,
      GPUSize32 instanceCount,
      GPUSize32 firstIndex,
      GPUSignedOffset32 baseVertex);
  external JSUndefined drawIndexed_4(
      GPUSize32 indexCount,
      GPUSize32 instanceCount,
      GPUSize32 firstIndex,
      GPUSignedOffset32 baseVertex,
      GPUSize32 firstInstance);
  external JSUndefined drawIndirect(
      GPUBuffer indirectBuffer, GPUSize64 indirectOffset);
  external JSUndefined drawIndexedIndirect(
      GPUBuffer indirectBuffer, GPUSize64 indirectOffset);
}

@JS('GPURenderBundle')
@staticInterop
class GPURenderBundle implements GPUObjectBase {
  external factory GPURenderBundle();
}

@JS('GPURenderBundleDescriptor')
@staticInterop
class GPURenderBundleDescriptor extends GPUObjectDescriptorBase {
  external factory GPURenderBundleDescriptor();
}

@JS('GPURenderBundleEncoder')
@staticInterop
class GPURenderBundleEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {
  external factory GPURenderBundleEncoder();
}

extension GPURenderBundleEncoderExtension on GPURenderBundleEncoder {
  external GPURenderBundle finish();
  external GPURenderBundle finish_1(GPURenderBundleDescriptor descriptor);
}

@JS('GPURenderBundleEncoderDescriptor')
@staticInterop
class GPURenderBundleEncoderDescriptor extends GPURenderPassLayout {
  external factory GPURenderBundleEncoderDescriptor();
}

extension GPURenderBundleEncoderDescriptorExtension
    on GPURenderBundleEncoderDescriptor {
  // TODO
  // TODO
}

@JS('GPUQueueDescriptor')
@staticInterop
class GPUQueueDescriptor extends GPUObjectDescriptorBase {
  external factory GPUQueueDescriptor();
}

@JS('GPUQueue')
@staticInterop
class GPUQueue implements GPUObjectBase {
  external factory GPUQueue();
}

extension GPUQueueExtension on GPUQueue {
  external JSUndefined submit(JSArray commandBuffers);
  external JSPromise onSubmittedWorkDone();
  external JSUndefined writeBuffer(
      GPUBuffer buffer, GPUSize64 bufferOffset, BufferSource data);
  external JSUndefined writeBuffer_1(GPUBuffer buffer, GPUSize64 bufferOffset,
      BufferSource data, GPUSize64 dataOffset);
  external JSUndefined writeBuffer_2(GPUBuffer buffer, GPUSize64 bufferOffset,
      BufferSource data, GPUSize64 dataOffset, GPUSize64 size);
  external JSUndefined writeTexture(GPUImageCopyTexture destination,
      BufferSource data, GPUImageDataLayout dataLayout, GPUExtent3D size);
  external JSUndefined copyExternalImageToTexture(
      GPUImageCopyExternalImage source,
      GPUImageCopyTextureTagged destination,
      GPUExtent3D copySize);
}

@JS('GPUQuerySet')
@staticInterop
class GPUQuerySet implements GPUObjectBase {
  external factory GPUQuerySet();
}

extension GPUQuerySetExtension on GPUQuerySet {
  external JSUndefined destroy();
  external GPUQueryType get type;
  external GPUSize32 get count;
}

@JS('GPUQuerySetDescriptor')
@staticInterop
class GPUQuerySetDescriptor extends GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor();
}

extension GPUQuerySetDescriptorExtension on GPUQuerySetDescriptor {
  // TODO
  // TODO
}

@JS('GPUCanvasContext')
@staticInterop
class GPUCanvasContext {
  external factory GPUCanvasContext();
}

extension GPUCanvasContextExtension on GPUCanvasContext {
  external JSAny get canvas;
  external JSUndefined configure(GPUCanvasConfiguration configuration);
  external JSUndefined unconfigure();
  external GPUTexture getCurrentTexture();
}

@JS('GPUCanvasConfiguration')
@staticInterop
class GPUCanvasConfiguration {
  external factory GPUCanvasConfiguration();
}

extension GPUCanvasConfigurationExtension on GPUCanvasConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUDeviceLostInfo')
@staticInterop
class GPUDeviceLostInfo {
  external factory GPUDeviceLostInfo();
}

extension GPUDeviceLostInfoExtension on GPUDeviceLostInfo {
  external JSAny get reason;
  external JSString get message;
}

@JS('GPUError')
@staticInterop
class GPUError {
  external factory GPUError();
}

extension GPUErrorExtension on GPUError {
  external JSString get message;
}

@JS('GPUValidationError')
@staticInterop
class GPUValidationError extends GPUError {
  external factory GPUValidationError();
  external factory GPUValidationError.a1(JSString message);
}

@JS('GPUOutOfMemoryError')
@staticInterop
class GPUOutOfMemoryError extends GPUError {
  external factory GPUOutOfMemoryError();
  external factory GPUOutOfMemoryError.a1(JSString message);
}

@JS('GPUInternalError')
@staticInterop
class GPUInternalError extends GPUError {
  external factory GPUInternalError();
  external factory GPUInternalError.a1(JSString message);
}

@JS('GPUUncapturedErrorEvent')
@staticInterop
class GPUUncapturedErrorEvent extends Event {
  external factory GPUUncapturedErrorEvent();
  external factory GPUUncapturedErrorEvent.a1(JSString type,
      GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict);
}

extension GPUUncapturedErrorEventExtension on GPUUncapturedErrorEvent {
  external GPUError get error;
}

@JS('GPUUncapturedErrorEventInit')
@staticInterop
class GPUUncapturedErrorEventInit extends EventInit {
  external factory GPUUncapturedErrorEventInit();
}

extension GPUUncapturedErrorEventInitExtension on GPUUncapturedErrorEventInit {
  // TODO
}

@JS('GPUColorDict')
@staticInterop
class GPUColorDict {
  external factory GPUColorDict();
}

extension GPUColorDictExtension on GPUColorDict {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('GPUOrigin2DDict')
@staticInterop
class GPUOrigin2DDict {
  external factory GPUOrigin2DDict();
}

extension GPUOrigin2DDictExtension on GPUOrigin2DDict {
  // TODO
  // TODO
}

@JS('GPUOrigin3DDict')
@staticInterop
class GPUOrigin3DDict {
  external factory GPUOrigin3DDict();
}

extension GPUOrigin3DDictExtension on GPUOrigin3DDict {
  // TODO
  // TODO
  // TODO
}

@JS('GPUExtent3DDict')
@staticInterop
class GPUExtent3DDict {
  external factory GPUExtent3DDict();
}

extension GPUExtent3DDictExtension on GPUExtent3DDict {
  // TODO
  // TODO
  // TODO
}

@JS('HID')
@staticInterop
class HID extends EventTarget {
  external factory HID();
}

extension HIDExtension on HID {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise getDevices();
  external JSPromise requestDevice(HIDDeviceRequestOptions options);
}

@JS('HIDDeviceRequestOptions')
@staticInterop
class HIDDeviceRequestOptions {
  external factory HIDDeviceRequestOptions();
}

extension HIDDeviceRequestOptionsExtension on HIDDeviceRequestOptions {
  // TODO
  // TODO
}

@JS('HIDDeviceFilter')
@staticInterop
class HIDDeviceFilter {
  external factory HIDDeviceFilter();
}

extension HIDDeviceFilterExtension on HIDDeviceFilter {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HIDDevice')
@staticInterop
class HIDDevice extends EventTarget {
  external factory HIDDevice();
}

extension HIDDeviceExtension on HIDDevice {
  external EventHandler get oninputreport;
  external set oninputreport(EventHandler value);
  external JSBoolean get opened;
  external JSNumber get vendorId;
  external JSNumber get productId;
  external JSString get productName;
  external JSArray get collections;
  external JSPromise open();
  external JSPromise close();
  external JSPromise forget();
  external JSPromise sendReport(JSNumber reportId, BufferSource data);
  external JSPromise sendFeatureReport(JSNumber reportId, BufferSource data);
  external JSPromise receiveFeatureReport(JSNumber reportId);
}

@JS('HIDConnectionEvent')
@staticInterop
class HIDConnectionEvent extends Event {
  external factory HIDConnectionEvent();
  external factory HIDConnectionEvent.a1(
      JSString type, HIDConnectionEventInit eventInitDict);
}

extension HIDConnectionEventExtension on HIDConnectionEvent {
  external HIDDevice get device;
}

@JS('HIDConnectionEventInit')
@staticInterop
class HIDConnectionEventInit extends EventInit {
  external factory HIDConnectionEventInit();
}

extension HIDConnectionEventInitExtension on HIDConnectionEventInit {
  // TODO
}

@JS('HIDInputReportEvent')
@staticInterop
class HIDInputReportEvent extends Event {
  external factory HIDInputReportEvent();
  external factory HIDInputReportEvent.a1(
      JSString type, HIDInputReportEventInit eventInitDict);
}

extension HIDInputReportEventExtension on HIDInputReportEvent {
  external HIDDevice get device;
  external JSNumber get reportId;
  external JSDataView get data;
}

@JS('HIDInputReportEventInit')
@staticInterop
class HIDInputReportEventInit extends EventInit {
  external factory HIDInputReportEventInit();
}

extension HIDInputReportEventInitExtension on HIDInputReportEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('HIDCollectionInfo')
@staticInterop
class HIDCollectionInfo {
  external factory HIDCollectionInfo();
}

extension HIDCollectionInfoExtension on HIDCollectionInfo {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HIDReportInfo')
@staticInterop
class HIDReportInfo {
  external factory HIDReportInfo();
}

extension HIDReportInfoExtension on HIDReportInfo {
  // TODO
  // TODO
}

@JS('HIDReportItem')
@staticInterop
class HIDReportItem {
  external factory HIDReportItem();
}

extension HIDReportItemExtension on HIDReportItem {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('DOMException')
@staticInterop
class DOMException {
  external factory DOMException();
  external factory DOMException.a1();
  external factory DOMException.a1_1(JSString message);
  external factory DOMException.a1_2(JSString message, JSString name);
  external static JSNumber get INDEX_SIZE_ERR;
  external static JSNumber get DOMSTRING_SIZE_ERR;
  external static JSNumber get HIERARCHY_REQUEST_ERR;
  external static JSNumber get WRONG_DOCUMENT_ERR;
  external static JSNumber get INVALID_CHARACTER_ERR;
  external static JSNumber get NO_DATA_ALLOWED_ERR;
  external static JSNumber get NO_MODIFICATION_ALLOWED_ERR;
  external static JSNumber get NOT_FOUND_ERR;
  external static JSNumber get NOT_SUPPORTED_ERR;
  external static JSNumber get INUSE_ATTRIBUTE_ERR;
  external static JSNumber get INVALID_STATE_ERR;
  external static JSNumber get SYNTAX_ERR;
  external static JSNumber get INVALID_MODIFICATION_ERR;
  external static JSNumber get NAMESPACE_ERR;
  external static JSNumber get INVALID_ACCESS_ERR;
  external static JSNumber get VALIDATION_ERR;
  external static JSNumber get TYPE_MISMATCH_ERR;
  external static JSNumber get SECURITY_ERR;
  external static JSNumber get NETWORK_ERR;
  external static JSNumber get ABORT_ERR;
  external static JSNumber get URL_MISMATCH_ERR;
  external static JSNumber get QUOTA_EXCEEDED_ERR;
  external static JSNumber get TIMEOUT_ERR;
  external static JSNumber get INVALID_NODE_TYPE_ERR;
  external static JSNumber get DATA_CLONE_ERR;
}

extension DOMExceptionExtension on DOMException {
  external JSString get name;
  external JSString get message;
  external JSNumber get code;
}

@JS('MidiPermissionDescriptor')
@staticInterop
class MidiPermissionDescriptor extends PermissionDescriptor {
  external factory MidiPermissionDescriptor();
}

extension MidiPermissionDescriptorExtension on MidiPermissionDescriptor {
  // TODO
}

@JS('MIDIOptions')
@staticInterop
class MIDIOptions {
  external factory MIDIOptions();
}

extension MIDIOptionsExtension on MIDIOptions {
  // TODO
  // TODO
}

@JS('MIDIInputMap')
@staticInterop
class MIDIInputMap {
  external factory MIDIInputMap();
}

extension MIDIInputMapExtension on MIDIInputMap {
  // TODO
}

@JS('MIDIOutputMap')
@staticInterop
class MIDIOutputMap {
  external factory MIDIOutputMap();
}

extension MIDIOutputMapExtension on MIDIOutputMap {
  // TODO
}

@JS('MIDIAccess')
@staticInterop
class MIDIAccess extends EventTarget {
  external factory MIDIAccess();
}

extension MIDIAccessExtension on MIDIAccess {
  external MIDIInputMap get inputs;
  external MIDIOutputMap get outputs;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external JSBoolean get sysexEnabled;
}

@JS('MIDIPort')
@staticInterop
class MIDIPort extends EventTarget {
  external factory MIDIPort();
}

extension MIDIPortExtension on MIDIPort {
  external JSString get id;
  external JSString? get manufacturer;
  external JSString? get name;
  external MIDIPortType get type;
  external JSString? get version;
  external MIDIPortDeviceState get state;
  external MIDIPortConnectionState get connection;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external JSPromise open();
  external JSPromise close();
}

@JS('MIDIInput')
@staticInterop
class MIDIInput extends MIDIPort {
  external factory MIDIInput();
}

extension MIDIInputExtension on MIDIInput {
  external EventHandler get onmidimessage;
  external set onmidimessage(EventHandler value);
}

@JS('MIDIOutput')
@staticInterop
class MIDIOutput extends MIDIPort {
  external factory MIDIOutput();
}

extension MIDIOutputExtension on MIDIOutput {
  external JSUndefined send(JSArray data);
  external JSUndefined send_1(JSArray data, DOMHighResTimeStamp timestamp);
  external JSUndefined clear();
}

@JS('MIDIMessageEvent')
@staticInterop
class MIDIMessageEvent extends Event {
  external factory MIDIMessageEvent();
  external factory MIDIMessageEvent.a1(JSString type);
  external factory MIDIMessageEvent.a1_1(
      JSString type, MIDIMessageEventInit eventInitDict);
}

extension MIDIMessageEventExtension on MIDIMessageEvent {
  external JSUint8Array get data;
}

@JS('MIDIMessageEventInit')
@staticInterop
class MIDIMessageEventInit extends EventInit {
  external factory MIDIMessageEventInit();
}

extension MIDIMessageEventInitExtension on MIDIMessageEventInit {
  // TODO
}

@JS('MIDIConnectionEvent')
@staticInterop
class MIDIConnectionEvent extends Event {
  external factory MIDIConnectionEvent();
  external factory MIDIConnectionEvent.a1(JSString type);
  external factory MIDIConnectionEvent.a1_1(
      JSString type, MIDIConnectionEventInit eventInitDict);
}

extension MIDIConnectionEventExtension on MIDIConnectionEvent {
  external MIDIPort get port;
}

@JS('MIDIConnectionEventInit')
@staticInterop
class MIDIConnectionEventInit extends EventInit {
  external factory MIDIConnectionEventInit();
}

extension MIDIConnectionEventInitExtension on MIDIConnectionEventInit {
  // TODO
}

@JS('NavigatorML')
@staticInterop
class NavigatorML {
  external factory NavigatorML();
}

extension NavigatorMLExtension on NavigatorML {
  external ML get ml;
}

@JS('MLContextOptions')
@staticInterop
class MLContextOptions {
  external factory MLContextOptions();
}

extension MLContextOptionsExtension on MLContextOptions {
  // TODO
  // TODO
}

@JS('ML')
@staticInterop
class ML {
  external factory ML();
}

extension MLExtension on ML {
  external JSPromise createContext();
  external JSPromise createContext_1(MLContextOptions options);
  @JS('createContext')
  external JSPromise createContext1(GPUDevice gpuDevice);
  external MLContext createContextSync();
  external MLContext createContextSync_1(MLContextOptions options);
  @JS('createContextSync')
  external MLContext createContextSync1(GPUDevice gpuDevice);
}

@JS('MLGraph')
@staticInterop
class MLGraph {
  external factory MLGraph();
}

@JS('MLOperandDescriptor')
@staticInterop
class MLOperandDescriptor {
  external factory MLOperandDescriptor();
}

extension MLOperandDescriptorExtension on MLOperandDescriptor {
  // TODO
  // TODO
}

@JS('MLOperand')
@staticInterop
class MLOperand {
  external factory MLOperand();
}

@JS('MLActivation')
@staticInterop
class MLActivation {
  external factory MLActivation();
}

@JS('MLContext')
@staticInterop
class MLContext {
  external factory MLContext();
}

extension MLContextExtension on MLContext {
  external JSUndefined computeSync(MLGraph graph,
      MLNamedArrayBufferViews inputs, MLNamedArrayBufferViews outputs);
  external JSPromise compute(MLGraph graph, MLNamedArrayBufferViews inputs,
      MLNamedArrayBufferViews outputs);
  external MLCommandEncoder createCommandEncoder();
}

@JS('MLComputeResult')
@staticInterop
class MLComputeResult {
  external factory MLComputeResult();
}

extension MLComputeResultExtension on MLComputeResult {
  // TODO
  // TODO
}

@JS('MLCommandEncoder')
@staticInterop
class MLCommandEncoder {
  external factory MLCommandEncoder();
}

extension MLCommandEncoderExtension on MLCommandEncoder {
  external JSUndefined initializeGraph(MLGraph graph);
  external JSUndefined dispatch(
      MLGraph graph, MLNamedGPUResources inputs, MLNamedGPUResources outputs);
  external GPUCommandBuffer finish();
  external GPUCommandBuffer finish_1(GPUCommandBufferDescriptor descriptor);
}

@JS('MLBufferResourceView')
@staticInterop
class MLBufferResourceView {
  external factory MLBufferResourceView();
}

extension MLBufferResourceViewExtension on MLBufferResourceView {
  // TODO
  // TODO
  // TODO
}

@JS('MLGraphBuilder')
@staticInterop
class MLGraphBuilder {
  external factory MLGraphBuilder();
  external factory MLGraphBuilder.a1(MLContext context);
}

extension MLGraphBuilderExtension on MLGraphBuilder {
  external MLOperand input(JSString name, MLOperandDescriptor desc);
  external MLOperand constant(
      MLOperandDescriptor desc, MLBufferView bufferView);
  @JS('constant')
  external MLOperand constant1(JSNumber value);
  @JS('constant')
  external MLOperand constant1_1(JSNumber value, MLOperandType type);
  external JSPromise build(MLNamedOperands outputs);
  external MLGraph buildSync(MLNamedOperands outputs);
  external MLOperand batchNormalization(
      MLOperand input, MLOperand mean, MLOperand variance);
  external MLOperand batchNormalization_1(MLOperand input, MLOperand mean,
      MLOperand variance, MLBatchNormalizationOptions options);
  external MLOperand clamp(MLOperand x);
  external MLOperand clamp_1(MLOperand x, MLClampOptions options);
  @JS('clamp')
  external MLActivation clamp1();
  @JS('clamp')
  external MLActivation clamp1_1(MLClampOptions options);
  external MLOperand concat(JSArray inputs, JSNumber axis);
  external MLOperand conv2d(MLOperand input, MLOperand filter);
  external MLOperand conv2d_1(
      MLOperand input, MLOperand filter, MLConv2dOptions options);
  external MLOperand convTranspose2d(MLOperand input, MLOperand filter);
  external MLOperand convTranspose2d_1(
      MLOperand input, MLOperand filter, MLConvTranspose2dOptions options);
  external MLOperand add(MLOperand a, MLOperand b);
  external MLOperand sub(MLOperand a, MLOperand b);
  external MLOperand mul(MLOperand a, MLOperand b);
  external MLOperand div(MLOperand a, MLOperand b);
  external MLOperand max(MLOperand a, MLOperand b);
  external MLOperand min(MLOperand a, MLOperand b);
  external MLOperand pow(MLOperand a, MLOperand b);
  external MLOperand abs(MLOperand x);
  external MLOperand ceil(MLOperand x);
  external MLOperand cos(MLOperand x);
  external MLOperand exp(MLOperand x);
  external MLOperand floor(MLOperand x);
  external MLOperand log(MLOperand x);
  external MLOperand neg(MLOperand x);
  external MLOperand sin(MLOperand x);
  external MLOperand tan(MLOperand x);
  external MLOperand elu(MLOperand x);
  external MLOperand elu_1(MLOperand x, MLEluOptions options);
  @JS('elu')
  external MLActivation elu1();
  @JS('elu')
  external MLActivation elu1_1(MLEluOptions options);
  external MLOperand gemm(MLOperand a, MLOperand b);
  external MLOperand gemm_1(MLOperand a, MLOperand b, MLGemmOptions options);
  external JSArray gru(MLOperand input, MLOperand weight,
      MLOperand recurrentWeight, JSNumber steps, JSNumber hiddenSize);
  external JSArray gru_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      JSNumber steps,
      JSNumber hiddenSize,
      MLGruOptions options);
  external MLOperand gruCell(MLOperand input, MLOperand weight,
      MLOperand recurrentWeight, MLOperand hiddenState, JSNumber hiddenSize);
  external MLOperand gruCell_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      MLOperand hiddenState,
      JSNumber hiddenSize,
      MLGruCellOptions options);
  external MLOperand hardSigmoid(MLOperand x);
  external MLOperand hardSigmoid_1(MLOperand x, MLHardSigmoidOptions options);
  @JS('hardSigmoid')
  external MLActivation hardSigmoid1();
  @JS('hardSigmoid')
  external MLActivation hardSigmoid1_1(MLHardSigmoidOptions options);
  external MLOperand hardSwish(MLOperand x);
  @JS('hardSwish')
  external MLActivation hardSwish1();
  external MLOperand instanceNormalization(MLOperand input);
  external MLOperand instanceNormalization_1(
      MLOperand input, MLInstanceNormalizationOptions options);
  external MLOperand leakyRelu(MLOperand x);
  external MLOperand leakyRelu_1(MLOperand x, MLLeakyReluOptions options);
  @JS('leakyRelu')
  external MLActivation leakyRelu1();
  @JS('leakyRelu')
  external MLActivation leakyRelu1_1(MLLeakyReluOptions options);
  external MLOperand linear(MLOperand x);
  external MLOperand linear_1(MLOperand x, MLLinearOptions options);
  @JS('linear')
  external MLActivation linear1();
  @JS('linear')
  external MLActivation linear1_1(MLLinearOptions options);
  external JSArray lstm(MLOperand input, MLOperand weight,
      MLOperand recurrentWeight, JSNumber steps, JSNumber hiddenSize);
  external JSArray lstm_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      JSNumber steps,
      JSNumber hiddenSize,
      MLLstmOptions options);
  external JSArray lstmCell(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      MLOperand hiddenState,
      MLOperand cellState,
      JSNumber hiddenSize);
  external JSArray lstmCell_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      MLOperand hiddenState,
      MLOperand cellState,
      JSNumber hiddenSize,
      MLLstmCellOptions options);
  external MLOperand matmul(MLOperand a, MLOperand b);
  external MLOperand pad(MLOperand input, MLOperand padding);
  external MLOperand pad_1(
      MLOperand input, MLOperand padding, MLPadOptions options);
  external MLOperand averagePool2d(MLOperand input);
  external MLOperand averagePool2d_1(MLOperand input, MLPool2dOptions options);
  external MLOperand l2Pool2d(MLOperand input);
  external MLOperand l2Pool2d_1(MLOperand input, MLPool2dOptions options);
  external MLOperand maxPool2d(MLOperand input);
  external MLOperand maxPool2d_1(MLOperand input, MLPool2dOptions options);
  external MLOperand reduceL1(MLOperand input);
  external MLOperand reduceL1_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceL2(MLOperand input);
  external MLOperand reduceL2_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceLogSum(MLOperand input);
  external MLOperand reduceLogSum_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceLogSumExp(MLOperand input);
  external MLOperand reduceLogSumExp_1(
      MLOperand input, MLReduceOptions options);
  external MLOperand reduceMax(MLOperand input);
  external MLOperand reduceMax_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceMean(MLOperand input);
  external MLOperand reduceMean_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceMin(MLOperand input);
  external MLOperand reduceMin_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceProduct(MLOperand input);
  external MLOperand reduceProduct_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceSum(MLOperand input);
  external MLOperand reduceSum_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceSumSquare(MLOperand input);
  external MLOperand reduceSumSquare_1(
      MLOperand input, MLReduceOptions options);
  external MLOperand relu(MLOperand x);
  @JS('relu')
  external MLActivation relu1();
  external MLOperand resample2d(MLOperand input);
  external MLOperand resample2d_1(MLOperand input, MLResample2dOptions options);
  external MLOperand reshape(MLOperand input, JSArray newShape);
  external MLOperand sigmoid(MLOperand x);
  @JS('sigmoid')
  external MLActivation sigmoid1();
  external MLOperand slice(MLOperand input, JSArray starts, JSArray sizes);
  external MLOperand slice_1(
      MLOperand input, JSArray starts, JSArray sizes, MLSliceOptions options);
  external MLOperand softmax(MLOperand x);
  @JS('softmax')
  external MLActivation softmax1();
  external MLOperand softplus(MLOperand x);
  external MLOperand softplus_1(MLOperand x, MLSoftplusOptions options);
  @JS('softplus')
  external MLActivation softplus1();
  @JS('softplus')
  external MLActivation softplus1_1(MLSoftplusOptions options);
  external MLOperand softsign(MLOperand x);
  @JS('softsign')
  external MLActivation softsign1();
  external JSArray split(MLOperand input, JSAny splits);
  external JSArray split_1(
      MLOperand input, JSAny splits, MLSplitOptions options);
  external MLOperand squeeze(MLOperand input);
  external MLOperand squeeze_1(MLOperand input, MLSqueezeOptions options);
  external MLOperand tanh(MLOperand x);
  @JS('tanh')
  external MLActivation tanh1();
  external MLOperand transpose(MLOperand input);
  external MLOperand transpose_1(MLOperand input, MLTransposeOptions options);
}

@JS('MLBatchNormalizationOptions')
@staticInterop
class MLBatchNormalizationOptions {
  external factory MLBatchNormalizationOptions();
}

extension MLBatchNormalizationOptionsExtension on MLBatchNormalizationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLClampOptions')
@staticInterop
class MLClampOptions {
  external factory MLClampOptions();
}

extension MLClampOptionsExtension on MLClampOptions {
  // TODO
  // TODO
}

@JS('MLConv2dOptions')
@staticInterop
class MLConv2dOptions {
  external factory MLConv2dOptions();
}

extension MLConv2dOptionsExtension on MLConv2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLConvTranspose2dOptions')
@staticInterop
class MLConvTranspose2dOptions {
  external factory MLConvTranspose2dOptions();
}

extension MLConvTranspose2dOptionsExtension on MLConvTranspose2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLEluOptions')
@staticInterop
class MLEluOptions {
  external factory MLEluOptions();
}

extension MLEluOptionsExtension on MLEluOptions {
  // TODO
}

@JS('MLGemmOptions')
@staticInterop
class MLGemmOptions {
  external factory MLGemmOptions();
}

extension MLGemmOptionsExtension on MLGemmOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLGruOptions')
@staticInterop
class MLGruOptions {
  external factory MLGruOptions();
}

extension MLGruOptionsExtension on MLGruOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLGruCellOptions')
@staticInterop
class MLGruCellOptions {
  external factory MLGruCellOptions();
}

extension MLGruCellOptionsExtension on MLGruCellOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLHardSigmoidOptions')
@staticInterop
class MLHardSigmoidOptions {
  external factory MLHardSigmoidOptions();
}

extension MLHardSigmoidOptionsExtension on MLHardSigmoidOptions {
  // TODO
  // TODO
}

@JS('MLInstanceNormalizationOptions')
@staticInterop
class MLInstanceNormalizationOptions {
  external factory MLInstanceNormalizationOptions();
}

extension MLInstanceNormalizationOptionsExtension
    on MLInstanceNormalizationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLLeakyReluOptions')
@staticInterop
class MLLeakyReluOptions {
  external factory MLLeakyReluOptions();
}

extension MLLeakyReluOptionsExtension on MLLeakyReluOptions {
  // TODO
}

@JS('MLLinearOptions')
@staticInterop
class MLLinearOptions {
  external factory MLLinearOptions();
}

extension MLLinearOptionsExtension on MLLinearOptions {
  // TODO
  // TODO
}

@JS('MLLstmOptions')
@staticInterop
class MLLstmOptions {
  external factory MLLstmOptions();
}

extension MLLstmOptionsExtension on MLLstmOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLLstmCellOptions')
@staticInterop
class MLLstmCellOptions {
  external factory MLLstmCellOptions();
}

extension MLLstmCellOptionsExtension on MLLstmCellOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLPadOptions')
@staticInterop
class MLPadOptions {
  external factory MLPadOptions();
}

extension MLPadOptionsExtension on MLPadOptions {
  // TODO
  // TODO
}

@JS('MLPool2dOptions')
@staticInterop
class MLPool2dOptions {
  external factory MLPool2dOptions();
}

extension MLPool2dOptionsExtension on MLPool2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLReduceOptions')
@staticInterop
class MLReduceOptions {
  external factory MLReduceOptions();
}

extension MLReduceOptionsExtension on MLReduceOptions {
  // TODO
  // TODO
}

@JS('MLResample2dOptions')
@staticInterop
class MLResample2dOptions {
  external factory MLResample2dOptions();
}

extension MLResample2dOptionsExtension on MLResample2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLSliceOptions')
@staticInterop
class MLSliceOptions {
  external factory MLSliceOptions();
}

extension MLSliceOptionsExtension on MLSliceOptions {
  // TODO
}

@JS('MLSoftplusOptions')
@staticInterop
class MLSoftplusOptions {
  external factory MLSoftplusOptions();
}

extension MLSoftplusOptionsExtension on MLSoftplusOptions {
  // TODO
}

@JS('MLSplitOptions')
@staticInterop
class MLSplitOptions {
  external factory MLSplitOptions();
}

extension MLSplitOptionsExtension on MLSplitOptions {
  // TODO
}

@JS('MLSqueezeOptions')
@staticInterop
class MLSqueezeOptions {
  external factory MLSqueezeOptions();
}

extension MLSqueezeOptionsExtension on MLSqueezeOptions {
  // TODO
}

@JS('MLTransposeOptions')
@staticInterop
class MLTransposeOptions {
  external factory MLTransposeOptions();
}

extension MLTransposeOptionsExtension on MLTransposeOptions {
  // TODO
}

@JS('RTCRtpSender')
@staticInterop
class RTCRtpSender {
  external factory RTCRtpSender();
  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpSenderExtension on RTCRtpSender {
  external RTCRtpTransform? get transform;
  external set transform(RTCRtpTransform? value);
  external JSPromise generateKeyFrame();
  external JSPromise generateKeyFrame_1(JSArray rids);
  external MediaStreamTrack? get track;
  external RTCDtlsTransport? get transport;
  external JSPromise setParameters(RTCRtpSendParameters parameters);
  external RTCRtpSendParameters getParameters();
  external JSPromise replaceTrack(MediaStreamTrack? withTrack);
  external JSUndefined setStreams(MediaStream streams);
  external JSPromise getStats();
  external RTCDTMFSender? get dtmf;
}

@JS('RTCRtpReceiver')
@staticInterop
class RTCRtpReceiver {
  external factory RTCRtpReceiver();
  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpReceiverExtension on RTCRtpReceiver {
  external RTCRtpTransform? get transform;
  external set transform(RTCRtpTransform? value);
  external MediaStreamTrack get track;
  external RTCDtlsTransport? get transport;
  external RTCRtpReceiveParameters getParameters();
  external JSArray getContributingSources();
  external JSArray getSynchronizationSources();
  external JSPromise getStats();
}

@JS('SFrameTransformOptions')
@staticInterop
class SFrameTransformOptions {
  external factory SFrameTransformOptions();
}

extension SFrameTransformOptionsExtension on SFrameTransformOptions {
  // TODO
}

@JS('SFrameTransform')
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external factory SFrameTransform();
  external factory SFrameTransform.a1();
  external factory SFrameTransform.a1_1(SFrameTransformOptions options);
}

extension SFrameTransformExtension on SFrameTransform {
  external JSPromise setEncryptionKey(CryptoKey key);
  external JSPromise setEncryptionKey_1(CryptoKey key, CryptoKeyID keyID);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('SFrameTransformErrorEvent')
@staticInterop
class SFrameTransformErrorEvent extends Event {
  external factory SFrameTransformErrorEvent();
  external factory SFrameTransformErrorEvent.a1(
      JSString type, SFrameTransformErrorEventInit eventInitDict);
}

extension SFrameTransformErrorEventExtension on SFrameTransformErrorEvent {
  external SFrameTransformErrorEventType get errorType;
  external CryptoKeyID? get keyID;
  external JSAny get frame;
}

@JS('SFrameTransformErrorEventInit')
@staticInterop
class SFrameTransformErrorEventInit extends EventInit {
  external factory SFrameTransformErrorEventInit();
}

extension SFrameTransformErrorEventInitExtension
    on SFrameTransformErrorEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('RTCEncodedVideoFrameMetadata')
@staticInterop
class RTCEncodedVideoFrameMetadata {
  external factory RTCEncodedVideoFrameMetadata();
}

extension RTCEncodedVideoFrameMetadataExtension
    on RTCEncodedVideoFrameMetadata {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCEncodedVideoFrame')
@staticInterop
class RTCEncodedVideoFrame {
  external factory RTCEncodedVideoFrame();
}

extension RTCEncodedVideoFrameExtension on RTCEncodedVideoFrame {
  external RTCEncodedVideoFrameType get type;
  external JSNumber get timestamp;
  external JSArrayBuffer get data;
  external set data(JSArrayBuffer value);
  external RTCEncodedVideoFrameMetadata getMetadata();
}

@JS('RTCEncodedAudioFrameMetadata')
@staticInterop
class RTCEncodedAudioFrameMetadata {
  external factory RTCEncodedAudioFrameMetadata();
}

extension RTCEncodedAudioFrameMetadataExtension
    on RTCEncodedAudioFrameMetadata {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCEncodedAudioFrame')
@staticInterop
class RTCEncodedAudioFrame {
  external factory RTCEncodedAudioFrame();
}

extension RTCEncodedAudioFrameExtension on RTCEncodedAudioFrame {
  external JSNumber get timestamp;
  external JSArrayBuffer get data;
  external set data(JSArrayBuffer value);
  external RTCEncodedAudioFrameMetadata getMetadata();
}

@JS('RTCTransformEvent')
@staticInterop
class RTCTransformEvent extends Event {
  external factory RTCTransformEvent();
}

extension RTCTransformEventExtension on RTCTransformEvent {
  external RTCRtpScriptTransformer get transformer;
}

@JS('RTCRtpScriptTransformer')
@staticInterop
class RTCRtpScriptTransformer {
  external factory RTCRtpScriptTransformer();
}

extension RTCRtpScriptTransformerExtension on RTCRtpScriptTransformer {
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSAny get options;
  external JSPromise generateKeyFrame();
  external JSPromise generateKeyFrame_1(JSString rid);
  external JSPromise sendKeyFrameRequest();
}

@JS('RTCRtpScriptTransform')
@staticInterop
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform();
  external factory RTCRtpScriptTransform.a1(Worker worker);
  external factory RTCRtpScriptTransform.a1_1(Worker worker, JSAny options);
  external factory RTCRtpScriptTransform.a1_2(
      Worker worker, JSAny options, JSArray transfer);
}

@JS('RTCIceParameters')
@staticInterop
class RTCIceParameters {
  external factory RTCIceParameters();
}

extension RTCIceParametersExtension on RTCIceParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceGatherOptions')
@staticInterop
class RTCIceGatherOptions {
  external factory RTCIceGatherOptions();
}

extension RTCIceGatherOptionsExtension on RTCIceGatherOptions {
  // TODO
  // TODO
}

@JS('RTCIceTransport')
@staticInterop
class RTCIceTransport extends EventTarget {
  external factory RTCIceTransport();
}

extension RTCIceTransportExtension on RTCIceTransport {
  external JSUndefined gather();
  external JSUndefined gather_1(RTCIceGatherOptions options);
  external JSUndefined start();
  external JSUndefined start_1(RTCIceParameters remoteParameters);
  external JSUndefined start_2(
      RTCIceParameters remoteParameters, RTCIceRole role);
  external JSUndefined stop();
  external JSUndefined addRemoteCandidate();
  external JSUndefined addRemoteCandidate_1(
      RTCIceCandidateInit remoteCandidate);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onicecandidate;
  external set onicecandidate(EventHandler value);
  external RTCIceRole get role;
  external RTCIceComponent get component;
  external RTCIceTransportState get state;
  external RTCIceGathererState get gatheringState;
  external JSArray getLocalCandidates();
  external JSArray getRemoteCandidates();
  external RTCIceCandidatePair? getSelectedCandidatePair();
  external RTCIceParameters? getLocalParameters();
  external RTCIceParameters? getRemoteParameters();
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get ongatheringstatechange;
  external set ongatheringstatechange(EventHandler value);
  external EventHandler get onselectedcandidatepairchange;
  external set onselectedcandidatepairchange(EventHandler value);
}

@JS('RTCIdentityProviderGlobalScope')
@staticInterop
class RTCIdentityProviderGlobalScope extends WorkerGlobalScope {
  external factory RTCIdentityProviderGlobalScope();
}

extension RTCIdentityProviderGlobalScopeExtension
    on RTCIdentityProviderGlobalScope {
  external RTCIdentityProviderRegistrar get rtcIdentityProvider;
}

@JS('RTCIdentityProviderRegistrar')
@staticInterop
class RTCIdentityProviderRegistrar {
  external factory RTCIdentityProviderRegistrar();
}

extension RTCIdentityProviderRegistrarExtension
    on RTCIdentityProviderRegistrar {
  external JSUndefined register(RTCIdentityProvider idp);
}

@JS('RTCIdentityProvider')
@staticInterop
class RTCIdentityProvider {
  external factory RTCIdentityProvider();
}

extension RTCIdentityProviderExtension on RTCIdentityProvider {
  // TODO
  // TODO
}

@JS('RTCIdentityAssertionResult')
@staticInterop
class RTCIdentityAssertionResult {
  external factory RTCIdentityAssertionResult();
}

extension RTCIdentityAssertionResultExtension on RTCIdentityAssertionResult {
  // TODO
  // TODO
}

@JS('RTCIdentityProviderDetails')
@staticInterop
class RTCIdentityProviderDetails {
  external factory RTCIdentityProviderDetails();
}

extension RTCIdentityProviderDetailsExtension on RTCIdentityProviderDetails {
  // TODO
  // TODO
}

@JS('RTCIdentityValidationResult')
@staticInterop
class RTCIdentityValidationResult {
  external factory RTCIdentityValidationResult();
}

extension RTCIdentityValidationResultExtension on RTCIdentityValidationResult {
  // TODO
  // TODO
}

@JS('RTCPeerConnection')
@staticInterop
class RTCPeerConnection extends EventTarget {
  external factory RTCPeerConnection();
  external factory RTCPeerConnection.a1();
  external factory RTCPeerConnection.a1_1(RTCConfiguration configuration);
  external static JSPromise generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);
}

extension RTCPeerConnectionExtension on RTCPeerConnection {
  external JSUndefined setIdentityProvider(JSString provider);
  external JSUndefined setIdentityProvider_1(
      JSString provider, RTCIdentityProviderOptions options);
  external JSPromise getIdentityAssertion();
  external JSPromise get peerIdentity;
  external JSString? get idpLoginUrl;
  external JSString? get idpErrorInfo;
  external JSPromise createOffer();
  external JSPromise createOffer_1(RTCOfferOptions options);
  external JSPromise createAnswer();
  external JSPromise createAnswer_1(RTCAnswerOptions options);
  external JSPromise setLocalDescription();
  external JSPromise setLocalDescription_1(
      RTCLocalSessionDescriptionInit description);
  external RTCSessionDescription? get localDescription;
  external RTCSessionDescription? get currentLocalDescription;
  external RTCSessionDescription? get pendingLocalDescription;
  external JSPromise setRemoteDescription(
      RTCSessionDescriptionInit description);
  external RTCSessionDescription? get remoteDescription;
  external RTCSessionDescription? get currentRemoteDescription;
  external RTCSessionDescription? get pendingRemoteDescription;
  external JSPromise addIceCandidate();
  external JSPromise addIceCandidate_1(RTCIceCandidateInit candidate);
  external RTCSignalingState get signalingState;
  external RTCIceGatheringState get iceGatheringState;
  external RTCIceConnectionState get iceConnectionState;
  external RTCPeerConnectionState get connectionState;
  external JSBoolean? get canTrickleIceCandidates;
  external JSUndefined restartIce();
  external RTCConfiguration getConfiguration();
  external JSUndefined setConfiguration();
  external JSUndefined setConfiguration_1(RTCConfiguration configuration);
  external JSUndefined close();
  external EventHandler get onnegotiationneeded;
  external set onnegotiationneeded(EventHandler value);
  external EventHandler get onicecandidate;
  external set onicecandidate(EventHandler value);
  external EventHandler get onicecandidateerror;
  external set onicecandidateerror(EventHandler value);
  external EventHandler get onsignalingstatechange;
  external set onsignalingstatechange(EventHandler value);
  external EventHandler get oniceconnectionstatechange;
  external set oniceconnectionstatechange(EventHandler value);
  external EventHandler get onicegatheringstatechange;
  external set onicegatheringstatechange(EventHandler value);
  external EventHandler get onconnectionstatechange;
  external set onconnectionstatechange(EventHandler value);
  @JS('createOffer')
  external JSPromise createOffer1(RTCSessionDescriptionCallback successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('createOffer')
  external JSPromise createOffer1_1(
      RTCSessionDescriptionCallback successCallback,
      RTCPeerConnectionErrorCallback failureCallback,
      RTCOfferOptions options);
  @JS('setLocalDescription')
  external JSPromise setLocalDescription1(
      RTCLocalSessionDescriptionInit description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('createAnswer')
  external JSPromise createAnswer1(
      RTCSessionDescriptionCallback successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('setRemoteDescription')
  external JSPromise setRemoteDescription1(
      RTCSessionDescriptionInit description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('addIceCandidate')
  external JSPromise addIceCandidate1(
      RTCIceCandidateInit candidate,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  external JSArray getSenders();
  external JSArray getReceivers();
  external JSArray getTransceivers();
  external RTCRtpSender addTrack(MediaStreamTrack track, MediaStream streams);
  external JSUndefined removeTrack(RTCRtpSender sender);
  external RTCRtpTransceiver addTransceiver(JSAny trackOrKind);
  external RTCRtpTransceiver addTransceiver_1(
      JSAny trackOrKind, RTCRtpTransceiverInit init);
  external EventHandler get ontrack;
  external set ontrack(EventHandler value);
  external RTCSctpTransport? get sctp;
  external RTCDataChannel createDataChannel(JSString label);
  external RTCDataChannel createDataChannel_1(
      JSString label, RTCDataChannelInit dataChannelDict);
  external EventHandler get ondatachannel;
  external set ondatachannel(EventHandler value);
  external JSPromise getStats();
  external JSPromise getStats_1(MediaStreamTrack? selector);
}

@JS('RTCConfiguration')
@staticInterop
class RTCConfiguration {
  external factory RTCConfiguration();
}

extension RTCConfigurationExtension on RTCConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCIdentityProviderOptions')
@staticInterop
class RTCIdentityProviderOptions {
  external factory RTCIdentityProviderOptions();
}

extension RTCIdentityProviderOptionsExtension on RTCIdentityProviderOptions {
  // TODO
  // TODO
  // TODO
}

@JS('RTCIdentityAssertion')
@staticInterop
class RTCIdentityAssertion {
  external factory RTCIdentityAssertion();
  external factory RTCIdentityAssertion.a1(JSString idp, JSString name);
}

extension RTCIdentityAssertionExtension on RTCIdentityAssertion {
  external JSString get idp;
  external set idp(JSString value);
  external JSString get name;
  external set name(JSString value);
}

@JS('RTCError')
@staticInterop
class RTCError extends DOMException {
  external factory RTCError();
  external factory RTCError.a1(RTCErrorInit init);
  external factory RTCError.a1_1(RTCErrorInit init, JSString message);
}

extension RTCErrorExtension on RTCError {
  external JSNumber? get httpRequestStatusCode;
  external RTCErrorDetailType get errorDetail;
  external JSNumber? get sdpLineNumber;
  external JSNumber? get sctpCauseCode;
  external JSNumber? get receivedAlert;
  external JSNumber? get sentAlert;
}

@JS('RTCErrorInit')
@staticInterop
class RTCErrorInit {
  external factory RTCErrorInit();
}

extension RTCErrorInitExtension on RTCErrorInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpEncodingParameters')
@staticInterop
class RTCRtpEncodingParameters extends RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters();
}

extension RTCRtpEncodingParametersExtension on RTCRtpEncodingParameters {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCDataChannel')
@staticInterop
class RTCDataChannel extends EventTarget {
  external factory RTCDataChannel();
}

extension RTCDataChannelExtension on RTCDataChannel {
  external RTCPriorityType get priority;
  external JSString get label;
  external JSBoolean get ordered;
  external JSNumber? get maxPacketLifeTime;
  external JSNumber? get maxRetransmits;
  external JSString get protocol;
  external JSBoolean get negotiated;
  external JSNumber? get id;
  external RTCDataChannelState get readyState;
  external JSNumber get bufferedAmount;
  external JSNumber get bufferedAmountLowThreshold;
  external set bufferedAmountLowThreshold(JSNumber value);
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onbufferedamountlow;
  external set onbufferedamountlow(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclosing;
  external set onclosing(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external JSUndefined send(JSString data);
  @JS('send')
  external JSUndefined send1(Blob data);
  @JS('send')
  external JSUndefined send2(JSArrayBuffer data);
  @JS('send')
  external JSUndefined send3(ArrayBufferView data);
}

@JS('RTCDataChannelInit')
@staticInterop
class RTCDataChannelInit {
  external factory RTCDataChannelInit();
}

extension RTCDataChannelInitExtension on RTCDataChannelInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpStreamStats')
@staticInterop
class RTCRtpStreamStats extends RTCStats {
  external factory RTCRtpStreamStats();
}

extension RTCRtpStreamStatsExtension on RTCRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCCodecStats')
@staticInterop
class RTCCodecStats extends RTCStats {
  external factory RTCCodecStats();
}

extension RTCCodecStatsExtension on RTCCodecStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCReceivedRtpStreamStats')
@staticInterop
class RTCReceivedRtpStreamStats extends RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats();
}

extension RTCReceivedRtpStreamStatsExtension on RTCReceivedRtpStreamStats {
  // TODO
  // TODO
  // TODO
}

@JS('RTCInboundRtpStreamStats')
@staticInterop
class RTCInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats();
}

extension RTCInboundRtpStreamStatsExtension on RTCInboundRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRemoteInboundRtpStreamStats')
@staticInterop
class RTCRemoteInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external factory RTCRemoteInboundRtpStreamStats();
}

extension RTCRemoteInboundRtpStreamStatsExtension
    on RTCRemoteInboundRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCSentRtpStreamStats')
@staticInterop
class RTCSentRtpStreamStats extends RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats();
}

extension RTCSentRtpStreamStatsExtension on RTCSentRtpStreamStats {
  // TODO
  // TODO
}

@JS('RTCOutboundRtpStreamStats')
@staticInterop
class RTCOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats();
}

extension RTCOutboundRtpStreamStatsExtension on RTCOutboundRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRemoteOutboundRtpStreamStats')
@staticInterop
class RTCRemoteOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats();
}

extension RTCRemoteOutboundRtpStreamStatsExtension
    on RTCRemoteOutboundRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCMediaSourceStats')
@staticInterop
class RTCMediaSourceStats extends RTCStats {
  external factory RTCMediaSourceStats();
}

extension RTCMediaSourceStatsExtension on RTCMediaSourceStats {
  // TODO
  // TODO
}

@JS('RTCAudioSourceStats')
@staticInterop
class RTCAudioSourceStats extends RTCMediaSourceStats {
  external factory RTCAudioSourceStats();
}

extension RTCAudioSourceStatsExtension on RTCAudioSourceStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCVideoSourceStats')
@staticInterop
class RTCVideoSourceStats extends RTCMediaSourceStats {
  external factory RTCVideoSourceStats();
}

extension RTCVideoSourceStatsExtension on RTCVideoSourceStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCAudioPlayoutStats')
@staticInterop
class RTCAudioPlayoutStats extends RTCStats {
  external factory RTCAudioPlayoutStats();
}

extension RTCAudioPlayoutStatsExtension on RTCAudioPlayoutStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCPeerConnectionStats')
@staticInterop
class RTCPeerConnectionStats extends RTCStats {
  external factory RTCPeerConnectionStats();
}

extension RTCPeerConnectionStatsExtension on RTCPeerConnectionStats {
  // TODO
  // TODO
}

@JS('RTCDataChannelStats')
@staticInterop
class RTCDataChannelStats extends RTCStats {
  external factory RTCDataChannelStats();
}

extension RTCDataChannelStatsExtension on RTCDataChannelStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCTransportStats')
@staticInterop
class RTCTransportStats extends RTCStats {
  external factory RTCTransportStats();
}

extension RTCTransportStatsExtension on RTCTransportStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceCandidateStats')
@staticInterop
class RTCIceCandidateStats extends RTCStats {
  external factory RTCIceCandidateStats();
}

extension RTCIceCandidateStatsExtension on RTCIceCandidateStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceCandidatePairStats')
@staticInterop
class RTCIceCandidatePairStats extends RTCStats {
  external factory RTCIceCandidatePairStats();
}

extension RTCIceCandidatePairStatsExtension on RTCIceCandidatePairStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCCertificateStats')
@staticInterop
class RTCCertificateStats extends RTCStats {
  external factory RTCCertificateStats();
}

extension RTCCertificateStatsExtension on RTCCertificateStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceServer')
@staticInterop
class RTCIceServer {
  external factory RTCIceServer();
}

extension RTCIceServerExtension on RTCIceServer {
  // TODO
  // TODO
  // TODO
}

@JS('RTCOfferAnswerOptions')
@staticInterop
class RTCOfferAnswerOptions {
  external factory RTCOfferAnswerOptions();
}

@JS('RTCOfferOptions')
@staticInterop
class RTCOfferOptions extends RTCOfferAnswerOptions {
  external factory RTCOfferOptions();
}

extension RTCOfferOptionsExtension on RTCOfferOptions {
  // TODO
  // TODO
  // TODO
}

@JS('RTCAnswerOptions')
@staticInterop
class RTCAnswerOptions extends RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

@JS('RTCSessionDescription')
@staticInterop
class RTCSessionDescription {
  external factory RTCSessionDescription();
  external factory RTCSessionDescription.a1(
      RTCSessionDescriptionInit descriptionInitDict);
}

extension RTCSessionDescriptionExtension on RTCSessionDescription {
  external RTCSdpType get type;
  external JSString get sdp;
  external JSObject toJSON();
}

@JS('RTCSessionDescriptionInit')
@staticInterop
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit();
}

extension RTCSessionDescriptionInitExtension on RTCSessionDescriptionInit {
  // TODO
  // TODO
}

@JS('RTCLocalSessionDescriptionInit')
@staticInterop
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit();
}

extension RTCLocalSessionDescriptionInitExtension
    on RTCLocalSessionDescriptionInit {
  // TODO
  // TODO
}

@JS('RTCIceCandidate')
@staticInterop
class RTCIceCandidate {
  external factory RTCIceCandidate();
  external factory RTCIceCandidate.a1();
  external factory RTCIceCandidate.a1_1(RTCIceCandidateInit candidateInitDict);
}

extension RTCIceCandidateExtension on RTCIceCandidate {
  external JSString get candidate;
  external JSString? get sdpMid;
  external JSNumber? get sdpMLineIndex;
  external JSString? get foundation;
  external RTCIceComponent? get component;
  external JSNumber? get priority;
  external JSString? get address;
  external RTCIceProtocol? get protocol;
  external JSNumber? get port;
  external RTCIceCandidateType? get type;
  external RTCIceTcpCandidateType? get tcpType;
  external JSString? get relatedAddress;
  external JSNumber? get relatedPort;
  external JSString? get usernameFragment;
  external RTCIceServerTransportProtocol? get relayProtocol;
  external JSString? get url;
  external RTCIceCandidateInit toJSON();
}

@JS('RTCIceCandidateInit')
@staticInterop
class RTCIceCandidateInit {
  external factory RTCIceCandidateInit();
}

extension RTCIceCandidateInitExtension on RTCIceCandidateInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCPeerConnectionIceEvent')
@staticInterop
class RTCPeerConnectionIceEvent extends Event {
  external factory RTCPeerConnectionIceEvent();
  external factory RTCPeerConnectionIceEvent.a1(JSString type);
  external factory RTCPeerConnectionIceEvent.a1_1(
      JSString type, RTCPeerConnectionIceEventInit eventInitDict);
}

extension RTCPeerConnectionIceEventExtension on RTCPeerConnectionIceEvent {
  external RTCIceCandidate? get candidate;
  external JSString? get url;
}

@JS('RTCPeerConnectionIceEventInit')
@staticInterop
class RTCPeerConnectionIceEventInit extends EventInit {
  external factory RTCPeerConnectionIceEventInit();
}

extension RTCPeerConnectionIceEventInitExtension
    on RTCPeerConnectionIceEventInit {
  // TODO
  // TODO
}

@JS('RTCPeerConnectionIceErrorEvent')
@staticInterop
class RTCPeerConnectionIceErrorEvent extends Event {
  external factory RTCPeerConnectionIceErrorEvent();
  external factory RTCPeerConnectionIceErrorEvent.a1(
      JSString type, RTCPeerConnectionIceErrorEventInit eventInitDict);
}

extension RTCPeerConnectionIceErrorEventExtension
    on RTCPeerConnectionIceErrorEvent {
  external JSString? get address;
  external JSNumber? get port;
  external JSString get url;
  external JSNumber get errorCode;
  external JSString get errorText;
}

@JS('RTCPeerConnectionIceErrorEventInit')
@staticInterop
class RTCPeerConnectionIceErrorEventInit extends EventInit {
  external factory RTCPeerConnectionIceErrorEventInit();
}

extension RTCPeerConnectionIceErrorEventInitExtension
    on RTCPeerConnectionIceErrorEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCCertificateExpiration')
@staticInterop
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration();
}

extension RTCCertificateExpirationExtension on RTCCertificateExpiration {
  // TODO
}

@JS('RTCCertificate')
@staticInterop
class RTCCertificate {
  external factory RTCCertificate();
}

extension RTCCertificateExtension on RTCCertificate {
  external EpochTimeStamp get expires;
  external JSArray getFingerprints();
}

@JS('RTCRtpTransceiverInit')
@staticInterop
class RTCRtpTransceiverInit {
  external factory RTCRtpTransceiverInit();
}

extension RTCRtpTransceiverInitExtension on RTCRtpTransceiverInit {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpParameters')
@staticInterop
class RTCRtpParameters {
  external factory RTCRtpParameters();
}

extension RTCRtpParametersExtension on RTCRtpParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpReceiveParameters')
@staticInterop
class RTCRtpReceiveParameters extends RTCRtpParameters {
  external factory RTCRtpReceiveParameters();
}

@JS('RTCRtpCodingParameters')
@staticInterop
class RTCRtpCodingParameters {
  external factory RTCRtpCodingParameters();
}

extension RTCRtpCodingParametersExtension on RTCRtpCodingParameters {
  // TODO
}

@JS('RTCRtcpParameters')
@staticInterop
class RTCRtcpParameters {
  external factory RTCRtcpParameters();
}

extension RTCRtcpParametersExtension on RTCRtcpParameters {
  // TODO
  // TODO
}

@JS('RTCRtpHeaderExtensionParameters')
@staticInterop
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters();
}

extension RTCRtpHeaderExtensionParametersExtension
    on RTCRtpHeaderExtensionParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpCodecParameters')
@staticInterop
class RTCRtpCodecParameters {
  external factory RTCRtpCodecParameters();
}

extension RTCRtpCodecParametersExtension on RTCRtpCodecParameters {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpCapabilities')
@staticInterop
class RTCRtpCapabilities {
  external factory RTCRtpCapabilities();
}

extension RTCRtpCapabilitiesExtension on RTCRtpCapabilities {
  // TODO
  // TODO
}

@JS('RTCRtpCodecCapability')
@staticInterop
class RTCRtpCodecCapability {
  external factory RTCRtpCodecCapability();
}

extension RTCRtpCodecCapabilityExtension on RTCRtpCodecCapability {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpHeaderExtensionCapability')
@staticInterop
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability();
}

extension RTCRtpHeaderExtensionCapabilityExtension
    on RTCRtpHeaderExtensionCapability {
  // TODO
}

@JS('RTCRtpContributingSource')
@staticInterop
class RTCRtpContributingSource {
  external factory RTCRtpContributingSource();
}

extension RTCRtpContributingSourceExtension on RTCRtpContributingSource {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpSynchronizationSource')
@staticInterop
class RTCRtpSynchronizationSource extends RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

@JS('RTCRtpTransceiver')
@staticInterop
class RTCRtpTransceiver {
  external factory RTCRtpTransceiver();
}

extension RTCRtpTransceiverExtension on RTCRtpTransceiver {
  external JSString? get mid;
  external RTCRtpSender get sender;
  external RTCRtpReceiver get receiver;
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection? get currentDirection;
  external JSUndefined stop();
  external JSUndefined setCodecPreferences(JSArray codecs);
}

@JS('RTCDtlsTransport')
@staticInterop
class RTCDtlsTransport extends EventTarget {
  external factory RTCDtlsTransport();
}

extension RTCDtlsTransportExtension on RTCDtlsTransport {
  external RTCIceTransport get iceTransport;
  external RTCDtlsTransportState get state;
  external JSArray getRemoteCertificates();
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('RTCDtlsFingerprint')
@staticInterop
class RTCDtlsFingerprint {
  external factory RTCDtlsFingerprint();
}

extension RTCDtlsFingerprintExtension on RTCDtlsFingerprint {
  // TODO
  // TODO
}

@JS('RTCIceCandidatePair')
@staticInterop
class RTCIceCandidatePair {
  external factory RTCIceCandidatePair();
}

extension RTCIceCandidatePairExtension on RTCIceCandidatePair {
  // TODO
  // TODO
}

@JS('RTCTrackEvent')
@staticInterop
class RTCTrackEvent extends Event {
  external factory RTCTrackEvent();
  external factory RTCTrackEvent.a1(
      JSString type, RTCTrackEventInit eventInitDict);
}

extension RTCTrackEventExtension on RTCTrackEvent {
  external RTCRtpReceiver get receiver;
  external MediaStreamTrack get track;
  external JSArray get streams;
  external RTCRtpTransceiver get transceiver;
}

@JS('RTCTrackEventInit')
@staticInterop
class RTCTrackEventInit extends EventInit {
  external factory RTCTrackEventInit();
}

extension RTCTrackEventInitExtension on RTCTrackEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCSctpTransport')
@staticInterop
class RTCSctpTransport extends EventTarget {
  external factory RTCSctpTransport();
}

extension RTCSctpTransportExtension on RTCSctpTransport {
  external RTCDtlsTransport get transport;
  external RTCSctpTransportState get state;
  external JSNumber get maxMessageSize;
  external JSNumber? get maxChannels;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
}

@JS('RTCDataChannelEvent')
@staticInterop
class RTCDataChannelEvent extends Event {
  external factory RTCDataChannelEvent();
  external factory RTCDataChannelEvent.a1(
      JSString type, RTCDataChannelEventInit eventInitDict);
}

extension RTCDataChannelEventExtension on RTCDataChannelEvent {
  external RTCDataChannel get channel;
}

@JS('RTCDataChannelEventInit')
@staticInterop
class RTCDataChannelEventInit extends EventInit {
  external factory RTCDataChannelEventInit();
}

extension RTCDataChannelEventInitExtension on RTCDataChannelEventInit {
  // TODO
}

@JS('RTCDTMFSender')
@staticInterop
class RTCDTMFSender extends EventTarget {
  external factory RTCDTMFSender();
}

extension RTCDTMFSenderExtension on RTCDTMFSender {
  external JSUndefined insertDTMF(JSString tones);
  external JSUndefined insertDTMF_1(JSString tones, JSNumber duration);
  external JSUndefined insertDTMF_2(
      JSString tones, JSNumber duration, JSNumber interToneGap);
  external EventHandler get ontonechange;
  external set ontonechange(EventHandler value);
  external JSBoolean get canInsertDTMF;
  external JSString get toneBuffer;
}

@JS('RTCDTMFToneChangeEvent')
@staticInterop
class RTCDTMFToneChangeEvent extends Event {
  external factory RTCDTMFToneChangeEvent();
  external factory RTCDTMFToneChangeEvent.a1(JSString type);
  external factory RTCDTMFToneChangeEvent.a1_1(
      JSString type, RTCDTMFToneChangeEventInit eventInitDict);
}

extension RTCDTMFToneChangeEventExtension on RTCDTMFToneChangeEvent {
  external JSString get tone;
}

@JS('RTCDTMFToneChangeEventInit')
@staticInterop
class RTCDTMFToneChangeEventInit extends EventInit {
  external factory RTCDTMFToneChangeEventInit();
}

extension RTCDTMFToneChangeEventInitExtension on RTCDTMFToneChangeEventInit {
  // TODO
}

@JS('RTCStatsReport')
@staticInterop
class RTCStatsReport {
  external factory RTCStatsReport();
}

extension RTCStatsReportExtension on RTCStatsReport {
  // TODO
}

@JS('RTCStats')
@staticInterop
class RTCStats {
  external factory RTCStats();
}

extension RTCStatsExtension on RTCStats {
  // TODO
  // TODO
  // TODO
}

@JS('RTCErrorEvent')
@staticInterop
class RTCErrorEvent extends Event {
  external factory RTCErrorEvent();
  external factory RTCErrorEvent.a1(
      JSString type, RTCErrorEventInit eventInitDict);
}

extension RTCErrorEventExtension on RTCErrorEvent {
  external RTCError get error;
}

@JS('RTCErrorEventInit')
@staticInterop
class RTCErrorEventInit extends EventInit {
  external factory RTCErrorEventInit();
}

extension RTCErrorEventInitExtension on RTCErrorEventInit {
  // TODO
}

@JS('WebSocket')
@staticInterop
class WebSocket extends EventTarget {
  external factory WebSocket();
  external factory WebSocket.a1(JSString url);
  external factory WebSocket.a1_1(JSString url, JSAny protocols);
  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSING;
  external static JSNumber get CLOSED;
}

extension WebSocketExtension on WebSocket {
  external JSString get url;
  external JSNumber get readyState;
  external JSNumber get bufferedAmount;
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external JSString get extensions;
  external JSString get protocol;
  external JSUndefined close();
  external JSUndefined close_1(JSNumber code);
  external JSUndefined close_2(JSNumber code, JSString reason);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external JSUndefined send(JSAny data);
}

@JS('CloseEvent')
@staticInterop
class CloseEvent extends Event {
  external factory CloseEvent();
  external factory CloseEvent.a1(JSString type);
  external factory CloseEvent.a1_1(JSString type, CloseEventInit eventInitDict);
}

extension CloseEventExtension on CloseEvent {
  external JSBoolean get wasClean;
  external JSNumber get code;
  external JSString get reason;
}

@JS('CloseEventInit')
@staticInterop
class CloseEventInit extends EventInit {
  external factory CloseEventInit();
}

extension CloseEventInitExtension on CloseEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportDatagramDuplexStream')
@staticInterop
class WebTransportDatagramDuplexStream {
  external factory WebTransportDatagramDuplexStream();
}

extension WebTransportDatagramDuplexStreamExtension
    on WebTransportDatagramDuplexStream {
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSNumber get maxDatagramSize;
  external JSNumber? get incomingMaxAge;
  external set incomingMaxAge(JSNumber? value);
  external JSNumber? get outgoingMaxAge;
  external set outgoingMaxAge(JSNumber? value);
  external JSNumber get incomingHighWaterMark;
  external set incomingHighWaterMark(JSNumber value);
  external JSNumber get outgoingHighWaterMark;
  external set outgoingHighWaterMark(JSNumber value);
}

@JS('WebTransport')
@staticInterop
class WebTransport {
  external factory WebTransport();
  external factory WebTransport.a1(JSString url);
  external factory WebTransport.a1_1(JSString url, WebTransportOptions options);
}

extension WebTransportExtension on WebTransport {
  external JSPromise getStats();
  external JSPromise get ready;
  external WebTransportReliabilityMode get reliability;
  external WebTransportCongestionControl get congestionControl;
  external JSPromise get closed;
  external JSUndefined close();
  external JSUndefined close_1(WebTransportCloseInfo closeInfo);
  external WebTransportDatagramDuplexStream get datagrams;
  external JSPromise createBidirectionalStream();
  external JSPromise createBidirectionalStream_1(
      WebTransportSendStreamOptions options);
  external ReadableStream get incomingBidirectionalStreams;
  external JSPromise createUnidirectionalStream();
  external JSPromise createUnidirectionalStream_1(
      WebTransportSendStreamOptions options);
  external ReadableStream get incomingUnidirectionalStreams;
}

@JS('WebTransportHash')
@staticInterop
class WebTransportHash {
  external factory WebTransportHash();
}

extension WebTransportHashExtension on WebTransportHash {
  // TODO
  // TODO
}

@JS('WebTransportOptions')
@staticInterop
class WebTransportOptions {
  external factory WebTransportOptions();
}

extension WebTransportOptionsExtension on WebTransportOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportCloseInfo')
@staticInterop
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo();
}

extension WebTransportCloseInfoExtension on WebTransportCloseInfo {
  // TODO
  // TODO
}

@JS('WebTransportSendStreamOptions')
@staticInterop
class WebTransportSendStreamOptions {
  external factory WebTransportSendStreamOptions();
}

extension WebTransportSendStreamOptionsExtension
    on WebTransportSendStreamOptions {
  // TODO
}

@JS('WebTransportStats')
@staticInterop
class WebTransportStats {
  external factory WebTransportStats();
}

extension WebTransportStatsExtension on WebTransportStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportDatagramStats')
@staticInterop
class WebTransportDatagramStats {
  external factory WebTransportDatagramStats();
}

extension WebTransportDatagramStatsExtension on WebTransportDatagramStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportSendStream')
@staticInterop
class WebTransportSendStream extends WritableStream {
  external factory WebTransportSendStream();
}

extension WebTransportSendStreamExtension on WebTransportSendStream {
  external JSPromise getStats();
}

@JS('WebTransportSendStreamStats')
@staticInterop
class WebTransportSendStreamStats {
  external factory WebTransportSendStreamStats();
}

extension WebTransportSendStreamStatsExtension on WebTransportSendStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportReceiveStream')
@staticInterop
class WebTransportReceiveStream extends ReadableStream {
  external factory WebTransportReceiveStream();
}

extension WebTransportReceiveStreamExtension on WebTransportReceiveStream {
  external JSPromise getStats();
}

@JS('WebTransportReceiveStreamStats')
@staticInterop
class WebTransportReceiveStreamStats {
  external factory WebTransportReceiveStreamStats();
}

extension WebTransportReceiveStreamStatsExtension
    on WebTransportReceiveStreamStats {
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportBidirectionalStream')
@staticInterop
class WebTransportBidirectionalStream {
  external factory WebTransportBidirectionalStream();
}

extension WebTransportBidirectionalStreamExtension
    on WebTransportBidirectionalStream {
  external WebTransportReceiveStream get readable;
  external WebTransportSendStream get writable;
}

@JS('WebTransportError')
@staticInterop
class WebTransportError extends DOMException {
  external factory WebTransportError();
  external factory WebTransportError.a1();
  external factory WebTransportError.a1_1(WebTransportErrorInit init);
}

extension WebTransportErrorExtension on WebTransportError {
  external WebTransportErrorSource get source;
  external JSNumber? get streamErrorCode;
}

@JS('WebTransportErrorInit')
@staticInterop
class WebTransportErrorInit {
  external factory WebTransportErrorInit();
}

extension WebTransportErrorInitExtension on WebTransportErrorInit {
  // TODO
  // TODO
}

@JS('USBDeviceFilter')
@staticInterop
class USBDeviceFilter {
  external factory USBDeviceFilter();
}

extension USBDeviceFilterExtension on USBDeviceFilter {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('USBDeviceRequestOptions')
@staticInterop
class USBDeviceRequestOptions {
  external factory USBDeviceRequestOptions();
}

extension USBDeviceRequestOptionsExtension on USBDeviceRequestOptions {
  // TODO
}

@JS('USB')
@staticInterop
class USB extends EventTarget {
  external factory USB();
}

extension USBExtension on USB {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise getDevices();
  external JSPromise requestDevice(USBDeviceRequestOptions options);
}

@JS('USBConnectionEventInit')
@staticInterop
class USBConnectionEventInit extends EventInit {
  external factory USBConnectionEventInit();
}

extension USBConnectionEventInitExtension on USBConnectionEventInit {
  // TODO
}

@JS('USBConnectionEvent')
@staticInterop
class USBConnectionEvent extends Event {
  external factory USBConnectionEvent();
  external factory USBConnectionEvent.a1(
      JSString type, USBConnectionEventInit eventInitDict);
}

extension USBConnectionEventExtension on USBConnectionEvent {
  external USBDevice get device;
}

@JS('USBInTransferResult')
@staticInterop
class USBInTransferResult {
  external factory USBInTransferResult();
  external factory USBInTransferResult.a1(USBTransferStatus status);
  external factory USBInTransferResult.a1_1(
      USBTransferStatus status, JSDataView? data);
}

extension USBInTransferResultExtension on USBInTransferResult {
  external JSDataView? get data;
  external USBTransferStatus get status;
}

@JS('USBOutTransferResult')
@staticInterop
class USBOutTransferResult {
  external factory USBOutTransferResult();
  external factory USBOutTransferResult.a1(USBTransferStatus status);
  external factory USBOutTransferResult.a1_1(
      USBTransferStatus status, JSNumber bytesWritten);
}

extension USBOutTransferResultExtension on USBOutTransferResult {
  external JSNumber get bytesWritten;
  external USBTransferStatus get status;
}

@JS('USBIsochronousInTransferPacket')
@staticInterop
class USBIsochronousInTransferPacket {
  external factory USBIsochronousInTransferPacket();
  external factory USBIsochronousInTransferPacket.a1(USBTransferStatus status);
  external factory USBIsochronousInTransferPacket.a1_1(
      USBTransferStatus status, JSDataView? data);
}

extension USBIsochronousInTransferPacketExtension
    on USBIsochronousInTransferPacket {
  external JSDataView? get data;
  external USBTransferStatus get status;
}

@JS('USBIsochronousInTransferResult')
@staticInterop
class USBIsochronousInTransferResult {
  external factory USBIsochronousInTransferResult();
  external factory USBIsochronousInTransferResult.a1(JSArray packets);
  external factory USBIsochronousInTransferResult.a1_1(
      JSArray packets, JSDataView? data);
}

extension USBIsochronousInTransferResultExtension
    on USBIsochronousInTransferResult {
  external JSDataView? get data;
  external JSArray get packets;
}

@JS('USBIsochronousOutTransferPacket')
@staticInterop
class USBIsochronousOutTransferPacket {
  external factory USBIsochronousOutTransferPacket();
  external factory USBIsochronousOutTransferPacket.a1(USBTransferStatus status);
  external factory USBIsochronousOutTransferPacket.a1_1(
      USBTransferStatus status, JSNumber bytesWritten);
}

extension USBIsochronousOutTransferPacketExtension
    on USBIsochronousOutTransferPacket {
  external JSNumber get bytesWritten;
  external USBTransferStatus get status;
}

@JS('USBIsochronousOutTransferResult')
@staticInterop
class USBIsochronousOutTransferResult {
  external factory USBIsochronousOutTransferResult();
  external factory USBIsochronousOutTransferResult.a1(JSArray packets);
}

extension USBIsochronousOutTransferResultExtension
    on USBIsochronousOutTransferResult {
  external JSArray get packets;
}

@JS('USBDevice')
@staticInterop
class USBDevice {
  external factory USBDevice();
}

extension USBDeviceExtension on USBDevice {
  external JSNumber get usbVersionMajor;
  external JSNumber get usbVersionMinor;
  external JSNumber get usbVersionSubminor;
  external JSNumber get deviceClass;
  external JSNumber get deviceSubclass;
  external JSNumber get deviceProtocol;
  external JSNumber get vendorId;
  external JSNumber get productId;
  external JSNumber get deviceVersionMajor;
  external JSNumber get deviceVersionMinor;
  external JSNumber get deviceVersionSubminor;
  external JSString? get manufacturerName;
  external JSString? get productName;
  external JSString? get serialNumber;
  external USBConfiguration? get configuration;
  external JSArray get configurations;
  external JSBoolean get opened;
  external JSPromise open();
  external JSPromise close();
  external JSPromise forget();
  external JSPromise selectConfiguration(JSNumber configurationValue);
  external JSPromise claimInterface(JSNumber interfaceNumber);
  external JSPromise releaseInterface(JSNumber interfaceNumber);
  external JSPromise selectAlternateInterface(
      JSNumber interfaceNumber, JSNumber alternateSetting);
  external JSPromise controlTransferIn(
      USBControlTransferParameters setup, JSNumber length);
  external JSPromise controlTransferOut(USBControlTransferParameters setup);
  external JSPromise controlTransferOut_1(
      USBControlTransferParameters setup, BufferSource data);
  external JSPromise clearHalt(USBDirection direction, JSNumber endpointNumber);
  external JSPromise transferIn(JSNumber endpointNumber, JSNumber length);
  external JSPromise transferOut(JSNumber endpointNumber, BufferSource data);
  external JSPromise isochronousTransferIn(
      JSNumber endpointNumber, JSArray packetLengths);
  external JSPromise isochronousTransferOut(
      JSNumber endpointNumber, BufferSource data, JSArray packetLengths);
  external JSPromise reset();
}

@JS('USBControlTransferParameters')
@staticInterop
class USBControlTransferParameters {
  external factory USBControlTransferParameters();
}

extension USBControlTransferParametersExtension
    on USBControlTransferParameters {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('USBConfiguration')
@staticInterop
class USBConfiguration {
  external factory USBConfiguration();
  external factory USBConfiguration.a1(
      USBDevice device, JSNumber configurationValue);
}

extension USBConfigurationExtension on USBConfiguration {
  external JSNumber get configurationValue;
  external JSString? get configurationName;
  external JSArray get interfaces;
}

@JS('USBInterface')
@staticInterop
class USBInterface {
  external factory USBInterface();
  external factory USBInterface.a1(
      USBConfiguration configuration, JSNumber interfaceNumber);
}

extension USBInterfaceExtension on USBInterface {
  external JSNumber get interfaceNumber;
  external USBAlternateInterface get alternate;
  external JSArray get alternates;
  external JSBoolean get claimed;
}

@JS('USBAlternateInterface')
@staticInterop
class USBAlternateInterface {
  external factory USBAlternateInterface();
  external factory USBAlternateInterface.a1(
      USBInterface deviceInterface, JSNumber alternateSetting);
}

extension USBAlternateInterfaceExtension on USBAlternateInterface {
  external JSNumber get alternateSetting;
  external JSNumber get interfaceClass;
  external JSNumber get interfaceSubclass;
  external JSNumber get interfaceProtocol;
  external JSString? get interfaceName;
  external JSArray get endpoints;
}

@JS('USBEndpoint')
@staticInterop
class USBEndpoint {
  external factory USBEndpoint();
  external factory USBEndpoint.a1(USBAlternateInterface alternate,
      JSNumber endpointNumber, USBDirection direction);
}

extension USBEndpointExtension on USBEndpoint {
  external JSNumber get endpointNumber;
  external USBDirection get direction;
  external USBEndpointType get type;
  external JSNumber get packetSize;
}

@JS('USBPermissionDescriptor')
@staticInterop
class USBPermissionDescriptor extends PermissionDescriptor {
  external factory USBPermissionDescriptor();
}

extension USBPermissionDescriptorExtension on USBPermissionDescriptor {
  // TODO
}

@JS('AllowedUSBDevice')
@staticInterop
class AllowedUSBDevice {
  external factory AllowedUSBDevice();
}

extension AllowedUSBDeviceExtension on AllowedUSBDevice {
  // TODO
  // TODO
  // TODO
}

@JS('USBPermissionStorage')
@staticInterop
class USBPermissionStorage {
  external factory USBPermissionStorage();
}

extension USBPermissionStorageExtension on USBPermissionStorage {
  // TODO
}

@JS('USBPermissionResult')
@staticInterop
class USBPermissionResult extends PermissionStatus {
  external factory USBPermissionResult();
}

extension USBPermissionResultExtension on USBPermissionResult {
  external JSArray get devices;
  external set devices(JSArray value);
}

@JS('VTTCue')
@staticInterop
class VTTCue extends TextTrackCue {
  external factory VTTCue();
  external factory VTTCue.a1(
      JSNumber startTime, JSNumber endTime, JSString text);
}

extension VTTCueExtension on VTTCue {
  external VTTRegion? get region;
  external set region(VTTRegion? value);
  external DirectionSetting get vertical;
  external set vertical(DirectionSetting value);
  external JSBoolean get snapToLines;
  external set snapToLines(JSBoolean value);
  external LineAndPositionSetting get line;
  external set line(LineAndPositionSetting value);
  external LineAlignSetting get lineAlign;
  external set lineAlign(LineAlignSetting value);
  external LineAndPositionSetting get position;
  external set position(LineAndPositionSetting value);
  external PositionAlignSetting get positionAlign;
  external set positionAlign(PositionAlignSetting value);
  external JSNumber get size;
  external set size(JSNumber value);
  external AlignSetting get align;
  external set align(AlignSetting value);
  external JSString get text;
  external set text(JSString value);
  external DocumentFragment getCueAsHTML();
}

@JS('VTTRegion')
@staticInterop
class VTTRegion {
  external factory VTTRegion();
}

extension VTTRegionExtension on VTTRegion {
  external JSString get id;
  external set id(JSString value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get lines;
  external set lines(JSNumber value);
  external JSNumber get regionAnchorX;
  external set regionAnchorX(JSNumber value);
  external JSNumber get regionAnchorY;
  external set regionAnchorY(JSNumber value);
  external JSNumber get viewportAnchorX;
  external set viewportAnchorX(JSNumber value);
  external JSNumber get viewportAnchorY;
  external set viewportAnchorY(JSNumber value);
  external ScrollSetting get scroll;
  external set scroll(ScrollSetting value);
}

@JS('XRDepthStateInit')
@staticInterop
class XRDepthStateInit {
  external factory XRDepthStateInit();
}

extension XRDepthStateInitExtension on XRDepthStateInit {
  // TODO
  // TODO
}

@JS('XRSessionInit')
@staticInterop
class XRSessionInit {
  external factory XRSessionInit();
}

extension XRSessionInitExtension on XRSessionInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRDepthInformation')
@staticInterop
class XRDepthInformation {
  external factory XRDepthInformation();
}

extension XRDepthInformationExtension on XRDepthInformation {
  external JSNumber get width;
  external JSNumber get height;
  external XRRigidTransform get normDepthBufferFromNormView;
  external JSNumber get rawValueToMeters;
}

@JS('XRCPUDepthInformation')
@staticInterop
class XRCPUDepthInformation extends XRDepthInformation {
  external factory XRCPUDepthInformation();
}

extension XRCPUDepthInformationExtension on XRCPUDepthInformation {
  external JSArrayBuffer get data;
  external JSNumber getDepthInMeters(JSNumber x, JSNumber y);
}

@JS('XRWebGLDepthInformation')
@staticInterop
class XRWebGLDepthInformation extends XRDepthInformation {
  external factory XRWebGLDepthInformation();
}

extension XRWebGLDepthInformationExtension on XRWebGLDepthInformation {
  external WebGLTexture get texture;
}

@JS('XRDOMOverlayInit')
@staticInterop
class XRDOMOverlayInit {
  external factory XRDOMOverlayInit();
}

extension XRDOMOverlayInitExtension on XRDOMOverlayInit {
  // TODO
}

@JS('XRDOMOverlayState')
@staticInterop
class XRDOMOverlayState {
  external factory XRDOMOverlayState();
}

extension XRDOMOverlayStateExtension on XRDOMOverlayState {
  // TODO
}

@JS('XRInputSource')
@staticInterop
class XRInputSource {
  external factory XRInputSource();
}

extension XRInputSourceExtension on XRInputSource {
  external Gamepad? get gamepad;
  external XRHand? get hand;
  external XRHandedness get handedness;
  external XRTargetRayMode get targetRayMode;
  external XRSpace get targetRaySpace;
  external XRSpace? get gripSpace;
  external JSArray get profiles;
}

@JS('XRHand')
@staticInterop
class XRHand {
  external factory XRHand();
}

extension XRHandExtension on XRHand {
  // TODO
  external JSNumber get size;
  external XRJointSpace get(XRHandJoint key);
}

@JS('XRJointSpace')
@staticInterop
class XRJointSpace extends XRSpace {
  external factory XRJointSpace();
}

extension XRJointSpaceExtension on XRJointSpace {
  external XRHandJoint get jointName;
}

@JS('XRJointPose')
@staticInterop
class XRJointPose extends XRPose {
  external factory XRJointPose();
}

extension XRJointPoseExtension on XRJointPose {
  external JSNumber get radius;
}

@JS('XRHitTestOptionsInit')
@staticInterop
class XRHitTestOptionsInit {
  external factory XRHitTestOptionsInit();
}

extension XRHitTestOptionsInitExtension on XRHitTestOptionsInit {
  // TODO
  // TODO
  // TODO
}

@JS('XRTransientInputHitTestOptionsInit')
@staticInterop
class XRTransientInputHitTestOptionsInit {
  external factory XRTransientInputHitTestOptionsInit();
}

extension XRTransientInputHitTestOptionsInitExtension
    on XRTransientInputHitTestOptionsInit {
  // TODO
  // TODO
  // TODO
}

@JS('XRHitTestSource')
@staticInterop
class XRHitTestSource {
  external factory XRHitTestSource();
}

extension XRHitTestSourceExtension on XRHitTestSource {
  external JSUndefined cancel();
}

@JS('XRTransientInputHitTestSource')
@staticInterop
class XRTransientInputHitTestSource {
  external factory XRTransientInputHitTestSource();
}

extension XRTransientInputHitTestSourceExtension
    on XRTransientInputHitTestSource {
  external JSUndefined cancel();
}

@JS('XRTransientInputHitTestResult')
@staticInterop
class XRTransientInputHitTestResult {
  external factory XRTransientInputHitTestResult();
}

extension XRTransientInputHitTestResultExtension
    on XRTransientInputHitTestResult {
  external XRInputSource get inputSource;
  external JSArray get results;
}

@JS('XRRayDirectionInit')
@staticInterop
class XRRayDirectionInit {
  external factory XRRayDirectionInit();
}

extension XRRayDirectionInitExtension on XRRayDirectionInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRRay')
@staticInterop
class XRRay {
  external factory XRRay();
  external factory XRRay.a1();
  external factory XRRay.a1_1(DOMPointInit origin);
  external factory XRRay.a1_2(
      DOMPointInit origin, XRRayDirectionInit direction);
  external factory XRRay.a2(XRRigidTransform transform);
}

extension XRRayExtension on XRRay {
  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external JSFloat32Array get matrix;
}

@JS('XRLightProbe')
@staticInterop
class XRLightProbe extends EventTarget {
  external factory XRLightProbe();
}

extension XRLightProbeExtension on XRLightProbe {
  external XRSpace get probeSpace;
  external EventHandler get onreflectionchange;
  external set onreflectionchange(EventHandler value);
}

@JS('XRLightEstimate')
@staticInterop
class XRLightEstimate {
  external factory XRLightEstimate();
}

extension XRLightEstimateExtension on XRLightEstimate {
  external JSFloat32Array get sphericalHarmonicsCoefficients;
  external DOMPointReadOnly get primaryLightDirection;
  external DOMPointReadOnly get primaryLightIntensity;
}

@JS('XRLightProbeInit')
@staticInterop
class XRLightProbeInit {
  external factory XRLightProbeInit();
}

extension XRLightProbeInitExtension on XRLightProbeInit {
  // TODO
}

@JS('XRSystem')
@staticInterop
class XRSystem extends EventTarget {
  external factory XRSystem();
}

extension XRSystemExtension on XRSystem {
  external JSPromise isSessionSupported(XRSessionMode mode);
  external JSPromise requestSession(XRSessionMode mode);
  external JSPromise requestSession_1(
      XRSessionMode mode, XRSessionInit options);
  external EventHandler get ondevicechange;
  external set ondevicechange(EventHandler value);
}

@JS('XRRenderStateInit')
@staticInterop
class XRRenderStateInit {
  external factory XRRenderStateInit();
}

extension XRRenderStateInitExtension on XRRenderStateInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRRenderState')
@staticInterop
class XRRenderState {
  external factory XRRenderState();
}

extension XRRenderStateExtension on XRRenderState {
  external JSNumber get depthNear;
  external JSNumber get depthFar;
  external JSNumber? get inlineVerticalFieldOfView;
  external XRWebGLLayer? get baseLayer;
  external JSArray get layers;
}

@JS('XRSpace')
@staticInterop
class XRSpace extends EventTarget {
  external factory XRSpace();
}

@JS('XRReferenceSpace')
@staticInterop
class XRReferenceSpace extends XRSpace {
  external factory XRReferenceSpace();
}

extension XRReferenceSpaceExtension on XRReferenceSpace {
  external XRReferenceSpace getOffsetReferenceSpace(
      XRRigidTransform originOffset);
  external EventHandler get onreset;
  external set onreset(EventHandler value);
}

@JS('XRBoundedReferenceSpace')
@staticInterop
class XRBoundedReferenceSpace extends XRReferenceSpace {
  external factory XRBoundedReferenceSpace();
}

extension XRBoundedReferenceSpaceExtension on XRBoundedReferenceSpace {
  external JSArray get boundsGeometry;
}

@JS('XRViewport')
@staticInterop
class XRViewport {
  external factory XRViewport();
}

extension XRViewportExtension on XRViewport {
  external JSNumber get x;
  external JSNumber get y;
  external JSNumber get width;
  external JSNumber get height;
}

@JS('XRRigidTransform')
@staticInterop
class XRRigidTransform {
  external factory XRRigidTransform();
  external factory XRRigidTransform.a1();
  external factory XRRigidTransform.a1_1(DOMPointInit position);
  external factory XRRigidTransform.a1_2(
      DOMPointInit position, DOMPointInit orientation);
}

extension XRRigidTransformExtension on XRRigidTransform {
  external DOMPointReadOnly get position;
  external DOMPointReadOnly get orientation;
  external JSFloat32Array get matrix;
  external XRRigidTransform get inverse;
}

@JS('XRPose')
@staticInterop
class XRPose {
  external factory XRPose();
}

extension XRPoseExtension on XRPose {
  external XRRigidTransform get transform;
  external DOMPointReadOnly? get linearVelocity;
  external DOMPointReadOnly? get angularVelocity;
  external JSBoolean get emulatedPosition;
}

@JS('XRViewerPose')
@staticInterop
class XRViewerPose extends XRPose {
  external factory XRViewerPose();
}

extension XRViewerPoseExtension on XRViewerPose {
  external JSArray get views;
}

@JS('XRInputSourceArray')
@staticInterop
class XRInputSourceArray {
  external factory XRInputSourceArray();
}

extension XRInputSourceArrayExtension on XRInputSourceArray {
  // TODO
  external JSNumber get length;
}

@JS('XRLayer')
@staticInterop
class XRLayer extends EventTarget {
  external factory XRLayer();
}

@JS('XRWebGLLayerInit')
@staticInterop
class XRWebGLLayerInit {
  external factory XRWebGLLayerInit();
}

extension XRWebGLLayerInitExtension on XRWebGLLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRWebGLLayer')
@staticInterop
class XRWebGLLayer extends XRLayer {
  external factory XRWebGLLayer();
  external factory XRWebGLLayer.a1(
      XRSession session, XRWebGLRenderingContext context);
  external factory XRWebGLLayer.a1_1(XRSession session,
      XRWebGLRenderingContext context, XRWebGLLayerInit layerInit);
  external static JSNumber getNativeFramebufferScaleFactor(XRSession session);
}

extension XRWebGLLayerExtension on XRWebGLLayer {
  external JSBoolean get antialias;
  external JSBoolean get ignoreDepthValues;
  external JSNumber? get fixedFoveation;
  external set fixedFoveation(JSNumber? value);
  external WebGLFramebuffer? get framebuffer;
  external JSNumber get framebufferWidth;
  external JSNumber get framebufferHeight;
  external XRViewport? getViewport(XRView view);
}

@JS('XRSessionEvent')
@staticInterop
class XRSessionEvent extends Event {
  external factory XRSessionEvent();
  external factory XRSessionEvent.a1(
      JSString type, XRSessionEventInit eventInitDict);
}

extension XRSessionEventExtension on XRSessionEvent {
  external XRSession get session;
}

@JS('XRSessionEventInit')
@staticInterop
class XRSessionEventInit extends EventInit {
  external factory XRSessionEventInit();
}

extension XRSessionEventInitExtension on XRSessionEventInit {
  // TODO
}

@JS('XRInputSourceEvent')
@staticInterop
class XRInputSourceEvent extends Event {
  external factory XRInputSourceEvent();
  external factory XRInputSourceEvent.a1(
      JSString type, XRInputSourceEventInit eventInitDict);
}

extension XRInputSourceEventExtension on XRInputSourceEvent {
  external XRFrame get frame;
  external XRInputSource get inputSource;
}

@JS('XRInputSourceEventInit')
@staticInterop
class XRInputSourceEventInit extends EventInit {
  external factory XRInputSourceEventInit();
}

extension XRInputSourceEventInitExtension on XRInputSourceEventInit {
  // TODO
  // TODO
}

@JS('XRInputSourcesChangeEvent')
@staticInterop
class XRInputSourcesChangeEvent extends Event {
  external factory XRInputSourcesChangeEvent();
  external factory XRInputSourcesChangeEvent.a1(
      JSString type, XRInputSourcesChangeEventInit eventInitDict);
}

extension XRInputSourcesChangeEventExtension on XRInputSourcesChangeEvent {
  external XRSession get session;
  external JSArray get added;
  external JSArray get removed;
}

@JS('XRInputSourcesChangeEventInit')
@staticInterop
class XRInputSourcesChangeEventInit extends EventInit {
  external factory XRInputSourcesChangeEventInit();
}

extension XRInputSourcesChangeEventInitExtension
    on XRInputSourcesChangeEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('XRReferenceSpaceEvent')
@staticInterop
class XRReferenceSpaceEvent extends Event {
  external factory XRReferenceSpaceEvent();
  external factory XRReferenceSpaceEvent.a1(
      JSString type, XRReferenceSpaceEventInit eventInitDict);
}

extension XRReferenceSpaceEventExtension on XRReferenceSpaceEvent {
  external XRReferenceSpace get referenceSpace;
  external XRRigidTransform? get transform;
}

@JS('XRReferenceSpaceEventInit')
@staticInterop
class XRReferenceSpaceEventInit extends EventInit {
  external factory XRReferenceSpaceEventInit();
}

extension XRReferenceSpaceEventInitExtension on XRReferenceSpaceEventInit {
  // TODO
  // TODO
}

@JS('XRSessionSupportedPermissionDescriptor')
@staticInterop
class XRSessionSupportedPermissionDescriptor extends PermissionDescriptor {
  external factory XRSessionSupportedPermissionDescriptor();
}

extension XRSessionSupportedPermissionDescriptorExtension
    on XRSessionSupportedPermissionDescriptor {
  // TODO
}

@JS('XRPermissionDescriptor')
@staticInterop
class XRPermissionDescriptor extends PermissionDescriptor {
  external factory XRPermissionDescriptor();
}

extension XRPermissionDescriptorExtension on XRPermissionDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('XRPermissionStatus')
@staticInterop
class XRPermissionStatus extends PermissionStatus {
  external factory XRPermissionStatus();
}

extension XRPermissionStatusExtension on XRPermissionStatus {
  external JSArray get granted;
  external set granted(JSArray value);
}

@JS('XRCompositionLayer')
@staticInterop
class XRCompositionLayer extends XRLayer {
  external factory XRCompositionLayer();
}

extension XRCompositionLayerExtension on XRCompositionLayer {
  external XRLayerLayout get layout;
  external JSBoolean get blendTextureSourceAlpha;
  external set blendTextureSourceAlpha(JSBoolean value);
  external JSBoolean get forceMonoPresentation;
  external set forceMonoPresentation(JSBoolean value);
  external JSNumber get opacity;
  external set opacity(JSNumber value);
  external JSNumber get mipLevels;
  external JSBoolean get needsRedraw;
  external JSUndefined destroy();
}

@JS('XRProjectionLayer')
@staticInterop
class XRProjectionLayer extends XRCompositionLayer {
  external factory XRProjectionLayer();
}

extension XRProjectionLayerExtension on XRProjectionLayer {
  external JSNumber get textureWidth;
  external JSNumber get textureHeight;
  external JSNumber get textureArrayLength;
  external JSBoolean get ignoreDepthValues;
  external JSNumber? get fixedFoveation;
  external set fixedFoveation(JSNumber? value);
  external XRRigidTransform? get deltaPose;
  external set deltaPose(XRRigidTransform? value);
}

@JS('XRQuadLayer')
@staticInterop
class XRQuadLayer extends XRCompositionLayer {
  external factory XRQuadLayer();
}

extension XRQuadLayerExtension on XRQuadLayer {
  external XRSpace get space;
  external set space(XRSpace value);
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

@JS('XRCylinderLayer')
@staticInterop
class XRCylinderLayer extends XRCompositionLayer {
  external factory XRCylinderLayer();
}

extension XRCylinderLayerExtension on XRCylinderLayer {
  external XRSpace get space;
  external set space(XRSpace value);
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform value);
  external JSNumber get radius;
  external set radius(JSNumber value);
  external JSNumber get centralAngle;
  external set centralAngle(JSNumber value);
  external JSNumber get aspectRatio;
  external set aspectRatio(JSNumber value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

@JS('XREquirectLayer')
@staticInterop
class XREquirectLayer extends XRCompositionLayer {
  external factory XREquirectLayer();
}

extension XREquirectLayerExtension on XREquirectLayer {
  external XRSpace get space;
  external set space(XRSpace value);
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform value);
  external JSNumber get radius;
  external set radius(JSNumber value);
  external JSNumber get centralHorizontalAngle;
  external set centralHorizontalAngle(JSNumber value);
  external JSNumber get upperVerticalAngle;
  external set upperVerticalAngle(JSNumber value);
  external JSNumber get lowerVerticalAngle;
  external set lowerVerticalAngle(JSNumber value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

@JS('XRCubeLayer')
@staticInterop
class XRCubeLayer extends XRCompositionLayer {
  external factory XRCubeLayer();
}

extension XRCubeLayerExtension on XRCubeLayer {
  external XRSpace get space;
  external set space(XRSpace value);
  external DOMPointReadOnly get orientation;
  external set orientation(DOMPointReadOnly value);
  external EventHandler get onredraw;
  external set onredraw(EventHandler value);
}

@JS('XRSubImage')
@staticInterop
class XRSubImage {
  external factory XRSubImage();
}

extension XRSubImageExtension on XRSubImage {
  external XRViewport get viewport;
}

@JS('XRWebGLSubImage')
@staticInterop
class XRWebGLSubImage extends XRSubImage {
  external factory XRWebGLSubImage();
}

extension XRWebGLSubImageExtension on XRWebGLSubImage {
  external WebGLTexture get colorTexture;
  external WebGLTexture? get depthStencilTexture;
  external WebGLTexture? get motionVectorTexture;
  external JSNumber? get imageIndex;
  external JSNumber get colorTextureWidth;
  external JSNumber get colorTextureHeight;
  external JSNumber? get depthStencilTextureWidth;
  external JSNumber? get depthStencilTextureHeight;
  external JSNumber? get motionVectorTextureWidth;
  external JSNumber? get motionVectorTextureHeight;
}

@JS('XRProjectionLayerInit')
@staticInterop
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit();
}

extension XRProjectionLayerInitExtension on XRProjectionLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRLayerInit')
@staticInterop
class XRLayerInit {
  external factory XRLayerInit();
}

extension XRLayerInitExtension on XRLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRQuadLayerInit')
@staticInterop
class XRQuadLayerInit extends XRLayerInit {
  external factory XRQuadLayerInit();
}

extension XRQuadLayerInitExtension on XRQuadLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRCylinderLayerInit')
@staticInterop
class XRCylinderLayerInit extends XRLayerInit {
  external factory XRCylinderLayerInit();
}

extension XRCylinderLayerInitExtension on XRCylinderLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XREquirectLayerInit')
@staticInterop
class XREquirectLayerInit extends XRLayerInit {
  external factory XREquirectLayerInit();
}

extension XREquirectLayerInitExtension on XREquirectLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRCubeLayerInit')
@staticInterop
class XRCubeLayerInit extends XRLayerInit {
  external factory XRCubeLayerInit();
}

extension XRCubeLayerInitExtension on XRCubeLayerInit {
  // TODO
}

@JS('XRMediaLayerInit')
@staticInterop
class XRMediaLayerInit {
  external factory XRMediaLayerInit();
}

extension XRMediaLayerInitExtension on XRMediaLayerInit {
  // TODO
  // TODO
  // TODO
}

@JS('XRMediaQuadLayerInit')
@staticInterop
class XRMediaQuadLayerInit extends XRMediaLayerInit {
  external factory XRMediaQuadLayerInit();
}

extension XRMediaQuadLayerInitExtension on XRMediaQuadLayerInit {
  // TODO
  // TODO
  // TODO
}

@JS('XRMediaCylinderLayerInit')
@staticInterop
class XRMediaCylinderLayerInit extends XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit();
}

extension XRMediaCylinderLayerInitExtension on XRMediaCylinderLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRMediaEquirectLayerInit')
@staticInterop
class XRMediaEquirectLayerInit extends XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit();
}

extension XRMediaEquirectLayerInitExtension on XRMediaEquirectLayerInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('XRMediaBinding')
@staticInterop
class XRMediaBinding {
  external factory XRMediaBinding();
  external factory XRMediaBinding.a1(XRSession session);
}

extension XRMediaBindingExtension on XRMediaBinding {
  external XRQuadLayer createQuadLayer(HTMLVideoElement video);
  external XRQuadLayer createQuadLayer_1(
      HTMLVideoElement video, XRMediaQuadLayerInit init);
  external XRCylinderLayer createCylinderLayer(HTMLVideoElement video);
  external XRCylinderLayer createCylinderLayer_1(
      HTMLVideoElement video, XRMediaCylinderLayerInit init);
  external XREquirectLayer createEquirectLayer(HTMLVideoElement video);
  external XREquirectLayer createEquirectLayer_1(
      HTMLVideoElement video, XRMediaEquirectLayerInit init);
}

@JS('XRLayerEvent')
@staticInterop
class XRLayerEvent extends Event {
  external factory XRLayerEvent();
  external factory XRLayerEvent.a1(
      JSString type, XRLayerEventInit eventInitDict);
}

extension XRLayerEventExtension on XRLayerEvent {
  external XRLayer get layer;
}

@JS('XRLayerEventInit')
@staticInterop
class XRLayerEventInit extends EventInit {
  external factory XRLayerEventInit();
}

extension XRLayerEventInitExtension on XRLayerEventInit {
  // TODO
}

@JS('WindowControlsOverlay')
@staticInterop
class WindowControlsOverlay extends EventTarget {
  external factory WindowControlsOverlay();
}

extension WindowControlsOverlayExtension on WindowControlsOverlay {
  external JSBoolean get visible;
  external DOMRect getTitlebarAreaRect();
  external EventHandler get ongeometrychange;
  external set ongeometrychange(EventHandler value);
}

@JS('WindowControlsOverlayGeometryChangeEvent')
@staticInterop
class WindowControlsOverlayGeometryChangeEvent extends Event {
  external factory WindowControlsOverlayGeometryChangeEvent();
  external factory WindowControlsOverlayGeometryChangeEvent.a1(JSString type,
      WindowControlsOverlayGeometryChangeEventInit eventInitDict);
}

extension WindowControlsOverlayGeometryChangeEventExtension
    on WindowControlsOverlayGeometryChangeEvent {
  external DOMRect get titlebarAreaRect;
  external JSBoolean get visible;
}

@JS('WindowControlsOverlayGeometryChangeEventInit')
@staticInterop
class WindowControlsOverlayGeometryChangeEventInit extends EventInit {
  external factory WindowControlsOverlayGeometryChangeEventInit();
}

extension WindowControlsOverlayGeometryChangeEventInitExtension
    on WindowControlsOverlayGeometryChangeEventInit {
  // TODO
  // TODO
}

@JS('ScreenDetails')
@staticInterop
class ScreenDetails extends EventTarget {
  external factory ScreenDetails();
}

extension ScreenDetailsExtension on ScreenDetails {
  external JSArray get screens;
  external ScreenDetailed get currentScreen;
  external EventHandler get onscreenschange;
  external set onscreenschange(EventHandler value);
  external EventHandler get oncurrentscreenchange;
  external set oncurrentscreenchange(EventHandler value);
}

@JS('ScreenDetailed')
@staticInterop
class ScreenDetailed extends Screen {
  external factory ScreenDetailed();
}

extension ScreenDetailedExtension on ScreenDetailed {
  external JSNumber get availLeft;
  external JSNumber get availTop;
  external JSNumber get left;
  external JSNumber get top;
  external JSBoolean get isPrimary;
  external JSBoolean get isInternal;
  external JSNumber get devicePixelRatio;
  external JSString get label;
}

@JS('XMLHttpRequestEventTarget')
@staticInterop
class XMLHttpRequestEventTarget extends EventTarget {
  external factory XMLHttpRequestEventTarget();
}

extension XMLHttpRequestEventTargetExtension on XMLHttpRequestEventTarget {
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get ontimeout;
  external set ontimeout(EventHandler value);
  external EventHandler get onloadend;
  external set onloadend(EventHandler value);
}

@JS('XMLHttpRequestUpload')
@staticInterop
class XMLHttpRequestUpload extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequestUpload();
}

@JS('XMLHttpRequest')
@staticInterop
class XMLHttpRequest extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequest();
  external static JSNumber get UNSENT;
  external static JSNumber get OPENED;
  external static JSNumber get HEADERS_RECEIVED;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension XMLHttpRequestExtension on XMLHttpRequest {
  external EventHandler get onreadystatechange;
  external set onreadystatechange(EventHandler value);
  external JSNumber get readyState;
  external JSUndefined open(JSString method, JSString url);
  @JS('open')
  external JSUndefined open1(JSString method, JSString url, JSBoolean async);
  @JS('open')
  external JSUndefined open1_1(
      JSString method, JSString url, JSBoolean async, JSString? username);
  @JS('open')
  external JSUndefined open1_2(JSString method, JSString url, JSBoolean async,
      JSString? username, JSString? password);
  external JSUndefined setRequestHeader(JSString name, JSString value);
  external JSNumber get timeout;
  external set timeout(JSNumber value);
  external JSBoolean get withCredentials;
  external set withCredentials(JSBoolean value);
  external XMLHttpRequestUpload get upload;
  external JSUndefined send();
  external JSUndefined send_1(JSAny? body);
  external JSUndefined abort();
  external JSString get responseURL;
  external JSNumber get status;
  external JSString get statusText;
  external JSString? getResponseHeader(JSString name);
  external JSString getAllResponseHeaders();
  external JSUndefined overrideMimeType(JSString mime);
  external XMLHttpRequestResponseType get responseType;
  external set responseType(XMLHttpRequestResponseType value);
  external JSAny get response;
  external JSString get responseText;
  external Document? get responseXML;
}

@JS('FormData')
@staticInterop
class FormData {
  external factory FormData();
  external factory FormData.a1();
  external factory FormData.a1_1(HTMLFormElement form);
  external factory FormData.a1_2(HTMLFormElement form, HTMLElement? submitter);
}

extension FormDataExtension on FormData {
  external JSUndefined append(JSString name, JSString value);
  @JS('append')
  external JSUndefined append1(JSString name, Blob blobValue);
  @JS('append')
  external JSUndefined append1_1(
      JSString name, Blob blobValue, JSString filename);
  external JSUndefined delete(JSString name);
  external FormDataEntryValue? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSUndefined set(JSString name, JSString value);
  @JS('set')
  external JSUndefined set1(JSString name, Blob blobValue);
  @JS('set')
  external JSUndefined set1_1(JSString name, Blob blobValue, JSString filename);
  // TODO
}

@JS('ProgressEvent')
@staticInterop
class ProgressEvent extends Event {
  external factory ProgressEvent();
  external factory ProgressEvent.a1(JSString type);
  external factory ProgressEvent.a1_1(
      JSString type, ProgressEventInit eventInitDict);
}

extension ProgressEventExtension on ProgressEvent {
  external JSBoolean get lengthComputable;
  external JSNumber get loaded;
  external JSNumber get total;
}

@JS('ProgressEventInit')
@staticInterop
class ProgressEventInit extends EventInit {
  external factory ProgressEventInit();
}

extension ProgressEventInitExtension on ProgressEventInit {
  // TODO
  // TODO
  // TODO
}
