

Control = {}
function Control:ClearAnchors() end
--- returns apRet
function Control:CreateControl(arg1, type) end
--- returns alpha
function Control:GetAlpha() end
--- returns isValidAnchor, point, relativeTo, relativePoint, offsetX, offsetY
function Control:GetAnchor(anchorIndex) end
--- returns bottom
function Control:GetBottom() end
--- returns centerX, centerY
function Control:GetCenter() end
--- returns childControl
function Control:GetChild(childIndex) end
--- returns clamped
function Control:GetClampedToScreen() end
--- returns left, top, right, bottom
function Control:GetClampedToScreenInsets() end
--- returns height
function Control:GetControlAlpha() end
--- returns:_ *number* _alpha_
function Control:GetDesiredHeight() end
--- returns width
function Control:GetDesiredWidth() end
--- returns minWidth, minHeight, maxWidth, maxHeight
function Control:GetDimensionConstraints() end
--- returns width, height
function Control:GetDimensions() end
--- returns layer
function Control:GetDrawLayer() end
--- returns level
function Control:GetDrawLevel() end
--- returns tier
function Control:GetDrawTier() end
--- returns excludes
function Control:GetExcludeFromResizeToFitExtents() end
--- returns functionRef
function Control:GetHandler(handlerName) end
--- returns height
function Control:GetHeight() end
--- returns left, top, right, bottom
function Control:GetHitInsets() end
--- returns id
function Control:GetId() end
--- returns inheritAlpha
function Control:GetInheritsAlpha() end
--- returns inheritScale
function Control:GetInheritsScale() end
--- returns left
function Control:GetLeft() end
--- returns name
function Control:GetName() end
--- returns returnedControl
function Control:GetNamedChild(childName) end
--- returns numChildren
function Control:GetNumChildren() end
--- returns OwningTopLevelWindow
function Control:GetOwningWindow() end
--- returns ret1
function Control:GetParent() end
--- returns resizes
function Control:GetResizeToFitDescendents() end
--- returns width, height
function Control:GetResizeToFitPadding() end
--- returns right
function Control:GetRight() end
--- returns scale
function Control:GetScale() end
--- returns left, top, right, bottom
function Control:GetScreenRect() end
--- returns top
function Control:GetTop() end
--- returns type
function Control:GetType() end
--- returns width
function Control:GetWidth() end
--- returns isChild
function Control:IsChildOf(desiredParent) end
--- returns hidden
function Control:IsControlHidden() end
--- returns isSet
function Control:IsHandlerSet(handlerName) end
--- returns hidden
function Control:IsHidden() end
--- returns enabled
function Control:IsKeyboardEnabled() end
--- returns enabled
function Control:IsMouseEnabled() end
function Control:SetClampedToScreen(clamped) end
function Control:SetClampedToScreenInsets(left, top, right, bottom) end
function Control:SetDimensionConstraints(minWidth, minHeight, maxWidth, maxHeight) end
function Control:SetHandler(handlerName, functionRef) end
function Control:SetHitInsets(left, top, right, bottom) end
function Control:SetId(id) end
function Control:SetInheritAlpha(inheritAlpha) end
function Control:SetInheritScale(inheritScale) end
function Control:SetMovable(isMovable) end
function Control:SetResizeHandleSize(handleSize) end
function Control:SetResizeToFitPadding(width, height) end


AddOnManager = Control
function AddOnManager:AddRelevantFilter(relevantFilter) end
--- returns name, active
function AddOnManager:GetAddOnDependencyInfo(addOnIndex, addOnDependencyIndex) end
--- returns settingFilter
function AddOnManager:GetAddOnFilter() end
--- returns name, title, author, description, enabled, state, isOutOfDate
function AddOnManager:GetAddOnInfo(addOnIndex) end
--- returns numDependencies
function AddOnManager:GetAddOnNumDependencies(addOnIndex) end
--- returns loadOutOfDateAddons
function AddOnManager:GetLoadOutOfDateAddOns() end
--- returns numAddOns
function AddOnManager:GetNumAddOns() end
function AddOnManager:RemoveAddOnFilter() end
function AddOnManager:ResetRelevantFilters() end
function AddOnManager:SetAddOnEnabled(addOnIndex, enabled) end
function AddOnManager:SetAddOnFilter(settingFilter) end
function AddOnManager:SetLoadOutOfDateAddOns(loadOutOfDateAddons) end

AnimationManager = Control
--- returns timeline
function AnimationManager:CreateTimeline() end
--- returns timeline
function AnimationManager:CreateTimelineFromVirtual(timelineName, animatedControl) end

AnimationObject = Control
--- returns animatedControl
function AnimationObject:GetAnimatedControl() end
--- returns durationMs
function AnimationObject:GetDuration() end
--- returns functionRef
function AnimationObject:GetEasingFunction() end
--- returns FunctionRef
function AnimationObject:GetHandler(EventName) end
--- returns owningTimeline
function AnimationObject:GetTimeline() end
--- returns isPlaying
function AnimationObject:IsPlaying() end
function AnimationObject:SetAnimatedControl(animatedControl) end
function AnimationObject:SetDuration(durationMs) end
function AnimationObject:SetEasingFunction(functionRef) end
function AnimationObject:SetHandler(EventName, FunctionRef) end


AnimationObjectAlpha = AnimationObject
--- returns endAlpha
function AnimationObjectAlpha:GetEndAlpha() end
--- returns startAlpha
function AnimationObjectAlpha:GetStartAlpha() end
function AnimationObjectAlpha:SetAlphaValues(startAlpha, endAlpha) end
function AnimationObjectAlpha:SetEndAlpha(endAlpha) end
function AnimationObjectAlpha:SetStartAlpha(startAlpha) end

AnimationObjectColor = AnimationObject
--- returns endR, endG, endB, endA
function AnimationObjectColor:GetEndColor() end
--- returns startR, startG, startB, startA
function AnimationObjectColor:GetStartColor() end
function AnimationObjectColor:SetColorValues(startR, startG, startB, startA, endR, endG, endB, endA) end
function AnimationObjectColor:SetEndColor(endR, endG, endB, endA) end
function AnimationObjectColor:SetStartColor(startR, startG, startB, startA) end

AnimationObjectCustom = AnimationObject
function AnimationObjectCustom:SetUpdateFunction(functionRef) end

AnimationObjectScale = AnimationObject
--- returns endScale
function AnimationObjectScale:GetEndScale() end
--- returns startScale
function AnimationObjectScale:GetStartScale() end
function AnimationObjectScale:SetEndScale(endScale) end
function AnimationObjectScale:SetScaleValues(startScale, endScale) end
function AnimationObjectScale:SetStartScale(startScale) end

AnimationObjectScroll = AnimationObject
function AnimationObjectScroll:SetHorizontalEnd(endX) end
function AnimationObjectScroll:SetHorizontalRelative(offsetX) end
function AnimationObjectScroll:SetHorizontalStartAndEnd(startX, endX) end
function AnimationObjectScroll:SetVerticalEnd(endY) end
function AnimationObjectScroll:SetVerticalRelative(offsetY) end
function AnimationObjectScroll:SetVerticalStartAndEnd(startY, endY) end

AnimationObjectSize = AnimationObject
function AnimationObjectSize:SetEndHeight(endHeight) end
function AnimationObjectSize:SetEndWidth(endWidth) end
function AnimationObjectSize:SetStartAndEndHeight(startHeight, endHeight) end
function AnimationObjectSize:SetStartAndEndWidth(startWidth, endWidth) end
function AnimationObjectSize:SetStartHeight(startHeight) end
function AnimationObjectSize:SetStartWidth(startWidth) end

AnimationObjectTexture = AnimationObject
--- returns aNumCellsHigh
function AnimationObjectTexture:GetCellsHigh() end
--- returns aNumCellsWide
function AnimationObjectTexture:GetCellsWide() end
--- returns mirroring
function AnimationObjectTexture:IsMirroringAlongX() end
--- returns mirroring
function AnimationObjectTexture:IsMirroringAlongY() end
function AnimationObjectTexture:SetCellsHigh(aNumCellsHigh) end
function AnimationObjectTexture:SetCellsWide(aNumCellsWide) end
function AnimationObjectTexture:SetFramerate(framesPerSecond) end
function AnimationObjectTexture:SetImageData(aNumCellsWide, aNumCellsHigh) end
function AnimationObjectTexture:SetMirrorAlongX(mirroring) end
function AnimationObjectTexture:SetMirrorAlongY(mirroring) end

AnimationObjectTextureRotate = AnimationObject
--- returns endRadians
function AnimationObjectTextureRotate:GetEndRotation() end
--- returns startRadians
function AnimationObjectTextureRotate:GetStartRotation() end
function AnimationObjectTextureRotate:SetEndRotation(endRadians) end
function AnimationObjectTextureRotate:SetRotationValues(startRadians, endRadians) end
function AnimationObjectTextureRotate:SetStartRotation(startRadians) end

AnimationObjectTextureSlide = AnimationObject
function AnimationObjectTextureSlide:SetSlideDistances(slideDistanceU, slideDistanceV) end

AnimationObjectTranslate = AnimationObject
--- returns deltaX
function AnimationObjectTranslate:GetDeltaOffsetX() end
--- returns deltaY
function AnimationObjectTranslate:GetDeltaOffsetY() end
--- returns endX
function AnimationObjectTranslate:GetEndOffsetX() end
--- returns endY
function AnimationObjectTranslate:GetEndOffsetY() end
--- returns startX
function AnimationObjectTranslate:GetStartOffsetX() end
--- returns startY
function AnimationObjectTranslate:GetStartOffsetY() end
--- returns deltaX, deltaY
function AnimationObjectTranslate:GetTranslateDeltas() end
function AnimationObjectTranslate:SetAnchorIndex(anchorIndex) end
function AnimationObjectTranslate:SetDeltaOffsetX(deltaX) end
function AnimationObjectTranslate:SetDeltaOffsetY(deltaY) end
function AnimationObjectTranslate:SetEndOffsetX(endX) end
function AnimationObjectTranslate:SetEndOffsetY(endY) end
function AnimationObjectTranslate:SetStartOffsetX(startX) end
function AnimationObjectTranslate:SetStartOffsetY(startY) end
function AnimationObjectTranslate:SetTranslateDeltas(deltaX, deltaY) end
function AnimationObjectTranslate:SetTranslateOffsets(startX, startY, endX, endY) end

AnimationTimeline = AnimationObject
function AnimationTimeline:ApplyAllAnimationsToControl(animatedControl) end
function AnimationTimeline:ClearAllCallbacks() end
--- returns animation
function AnimationTimeline:GetAnimation(animationIndex) end
--- returns offset
function AnimationTimeline:GetAnimationOffset(animation) end
--- returns timeline
function AnimationTimeline:GetAnimationTimeline(timelineIndex) end
--- returns offset
function AnimationTimeline:GetAnimationTimelineOffset(animation) end
--- returns duration
function AnimationTimeline:GetDuration() end
--- returns animation
function AnimationTimeline:GetFirstAnimation() end
--- returns timeline
function AnimationTimeline:GetFirstAnimationTimeline() end
--- returns progress
function AnimationTimeline:GetFullProgress() end
--- returns FunctionRef
function AnimationTimeline:GetHandler(EventName) end
--- returns animation
function AnimationTimeline:GetLastAnimation() end
--- returns timeline
function AnimationTimeline:GetLastAnimationTimeline() end
--- returns numTimelines
function AnimationTimeline:GetNumAnimationTimelines() end
--- returns numAnimations
function AnimationTimeline:GetNumAnimations() end
--- returns timeline
function AnimationTimeline:GetParent() end
--- returns progress
function AnimationTimeline:GetProgress() end
--- returns animation
function AnimationTimeline:InsertAnimation(animationType, animatedControl, offset) end
--- returns animation
function AnimationTimeline:InsertAnimationFromVirtual(animationVirtualName, animatedControl) end
--- returns animation
function AnimationTimeline:InsertAnimationTimeline(offset, animatedControl) end
--- returns animation
function AnimationTimeline:InsertAnimationTimelineFromVirtual(animationVirtualName, animatedControl) end
--- returns functionRefRet
function AnimationTimeline:InsertCallback(functionRef, offset) end
--- returns isPlaying
function AnimationTimeline:IsPlaying() end
--- returns reversed
function AnimationTimeline:IsPlayingBackward() end
function AnimationTimeline:PlayBackward() end
function AnimationTimeline:PlayForward() end
function AnimationTimeline:PlayFromEnd(offsetMs) end
function AnimationTimeline:PlayFromStart(offsetMs) end
function AnimationTimeline:PlayInstantlyToEnd() end
function AnimationTimeline:PlayInstantlyToStart() end
function AnimationTimeline:SetAnimationOffset(animation, offset) end
function AnimationTimeline:SetAnimationTimelineOffset(animation, offset) end
function AnimationTimeline:SetCallbackOffset(callback, offset) end
function AnimationTimeline:SetHandler(EventName, FunctionRef) end
function AnimationTimeline:SetPlaybackLoopsRemaining(loopsRemaining) end
function AnimationTimeline:SetPlaybackType(playbackType, maxLoopCount) end
function AnimationTimeline:SetProgress(progress) end
function AnimationTimeline:Stop() end

BackdropControl = Control
--- returns r, g, b, a
function BackdropControl:GetCenterColor() end
function BackdropControl:IsPixelRoundingEnabled() end
--- returns:_ *bool* _pixelRoundingEnabled_
function BackdropControl:SetCenterColor(r, g, b, a) end
function BackdropControl:SetCenterTexture(filename, tileSize, addressMode) end
function BackdropControl:SetEdgeColor(r, g, b, a) end
function BackdropControl:SetEdgeTexture(filename, edgeFileWidth, edgeFileHeight, edgeSize, edgeFilePadding) end
function BackdropControl:SetInsets(left, top, right, bottom) end
function BackdropControl:SetIntegralWrapping(integralWrappingEnabled) end
function BackdropControl:SetPixelRoundingEnabled(enabled) end

BrowserControl = Control
function BrowserControl:Open(param1, param2, param3, text) end

ButtonControl = Control
function ButtonControl:EnableMouseButton(buttonNum, enabled) end
--- returns labelControl
function ButtonControl:GetLabelControl() end
--- returns state
function ButtonControl:GetState() end
function ButtonControl:IsPixelRoundingEnabled() end
--- returns:_ *bool* _pixelRoundingEnabled_
function ButtonControl:SetClickSound(clickSound) end
function ButtonControl:SetDesaturation(desaturation) end
function ButtonControl:SetDisabledFontColor(r, g, b, a) end
function ButtonControl:SetDisabledPressedFontColor(r, g, b, a) end
function ButtonControl:SetDisabledPressedTexture(textureFilename) end
function ButtonControl:SetDisabledTexture(textureFilename) end
function ButtonControl:SetEnabled(enabled) end
function ButtonControl:SetEndCapWidth(endCapWidth) end
function ButtonControl:SetFont(text) end
function ButtonControl:SetHorizontalAlignment(horizontalAlign) end
function ButtonControl:SetMouseOverBlendMode(blendMode) end
function ButtonControl:SetMouseOverFontColor(r, g, b, a) end
function ButtonControl:SetMouseOverTexture(textureFilename) end
function ButtonControl:SetNormalFontColor(r, g, b, a) end
function ButtonControl:SetNormalOffset(x, y) end
function ButtonControl:SetNormalTexture(textureFilename) end
function ButtonControl:SetPixelRoundingEnabled(pixelRoundingEnabled) end
function ButtonControl:SetPressedFontColor(r, g, b, a) end
function ButtonControl:SetPressedMouseOverTexture(textureFilename) end
function ButtonControl:SetPressedOffset(x, y) end
function ButtonControl:SetPressedTexture(textureFilename) end
function ButtonControl:SetState(newState, locked) end
function ButtonControl:SetText(text) end
function ButtonControl:SetTextureCoords(left, right, top, bottom) end
function ButtonControl:SetVerticalAlignment(verticalAlign) end

ColorSelectControl = Control
--- returns hue, saturation, value
function ColorSelectControl:GetColorAsHSV() end
--- returns red, green, blue
function ColorSelectControl:GetColorAsRGB() end
--- returns textureControl
function ColorSelectControl:GetColorWheelTextureControl() end
--- returns textureControl
function ColorSelectControl:GetColorWheelThumbTextureControl() end
--- returns red, green, blue
function ColorSelectControl:GetFullValuedColorAsRGB() end
--- returns value
function ColorSelectControl:GetValue() end
function ColorSelectControl:SetColorAsHSV(hue, saturation, value) end
function ColorSelectControl:SetColorAsRGB(red, green, blue) end
function ColorSelectControl:SetColorWheelThumbTextureControl(textureControl) end
function ColorSelectControl:SetValue(value) end

CompassDisplayControl = Control
--- returns leadingCoefficient, coefficient, constant
function CompassDisplayControl:GetAlphaCoefficients(pinType) end
--- returns description, type, distance, drawLayer, suppressed
function CompassDisplayControl:GetCenterOveredPinInfo(centerOveredPinIndex) end
--- returns minVisibleAlpha
function CompassDisplayControl:GetMinVisibleAlpha(pinType) end
--- returns minVisibleScale
function CompassDisplayControl:GetMinVisibleScale(pinType) end
--- returns numCenterOveredPins
function CompassDisplayControl:GetNumCenterOveredPins() end
--- returns leadingCoefficient, coefficient, constant
function CompassDisplayControl:GetScaleCoefficients(pinType) end
function CompassDisplayControl:SetAlphaCoefficients(pinType, leadingCoefficient, coefficient, constant) end
function CompassDisplayControl:SetCardinalDirection(directionName, font, cardinalDirection) end
function CompassDisplayControl:SetMinVisibleAlpha(pinType, minVisibleAlpha) end
function CompassDisplayControl:SetMinVisibleScale(pinType, minVisibleScale) end
function CompassDisplayControl:SetScaleCoefficients(pinType, leadingCoefficient, coefficient, constant) end

EVENT_MANAGER = {}
--- returns success
function EVENT_MANAGER:RegisterForEvent(event, callback) end
--- returns success
function EVENT_MANAGER:UnregisterForEvent(event) end

CooldownControl = Control
--- returns duration
function CooldownControl:GetDuration() end
--- returns time

function CooldownControl:GetPercentCompleteFixed() end
--- returns:_ *number* _percentComplete_
function CooldownControl:GetTimeLeft() end
function CooldownControl:ResetCooldown() end
function CooldownControl:SetBlendMode(blendMode) end
function CooldownControl:SetCooldownRemainTime(remain) end
function CooldownControl:SetFillColor(r, g, b, a) end
function CooldownControl:SetLeadingEdgeTexture(filename) end
function CooldownControl:SetPercentCompleteFixed(percentComplete) end
function CooldownControl:SetTexture(filename) end
function CooldownControl:SetVerticalCooldownLeadingEdgeHeight(leadingEdgeHeight) end
function CooldownControl:StartCooldown(remain, duration, cooldownType, cooldownTimeType, drawLeadingEdge) end
function CooldownControl:StartFixedCooldown(percentComplete, cooldownType, cooldownTimeType, drawLeadingEdge) end

DebugTextControl = Control
function DebugTextControl:Clear() end
function DebugTextControl:SetFont(fontStr) end

ZO_ChatWindowTextEntryEditBox = Control
function ZO_ChatWindowTextEntryEditBox:AddValidCharacter(validCharacter) end
function ZO_ChatWindowTextEntryEditBox:Clear() end
function ZO_ChatWindowTextEntryEditBox:ClearSelection() end
function ZO_ChatWindowTextEntryEditBox:CopyAllTextToClipboard() end
--- returns enabled
function ZO_ChatWindowTextEntryEditBox:GetCopyEnabled() end
--- returns cursorPosition
function ZO_ChatWindowTextEntryEditBox:GetCursorPosition() end
--- returns enabled
function ZO_ChatWindowTextEntryEditBox:GetEditEnabled() end
--- returns fontHeight
function ZO_ChatWindowTextEntryEditBox:GetFontHeight() end
--- returns enabled
function ZO_ChatWindowTextEntryEditBox:GetNewLineEnabled() end
--- returns enabled
function ZO_ChatWindowTextEntryEditBox:GetPasteEnabled() end
--- returns apRet
function ZO_ChatWindowTextEntryEditBox:GetScrollExtents() end
--- returns:_ *integer* _numLines_
function ZO_ChatWindowTextEntryEditBox:GetText() end
--- returns aRet
function ZO_ChatWindowTextEntryEditBox:GetTopLineIndex() end
--- returns:_ *luaindex* _index_
function ZO_ChatWindowTextEntryEditBox:HasFocus() end
--- returns hasSelection
function ZO_ChatWindowTextEntryEditBox:HasSelection() end
function ZO_ChatWindowTextEntryEditBox:InsertText(aText) end
--- returns isMultiLine
function ZO_ChatWindowTextEntryEditBox:IsMultiLine() end
function ZO_ChatWindowTextEntryEditBox:LoseFocus() end
function ZO_ChatWindowTextEntryEditBox:OpenVirtualKeyboard(aSaveCurrentText) end
function ZO_ChatWindowTextEntryEditBox:RemoveAllValidCharacters() end
function ZO_ChatWindowTextEntryEditBox:SelectAll() end
function ZO_ChatWindowTextEntryEditBox:SetColor(r, g, b, a) end
function ZO_ChatWindowTextEntryEditBox:SetCopyEnabled(enabled) end
function ZO_ChatWindowTextEntryEditBox:SetCursorPosition(cursorPosition) end
function ZO_ChatWindowTextEntryEditBox:SetEditEnabled(enabled) end
function ZO_ChatWindowTextEntryEditBox:SetFont(font) end
function ZO_ChatWindowTextEntryEditBox:SetMaxInputChars(maxChars) end
function ZO_ChatWindowTextEntryEditBox:SetMultiLine(isMultiLine) end
function ZO_ChatWindowTextEntryEditBox:SetNewLineEnabled(enabled) end
function ZO_ChatWindowTextEntryEditBox:SetPasteEnabled(enabled) end
function ZO_ChatWindowTextEntryEditBox:SetSelection(selectionStartIndex, selectionEndIndex) end
function ZO_ChatWindowTextEntryEditBox:SetSelectionColor(r, g, b, a) end
function ZO_ChatWindowTextEntryEditBox:SetText(aText) end
function ZO_ChatWindowTextEntryEditBox:SetTextType(textType) end
function ZO_ChatWindowTextEntryEditBox:SetTopLineIndex(index) end
function ZO_ChatWindowTextEntryEditBox:SetVirtualKeyboardType(aKeyboardType) end
function ZO_ChatWindowTextEntryEditBox:TakeFocus() end
function ZO_ChatWindowTextEntryEditBox:WasLastChangeVirtualKeyboard() end
--- returns:_ *bool* _aRet_

FontObject = Control
--- returns face, size, option
function FontObject:GetFontInfo() end
function FontObject:SetFont(fontDescriptor) end

LabelControl = Control
function LabelControl:AnchorToBaseline(toLabel, offsetX, anchorSide) end
function LabelControl:ClearAnchorToBaseline(toLabel) end
--- returns didLineWrap
function LabelControl:DidLineWrap() end
--- returns r, g, b, a
function LabelControl:GetColor() end
--- returns fontHeight
function LabelControl:GetFontHeight() end
--- returns align
function LabelControl:GetHorizontalAlignment() end
--- returns modifyTextType
function LabelControl:GetModifyTextType() end
--- returns width
function LabelControl:GetStringWidth(text) end
--- returns r, g, b, a
function LabelControl:GetStyleColor() end
--- returns apRet
function LabelControl:GetText() end
--- returns stringWidth, stringHeight
function LabelControl:GetTextDimensions() end
--- returns stringHeight
function LabelControl:GetTextHeight() end
--- returns stringWidth
function LabelControl:GetTextWidth() end
--- returns align
function LabelControl:GetVerticalAlignment() end
function LabelControl:SetColor(r, g, b, a) end
function LabelControl:SetDesaturation(desaturation) end
function LabelControl:SetFont(fontString) end
function LabelControl:SetHorizontalAlignment(align) end
function LabelControl:SetLineSpacing(newLineX) end
function LabelControl:SetModifyTextType(modifyTextType) end
function LabelControl:SetNewLineX(newLineX) end
function LabelControl:SetPixelRoundingEnabled(pixelRoundingEnabled) end
function LabelControl:SetStyleColor(r, g, b, a) end
function LabelControl:SetText(aText) end
function LabelControl:SetVerticalAlignment(verticalAlign) end
function LabelControl:SetWrapMode(wrapMode) end
function LabelControl:WasTruncated() end
--- returns wasTruncated
LineControl = Control
function LineControl:GetBlendMode() end
--- returns:_ *[TextureBlendMode|#TextureBlendMode]* _blendMode_
function LineControl:GetColor() end
--- returns r, g, b, a
function LineControl:GetDesaturation() end
--- returns:_ *number* _desaturation_
function LineControl:GetTextureCoords() end
--- returns:_ *number* _left_, *number* _right_, *number* _top_, *number* _bottom_
function LineControl:GetTextureFileDimensions() end
--- returns:_ *integer* _pixelWidth_, *integer* _pixelHeight_
function LineControl:GetTextureFileName() end
--- returns:_ *string* _filename_
function LineControl:IsPixelRoundingEnabled() end
--- returns:_ *bool* _pixelRoundingEnabled_
function LineControl:IsTextureLoaded() end
--- returns:_ *bool* _loaded_
function LineControl:SetBlendMode(blendMode) end
function LineControl:SetColor(r, g, b, a) end
function LineControl:SetDesaturation(desaturation) end
function LineControl:SetGradientColors(orientation, startR, startG, startB, startA, endR, endG, endB, endA) end
function LineControl:SetPixelRoundingEnabled(pixelRoundingEnabled) end
function LineControl:SetTexture(filename) end
function LineControl:SetTextureCoords(left, right, top, bottom) end
function LineControl:SetThickness(thickness) end
function LineControl:SetVertexColors(vertexPoints, red, green, blue, alpha) end

MapDisplayControl = Control
--- returns normalizedRadius
function MapDisplayControl:GetZoom() end
function MapDisplayControl:SetPinFont(pinFont) end
function MapDisplayControl:SetZoom(normalizedRadius) end

RootWindow = Control

ScrollControl = Control
--- returns horizontal, vertical
function ScrollControl:GetScrollExtents() end
--- returns horizontal, vertical
function ScrollControl:GetScrollOffsets() end
function ScrollControl:RestoreToExtents(duration) end
function ScrollControl:SetFadeGradient(gradientIndex, normalX, normalY, gradientLength) end
function ScrollControl:SetHorizontalScroll(offset) end
function ScrollControl:SetScrollBounding(bounding) end
function ScrollControl:SetVerticalScroll(offset) end

SliderControl = Control
--- returns allow
function SliderControl:DoesAllowDraggingFromThumb() end
--- returns isEnabled
function SliderControl:GetEnabled() end
--- returns min, max
function SliderControl:GetMinMax() end
--- returns orientation
function SliderControl:GetOrientation() end
--- returns textureControl
function SliderControl:GetThumbTextureControl() end
--- returns value
function SliderControl:GetValue() end
--- returns step
function SliderControl:GetValueStep() end
--- returns flush
function SliderControl:IsThumbFlushWithExtents() end
function SliderControl:SetAllowDraggingFromThumb(allow) end
function SliderControl:SetBackgroundBottomTexture(fileName, texTop, texLeft, texBottom, texRight) end
function SliderControl:SetBackgroundMiddleTexture(fileName, texTop, texLeft, texBottom, texRight) end
function SliderControl:SetBackgroundTopTexture(fileName, texTop, texLeft, texBottom, texRight) end
function SliderControl:SetColor(r, g, b, a) end
function SliderControl:SetEnabled(enable) end
function SliderControl:SetMinMax(min, max) end
function SliderControl:SetOrientation(orientation) end
function SliderControl:SetThumbFlushWithExtents(flush) end
function SliderControl:SetThumbTexture(filename, disabledFilename, highlightedFilename, thumbWidth, thumbHeight, texTop, texLeft, texBottom, texRight) end
function SliderControl:SetThumbTextureHeight(height) end
function SliderControl:SetValue(value) end
function SliderControl:SetValueStep(step) end

StatusBarControl = Control
function StatusBarControl:ClearFadeOutLossAdjustedTopValue() end
function StatusBarControl:EnableFadeOut(enabled) end
function StatusBarControl:EnableLeadingEdge(enabled) end
function StatusBarControl:EnableScrollingOverlay(enabled) end
--- returns min, max
function StatusBarControl:GetMinMax() end
--- returns value
function StatusBarControl:GetValue() end
function StatusBarControl:SetBarAlignment(barAlignment) end
function StatusBarControl:SetColor(r, g, b, a) end
function StatusBarControl:SetFadeOutGainColor(r, g, b, a) end
function StatusBarControl:SetFadeOutLossAdjustedTopValue(topValue) end
function StatusBarControl:SetFadeOutLossColor(r, g, b, a) end
function StatusBarControl:SetFadeOutLossSetValueToAdjust(adjustValue) end
function StatusBarControl:SetFadeOutTexture(filename) end
function StatusBarControl:SetFadeOutTime(fadeOutSeconds, fadeOutDelaySeconds) end
function StatusBarControl:SetGradientColors(startR, startG, startB, startA, endR, endG, endB, endA) end
function StatusBarControl:SetLeadingEdge(textureFile, width, height) end
function StatusBarControl:SetLeadingEdgeTextureCoords(left, right, top, bottom) end
function StatusBarControl:SetMinMax(aMin, aMax) end
function StatusBarControl:SetOrientation(orientation) end
function StatusBarControl:SetTexture(filename) end
function StatusBarControl:SetTextureCoords(left, right, top, bottom) end
function StatusBarControl:SetValue(aValue) end
function StatusBarControl:SetupScrollingOverlay(textureFile, width, height, duration) end

CHAT_SYSTEM = {}
function CHAT_SYSTEM:AddMessage(aText, r, g, b, colorId) end
function CHAT_SYSTEM:Clear() end
--- returns drawLastIfOutOfRoom
function CHAT_SYSTEM:GetDrawLastEntryIfOutOfRoom() end
--- returns timeBeforeLineBeginsToFade, timeItTakesLineToFade
function CHAT_SYSTEM:GetLineFade() end
--- returns linkEnabed
function CHAT_SYSTEM:GetLinkEnabled() end
--- returns numLines
function CHAT_SYSTEM:GetMaxHistoryLines() end
--- returns numLines
function CHAT_SYSTEM:GetNumHistoryLines() end
--- returns numLines
function CHAT_SYSTEM:GetNumVisibleLines() end
--- returns scrollPosition
function CHAT_SYSTEM:GetScrollPosition() end
--- returns isSplitting
function CHAT_SYSTEM:IsSplittingLongMessages() end
function CHAT_SYSTEM:MoveScrollPosition(numLines) end
function CHAT_SYSTEM:SetClearBufferAfterFadeout(clearAfterFade) end
function CHAT_SYSTEM:SetColorById(colorId, r, g, b) end
function CHAT_SYSTEM:SetDrawLastEntryIfOutOfRoom(drawLastIfOutOfRoom) end
function CHAT_SYSTEM:SetFont(fontString) end
function CHAT_SYSTEM:SetHorizontalAlignment(align) end
function CHAT_SYSTEM:SetLineFade(timeBeforeLineFadeBegins, timeForLineToFade) end
function CHAT_SYSTEM:SetLinkEnabled(linkEnabed) end
function CHAT_SYSTEM:SetMaxHistoryLines(numLines) end
function CHAT_SYSTEM:SetScrollPosition(line) end
function CHAT_SYSTEM:SetSplitLongMessages(splitLongMessages) end
function CHAT_SYSTEM:ShowFadedLines() end

TextureCompositeControl = Control
function TextureCompositeControl:AddSurface(left, right, top, bottom) end
function TextureCompositeControl:ClearAllSurfaces() end
function TextureCompositeControl:GetBlendMode() end
--- returns: *[TextureBlendMode|#TextureBlendMode]* blendMode
function TextureCompositeControl:GetColor( surfaceIndex) end
--- returns: *number* r, *number* g, *number* b, *number* a
function TextureCompositeControl:GetDesaturation() end
--- returns: *number* desaturation
function TextureCompositeControl:GetInsets(surfaceIndex) end
--- returns: *number* left, *number* right, *number* top, *number* bottom
function TextureCompositeControl:GetNumSurfaces() end
--- returns: *integer* surfaces
function TextureCompositeControl:GetSurfaceAlpha(surfaceIndex) end
--- returns: *number* a
function TextureCompositeControl:GetTextureCoords(surfaceIndex) end
--- returns: *number* left, *number* right, *number* top, *number* bottom
function TextureCompositeControl:GetTextureFileDimensions() end
--- returns: *integer* pixelWidth, *integer* pixelHeight
function TextureCompositeControl:GetTextureFileName() end
--- returns: *string* filename
function TextureCompositeControl:IsPixelRoundingEnabled() end
--- returns: *bool* pixelRoundingEnabled
function TextureCompositeControl:IsSurfaceHidden(surfaceIndex) end
--- returns: *bool* hidden
function TextureCompositeControl:IsTextureLoaded() end
--- returns: *bool* loaded
function TextureCompositeControl:RemoveSurface(surfaceIndex) end
function TextureCompositeControl:SetBlendMode(blendMode) end
function TextureCompositeControl:SetColor(surfaceIndex, r, g, b, a) end
function TextureCompositeControl:SetDesaturation(desaturation) end
function TextureCompositeControl:SetInsets(surfaceIndex, left, right, top, bottom) end
function TextureCompositeControl:SetPixelRoundingEnabled(pixelRoundingEnabled) end
function TextureCompositeControl:SetSurfaceAlpha(surfaceIndex, a) end
function TextureCompositeControl:SetSurfaceHidden(surfaceIndex, hidden) end
function TextureCompositeControl:SetTexture(filename) end
function TextureCompositeControl:SetTextureCoords(surfaceIndex, left, right, top, bottom) end


TextureControl = Control

function TextureControl:GetAddressMode() end
--- returns:_ *[TextureAddressMode|#TextureAddressMode]* _addressMode_
function TextureControl:GetBlendMode() end
--- returns:_ *[TextureBlendMode|#TextureBlendMode]* _blendMode_
function TextureControl:GetColor() end
--- returns r, g, b, a
function TextureControl:GetDesaturation() end
--- returns:_ *number* _desaturation_
function TextureControl:GetResizeToFitFile() end
--- returns resizesToFitFile
function TextureControl:GetTextureCoords() end
--- returns:_ *number* _left_, *number* _right_, *number* _top_, *number* _bottom_
function TextureControl:GetTextureFileDimensions() end
--- returns pixelWidth, pixelHeight
function TextureControl:GetTextureFileName() end
--- returns:_ *string* _filename_
function TextureControl:GetVertexUV(ertex) end
--- returns:_ *number* _u_, *number* _v_
function TextureControl:IsPixelRoundingEnabled() end
--- returns:_ *bool* _pixelRoundingEnabled_

--- returns loaded
function TextureControl:IsTextureLoaded() end
function TextureControl:SetAddressMode(addressMode) end
function TextureControl:SetAutoAdjustWrappedCoords(enabled) end
function TextureControl:SetBlendMode(blendMode) end
function TextureControl:SetColor(r, g, b, a) end
function TextureControl:SetDesaturation(desaturation) end
function TextureControl:SetGradientColors(orientation, startR, startG, startB, startA, endR, endG, endB, endA) end
function TextureControl:SetPixelRoundingEnabled(pixelRoundingEnabled) end
function TextureControl:SetResizeToFitFile(resizesToFitFile) end
function TextureControl:SetTexture(filename) end
function TextureControl:SetTextureCoords(left, right, top, bottom) end
function TextureControl:SetTextureCoordsRotation(angleInRadians) end
function TextureControl:SetTextureRotation(angleInRadians, normalizedRotationPointX, normalizedRotationPointY) end
function TextureControl:SetVertexColors(vertexPoints, red, green, blue, alpha) end
function TextureControl:SetVertexUV(vertex, u, v) end

TooltipControl = Control
function TooltipControl:AddControl(control, cell, useLastRow) end
function TooltipControl:AddHeaderControl(control, headerRow, headerSide) end
function TooltipControl:AddHeaderLine(text, font, headerRow, headerSide, r, g, b) end
function TooltipControl:AddLine(text, font, r, g, b, lineAnchor, modifyTextType, textAlignment, setToFullSize) end
function TooltipControl:AddVerticalPadding(paddingY) end
function TooltipControl:AppendAvAObjective(queryType, keepId, objectiveId, isSpawnPosition) end
function TooltipControl:AppendMapPing(pingType, unitTag) end
function TooltipControl:AppendQuestCondition(questIndex, stepIndex, conditionIndex) end
function TooltipControl:AppendQuestEnding(questIndex) end
function TooltipControl:AppendUnitName(unitTag) end
function TooltipControl:ClearLines() end
--- returns owner
function TooltipControl:GetOwner() end
function TooltipControl:HideComparativeTooltips() end
function TooltipControl:SetAbility(aAbilityIndex, aShowBase) end
function TooltipControl:SetAchievement(aAchievementId) end
function TooltipControl:SetAchievementRewardItem(aAchievementId) end
function TooltipControl:SetAction(aSlotId) end
function TooltipControl:SetAsComparativeTooltip1() end
function TooltipControl:SetAsComparativeTooltip2() end
function TooltipControl:SetAttachedMailItem(aMailId, aAttachSlot) end
function TooltipControl:SetBagItem(bagIndex, slotIndex) end
function TooltipControl:SetBook(categoryIndex, collectionIndex, bookIndex) end
function TooltipControl:SetBuff(aBuffSlotId, unitTag) end
function TooltipControl:SetBuybackItem(entryIndex) end
function TooltipControl:SetChampionSkillAbility(disiplineIndex, skillIndex, numPendingPoints_) end
function TooltipControl:SetCollectible(collectibleId, addNickname, showHint_) end
function TooltipControl:SetEmperorBonusAbility(campaignId, alliance) end
function TooltipControl:SetFont(fontStr) end
function TooltipControl:SetForceTooltipNotStolen(forceNotStolen) end
function TooltipControl:SetGuildSpecificItem(guildSpecificItemIndex) end
function TooltipControl:SetHeaderRowSpacing(spacing) end
function TooltipControl:SetHeaderVerticalOffset(verticalOffset) end
function TooltipControl:SetItemUsingEnchantment(itemBagIndex, itemSlotIndex, enchantmentBagIndex, enchantmentSlotIndex) end
function TooltipControl:SetKeepBonusAbility(bonusIndex) end
function TooltipControl:SetKeepUpgrade(keepId, battlegroundContext, upgradeLine, level, index) end
function TooltipControl:SetLastCraftingResultItem(resultIndex) end
function TooltipControl:SetLink(aLink) end
function TooltipControl:SetLootItem(lootId) end
function TooltipControl:SetMarketItem(marketProductId, itemIndex) end
function TooltipControl:SetMinHeaderRowHeight(minRowHeight) end
function TooltipControl:SetMinHeaderRows(minRows) end
function TooltipControl:SetOwner(owner, position, offsetX, offsetY, relativePoint) end
function TooltipControl:SetPendingAlchemyItem(solventBagId, solventSlotIndex, reagent1BagId, reagent1SlotIndex, reagent2BagId, reagent2SlotIndex, reagent3BagId, reagent3SlotIndex) end
function TooltipControl:SetPendingEnchantingItem(potencyRuneBagId, potencyRuneSlotIndex, essenceRuneBagId, essenceRuneSlotIndex, aspectRuneBagId, aspectRuneSlotIndex) end
function TooltipControl:SetPendingSmithingItem(patternIndex, materialIndex, materialQuantity, styleIndex, traitIndex) end
function TooltipControl:SetProgressionAbility(aProgressionIndex, aMorph, aRank) end
function TooltipControl:SetProvisionerIngredientItem(recipeListIndex, recipeIndex, ingredientIndex) end
function TooltipControl:SetProvisionerResultItem(recipeListIndex, recipeIndex) end
function TooltipControl:SetQuestItem(questIndex, stepIndex, conditionIndex) end
function TooltipControl:SetQuestReward(aPerkIndex) end
function TooltipControl:SetQuestTool(questIndex, toolIndex) end
function TooltipControl:SetScrollBonusAbility(alliance, artifactType, bonusIndex) end
function TooltipControl:SetSkillAbility(skillType, skillIndex, abilityIndex) end
function TooltipControl:SetSkillLine(skillType, skillIndex) end
function TooltipControl:SetSkillUpgradeAbility(skillType, skillIndex, abilityIndex) end
function TooltipControl:SetSmithingImprovementItem(craftingSkillType, improvementItemIndex) end
function TooltipControl:SetSmithingImprovementResult(itemToImproveBagId, itemToImproveSlotIndex, craftingSkillType) end
function TooltipControl:SetSmithingMaterialItem(patternIndex, materialIndex) end
function TooltipControl:SetSmithingStyleItem(styleItemIndex) end
function TooltipControl:SetSmithingTraitItem(traitItemIndex) end
function TooltipControl:SetStoreAlternateCurrencyItem(entryIndex, offset) end
function TooltipControl:SetStoreItem(entryIndex) end
function TooltipControl:SetTradeItem(aWho, aTradeIndex) end
function TooltipControl:SetTradingHouseItem(tradingHouseIndex) end
function TooltipControl:SetTradingHouseListing(tradingHouseIndex) end
function TooltipControl:SetWornItem(equipSlot) end
function TooltipControl:ShowComparativeTooltips() end

TopLevelWindow = Control
--- returns allow
function TopLevelWindow:AllowBringToTop() end
function TopLevelWindow:SetTopmost(isTopmost) end

WINDOW_MANAGER = {}
function WINDOW_MANAGER:ApplyTemplateToControl(control, virtualName) end
function WINDOW_MANAGER:CreateControl(arg1, parent, type) end
--- Returns:_ *object* _apRet_
function WINDOW_MANAGER:CreateControlFromVirtual(controlName, parent, virtualName) end
--- Returns:_ *object* _apRet_
function WINDOW_MANAGER:CreateTopLevelWindow(arg1) end
--- Returns:_ *object* _apRet_
function WINDOW_MANAGER:GetControlByName(name, suffix) end
--- Returns:_ *object* _ret_
function WINDOW_MANAGER:GetFocusControl() end
--- Returns:_ *object* _focusControl_
function WINDOW_MANAGER:GetMouseOverControl() end
--- Returns:_ *object* _mouseOverControl_
function WINDOW_MANAGER:GetOverscanOffsets() end
--- Returns:_ *integer* _offsetX_, *integer* _offsetY_, *integer* _offsetWidth_, *integer* _offsetHeight_
function WINDOW_MANAGER:IsHandlingHardwareEvent() end
--- Returns:_ *bool* _isHandlingHardwareEvent_
function WINDOW_MANAGER:IsMouseOverWorld() end
--- Returns:_ *bool* _isMouseOverWorld_
function WINDOW_MANAGER:IsSecureRenderModeEnabled() end
--- Returns:_ *bool* _secureRenderModeEnabled_
function WINDOW_MANAGER:SetFocusByName(name) end
function WINDOW_MANAGER:SetMouseCursor(cursorType) end
function WINDOW_MANAGER:SetMouseFocusByName(name) end
function WINDOW_MANAGER:SetOverscanOffsets(offsetX, offsetY, offsetWidth, offsetHeight) end