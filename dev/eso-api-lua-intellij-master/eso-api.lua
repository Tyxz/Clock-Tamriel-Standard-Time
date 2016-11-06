function GetCVar(CVarName) end
--- Returns:  value

function SetCVar(CVarName, value) end

function GetSetting(system, settingId) end
--- Returns:  value

function GetSettingBool(system, settingId) end
--- Returns:  value

function SetSetting(system, settingId, value, setOptions) end

function ApplySettings() end

function ResetSettingToDefault(system, settingId) end

function ResetToDefaultSettings(system) end

function RefreshSettings() end

function GetString(stringVariablePrefix, contextId) end
--- Returns:  stringValue

function IsShiftKeyDown() end
--- Returns:  isShiftDown

function IsControlKeyDown() end
--- Returns:  isCtrlDown

function IsAltKeyDown() end
--- Returns:  isAltDown

function IsCommandKeyDown() end
--- Returns:  isCommandDown

function IsCapsLockOn() end
--- Returns:  isCapsLockOn

function GetKeyName(keyCode) end
--- Returns:  keyName

function GetKeyboardLayout() end
--- Returns:  keyboardLayout

function PlaySound(soundName) end

function SetGuiHidden(guiName, hidden) end

function GetGuiHidden(guiName) end
--- Returns:  hidden

function ToggleFullScreen() end

function IsMouseWithinClientArea() end
--- Returns:  insideClient

function IsUserAdjustingClientWindow() end
--- Returns:  isAdjusting

function GetInterfaceColor(interfaceColorType, fieldValue) end
--- Returns:  red, green, blue, alpha

function GetSecondsSinceMidnight() end
--- Returns:  secondsSinceMidnight

function GetFrameTimeSeconds() end
--- Returns:  frameTimeInSeconds

function GetFrameDeltaTimeSeconds() end
--- Returns:  frameDeltaTimeInSeconds

function GetFrameTimeMilliseconds() end
--- Returns:  frameTimeInMilliseconds

function GetFrameDeltaTimeMilliseconds() end
--- Returns:  frameDeltaTimeInMilliseconds

function GetDateStringFromTimestamp(timestamp) end
--- Returns:  dateString

function GetGameTimeMilliseconds() end
--- Returns:  gameTimeInMilliseconds

function GetFramerate() end
--- Returns:  currentFramerate

function GetTimeString() end
--- Returns:  currentTimeString

function GetDate() end
--- Returns:  currentTime

function GetTimeStamp() end
--- Returns:  timestamp

function GetDiffBetweenTimeStamps(laterTime, earlierTime) end
--- Returns:  difference

function GetFormattedTime() end
--- Returns:  formattedTime

function FormatTimeSeconds(timeValueInSeconds, formatType, precisionType, direction) end
--- Returns:  formattedTimeString, nextUpdateTimeInSec

function FormatTimeMilliseconds(timeValueInMilliseconds, formatType, precisionType, direction) end
--- Returns:  formattedTimeString, nextUpdateTimeInMilliseconds

function GetErrorString(errorStringId) end
--- Returns:  stringValue

function GetAllianceName(alliance) end
--- Returns:  name

function GetNumClasses() end
--- Returns:  classCount

function GetClassInfo(index) end
--- Returns:  defId, lore, normalIcon, pressedIcon, mouseoverIcon, isSelectable, ingameIcon

function GetClassName(gender, classId) end
--- Returns:  className

function GetGenderFromNameDescriptor(nameDescriptor) end
--- Returns:  gender

function PlainStringFind(string, searchFor) end
--- Returns:  found, startIndex, endIndex

function SplitString(delims, stringToSplit) end
--- Uses variable returns...
--- Returns:  strings

function LocaleAwareToUpper(stringToUppercase) end
--- Returns:  upperCasedString

function LocaleAwareToLower(stringToLowercase) end
--- Returns:  lowerCasedString

function GetDisplayModes() end
--- Uses variable returns...
--- Returns:  width, height

function IsMinSpecMachine() end
--- Returns:  minspec

function IsPrivateFunction(functionName) end
--- Returns:  isPrivate

function IsProtectedFunction(functionName) end
--- Returns:  isProtected

function GetAPIVersion() end
--- Returns:  version

function Id64ToString(id) end
--- Returns:  stringDesc

function HideMouse(onlyConsiderWhileMoving) end

function ShowMouse(onlyConsiderWhileMoving) end

function SetGameCameraUIMode(active) end

function IsGameCameraUIModeActive() end
--- Returns:  active

function LockCameraRotation(locked) end

function SetCameraOptionsPreviewModeEnabled(enabled) end

function GetGuildId(index) end
--- Returns:  guildId

function GetNumGuildPermissions() end
--- Returns:  numPermissions

function GetNumGuildHistoryCategories() end
--- Returns:  numCategories

function GetNumGuildMembersRequiredForPrivilege(privilege) end
--- Returns:  numGuildMembers

function GetAvARankName(gender, rank) end
--- Returns:  rankName

function GetAvARankIcon(rank) end
--- Returns:  rankIcon

function CalculateCubicBezierEase(progress, x1, y1, x2, y2) end
--- Returns:  result

function GetGamepadIconPathForKeyCode(key) end
--- Returns:  gamepadIcon, width, height

function GetMouseIconPathForKeyCode(key) end
--- Returns:  mouseIcon, width, height

function FormatIntegerWithDigitGrouping(number, delimiter) end
--- Returns:  formattedNumber

function GetEULADetails(eulaType) end
--- Returns:  message, agreeText, disagreeText, hasAgreed

function HasAgreedToEULA(eulaType) end
--- Returns:  hasAgreed

function AgreeToEULA(eulaType) end

function HasViewedEULA(eulaType) end
--- Returns:  hasViewed

function MarkEULAAsViewed(eulaType) end

function GetFrameDeltaNormalizedForTargetFramerate(targetFramesPerSecond) end
--- Returns:  frameDeltaNormalizedForTargetFramerate

function GetDisplayName() end
--- Returns:  displayName

function DecorateDisplayName(displayName) end
--- Returns:  decoratedDisplayName

function IsDecoratedDisplayName(displayName) end
--- Returns:  isDecorated

function UndecorateDisplayName(displayName) end
--- Returns:  undecoratedDisplayName

function GetNumFriends() end
--- Returns:  numFriends

function GetFriendInfo(friendIndex) end
--- Returns:  displayName, note, playerStatus, secsSinceLogoff

function GetFriendCharacterInfo(friendIndex) end
--- Returns:  hasCharacter, characterName, zoneName, classType, alliance, level, veteranRank

function GetNumIgnored() end
--- Returns:  numIgnored

function GetIgnoredInfo(index) end
--- Returns:  displayName, note

function IsIgnored(characterName) end
--- Returns:  isIgnored

function RequestFriend(charOrDisplayName, message) end

function RemoveFriend(displayName) end

function SetFriendNote(friendIndex, note) end

function AddIgnore(charOrDisplayName) end

function RemoveIgnore(displayName) end

function SetIgnoreNote(ignoreIndex, note) end

function IsFriend(charOrDisplayName) end
--- Returns:  isFriend

function GetNumIncomingFriendRequests() end
--- Returns:  numRequests

function GetIncomingFriendRequestInfo(index) end
--- Returns:  displayName, secsSinceRequest, message

function GetNumOutgoingFriendRequests() end
--- Returns:  numRequests

function GetOutgoingFriendRequestInfo(index) end
--- Returns:  displayName, secsSinceRequest, note

function AcceptFriendRequest(displayName) end

function RejectFriendRequest(displayName) end

function CancelFriendRequest(index) end

function GetNumGuilds() end
--- Returns:  numGuilds

function GetGuildName(guildId) end
--- Returns:  name

function GetGuildDescription(guildId) end
--- Returns:  description

function GetGuildMotD(guildId) end
--- Returns:  motd

function GetGuildFoundedDate(guildId) end
--- Returns:  foundedDate

function GetGuildAlliance(guildId) end
--- Returns:  alliance

function GetNumGuildMembers(guildId) end
--- Returns:  numGuildMembers

function GetGuildMemberInfo(guildId, memberIndex) end
--- Returns:  name, note, rankIndex, playerStatus, secsSinceLogoff

function GetGuildMemberCharacterInfo(guildId, memberIndex) end
--- Returns:  hasCharacter, characterName, zoneName, classType, alliance, level, veteranRank

function GetPlayerGuildMemberIndex(guildId) end
--- Returns:  memberIndex

function GuildInvite(guildId, displayName) end

function IsValidGuildName(guildName) end
--- Uses variable returns...
--- Returns:  violationCode

function GuildCreate(guildName, guildAlliance) end

function GuildRemove(guildId, displayName) end

function GuildLeave(guildId) end

function GuildPromote(guildId, displayName) end

function GuildDemote(guildId, displayName) end

function ShouldDisplayGuildMemberRemoveAlert(characterName) end
--- Returns:  shouldDisplay

function ShouldDisplaySelfKickedFromGuildAlert(guildId) end
--- Returns:  shouldDisplay

function SetGuildDescription(guildId, description) end

function SetGuildMotD(guildId, motd) end

function DoesGuildRankHavePermission(guildId, rankIndex, permission) end
--- Returns:  hasPermission

function DoesPlayerHaveGuildPermission(guildId, permission) end
--- Returns:  hasPermission

function CanEditGuildRankPermission(rankId, permission) end
--- Returns:  hasPermission

function DoesGuildHavePrivilege(guildId, privilege) end
--- Returns:  hasPrivilege

function GetNumGuildRanks(guildId) end
--- Returns:  numRanks

function GetGuildRankIconIndex(guildId, rankIndex) end
--- Returns:  iconIndex

function GetNumGuildRankIcons() end
--- Returns:  numGuildRankIcons

function GetGuildRankSmallIcon(iconIndex) end
--- Returns:  icon

function GetGuildRankLargeIcon(iconIndex) end
--- Returns:  icon

function GetGuildRankListHighlightIcon(iconIndex) end
--- Returns:  icon

function GetGuildRankListUpIcon(iconIndex) end
--- Returns:  icon

function GetGuildRankListDownIcon(iconIndex) end
--- Returns:  icon

function GetGuildRankId(guildId, rankIndex) end
--- Returns:  rankId

function IsGuildRankGuildMaster(guildId, rankIndex) end
--- Returns:  isGuildMaster

function InitializePendingGuildRanks(guildId) end

function AddPendingGuildRank(rankId, name, permissions, iconIndex) end

function SavePendingGuildRanks() end
--- Returns:  success

function ComposeGuildRankPermissions(permissions, permission, enabled) end
--- Returns:  newPermissions

function RequestOfflineGuildMembers(guildId) end

function DoesGuildHistoryCategoryHaveMoreEvents(guildId, category) end
--- Returns:  hasMoreEvents

function RequestGuildHistoryCategoryNewest(guildId, category) end
--- Returns:  requested

function RequestGuildHistoryCategoryOlder(guildId, category) end
--- Returns:  requested

function GetNumGuildEvents(guildId, category) end
--- Returns:  numEvents

function GetGuildEventInfo(guildId, category, eventIndex) end
--- Returns:  eventType, secsSinceEvent, param1, param2, param3, param4, param5, param6

function SetGuildMemberNote(guildId, memberIndex, note) end

function GetGuildRankCustomName(guildId, rankIndex) end
--- Returns:  rankName

function GetNumGuildInvites() end
--- Returns:  numGuildInvites

function GetGuildInviteInfo(index) end
--- Returns:  guildId, guildName, guildAlliance, inviterDisplayName, note

function AcceptGuildInvite(guildId) end

function RejectGuildInvite(guildId) end

function JumpToGuildMember(name) end

function GetGuildClaimedKeep(guildLuaId) end
--- Returns:  claimedKeepId, claimedKeepCampaignId

function DoesGuildHaveClaimedKeep(guildLuaId) end
--- Returns:  hasClaimedKeep

function CheckGuildKeepClaim(guildLuaId, keepId) end
--- Returns:  result

function CheckGuildKeepRelease(guildLuaId) end
--- Returns:  result

function ReleaseKeepForGuild(guildLuaId) end

function ClaimInteractionKeepForGuild(guildLuaId) end

function ReleaseInteractionKeepForGuild() end

function GetGuildOwnedKioskInfo(guildId) end
--- Returns:  ownedKioskName

function GetNumGuildSpecificItems() end
--- Returns:  numItems

function GetGuildSpecificItemInfo(index) end
--- Returns:  icon, itemName, quality, stackCount, requiredLevel, requiredVeteranRank, purchasePrice, currencyType

function BuyGuildSpecificItem(slotIndex) end

function GetGuildSpecificItemLink(index, linkStyle) end
--- Returns:  link

function SetGamepadVibration(durationMs, firstMotor, secondMotor, thirdMotor, fourthMotor) end

function GetGamepadLeftStickX(includeDeadzone) end
--- Returns:  x

function GetGamepadLeftStickY(includeDeadzone) end
--- Returns:  y

function GetGamepadLeftStickDeltaX(includeDeadzone) end
--- Returns:  deltaX

function GetGamepadLeftStickDeltaY(includeDeadzone) end
--- Returns:  deltaY

function GetGamepadRightStickX(includeDeadzone) end
--- Returns:  x

function GetGamepadRightStickY(includeDeadzone) end
--- Returns:  y

function GetGamepadRightStickDeltaX(includeDeadzone) end
--- Returns:  deltaX

function GetGamepadRightStickDeltaY(includeDeadzone) end
--- Returns:  deltaY

function GetGamepadLeftTriggerMagnitude() end
--- Returns:  magnitude

function GetGamepadRightTriggerMagnitude() end
--- Returns:  magnitude

function SetGamepadLeftStickConsumedByUI(consumed) end

function SetGamepadRightStickConsumedByUI(consumed) end

function GetGamepadTouchpadX() end
--- Returns:  gamepadTouchpadX

function GetGamepadTouchpadY() end
--- Returns:  gamepadTouchpadY

function IsGamepadTouchpadActive() end
--- Returns:  gamepadTouchpadActive

function IsConsoleUI() end
--- Returns:  isConsoleUI

function IsInGamepadPreferredMode() end
--- Returns:  inGamepadPreferredMode

function IsKeyCodeGamepadKey(key) end
--- Returns:  isGamepadKey

function IsKeyCodeMouseKey(key) end
--- Returns:  isMouseKey

function IsKeyCodeKeyboardKey(key) end
--- Returns:  isKeyboardKey

function IsKeyCodeChordKey(key) end
--- Returns:  isKeyChord

function IsKeyCodeHoldKey(key) end
--- Returns:  isKeyHold

function IsKeyDown(key) end
--- Returns:  isKeyDown

function GetUIPlatform() end
--- Returns:  platform

function UpdatePlayerPresenceInformation() end

function UpdatePlayerPresenceLocation() end

function UpdatePlayerPresenceName() end

function ChangeRemoteSceneVisibility(sceneName, sceneChangeType, sceneChangeOrigin) end


function ComputeStringDistance(source, target, maxDistance) end
--- Returns:  distance

function ExecuteChatCommand(text) end

function ToggleShowIngameGui() end

function ReloadUI(guiName) end

function SendPlayerStuck() end

function GetWorldName() end
--- Returns:  worldName

function GetUniqueNameForCharacter(characterName) end
--- Returns:  uniqueName

function GetPlayerStatus() end
--- Returns:  status

function SelectPlayerStatus(status) end

function GetNumPlayerStatuses() end
--- Returns:  numStatuses

function GetCriticalStrikeChance(statValue, useMin) end
--- Returns:  chance

function TakeScreenshot() end

function SetFullscreenEffect(effectType, param1, param2) end

function DoesGameHaveFocus() end
--- Returns:  hasFocus

function IsPlayerActivated() end
--- Returns:  activated

function GetSecondsPlayed() end
--- Returns:  secondsPlayed

function GetLatency() end
--- Returns:  latencyMS

function PlaceInTradeWindow(tradeIndex) end

function PlaceInUnitFrame(target) end

function ConvertMouseButtonToKeyCode(mouseButton) end
--- Returns:  key

function ResetAllBindsToDefault() end

function DoesUnitExist(unitTag) end
--- Returns:  exists

function GetUnitName(unitTag) end
--- Returns:  name

function GetRawUnitName(unitTag) end
--- Returns:  rawName

function GetUnitGender(unitTag) end
--- Returns:  gender

function GetUnitNameHighlightedByReticle() end
--- Returns:  name

function GetUnitClass(unitTag) end
--- Returns:  className

function GetUnitClassId(unitTag) end
--- Returns:  classId

function GetUnitLevel(unitTag) end
--- Returns:  level

function GetUnitVeteranRank(unitTag) end
--- Returns:  veteranRank

function GetUnitEffectiveLevel(unitTag) end
--- Returns:  level

function GetUnitZone(unitTag) end
--- Returns:  zoneName

function GetUnitXP(unitTag) end
--- Returns:  exp

function GetUnitXPMax(unitTag) end
--- Returns:  maxExp

function IsUnitVeteran(unitTag) end
--- Returns:  isVeteran

function GetUnitVeteranPoints(unitTag) end
--- Returns:  points

function GetUnitVeteranPointsMax(unitTag) end
--- Returns:  maxPoints

function IsUnitUsingVeteranDifficulty(unitTag) end
--- Returns:  isVeteranDifficulty

function GetPlayerChampionXP() end
--- Returns:  championExp

function GetPlayerChampionPointsEarned() end
--- Returns:  points

function GetUnitDrownTime(unitTag) end
--- Returns:  startTime, endTime

function IsUnitInGroupSupportRange(unitTag) end
--- Returns:  result

function GetUnitType(unitTag) end
--- Returns:  type

function CanUnitTrade(unitTag) end
--- Returns:  canTrade

function AreUnitsEqual(unitTag, secondUnitTag) end
--- Returns:  areEqual

function IsUnitGrouped(unitTag) end
--- Returns:  isGrouped

function IsUnitGroupLeader(unitTag) end
--- Returns:  isGroupLeader

function GetGroupLeaderUnitTag() end
--- Returns:  leaderUnitTag

function IsUnitFriend(unitTag) end
--- Returns:  isOnFriendList

function IsUnitIgnored(unitTag) end
--- Returns:  isIgnored

function IsUnitPlayer(unitTag) end
--- Returns:  isPlayer

function IsUnitPvPFlagged(unitTag) end
--- Returns:  isPvPFlagged

function IsUnitAttackable(unitTag) end
--- Returns:  attackable

function IsUnitJusticeGuard(unitTag) end
--- Returns:  isJusticeGuard

function IsUnitInvulnerableGuard(unitTag) end
--- Returns:  isInvulnerableGuard

function GetUnitAlliance(unitTag) end
--- Returns:  alliance

function GetUnitRace(unitTag) end
--- Returns:  race

function IsUnitFriendlyFollower(unitTag) end
--- Returns:  isFollowing

function GetUnitReaction(unitTag) end
--- Returns:  unitReaction

function GetUnitAvARankPoints(unitTag) end
--- Returns:  AvARankPoints

function GetUnitAvARank(unitTag) end
--- Returns:  rank, subRank

function GetLargeAvARankIcon(rank) end
--- Returns:  largeRankIcon

function GetAvARankProgress(currentRankPoints) end
--- Returns:  subRankStartsAt, nextSubRankAt, rankStartsAt, nextRankAt

function GetNumPointsNeededForAvARank(rank) end
--- Returns:  numPointsRequired

function GetUnitReactionColor(unitTag) end
--- Returns:  red, green, blue

function IsUnitInCombat(unitTag) end
--- Returns:  isInCombat

function IsUnitDead(unitTag) end
--- Returns:  isDead

function IsUnitReincarnating(unitTag) end
--- Returns:  isReincarnating

function IsUnitDeadOrReincarnating(unitTag) end
--- Returns:  isDead

function IsUnitSwimming(unitTag) end
--- Returns:  isSwimming

function IsUnitResurrectableByPlayer(unitTag) end
--- Returns:  isResurrectable

function IsUnitBeingResurrected(unitTag) end
--- Returns:  isBeingResurrected

function DoesUnitHaveResurrectPending(unitTag) end
--- Returns:  hasResurrectPending

function GetUnitStealthState(unitTag) end
--- Returns:  stealthState

function GetUnitDisguiseState(unitTag) end
--- Returns:  disguiseState

function GetUnitHidingEndTime(unitTag) end
--- Returns:  endTime

function IsUnitOnline(unitTag) end
--- Returns:  isOnline

function IsUnitInspectableSiege(unitTag) end
--- Returns:  isInspectableSiege

function GetUnitCaption(unitTag) end
--- Returns:  caption

function GetUnitSilhouetteTexture(unitTag) end
--- Returns:  icon

function GetUnitPowerInfo(unitTag, poolIndex) end
--- Returns:  type, current, max, effectiveMax

function GetUnitPower(unitTag, powerType) end
--- Returns:  current, max, effectiveMax

function GetPlayerStat(derivedStat, statBonusOption, statSoftCapOption) end
--- Returns:  value

function GetStatSoftCap(derivedStat) end
--- Returns:  softCap

function GetAllUnitAttributeVisualizerEffectInfo(unitTag) end
--- Uses variable returns...
--- Returns:  unitAttributeVisual, statType, attributeType, powerType, value, maxValue

function GetUnitAttributeVisualizerEffectInfo(unitTag, unitAttributeVisual, statType, attributeType, powerType) end
--- Returns:  value, maxValue

function GetUnitDifficulty(unitTag) end
--- Returns:  difficult

function GetUnitTitle(unitTag) end
--- Returns:  title

function CancelCast() end
--- Returns:  cancelled

function IsTargetSameAsLastValidTarget() end
--- Returns:  same

function TogglePlayerWield() end

function IsPlayerMoving() end
--- Returns:  moving

function IsPlayerGroundTargeting() end
--- Returns:  isGroundTargeting

function GetGroundTargetingError() end
--- Returns:  error

function StartSoulGemResurrection() end

function CancelSoulGemResurrection() end

function GetPlayerCameraHeading() end
--- Returns:  heading

function GetUnitBuffInfo(unitTag, buffIndex) end
--- Returns:  buffName, timeStarted, timeEnding, buffSlot, stackCount, iconFilename, buffType, effectType, abilityType, statusEffectType, abilityId, canClickOff

function GetNumBuffs(unitTag) end
--- Returns:  numBuffs

function GroupInvite(unitTag) end

function GroupKick(unitTag) end

function GroupPromote(unitTag) end

function GetGroupMemberRoles(unitTag) end
--- Returns:  isDps, isHealer, isTank

function CancelBuff(buffIndex) end

function ActivateSynergy() end

function GetWeaponSwapUnlockedLevel() end
--- Returns:  level

function GetSlotType(slotIndex) end
--- Returns:  type

function GetSlotAbilityCost(slotIndex) end
--- Returns:  abilityCost, mechanicType

function GetSlotBoundId(slotIndex) end
--- Returns:  id

function GetSlotTexture(slotIndex) end
--- Returns:  texture, weapontexture, activationAnimation

function GetSlotName(slotIndex) end
--- Returns:  name

function GetSlotItemQuality(slotIndex) end
--- Returns:  quality

function GetSlotCooldownInfo(slotIndex) end
--- Returns:  remain, duration, global

function IsSlotToggled(slotIndex) end
--- Returns:  toggledOn

function IsSlotUsed(slotIndex) end
--- Returns:  used

function IsSlotUsable(slotIndex) end
--- Returns:  useable

function HasCostFailure(slotIndex) end
--- Returns:  status

function HasRequirementFailure(slotIndex) end
--- Returns:  status

function HasWeaponSlotFailure(slotIndex) end
--- Returns:  status

function HasTargetFailure(slotIndex) end
--- Returns:  status

function HasRangeFailure(slotIndex) end
--- Returns:  status

function HasStatusEffectFailure(slotIndex) end
--- Returns:  status

function HasFallingFailure(slotIndex) end
--- Returns:  status

function HasSwimmingFailure(slotIndex) end
--- Returns:  status

function HasMountedFailure(slotIndex) end
--- Returns:  status

function HasReincarnatingFailure(slotIndex) end
--- Returns:  status

function HasActivationHighlight(slotIndex) end
--- Returns:  status

function OnSlotDownAndUp(slotIndex) end

function OnSlotDown(slotIndex) end

function OnSlotUp(slotIndex) end

function OnSpecialMoveKeyPressed(slotIndex) end

function OnSpecialMoveKeyDown(moveIndex) end

function OnSpecialMoveKeyUp(moveIndex) end

function GetSlotItemCount(slotIndex) end
--- Returns:  count

function GetSlotItemSound(slotIndex) end
--- Returns:  itemSoundCategory

function IsSlotItemConsumable(slotIndex) end
--- Returns:  consumable

function DoesInventoryContainEmptySoulGem() end
--- Returns:  hasEmptyGem

function IsSlotSoulTrap(slotIndex) end
--- Returns:  isSoulTrap

function SelectSlotSkillAbility(skillType, skillLineIndex, abilityIndex, slotIndex) end

function SlotSkillAbilityInSlot(skillType, skillLineIndex, abilityIndex, slotIndex) end

function GetFirstFreeValidSlotForSkillAbility(skillType, skillLineIndex, abilityIndex) end
--- Returns:  freeSlot

function GetAssignedSlotFromSkillAbility(skillType, skillLineIndex, abilityIndex) end
--- Returns:  slotIndex

function GetNumAbilities() end
--- Returns:  num

function GetAbilityInfoByIndex(abilityIndex) end
--- Returns:  name, texture, rank, actionSlotType, passive, showInSpellbook

function IsValidAbilityForSlot(abilityIndex, slotIndex) end
--- Returns:  valid

function IsValidItemForSlot(bagId, bagSlotId, actionSlotIndex) end
--- Returns:  valid

function IsValidItemForSlotByItemInfo(itemId, itemQualityDefId, itemRequiredLevel, itemInstanceData, actionSlotIndex) end
--- Returns:  valid

function IsValidCollectibleForSlot(collectibleId, actionSlotIndex) end
--- Returns:  valid

function CompleteQuest() end

function AbandonQuest(journalQuestIndex) end

function GetIsQuestSharable(journalQuestIndex) end
--- Returns:  isSharable

function ShareQuest(journalQuestIndex) end

function GetJournalQuestStepInfo(journalQuestIndex, stepIndex) end
--- Returns:  stepText, visibility, stepType, trackerOverrideText, numConditions

function GetJournalQuestLocationInfo(journalQuestIndex) end
--- Returns:  zoneName, objectiveName, zoneIndex, poiIndex

function GetJournalQuestEnding(journalQuestIndex) end
--- Returns:  goal, dialog, confirmComplete, declineComplete, backgroundText, journalStepText

function GetJournalQuestNumConditions(journalQuestIndex, stepIndex) end
--- Returns:  conditionCount

function RequestJournalQuestConditionAssistance(journalQuestIndex, stepIndex, conditionIndex, assisted) end
--- Returns:  taskId

function GetNearestQuestCondition(considerType) end
--- Returns:  foundValidCondition, journalQuestIndex, stepIndex, conditionIndex

function GetJournalQuestTimerInfo(journalQuestIndex) end
--- Returns:  timerStart, timerEnd, isVisible, isPaused

function GetJournalQuestTimerCaption(journalQuestIndex) end
--- Returns:  caption

function GetJournalQuestNumSteps(journalQuestIndex) end
--- Returns:  numSteps

function GetQuestToolCount(journalQuestIndex) end
--- Returns:  toolCount

function SendChatMessage(message, channelId, target) end

function MoveForwardStart() end

function MoveForwardStop() end

function MoveBackwardStart() end

function MoveBackwardStop() end

function StopAllMovement() end

function ToggleWalk() end

function TurnLeftStart() end

function TurnLeftStop() end

function TurnRightStart() end

function TurnRightStop() end

function StrafeLeftStart() end

function StrafeLeftStop() end

function StrafeRightStart() end

function StrafeRightStop() end

function JumpAscendStart() end

function AscendStop() end

function DescendStart() end

function DescendStop() end

function LeftMouseDownInWorld() end

function LeftMouseUpInWorld() end

function LeftAndRightMouseDownInWorld() end

function LeftAndRightMouseUpInWorld() end

function RightMouseDownInWorld() end

function RightMouseUpInWorld() end

function CameraZoomIn() end

function CameraZoomOut() end

function ToggleAutoRun() end

function RollDodgeStart() end

function RollDodgeStop() end

function PrepareAttack() end

function PerformAttack() end

function StartBlock() end

function StopBlock() end

function PerformInterrupt() end

function StartCommandPet() end

function StopCommandPet() end

function GameCameraGamepadZoomDown() end

function GameCameraGamepadZoomUp() end

function OnWeaponSwap() end

function OnWeaponSwapToSet1() end

function OnWeaponSwapToSet2() end

function EndInteraction(interactionType) end

function IsInteractionPending() end
--- Returns:  isPending

function EndPendingInteraction() end

function SetFrameLocalPlayerInGameCamera(enabled) end

function SetFrameLocalPlayerTarget(normalizedScreenX, normalizedScreenY) end

function SetFramingScreenType(sreenType) end

function GetChatterGreeting() end
--- Returns:  optionString

function GetChatterFarewell() end
--- Returns:  backToTOCString, farewellString, isImportant

function GetChatterOption(optionIndex) end
--- Returns:  optionString, optionType, optionalArgument, isImportant, chosenBefore

function GetChatterOptionCount() end
--- Returns:  optionCount

function ResetChatter() end

function SelectChatterOption(optionIndex) end

function IsPlayerInteractingWithObject() end
--- Returns:  areThey

function GetChatterData() end
--- Returns:  text, numOptions, atGreeting

function GetInteractionType() end
--- Returns:  interactMode

function GetMaxBags() end
--- Returns:  maxBags

function GetItemInstanceId(bagId1, slotIndex1) end
--- Returns:  id

function GetItemTotalCount(bagId, slotIndex) end
--- Returns:  count

function IsItemConsumable(bagId, slotIndex) end
--- Returns:  consumable

function IsItemJunk(bagId, slotIndex) end
--- Returns:  junk

function GetItemLink(bagId, slotIndex, linkStyle) end
--- Returns:  link

function GetComparisonEquipSlotsFromItemLink(itemLink) end
--- Returns:  comparisonSlot1, comparisonSlot2

function GetItemName(bagId, slotIndex) end
--- Returns:  name

function IsItemUsable(bagId, slotIndex) end
--- Returns:  usable, usableOnlyFromActionSlot

function GetSlotStackSize(bagId, slotIndex) end
--- Returns:  stack, maxStack

function GetEquippedItemInfo(equipSlot) end
--- Returns:  icon, slotHasItem, sellPrice, isHeldSlot, isHeldNow, locked

function GetHeldSlots() end
--- Returns:  heldMain, heldOff, lastHeldMain, lastHeldOff

function CheckInventorySpaceAndWarn(numItems) end
--- Returns:  haveSpace

function CheckInventorySpaceSilently(numItems) end
--- Returns:  haveSpace

function EquipItem(bagId, slotIndex, equipSlotIndex) end

function IsEquipable(bagId, slotIndex) end
--- Returns:  isEquipable, resultErrorCodeIfFailed

function GetItemLinkInfo(itemLink) end
--- Returns:  icon, sellPrice, meetsUsageRequirement, equipType, itemStyle

function IsBankUpgradeAvailable() end
--- Returns:  isAvailable

function GetFirstFreeValidSlotForItem(bagId, slotIndex) end
--- Returns:  freeSlot

function GetFirstFreeValidSlotForCollectible(collectibleId) end
--- Returns:  freeSlot

function GetItemCurrentActionBarSlot(bagId, slotIndex) end
--- Returns:  currentSlot

function GetCollectibleCurrentActionBarSlot(collectibleId) end
--- Returns:  currentSlot

function GetItemSoundCategoryFromLink(link) end
--- Returns:  itemSoundCategory

function IsLockedWeaponSlot(equipSlot) end
--- Returns:  locked

function GetSelectedGuildBankId() end
--- Returns:  guildId

function GetMapPlayerPosition(unitTag) end
--- Returns:  normalizedX, normalizedZ, heading

function GetMapPing(unitTag) end
--- Returns:  normalizedX, normalizedY

function GetMapRallyPoint() end
--- Returns:  normalizedX, normalizedY

function GetMapPlayerWaypoint() end
--- Returns:  normalizedX, normalizedY

function GetNumKeepTravelNetworkNodes(bgContext) end
--- Returns:  numNodes

function GetNumKeepTravelNetworkLinks(bgContext) end
--- Returns:  numLinks

function GetKeepTravelNetworkNodeInfo(nodeIndex, bgContext) end
--- Returns:  keepId, accessible, normalizedX, normalizedY

function GetKeepTravelNetworkLinkInfo(linkIndex, bgContext) end
--- Returns:  linkType, linkOwner, restricedToAlliance, startX, startY, endX, endY

function GetKeepTravelNetworkLinkEndpoints(linkIndex, bgContext) end
--- Returns:  keepAIndex, keepBIndex

function GetKeepAccessible(keepId, bgContext) end
--- Returns:  accessible

function GetKeepHasResourcesForTravel(keepId, bgContext) end
--- Returns:  hasResources

function GetKeepFastTravelInteraction() end
--- Returns:  startKeepId

function TravelToKeep(destinationKeepId) end

function GetRecallCooldown() end
--- Returns:  remain, duration

function GetRecallCost() end
--- Returns:  cost

function GetNumScoreEntries() end
--- Returns:  numItems

function GetGameType() end
--- Returns:  type

function GetGameName() end
--- Returns:  name

function GetGameDescription() end
--- Returns:  description

function GetGameInfoTexture() end
--- Returns:  path

function GetSharedScoreEntryInfo(slotIndex) end
--- Returns:  name, classId, alliance, kills, deaths, assists, healing, damage, score, seconds, numMedals

function GetCTFScoreEntryInfo(slotIndex) end
--- Returns:  flags

function GetNumScoreboardMedals(index) end
--- Returns:  numMedals

function GetScoreboardMedalInfo(scoreIndex, medalIndex) end
--- Returns:  name, iconTexture, condition

function GetNumBattlegroundMedals() end
--- Returns:  numMedals

function GetBattlegroundMedalInfo(medalIndex) end
--- Returns:  name, iconTexture, condition

function RefreshScoreBoard() end

function SendScoreBoardClosed() end

function GetShowScoreButton() end
--- Returns:  result

function GetNumTeams() end
--- Returns:  result

function GetScoringTeam() end
--- Returns:  result

function GetGameScore(alliance) end
--- Returns:  value

function GetNumObjectivesOwnedByAlliance(alliance) end
--- Returns:  objectives

function GetGameState() end
--- Returns:  result

function GetGameStateIsTimed() end
--- Returns:  isTimed

function GetGameStateIsPaused() end
--- Returns:  result

function GetScoreToWin() end
--- Returns:  result

function GetGameTimeRemaining() end
--- Returns:  result

function GetNumAvAObjectives() end
--- Returns:  num

function GetAvAObjectiveKeysByIndex(index) end
--- Returns:  keepId, objectiveId, battlegroundContext

function GetAvAObjectivePvPSystem(keepId, objectiveId, battlegroundContext) end
--- Returns:  AvASystem

function GetAvAObjectiveRelatedUnitName(keepId, objectiveId, battlegroundContext) end
--- Returns:  unitName

function GetAvAObjectiveInfo(keepId, objectiveId, battlegroundContext) end
--- Returns:  objectiveName, objectiveType, objectiveState, allianceParam1, allianceParam2

function GetAvAObjectivePinInfo(keepId, objectiveId, battlegroundContext) end
--- Returns:  pinType, currentNormalizedX, currentNormalizedY, continuousUpdate

function GetAvAObjectiveSpawnPinInfo(keepId, objectiveId, battlegroundContext) end
--- Returns:  pinType, spawnNormalizedX, spawnNormalizedY

function IsAvAObjectiveInBattleground(keepId, objectiveId, battlegroundContext) end
--- Returns:  isInBattleground

function GetAvAArtifactScore(campaignId, alliance, artifactType) end
--- Returns:  allOwnHeld, enemyHeld

function GetNumArtifactScoreBonuses(alliance, artifactType) end
--- Returns:  numBonuses

function GetArtifactScoreBonusInfo(alliance, artifactType, index) end
--- Returns:  name, icon, description

function GetNumKillLocations() end
--- Returns:  numLocations

function GetKillLocationPinInfo(index) end
--- Returns:  pinType, normalizedX, normalizedY

function IsPlayerInAvAWorld() end
--- Returns:  isInAvAWorld

function GetCurrentCampaignId() end
--- Returns:  currentCampaignId

function GetAssignedCampaignId() end
--- Returns:  assignedCampaignId

function GetCampaignAllianceScore(campaignId, alliance) end
--- Returns:  score

function GetSecondsUntilCampaignScoreReevaluation(campaignId) end
--- Returns:  seconds

function GetSecondsUntilCampaignStart(campaignId) end
--- Returns:  seconds

function GetSecondsUntilCampaignEnd(campaignId) end
--- Returns:  seconds

function GetCampaignUnderdogLeaderAlliance(campaignId) end
--- Returns:  alliance

function GetSecondsUntilCampaignUnderdogReevaluation(campaignId) end
--- Returns:  seconds

function GetCampaignHoldings(campaignId, elementType, alliance, targetAlliance) end
--- Returns:  elementsControlled

function GetTotalCampaignHoldings(campaignId, elementType, alliance) end
--- Returns:  elementsControlled

function GetCampaignAlliancePotentialScore(campaignId, alliance) end
--- Returns:  potentialScore

function GetCampaignHoldingScoreValues(campaignId) end
--- Returns:  keepValue, resourceValue, outpostValue, defensiveArtifactValue, offensiveArtifactValue

function GetCampaignName(campaignId) end
--- Returns:  campaignName

function GetPendingAssignedCampaign() end
--- Returns:  campaignId

function GetNumCampaignRulesetTypes() end
--- Returns:  numRulesetTypes

function GetCampaignSocialConnectionInfo(connectionIndex) end
--- Returns:  accountId, alliance, assignedCampaignId, currentCampaignId, isFriend, isGuildMate

function SwitchGuestCampaign(campaignId) end

function GetMinLevelForCampaignTutorial() end
--- Returns:  minLevelForCampaignTutorial

function GetNumLootItems() end
--- Returns:  count

function GetNumKeepResourceTypes() end
--- Returns:  numTypes

function GetNumKeepUpgradePaths() end
--- Returns:  numPaths

function GetNumUpgradesForKeepAtResourceLevel(keepId, battlegroundContext, resourceType, level) end
--- Returns:  numUpgrades

function GetKeepUpgradeDetails(keepId, battlegroundContext, resourceType, level, index) end
--- Returns:  upgradeName, upgradeDetails, upgradeIcon, upgradeAtPercent, active

function GetKeepUpgradeLineFromResourceType(resourceType) end
--- Returns:  upgradeLine

function GetKeepUpgradeLineFromUpgradePath(upgradePath) end
--- Returns:  upgradeLine

function GetNumUpgradesForKeepAtPathLevel(keepId, battlegroundContext, upgradePath, level) end
--- Returns:  numUpgrades

function GetKeepUpgradePathDetails(keepId, battlegroundContext, upgradePath, level, index) end
--- Returns:  upgradeName, upgradeDetails, icon, upgradeAtPercent, active

function CanRespawnAtKeep(keepId) end
--- Returns:  canRespawn

function GetIsTracked(trackType, param1, param2) end
--- Returns:  tracked

function SetTracked(trackType, tracked, param1, param2) end
--- Returns:  success

function GetNumTracked() end
--- Returns:  numTracked

function GetTrackedByIndex(index) end
--- Returns:  trackType, param1, param2

function GetTrackedIsAssisted(trackType, param1, param2) end
--- Returns:  assisted

function SetTrackedIsAssisted(trackType, assisted, param1, param2) end

function AddMapPin(pinType, param1, param2, param3) end

function RemoveMapPin(pinType, param1, param2, param3) end

function StopMapPinAnimation(pinType, param1, param2, param3) end

function RemoveMapPinsByType(pinType) end

function SetMapPinAssisted(pinType, assisted, param1, param2, param3) end

function SetMapPinContinuousPositionUpdate(pinType, continuousUpdate, param1, param2, param3) end

function AddMapQuestPins(journalQuestIndex) end

function RemoveMapQuestPins(journalQuestIndex) end

function SetMapQuestPinsAssisted(journalQuestIndex, assisted) end

function StartMouseSiegeWeaponAim() end

function StopMouseSiegeWeaponAim() end

function SiegeWeaponPackUp() end

function SiegeWeaponRelease() end

function SiegeWeaponFire() end

function CanSiegeWeaponPackUp() end
--- Returns:  canPackup

function CanSiegeWeaponFire() end
--- Returns:  canFire

function CanSiegeWeaponAim() end
--- Returns:  canAim

function IsPlayerControllingSiegeWeapon() end
--- Returns:  isPlayerControlling

function IsPlayerEscortingRam() end
--- Returns:  isPlayerEscorting

function GetNumPlayersEscortingRam() end
--- Returns:  numPlayersEscorting

function GetMinMaxRamEscorts() end
--- Returns:  minEscorts, maxEscorts

function SetHealthWarningStage(stage) end

function FlashHealthWarningStage(stage, flashTimeMs) end

function ClearHealthWarnings() end

function SetFlashWaitTime(waitTimeMs) end

function GetMaxMailItems() end
--- Returns:  maxMail

function QueueItemAttachment(bagId, slotIndex, attachmentSlot) end
--- Returns:  itemAttachmentResult

function FormatAchievementLinkTimestamp(timestamp) end
--- Returns:  date, time

function GetNumStats() end
--- Returns:  numStats

function GetNumAbilitiesLearnedForLevel(level, progression) end
--- Returns:  abilitiesLearned

function GetLearnedAbilityInfoForLevel(level, learnedIndex, progression) end
--- Returns:  name, texture, abilityIndex, progressionIndex

function PlayerHasAttributeUpgrades() end
--- Returns:  hasLevelUpgrades

function ChooseAbilityProgressionMorph(progressionIndex, morph) end

function GetAbilityProgressionInfo(progressionIndex) end
--- Returns:  name, morph, rank

function GetAbilityProgressionXPInfo(progressionIndex) end
--- Returns:  lastRankXp, nextRankXP, currentXP, atMorph

function GetAbilityProgressionAbilityInfo(progressionIndex, morph, rank) end
--- Returns:  name, texture, abilityIndex

function GetAbilityProgressionRankFromAbilityId(abilityId) end
--- Returns:  rank

function GetAbilityProgressionXPInfoFromAbilityId(abilityId) end
--- Returns:  hasProgression, progressionIndex, lastRankXp, nextRankXP, currentXP, atMorph

function GetAttributeDerivedStatPerPointValue(attribute, stat) end
--- Returns:  amountPerPoint

function AcceptWorldEventInvite(eventId) end

function DeclineWorldEventInvite(eventId) end

function GetActiveCombatTipInfo(activeCombatTipId) end
--- Returns:  name, tipText, iconPath

function IsGameCameraActive() end
--- Returns:  isActive

function IsInteractionCameraActive() end
--- Returns:  isActive

function BeginInteractCameraSpin() end

function EndInteractCameraSpin() end

function GameCameraInteractStart() end

function IsReticleHidden() end
--- Returns:  isHidden

function IsGameCameraUnitHighlightedAttackable() end
--- Returns:  attackable

function GameCameraMouseFreeLookStart() end

function GameCameraMouseFreeLookStop() end

function CycleGameCameraPreferredEnemyTarget() end

function IsGameCameraPreferredTargetValid() end
--- Returns:  valid

function ClearGameCameraPreferredTarget() end

function GetGameCameraInteractableActionInfo() end
--- Returns:  action, name, interactBlocked, isOwned, additionalInfo, contextualInfo, contextualLink

function GetNameOfGameCameraQuestToolTarget() end
--- Returns:  name

function ToggleGameCameraFirstPerson() end

function IsGameCameraSiegeControlled() end
--- Returns:  valid

function ReleaseGameCameraSiegeControlled() end

function StopSettingChamber() end

function GetSettingChamberStress() end
--- Returns:  stress

function AttemptForceLock() end

function GetLockpickingTimeLeft() end
--- Returns:  timeLeftMs

function GetChanceToForceLock() end
--- Returns:  chance

function GetNumLockpicksLeft() end
--- Returns:  picksLeft

function GetLockQuality() end
--- Returns:  lockQuality

function GetChamberState(chamberIndex) end
--- Returns:  chamberState, chamberProgress

function IsChamberSolved(chamberIndex) end
--- Returns:  solved

function StartSettingChamber(chamberIndex) end
--- Returns:  succesfullyStarted

function GetNumPendingFeedback() end
--- Returns:  pendingFeedback

function GetFeedbackIdByIndex(feedbackIndex) end
--- Returns:  feedbackId

function GetFeedbackType(feedbackId) end
--- Returns:  feedbackType

function RemovePendingFeedback(feedbackId) end

function IsFeedbackGatheringEnabled() end
--- Returns:  enabled

function Logout() end

function Quit() end

function ConfirmLogout(quitGame, option, initialResult) end

function CancelLogout() end

function GetIsNewCharacter() end
--- Returns:  isNewCharacter

function GetTrialInfo() end
--- Returns:  accountTypeId, title, description, version

function GetTrialChatRestriction(channel, target) end
--- Returns:  restrictionType

function GetTrialChatIsRestrictedAndWarn(channel, target) end
--- Returns:  handled

function CanChangeBattleLevelPreference() end
--- Returns:  canChangeBattleLevelPreference

function ClearCursor() end
--- Returns:  clearedSomething

function SetCursorItemSoundsEnabled(enabled) end

function GetCursorContentType() end
--- Returns:  cursorType

function GetCursorBagId() end
--- Returns:  originatingBag

function GetCursorSlotIndex() end
--- Returns:  slotIndex

function PlaceInActionBar(actionSlot) end

function PlaceInInventory(bagId, slotIndex) end

function RequestMoveItem(sourceBag, sourceSlot, destBag, destSlot, stackCount) end

function PlaceInEquipSlot(slot) end

function PlaceInStoreWindow() end

function PlaceInTransfer() end

function PlaceInWorldLeftClick() end

function PlaceInAttachmentSlot(attachmentSlot) end

function PickupAction(actionSlot) end

function PickupAbility(abilityIndex) end

function PickupAbilityBySkillLine(skillType, skillLineIndex, abilityIndex) end

function PickupInventoryItem(bagId, slotIndex, count) end

function PickupEquippedItem(slot) end

function PickupTradeItem(tradeIndex) end

function PickupQuestTool(journalQuestIndex, toolIndex) end

function PickupQuestItem(journalQuestIndex, stepIndex, conditionIndex) end

function PickupStoreItem(entryIndex) end

function PickupStoreBuybackItem(entryIndex) end

function PickupCollectible(collectibleId) end

function RespondToDestroyRequest(choice) end

function PlaceInTradingHouse() end

function GetNumActionLayers() end
--- Returns:  actionLayers

function GetActionLayerInfo(layerIndex) end
--- Returns:  layerName, numLayerCategories

function GetActionLayerCategoryInfo(layerIndex, categoryIndex) end
--- Returns:  categoryName, numActions

function GetActionInfo(layerIndex, categoryIndex, actionIndex) end
--- Returns:  actionName, isRebindable, isHidden

function GetActionBindingInfo(layerIndex, categoryIndex, actionIndex, bindingIndex) end
--- Returns:  keyCode, mod1, mod2, mod3, mod4

function GetMaxBindingsPerAction() end
--- Returns:  maxNumBindings

function CreateDefaultActionBind(actionName, key, modifier1, modifier2, modifier3, modifier4) end

function BindKeyToAction(layerIndex, categoryIndex, actionIndex, bindingIndex, key, modifier1, modifier2, modifier3, modifier4) end

function UnbindKeyFromAction(layerIndex, categoryIndex, actionIndex, bindingIndex) end

function UnbindAllKeysFromAction(layerIndex, categoryIndex, actionIndex) end

function GetActionIndicesFromName(actionName) end
--- Returns:  layerIndex, categoryIndex, actionIndex

function GetBindingIndicesFromKeys(layerIndex, keyCode, mod1, mod2, mod3, mod4) end
--- Returns:  categoryIndex, actionIndex, bindingIndex

function GetActionNameFromKey(layerName, keyCode) end
--- Returns:  actionName

function PushActionLayerByName(layerName) end

function InsertActionLayerByName(layerName, activeLayerIndex) end

function RemoveActionLayerByName(layerName) end

function IsActionLayerActiveByName(layerName) end
--- Returns:  active

function PopActionLayer() end

function GetNumActiveActionLayers() end
--- Returns:  numActiveActionLayers

function GetActiveActionLayerIndex(activeActionLayerIndex) end
--- Returns:  layerIndex

function ApplySoftCapToStat(derivedStat, value) end
--- Returns:  softCappedValue

function GetNumAttributes() end
--- Returns:  numAttributes

function IsPlayerTryingToMove() end
--- Returns:  tryingToMove

function GetCon(otherLevel, playerLevel) end
--- Returns:  con

function IsWerewolf() end
--- Returns:  isWerewolf

function GetSynergyInfo() end
--- Returns:  synergyName, iconFilename

function HasSynergyEffects() end
--- Returns:  hasSynergy

function GetGroupInviteInfo() end
--- Returns:  name, millisecondsSinceRequest

function AcceptGroupInvite() end

function DeclineGroupInvite() end

function GroupLeave() end

function GroupInviteByName(name) end

function GroupKickByName(name) end

function GroupDisband() end

function IsPlayerInGroup(name) end
--- Returns:  inGroup

function GetGroupSize() end
--- Returns:  groupSize

function PingMap(pingType, mapDisplayType, normalizedX, normalizedZ) end

function RemoveRallyPoint() end

function RemovePlayerWaypoint() end

function JumpToGroupLeader() end

function JumpToGroupMember(name) end

function CanJumpToGroupMember(unitTag) end
--- Returns:  canJump

function SetVeteranDifficulty(isVeteranDifficulty) end

function GetGroupUnitTagByIndex(sortIndex) end
--- Returns:  unitTag

function GetGroupIndexByUnitTag(unitTag) end
--- Returns:  sortIndex

function GetInstanceKickTime() end
--- Returns:  remainingTimeMs, totalTimeMs

function IsGroupMemberInRemoteRegion(unitTag) end
--- Returns:  inRemoteRegion

function IsAnyGroupMemberInDungeon() end
--- Returns:  isAnyGroupMemberInDungeon

function GetRaidReviveCounterInfo() end
--- Returns:  currentCounter

function GetCurrentRaidScore() end
--- Returns:  score

function GetCurrentRaidDeaths() end
--- Returns:  deaths

function IsRaidInProgress() end
--- Returns:  inProgress

function HasRaidEnded() end
--- Returns:  ended

function WasRaidSuccessful() end
--- Returns:  successful

function IsPlayerInRaid() end
--- Returns:  inRaid

function IsPlayerInReviveCounterRaid() end
--- Returns:  isInReviveCounterRaid

function IsPlayerInRaidStagingArea() end
--- Returns:  isInRaidStagingArea

function GetRaidName(raidId) end
--- Returns:  name

function GetCurrentParticipatingRaidId() end
--- Returns:  currentRaidId

function QueryRaidLeaderboardData() end

function GetNumRaidLeaderboards() end
--- Returns:  count

function GetRaidLeaderboardInfo(raidIndex) end
--- Returns:  name, isWeekly, raidId, category

function GetRaidLeaderboardLocalPlayerInfo(raidIndex) end
--- Returns:  rank, bestScore

function GetNumRaidLeaderboardEntries(raidIndex) end
--- Returns:  count

function GetRaidLeaderboardEntryInfo(raidIndex, entryIndex) end
--- Returns:  ranking, charName, time, classId, allianceId

function GetRaidOfTheWeekTimes() end
--- Returns:  secondsUntilEnd, secondsUntilNextStart

function GetPlayerRaidParticipationInfo(raidIndex) end
--- Returns:  isParticipating, isCredited

function GetPlayerRaidProgressInfo(raidIndex) end
--- Returns:  inProgress, complete

function JumpToFriend(name) end

function GetNumRaidScoreNotifications() end
--- Returns:  numNotifications

function GetRaidScoreNotificationId(notificationIndex) end
--- Returns:  notificationId

function GetRaidScoreNotificationInfo(notificationId) end
--- Returns:  raidId, raidScore, millisecondsSinceRequest

function GetNumRaidScoreNotificationMembers(notificationId) end
--- Returns:  numMembers

function GetRaidScoreNotificationMemberInfo(notificationId, memberIndex) end
--- Returns:  displayName, characterName, isFriend, isGuildMember

function RemoveRaidScoreNotification(notificationId) end

function IsSlotLocked(slotIndex) end
--- Returns:  locked

function GetActionBarPage(physicalPageId) end
--- Returns:  logicalPageId

function SetActionBarPage(physicalPageId, logicalPageId) end

function ClearSlot(slotIndex) end

function SelectSlotAbility(abilityIndex, slotIndex) end

function SelectSlotItem(bagId, bagSlotId, slotIndex) end

function SelectSlotCollectible(collectibleId, slotIndex) end

function SelectSlotEmote(emoteIndex, slotIndex) end

function SelectLastSlottedItem(slotIndex) end

function ClearLastSlottedItem() end

function GetLastSlottedItemLink() end
--- Returns:  itemLink

function GetSlotItemLink(slotIndex) end
--- Returns:  itemLink

function GetCurrentQuickslot() end
--- Returns:  slotId

function SetCurrentQuickslot(slotId) end

function HasMountSkin() end
--- Returns:  result

function GetMountSkinId() end
--- Returns:  skinId

function GetRidingStats() end
--- Returns:  inventoryBonus, maxInventoryBonus, staminaBonus, maxStaminaBonus, speedBonus, maxSpeedBonus

function GetMaxRidingTraining(trainTypeIndex) end
--- Returns:  maxValue

function GetTimeUntilCanBeTrained() end
--- Returns:  timeMs, totalDurationMs

function GetTrainingCost() end
--- Returns:  cost

function TrainRiding(trainTypeIndex) end

function IsMounted() end
--- Returns:  mounted

function ToggleMount() end

function GetAbilityIdByIndex(abilityIndex) end
--- Returns:  abilityId

function DoesAbilityExist(abilityId) end
--- Returns:  exists

function GetAbilityName(abilityId) end
--- Returns:  abilityName

function IsAbilityPassive(abilityId) end
--- Returns:  isPassive

function GetAbilityCastInfo(abilityId) end
--- Returns:  channeled, castTime, channelTime

function GetAbilityTargetDescription(abilityId) end
--- Returns:  targetDescription

function GetAbilityRange(abilityId) end
--- Returns:  minRangeCM, maxRangeCM

function GetAbilityRadius(abilityId) end
--- Returns:  radius

function GetAbilityAngleDistance(abilityId) end
--- Returns:  angleDistance

function GetAbilityDuration(abilityId) end
--- Returns:  duration

function GetAbilityCost(abilityId) end
--- Returns:  cost, mechanic

function GetAbilityDescriptionHeader(abilityId) end
--- Returns:  header

function GetAbilityDescription(abilityId) end
--- Returns:  description

function GetAbilityEffectDescription(effectSlotId) end
--- Returns:  description

function GetAbilityUpgradeLines(abilityId) end
--- Uses variable returns...
--- Returns:  label, oldValue, newValue

function GetAbilityNewEffectLines(abilityId) end
--- Uses variable returns...
--- Returns:  newEffect

function IsBlockActive() end
--- Returns:  active

function FormatFloatRelevantFraction(num) end
--- Returns:  formattedString

function GetOfferedQuestInfo() end
--- Returns:  dialogue, response

function GetOfferedQuestShareInfo(questId) end
--- Returns:  questName, playerName, millisecondsSinceRequest

function GetOfferedQuestShareIds() end
--- Uses variable returns...
--- Returns:  questId

function AcceptOfferedQuest() end

function AcceptSharedQuest(questId) end

function DeclineSharedQuest(questId) end

function GetNumJournalQuests() end
--- Returns:  numQuests

function IsValidQuestIndex(journalQuestIndex) end
--- Returns:  isValid

function GetJournalQuestType(journalQuestIndex) end
--- Returns:  type

function GetJournalQuestRepeatType(journalQuestIndex) end
--- Returns:  repeatType

function GetJournalInstanceDisplayType(journalQuestIndex) end
--- Returns:  instanceDisplayType

function GetJournalQuestInfo(journalQuestIndex) end
--- Returns:  questName, backgroundText, activeStepText, activeStepType, activeStepTrackerOverrideText, completed, tracked, questLevel, pushed, questType, instanceDisplayType

function GetJournalQuestIsComplete(journalQuestIndex) end
--- Returns:  completed

function GetJournalQuestName(journalQuestIndex) end
--- Returns:  questName

function GetJournalQuestLevel(journalQuestIndex) end
--- Returns:  level

function GetJournalQuestConditionType(journalQuestIndex, stepIndex, conditionIndex, assisted) end
--- Returns:  pinType

function GetJournalQuestConditionInfo(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  conditionText, current, max, isFailCondition, isComplete, isCreditShared

function GetJournalQuestConditionValues(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  current, max, isFailCondition, isComplete, isCreditShared

function GetQuestToolCooldownInfo(journalQuestIndex, toolIndex) end
--- Returns:  remain, duration

function UseQuestItem(journalQuestIndex, stepIndex, conditionIndex) end

function UseQuestTool(journalQuestIndex, toolIndex) end

function CanUseQuestItem(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  canUse

function CanUseQuestTool(journalQuestIndex, toolIndex) end
--- Returns:  canUse

function IsJournalQuestInCurrentMapZone(questIndex) end
--- Returns:  isInCurrentZone

function DoesJournalQuestConditionHavePosition(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  hasPosition

function SetMapToQuestCondition(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  setMapResult

function SetMapToQuestZone(questIndex) end
--- Returns:  setMapResult

function GetJournalQuestNumRewards(journalQuestIndex) end
--- Returns:  count

function GetQuestRewardItemLink(rewardIndex, linkStyle) end
--- Returns:  link

function GetNextCompletedQuestId(lastQuestId) end
--- Returns:  nextQuestId

function GetCompletedQuestInfo(questId) end
--- Returns:  name, questType

function GetCompletedQuestLocationInfo(questId) end
--- Returns:  zoneName, objectiveName, zoneIndex, poiIndex

function GetJournalQuestRewardInfo(journalQuestIndex, rewardIndex) end
--- Returns:  type, name, amount, iconFile, meetsUsageRequirement, itemQuality, itemType

function GetJournalQuestRewardItemId(journalQuestIndex, rewardIndex) end
--- Returns:  rewardItemDefId

function GetJournalQuestRewardCollectibleId(journalQuestIndex, rewardIndex) end
--- Returns:  rewardCollectibleDefId

function GetQuestToolInfo(journalQuestIndex, toolIndex) end
--- Returns:  iconFilename, stackCount, isUsable, name, questItemId

function GetQuestItemInfo(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  iconFilename, stackCount, name, questItemId

function GetQuestToolTooltipInfo(journalQuestIndex, toolIndex) end
--- Returns:  header, itemName, tooltipText

function GetQuestItemTooltipInfo(journalQuestIndex, stepIndex, conditionIndex) end
--- Returns:  header, itemName, tooltipText

function GetDynamicChatChannelName(channelId) end
--- Returns:  name

function GetChatChannelId(name) end
--- Returns:  channelId

function CanWriteGuildChannel(channelId) end
--- Returns:  canWrite

function GetNumChatContainers() end
--- Returns:  numContainers

function GetNumChatContainerTabs(chatContainerIndex) end
--- Returns:  numContainerTabs

function GetChatContainerTabInfo(chatContainerIndex, tabIndex) end
--- Returns:  name, isLocked, isInteractable, isCombatLog, areTimestampsEnabled

function GetNumChatCategories() end
--- Returns:  numCategories

function IsChatContainerTabCategoryEnabled(chatContainerIndex, tabIndex, chatCategory) end
--- Returns:  enabled

function SetChatContainerTabCategoryEnabled(chatContainerIndex, tabIndex, chatCategory, enabled) end

function SetChatContainerTabInfo(chatContainerIndex, tabIndex, name, isLocked, isInteractable, areTimestampsEnabled) end

function ResetChatContainerTabToDefault(chatContainerIndex, tabIndex) end

function GetChatContainerColors(chatContainerIndex) end
--- Returns:  bgRed, bgGreen, bgBlue, bgMinAlpha, bgMaxAlpha

function SetChatContainerColors(chatContainerIndex, bgRed, bgGreen, bgBlue, bgMinAlpha, bgMaxAlpha) end

function ResetChatContainerColorsToDefault(chatContainerIndex) end

function AddChatContainer() end

function RemoveChatContainer(chatContainerIndex) end

function AddChatContainerTab(chatContainerIndex, name, isCombatLog) end

function RemoveChatContainerTab(chatContainerIndex, tabIndex) end

function TransferChatContainerTab(fromChatContainerIndex, fromTabIndex, toChatContainerIndex, toTabIndex) end

function GetChatFontSize() end
--- Returns:  fontSize

function SetChatFontSize(fontSize) end

function ResetChatFontSizeToDefault() end

function GetChatCategoryColor(category) end
--- Returns:  red, green, blue

function SetChatCategoryColor(category, red, green, blue) end

function ResetChatCategoryColorToDefault(category) end

function GetChannelCategoryFromChannel(channel) end
--- Returns:  category

function IsChatBubbleCategoryEnabled(category) end
--- Returns:  enabled

function SetChatBubbleCategoryEnabled(category, enabled) end

function SetSessionIgnore(userName, isIgnoredThisSession) end

function ClearSessionIgnores() end

function SubmitSpamReport(userName, reason) end

function SetChatLogEnabled(isEnabled) end

function IsChatLogEnabled() end
--- Returns:  isEnabled

function SetPendingInteractionConfirmed(isConfirmed) end

function IsUnderArrest() end
--- Returns:  beingArrested

function GetGameCameraInteractableUnitAudioInfo() end
--- Returns:  audioModelType, audioModelMaterial, audioModelSize

function IsGameCameraInteractableUnitMonster() end
--- Returns:  isUnitMonster

function GetGameCameraInteractableInfo() end
--- Returns:  interactionExists, interactionAvailableNow, questInteraction, questTargetBased, questJournalIndex, questToolIndex, questToolOnCooldown

function GetGameCameraPickpocketingBonusInfo() end
--- Returns:  inBonus, isHostile, percentChance, difficulty, isEmpty, prospectiveResult

function GetCurrentMoney() end
--- Returns:  money

function GetAlliancePoints() end
--- Returns:  alliancePoints

function UseItem(bagId, slotIndex) end

function CanInteractWithItem(bagId, slotIndex) end
--- Returns:  canInteract

function UnequipItem(equipSlot) end

function DestroyItem(bagId, slotIndex) end

function GetNextBankUpgradePrice() end
--- Returns:  cost

function BuyBankSpace() end

function BuyBagSpace() end

function DisplayBankUpgrade() end

function GetBagSize(bagId) end
--- Returns:  bagSlots

function IsArmorEffectivenessReduced(bagId, slotIndex) end
--- Returns:  effectivenessReduced

function GetNumBagUsedSlots(bagId) end
--- Returns:  usedSlots

function GetNumBagFreeSlots(bagId) end
--- Returns:  freeSlots

function FindFirstEmptySlotInBag(bagId) end
--- Returns:  slotIndex

function GetItemFilterTypeInfo(bagId, slotIndex) end
--- Uses variable returns...
--- Returns:  itemFilterType

function GetItemCooldownInfo(bagId, slotIndex) end
--- Returns:  remain, duration

function GetItemStatValue(bagId, slotIndex) end
--- Returns:  statValue

function GetItemSoundCategory(bagId, slotIndex) end
--- Returns:  itemSoundCategory

function IsItemBound(bagId, slotIndex) end
--- Returns:  isBound

function IsItemEnchantable(bagId, slotIndex) end
--- Returns:  enchantable

function IsItemEnchantment(bagId, slotIndex) end
--- Returns:  enchantment

function CanItemTakeEnchantment(itemToEnchantBagId, itemToEnchantSlotIndex, enchantmentToUseBagId, enchantmentToUseSlotIndex) end
--- Returns:  canEnchant

function EnchantItem(itemToEnchantBagId, itemToEnchantSlotIndex, enchantmentToUseBagId, enchantmentToUseSlotIndex) end

function CanConvertItemStyleToImperial(itemToBagId, itemToSlotIndex) end
--- Returns:  canConvert

function ConvertItemStyleToImperial(itemToBagId, itemToSlotIndex) end

function IsItemChargeable(bagId, slotIndex) end
--- Returns:  rechargeable

function GetAmountSoulGemWouldChargeItem(itemToChargeBagId, itemToChargeSlotIndex, soulGemToConsumeBagId, soulGemToConsumeSlotIndex) end
--- Returns:  chargeAmount

function ChargeItemWithSoulGem(itemToChargeBagId, itemToChargeSlotIndex, soulGemToConsumeBagId, soulGemToConsumeSlotIndex) end

function IsItemSoulGem(soulGemType, bagId, slotIndex) end
--- Returns:  isSoulGem

function GetChargeInfoForItem(bagId, slotIndex) end
--- Returns:  charges, maxCharges

function DoesItemHaveDurability(bagId, slotIndex) end
--- Returns:  hasDurability

function GetItemCondition(bagId, slotIndex) end
--- Returns:  condition

function GetItemRepairCost(bagId, slotIndex) end
--- Returns:  repairCost

function GetRepairAllCost() end
--- Returns:  repairCost

function GetItemLaunderPrice(bagId, slotIndex) end
--- Returns:  launderCost

function IsItemRepairKit(bagId, slotIndex) end
--- Returns:  isRepairKit

function IsItemNonCrownRepairKit(bagId, slotIndex) end
--- Returns:  isNonCrownRepairKit

function GetRepairKitTier(bagId, slotIndex) end
--- Returns:  tier

function GetAmountRepairKitWouldRepairItem(itemToRepairBagId, itemToRepairSlotIndex, repairKitToConsumeBagId, repairKitToConsumeSlotIndex) end
--- Returns:  amountRepaired

function RepairItemWithRepairKit(itemToRepairBagId, itemToRepairSlotIndex, repairKitToConsumeBagId, repairKitToConsumeSlotIndex) end

function GetActiveWeaponPairInfo() end
--- Returns:  activeWeaponPair, locked

function GetItemLevel(bagId, slotIndex) end
--- Returns:  level

function GetItemRequiredLevel(bagId, slotIndex) end
--- Returns:  requiredLevel

function GetItemRequiredVeteranRank(bagId, slotIndex) end
--- Returns:  requiredVeterankRank

function GetItemTrait(bagId, slotIndex) end
--- Returns:  trait

function GetItemCreatorName(bagId, slotIndex) end
--- Returns:  creatorName

function GetItemInfo(bagId, slotIndex) end
--- Returns:  icon, stack, sellPrice, meetsUsageRequirement, locked, equipType, itemStyle, quality

function GetItemCraftingInfo(bagId, slotIndex) end
--- Returns:  usedInCraftingType, itemType, extraInfo1, extraInfo2, extraInfo3

function GetItemType(bagId, slotIndex) end
--- Returns:  itemType

function GetItemArmorType(bagId, slotIndex) end
--- Returns:  armorType

function GetItemWeaponType(bagId, slotIndex) end
--- Returns:  weaponType

function GetItemUniqueId(bagId1, slotIndex1) end
--- Returns:  id

function GetSoulGemItemInfo(bagId, slotIndex) end
--- Returns:  tier, soulGemType

function GetSoulGemInfo(soulGemType, targetLevel, onlyInInventory) end
--- Returns:  name, icon, stackCount, quality

function GetNextGuildBankSlotId(lastSlotId) end
--- Returns:  nextSlotId

function SelectGuildBank(guildId) end

function TransferToGuildBank(sourceBag, sourceSlot) end

function TransferFromGuildBank(slotId) end

function HasAnyJunk(bagId) end
--- Returns:  hasJunk

function DestroyAllJunk() end

function DoesBagHaveSpaceFor(destinationBagId, sourceBagId, sourceSlot) end
--- Returns:  hasSpace

function SetItemIsJunk(bagId, slotIndex, junk) end

function GetBankedMoney() end
--- Returns:  money

function DepositMoneyIntoBank(money) end

function WithdrawMoneyFromBank(money) end

function GetGuildBankedMoney() end
--- Returns:  money

function DepositMoneyIntoGuildBank(money) end

function WithdrawMoneyFromGuildBank(money) end

function IsItemDyeable(bagId, slotIndex) end
--- Returns:  dyeable

function HasItemInSlot(bagId, slotIndex) end
--- Returns:  hasItemInSlot

function GetItemLinkName(itemLink) end
--- Returns:  itemName

function GetItemLinkItemType(itemLink) end
--- Returns:  itemType

function GetItemLinkArmorType(itemLink) end
--- Returns:  armorType

function GetItemLinkWeaponType(itemLink) end
--- Returns:  weaponType

function GetItemLinkWeaponPower(itemLink) end
--- Returns:  weaponPower

function GetItemLinkArmorRating(itemLink, considerCondition) end
--- Returns:  armorRating

function GetItemLinkRequiredLevel(itemLink) end
--- Returns:  requiredLevel

function GetItemLinkRequiredVeteranRank(itemLink) end
--- Returns:  requiredVeteranRank

function GetItemLinkValue(itemLink, considerCondition) end
--- Returns:  value

function GetItemLinkCondition(itemLink) end
--- Returns:  conditionPercent

function DoesItemLinkHaveArmorDecay(itemLink) end
--- Returns:  hasArmorDecay

function GetItemLinkMaxEnchantCharges(itemLink) end
--- Returns:  maxCharges

function GetItemLinkNumEnchantCharges(itemLink) end
--- Returns:  numCharges

function DoesItemLinkHaveEnchantCharges(itemLink) end
--- Returns:  hasCharges

function GetItemLinkEnchantInfo(itemLink) end
--- Returns:  hasCharges, enchantHeader, enchantDescription

function GetItemLinkOnUseAbilityInfo(itemLink) end
--- Returns:  hasAbility, abilityHeader, abilityDescription, cooldown

function GetItemLinkTraitOnUseAbilityInfo(itemLink, index) end
--- Returns:  hasAbility, abilityDescription, cooldown

function GetItemLinkTraitInfo(itemLink) end
--- Returns:  traitType, traitDescription

function GetItemLinkSetInfo(itemLink, equipped) end
--- Returns:  hasSet, setName, numBonuses, numEquipped, maxEquipped

function GetItemLinkSetBonusInfo(itemLink, equipped, index) end
--- Returns:  numRequired, bonusDescription

function GetItemLinkFlavorText(itemLink) end
--- Returns:  flavorText

function IsItemLinkCrafted(itemLink) end
--- Returns:  isCrafted

function IsItemLinkVendorTrash(itemLink) end
--- Returns:  isVendorTrash

function GetItemLinkSiegeMaxHP(itemLink) end
--- Returns:  maxHP

function GetItemLinkQuality(itemLink) end
--- Returns:  quality

function GetItemLinkSiegeType(itemLink) end
--- Returns:  siegeType

function IsItemLinkUnique(itemLink) end
--- Returns:  isUnique

function IsItemLinkUniqueEquipped(itemLink) end
--- Returns:  isUniqueEquipped

function GetItemLinkEquipType(itemLink) end
--- Returns:  equipType

function IsItemLinkConsumable(itemLink) end
--- Returns:  isConsumable

function GetItemLinkCraftingSkillType(itemLink) end
--- Returns:  tradeskillType

function IsItemLinkEnchantingRune(itemLink) end
--- Returns:  isEnchantingRune

function GetItemLinkEnchantingRuneName(itemLink) end
--- Returns:  known, name

function GetItemLinkEnchantingRuneClassification(itemLink) end
--- Returns:  runeClassification

function GetItemLinkRequiredCraftingSkillRank(itemLink) end
--- Returns:  requiredRank

function IsItemLinkBound(itemLink) end
--- Returns:  isBound

function GetItemLinkBindType(itemLink) end
--- Returns:  bindType

function GetItemLinkGlyphMinMaxLevels(itemLink) end
--- Returns:  minLevel, maxLevel, minVeteranRank, maxVeteranRank

function GetItemLinkBookTitle(itemLink) end
--- Returns:  bookTitle

function IsItemLinkBookKnown(itemLink) end
--- Returns:  isKnown

function DoesItemLinkStartQuest(itemLink) end
--- Returns:  startsQuest

function DoesItemLinkFinishQuest(itemLink) end
--- Returns:  finishesQuest

function IsItemLinkRecipeKnown(itemLink) end
--- Returns:  isRecipeKnown

function GetItemLinkRecipeResultItemLink(itemLink, linkStyle) end
--- Returns:  link

function GetItemLinkRecipeNumIngredients(itemLink) end
--- Returns:  numIngredients

function GetItemLinkRecipeIngredientInfo(itemLink, index) end
--- Returns:  ingredientName, amoutInInventoryAndBank

function GetItemLinkRecipeRankRequirement(itemLink) end
--- Returns:  rankRequirement

function GetItemLinkRecipeQualityRequirement(itemLink) end
--- Returns:  qualityRequirement

function GetItemLinkReagentTraitInfo(itemLink, index) end
--- Returns:  known, name

function GetItemLinkItemStyle(itemLink) end
--- Returns:  style

function GetItemLinkRefinedMaterialItemLink(itemLink, linkStyle) end
--- Returns:  refinedItemLink

function GetItemLinkMaterialLevelDescription(itemLink) end
--- Returns:  levelsDescription

function IsItemLinkOnlyUsableFromQuickslot(itemLink) end
--- Returns:  onlyUsableFromQuickslot

function IsItemLinkStolen(itemLink) end
--- Returns:  itemStolen

function IsItemLinkStackable(itemLink) end
--- Returns:  itemStackable

function GetItemLinkStacks(itemLink) end
--- Returns:  stackCountBackpack, stackCountBank

function GetMaxTraits() end
--- Returns:  maxTraits

function IsItemStolen(bagId, slotIndex) end
--- Returns:  itemStolen

function AreAnyItemsStolen(bagId) end
--- Returns:  anyItemsStolen

function PlayItemSound(itemSoundCategory, itemSoundAction) end

function PlayLootSound(audioModelType, closeLootWindow) end

function GetKioskBidWindowSecondsRemaining() end
--- Returns:  secondsRemaining

function GetKioskGuildInfo(guildId) end
--- Returns:  bankedMoney, existingBidAmount, existingBidIsOnThisKiosk, existingBidKioskName

function GetKioskPurchaseCost() end
--- Returns:  cost

function GuildKioskBid(guildId, bidAmount) end

function GuildKioskPurchase(guildId) end

function GetNumTradingHouseGuilds() end
--- Returns:  numGuilds

function GetTradingHouseGuildDetails(index) end
--- Returns:  guildId, guildName, guildAlliance

function GetCurrentTradingHouseGuildDetails() end
--- Returns:  guildId, guildName, guildAlliance

function CanBuyFromTradingHouse(guildId) end
--- Returns:  canBuy

function CanSellOnTradingHouse(guildId) end
--- Returns:  canSell

function GetSelectedTradingHouseGuildId() end
--- Returns:  guildId

function SelectTradingHouseGuildId(guildId) end
--- Returns:  success

function GetTradingHouseListingCounts() end
--- Returns:  currentListingCount, maxListingCount

function GetTradingHousePostPriceInfo(desiredPostPrice) end
--- Returns:  listingFee, tradingHouseCut, expectedProfit

function GetTradingHouseListingPercentage() end
--- Returns:  listingPercentage

function GetTradingHouseCutPercentage() end
--- Returns:  cutPercentage

function SetPendingItemPost(bag, slot, quantity) end

function GetPendingItemPost() end
--- Returns:  bag, slot, quantity

function RequestPostItemOnTradingHouse(bag, slot, quantity, postingPrice) end

function SetPendingItemPurchase(index) end

function ClearPendingItemPurchase() end

function ConfirmPendingItemPurchase() end

function ClearAllTradingHouseSearchTerms() end

function SetTradingHouseFilter(filterType, data1, data2, data3, data4, data5, data6, data7, data8) end

function SetTradingHouseFilterRange(filterType, minOrExactValue, maxValue) end

function ExecuteTradingHouseSearch(page, sortField, sortAscending) end

function GetTradingHouseSearchResultItemInfo(index) end
--- Returns:  icon, itemName, quality, stackCount, sellerName, timeRemaining, purchasePrice, currencyType

function GetTradingHouseSearchResultItemLink(index, linkStyle) end
--- Returns:  link

function RequestTradingHouseListings() end

function GetNumTradingHouseListings() end
--- Returns:  numListings

function CancelTradingHouseListing(index) end

function GetTradingHouseListingItemInfo(index) end
--- Returns:  icon, itemName, quality, stackCount, sellerName, timeRemaining, purchasePrice

function GetTradingHouseListingItemLink(index, linkStyle) end
--- Returns:  link

function GetEnchantmentSearchCategories(itemType) end
--- Uses variable returns...
--- Returns:  category

function GetTradingHouseCooldownRemaining() end
--- Returns:  cooldownMilliseconds

function SetMapToPlayerLocation() end
--- Returns:  setMapResult

function SetMapToMapListIndex(index) end
--- Returns:  setMapResult

function GetCurrentMapIndex() end
--- Returns:  index

function GetCyrodiilMapIndex() end
--- Returns:  index

function GetImperialCityMapIndex() end
--- Returns:  index

function GetCurrentMapZoneIndex() end
--- Returns:  zoneIndex

function GetZoneNameByIndex(zoneIndex) end
--- Returns:  zoneName

function GetMapNameByIndex(mapIndex) end
--- Returns:  mapName

function GetNumMaps() end
--- Returns:  numMaps

function MapZoomOut() end
--- Returns:  setMapResult

function WouldProcessMapClick(normalizedClickX, normalizedClickY) end
--- Returns:  wouldProcess, resultingMapIndex

function ProcessMapClick(normalizedClickX, normalizedClickY) end
--- Returns:  setMapResult

function GetMapInfo(index) end
--- Returns:  name, mapType, mapContentType, zoneId

function GetZoneDescription(zoneId) end
--- Returns:  description

function GetMapParentCategories(index) end
--- Uses variable returns...
--- Returns:  categoryName, categoryIndex

function GetMapNumTiles() end
--- Returns:  numHorizontalTiles, numVerticalTiles

function GetMapTileTexture(tileIndex) end
--- Returns:  tileFilename

function GetMapName() end
--- Returns:  mapName

function GetMapType() end
--- Returns:  mapType

function GetMapContentType() end
--- Returns:  mapContentType

function GetNumMapLocations() end
--- Returns:  numMapLocations

function IsMapLocationVisible(locationIndex) end
--- Returns:  isVisible

function GetMapLocation(locationIndex) end
--- Uses variable returns...
--- Returns:  locationName, fontSize, colorR, colorG, colorB, normalizedX, normalizedZ

function GetMapLocationIcon(locationIndex) end
--- Returns:  icon, normalizedX, normalizedZ

function GetNumMapLocationTooltipLines(locationIndex) end
--- Returns:  numLines

function IsMapLocationTooltipLineVisible(locationIndex, tooltipLineIndex) end
--- Returns:  isVisible

function GetMapLocationTooltipLineInfo(locationIndex, tooltipLineIndex) end
--- Returns:  icon, name, grouping, categoryName

function GetMapLocationTooltipHeader(locationIndex) end
--- Returns:  header

function GetMapMouseoverInfo(normalizedMouseX, normalizedMouseY) end
--- Returns:  locationName, textureFile, textureWidthNormalized, textureHeightNormalized, textureXOffsetNormalized, textureYOffsetNormalized

function GetNumMapKeySections() end
--- Returns:  numSections

function GetMapKeySectionName(sectionIndex) end
--- Returns:  sectionName

function GetNumMapKeySectionSymbols(sectionIndex) end
--- Returns:  numSymbols

function GetMapKeySectionSymbolInfo(sectionIndex, symbolIndex) end
--- Returns:  name, icon, tooltip

function GetMapFloorInfo() end
--- Returns:  currentFloor, numFloors

function SetMapFloor(desiredFloorIndex) end
--- Returns:  setMapResult

function GenerateUnitNameTooltipLine(unitTag) end
--- Returns:  text, interfaceColorType, color

function GenerateQuestEndingTooltipLine(questIndex) end
--- Returns:  text, interfaceColorType, color

function GenerateQuestConditionTooltipLine(questIndex, stepIndex, conditionIndex) end
--- Returns:  text, interfaceColorType, color

function GenerateMapPingTooltipLine(mapPingType, unitTag) end
--- Returns:  text, interfaceColorType, color

function GenerateAvAObjectiveConditionTooltipLine(bgQueryType, keepId, objectiveId, isSpawnPosition) end
--- Returns:  text, interfaceColorType, color

function GetNumPOIs(zoneIndex) end
--- Returns:  numPOIs

function GetPOIInfo(zoneIndex, poiIndex) end
--- Returns:  objectiveName, objectiveLevel, startDescription, finishedDescription

function IsPOIWayshrine(zoneIndex, poiIndex) end
--- Returns:  isWayshrine

function IsPOIPublicDungeon(zoneIndex, poiIndex) end
--- Returns:  isPublicDungeon

function IsPOIGroupDungeon(zoneIndex, poiIndex) end
--- Returns:  isGroupDungeon

function GetPOIMapInfo(zoneIndex, poiIndex) end
--- Returns:  normalizedX, normalizedZ, poiType, icon, isShownInCurrentMap

function GetCurrentSubZonePOIIndices() end
--- Returns:  zoneIndex, poiIndex

function IsInCyrodiil() end
--- Returns:  isInCyrodiil

function IsInImperialCity() end
--- Returns:  isInImperialCity

function IsInAvAZone() end
--- Returns:  isInAvAZone

function IsInOutlawZone() end
--- Returns:  isInOutlawZone

function IsInTutorialZone() end
--- Returns:  isInTutorialZone

function DoesCurrentZoneAllowScalingByLevel() end
--- Returns:  allowsScaling

function GetPlayerDifficultyLevel() end
--- Returns:  difficultyLevel

function GetNumZonesForDifficultyLevel(difficultyLevel) end
--- Returns:  numZones

function GetCadwellZoneInfo(difficultyLevel, zoneIndex) end
--- Returns:  zoneName, zoneDescription, zoneOrder

function GetNumPOIsForDifficultyLevelAndZone(difficultyLevel, zoneIndex) end
--- Returns:  numPOIs

function GetCadwellZonePOIInfo(difficultyLevel, zoneIndex, poiIndex) end
--- Returns:  poiName, poiOpeningText, poiClosingText, poiOrder, discovered, completed

function GetPlayerLocationName() end
--- Returns:  mapName

function GetHistoricalKeepTravelNetworkLinkInfo(linkIndex, bgContext, historyPercent) end
--- Returns:  linkType, linkOwner, restricedToAlliance, startX, startY, endX, endY

function GetNumFastTravelNodes() end
--- Returns:  numFastTravelNodes

function GetFastTravelNodeInfo(nodeIndex) end
--- Returns:  known, name, normalizedX, normalizedY, icon, glowIcon, poiType, isShownInCurrentMap

function FastTravelToNode(nodeIndex) end

function GetKeepArtifactObjectiveId(keepId) end
--- Returns:  objectiveId

function GetHistoricalAvAObjectivePinInfo(keepId, objectiveId, battlegroundContext, historyPercent) end
--- Returns:  pinType, currentNormalizedX, currentNormalizedY, continuousUpdate

function IsInCampaign() end
--- Returns:  inCampaign

function DoesCampaignHaveEmperor(campaignId) end
--- Returns:  hasEmperor

function GetCampaignEmperorInfo(campaignId) end
--- Returns:  emperorAlliance, emperorName

function GetCampaignEmperorReignDuration(campaignId) end
--- Returns:  durationInSeconds

function GetCampaignAbdicationStatus(campaignId) end
--- Returns:  abdicatedAlliance, abdicatedName

function GetEmperorAllianceBonusInfo(campaignId, alliance) end
--- Returns:  name, icon

function GetCampaignReassignCooldown() end
--- Returns:  cooldownSeconds

function GetCampaignGuestCooldown() end
--- Returns:  cooldownSeconds

function GetCampaignReassignCost(reassignType) end
--- Returns:  cost

function GetGuestCampaignId() end
--- Returns:  campaignId

function GetNumFreeAnytimeCampaignReassigns() end
--- Returns:  reassignCount

function GetNumFreeEndCampaignReassigns() end
--- Returns:  reassignCount

function GetPreferredCampaign() end
--- Returns:  preferredCampaign

function GetCampaignPreference() end
--- Returns:  campaignPreference

function SetCampaignPreference(campaignPreference) end

function AssignCampaignToPlayer(campaignId, reassignOnEnd) end

function QueryCampaignSelectionData() end

function GetCampaignSequenceId(campaignId) end
--- Returns:  sequenceId

function QueryCampaignLeaderboardData() end

function GetLeaderboardCampaignSequenceId(campaignId) end
--- Returns:  campaignSequenceId

function GetCampaignLeaderboardMaxRank(campaignId) end
--- Returns:  maxRank

function GetNumCampaignLeaderboardEntries(campaignId) end
--- Returns:  entryCount

function GetNumCampaignClassLeaderboardEntries(campaignId, classId) end
--- Returns:  entryCount

function GetNumCampaignAllianceLeaderboardEntries(campaignId, allianceId) end
--- Returns:  entryCount

function GetCampaignLeaderboardEntryInfo(campaignId, entryIndex) end
--- Returns:  isPlayer, ranking, charName, alliancePoints, classId, allianceId

function GetCampaignClassLeaderboardEntryInfo(campaignId, classId, entryIndex) end
--- Returns:  isPlayer, ranking, charName, alliancePoints, allianceId

function GetCampaignAllianceLeaderboardEntryInfo(campaignId, allianceId, entryIndex) end
--- Returns:  isPlayer, ranking, charName, alliancePoints, classId

function GetPlayerCampaignRewardTierInfo(campaignId) end
--- Returns:  earnedTier, nextTierProgress, nextTierTotal

function GetNumSelectionCampaigns() end
--- Returns:  campaignCount

function GetSelectionCampaignAllianceScore(campaignIndex, alliance) end
--- Returns:  score

function GetSelectionCampaignId(campaignIndex) end
--- Returns:  campaignId

function GetSelectionCampaignTimes(campaignIndex) end
--- Returns:  secondsUntilCampaignStart, secondsUntilCampaignEnd

function GetSelectionCampaignUnderdogLeaderAlliance(campaignIndex) end
--- Returns:  alliance

function GetNumSelectionCampaignFriends(campaignIndex) end
--- Returns:  numFriends

function GetNumSelectionCampaignGuildMembers(campaignIndex) end
--- Returns:  numGuilds

function GetNumSelectionCampaignGroupMembers(campaignIndex) end
--- Returns:  numGroupmates

function GetSelectionCampaignPopulationData(campaignIndex, alliance) end
--- Returns:  currentPopulationEstimate

function DoesPlayerMeetCampaignRequirements(campaignId) end
--- Returns:  meetsJoiningRequirements

function GetCampaignRulesetId(campaignId) end
--- Returns:  rulesetId

function GetCampaignRulesetName(campaignId) end
--- Returns:  name

function GetCampaignRulesetType(rulesetId) end
--- Returns:  rulesetType

function GetCampaignRulesetDescription(rulesetId) end
--- Returns:  description

function GetNumCampaignSocialConnections() end
--- Returns:  connectionCount

function GetCurrentCampaignLoyaltyStreak() end
--- Returns:  currentLoyaltyStreak

function GetCampaignRulesetNumImperialKeeps(rulesetId, alliance) end
--- Returns:  numKeeps

function GetCampaignRulesetImperialKeepId(rulesetId, alliance, index) end
--- Returns:  keepId

function GetCampaignRulsetMinEmperorAlliancePoints(rulesetId, alliance) end
--- Returns:  minPoints

function GetCampaignRulesetDurationInSeconds(rulesetId) end
--- Returns:  duration

function RegisterForAssignedCampaignData() end

function UnregisterForAssignedCampaignData() end

function ResetCampaignHistoryWindow(battlegroundContext, currentHistoryPercent) end
--- Returns:  requiresRebuild

function GetCampaignHistoryWindow(battlegroundContext) end
--- Returns:  windowStartSecsAgo, windowEndSecsAgo

function DoesHistoryRequireMapRebuild(battlegroundContext, oldHistoryPercent, newHistoryPercent) end
--- Returns:  needsRebuild

function DoesAllianceHaveImperialCityAccess(campaignId, alliance) end
--- Returns:  hasAccess

function IsUnderpopBonusEnabled(campaignId, alliance) end
--- Returns:  isBonusEnabled

function IsLocalBattlegroundContext(battlegroundContext) end
--- Returns:  isLocal

function IsAssignedBattlegroundContext(battlegroundContext) end
--- Returns:  isAssigned

function DoBattlegroundContextsIntersect(context1, context2) end
--- Returns:  intersects

function QueueForCampaign(campaignId, queueAsGroup) end

function LeaveCampaignQueue(campaignId, queueAsGroup) end

function GetNumCampaignQueueEntries() end
--- Returns:  entryCount

function IsQueuedForCampaign(campaignId, queueAsGroup) end
--- Returns:  isQueued

function GetCampaignQueueEntry(entryIndex) end
--- Returns:  campaignId, queueAsGroup

function GetSecondsInCampaignQueue(campaignId, queueAsGroup) end
--- Returns:  timeInQueueInSeconds

function GetCampaignQueuePosition(campaignId, queueAsGroup) end
--- Returns:  queuePosition

function GetCampaignQueueRemainingConfirmationSeconds(campaignId, queueAsGroup) end
--- Returns:  confirmationTimeRemainingInSeconds

function GetCampaignQueueState(campaignId, queueAsGroup) end
--- Returns:  currentState

function ConfirmCampaignEntry(campaignId, queueAsGroup, accept) end

function GetCampaignQueueConfirmationDuration() end
--- Returns:  numSeconds

function GetStoreEntryInfo(entryIndex) end
--- Returns:  icon, name, stack, price, sellPrice, meetsRequirementsToBuy, meetsRequirementsToUse, quality, questNameColor, currencyType1, currencyId1, currencyQuantity1, currencyIcon1, currencyName1, currencyType2, currencyId2, currencyQuantity2, currencyIcon2, currencyName2, entryType

function GetStoreCollectibleInfo(entryIndex) end
--- Returns:  collectibleId, locked

function GetNumStoreItems() end
--- Returns:  numItems

function GetNumBuybackItems() end
--- Returns:  numBuybackItems

function GetStoreCurrencyTypes() end
--- Returns:  usesMoney, usesAlliancePoints, usesBattleTokens, usesItems

function GetStoreItemLink(entryIndex, linkStyle) end
--- Returns:  link

function GetStoreEntryTypeInfo(entryIndex) end
--- Uses variable returns...
--- Returns:  itemType

function GetStoreEntryStatValue(entryIndex) end
--- Returns:  statValue

function GetStoreEntryMaxBuyable(entryIndex) end
--- Returns:  quantity

function GetBuybackItemInfo(entryIndex) end
--- Returns:  icon, name, stack, price, quality, meetsRequirementsToEquip

function GetBuybackItemLink(entryIndex, linkStyle) end
--- Returns:  link

function BuyStoreItem(entryIndex, quantity) end

function BuybackItem(entryIndex) end

function GetItemCurrencyQuantity(itemCurrencyId) end
--- Returns:  quantity

function SellInventoryItem(bagId, slotIndex, quantity) end

function SellAllJunk() end

function CloseStore() end

function RepairAll() end

function RepairItem(bagId, slotIndex) end

function LaunderItem(bagId, slotIndex, quantity) end

function LootAll(ignoreStolenItems) end

function GetLootItemLink(lootId, linkStyle) end
--- Returns:  link

function LootItemById(lootId) end

function LootMoney() end

function EndLooting() end

function GetLootTargetInfo() end
--- Returns:  name, targetType, actionName, isOwned

function GetLootItemInfo(lootIndex) end
--- Returns:  lootId, name, icon, count, quality, value, isQuest, stolen

function GetLootMoney() end
--- Returns:  unownedMoney, ownedMoney

function GetQuestLootItemTooltipInfo(lootIndex) end
--- Returns:  header, itemName, tooltipText

function GetKeepType(keepId) end
--- Returns:  keepType

function GetNumKeeps() end
--- Returns:  numKeeps

function GetAvAKeepScore(campaignId, alliance) end
--- Returns:  allOwnHeld, enemyHeld

function GetNumKeepScoreBonuses() end
--- Returns:  numBonuses

function GetKeepScoreBonusInfo(index) end
--- Returns:  name, icon, description

function GetKeepPinInfo(keepId, battlegroundContext) end
--- Returns:  pinType, normalizedX, normalizedY

function GetKeepName(keepId) end
--- Returns:  keepName

function GetKeepAlliance(keepId, battlegroundContext) end
--- Returns:  alliance

function GetResourceKeepForKeep(parentKeepId, resourceType) end
--- Returns:  keepId

function GetKeepResourceLevel(keepId, battlegroundContext, resourceType) end
--- Returns:  resourceLevel

function GetKeepResourceType(keepId) end
--- Returns:  resourceType

function GetKeepResourceInfo(keepId, battlegroundContext, resourceType, level) end
--- Returns:  currentAmount, amountForNextLevel, upkeepPerMinute

function GetKeepUpgradeInfo(keepId, battlegroundContext, upgradePath, level) end
--- Returns:  currentAmount, amountForNextLevel, upkeepPerMinute

function GetKeepProductionLevel(keepId, battlegroundContext) end
--- Returns:  productionLevel

function GetKeepDefensiveLevel(keepId, battlegroundContext) end
--- Returns:  defensiveLevel

function GetSecondsUntilKeepClaimAvailable(keepId, battlegroundContext) end
--- Returns:  secondsUntilAvailable

function GetGuildClaimInteractionKeepId() end
--- Returns:  keepId

function GetGuildReleaseInteractionKeepId() end
--- Returns:  keepId

function CancelKeepGuildClaimInteraction() end

function CancelKeepGuildReleaseInteraction() end

function GetHistoricalKeepUnderAttack(keepId, battlegroundContext, historyPercent) end
--- Returns:  underAttack

function GetHistoricalKeepPinInfo(keepId, battlegroundContext, historyPercent) end
--- Returns:  pinType, normalizedX, normalizedY

function GetHistoricalKeepAlliance(keepId, battlegroundContext, historyPercent) end
--- Returns:  alliance

function GetInteractionKeepId() end
--- Returns:  keepId

function GetKeepUnderAttack(keepId, battlegroundContext) end
--- Returns:  underAttack

function GetKeepUpgradeRate(keepId, battlegroundContext, upgradeLine) end
--- Returns:  rate

function GetClaimedKeepGuildName(keepId, battlegroundContext) end
--- Returns:  guildName

function GetMaxKeepSieges(keepId, battlegroundContext) end
--- Returns:  maxSiege

function GetMaxKeepNPCs(keepId, battlegroundContext) end
--- Returns:  maxNPC

function GetNumFriendlyKeepNPCs(keepId, battlegroundContext) end
--- Returns:  numFriendlyNPC

function GetNumSieges(keepId, battlegroundContext, alliance) end
--- Returns:  numSieges

function GetKeepKeysByIndex(index) end
--- Returns:  keepId, battlegroundContext

function IsKeepTypeClaimable(keepType) end
--- Returns:  isClaimable

function GetNumTitles() end
--- Returns:  titleCount

function GetTitle(titleIndex) end
--- Returns:  titleString

function GetCurrentTitleIndex() end
--- Returns:  titleIndex

function SelectTitle(titleIndex) end

function AcceptResurrect() end

function DeclineResurrect() end

function IsResurrectPending() end
--- Returns:  resurrectPending

function GetPendingResurrectInfo() end
--- Returns:  casterName, timeLeft

function GetDeathInfo() end
--- Returns:  timeUntilRevive, timeUntilAutoRelease, respawnQueueOrCorpseSummonTime, isPenaltyTooHighToRevive, encounterIsInProgress, isAVADeath, isBattleGroundDeath, isReleaseOnly, soulGemAvailable, freeRevive, isRaidDeath, isImperialCityLocked

function Revive() end

function Release() end

function JoinRespawnQueue() end

function RespawnAtKeep(keepId) end

function RespawnAtForwardCamp(index) end

function GetNumForwardCamps(battlegroundContext) end
--- Returns:  num

function GetForwardCampPinInfo(battlegroundContext, index) end
--- Returns:  pinType, normalizedX, normalizedY, normalizedRadius, useable

function IsForwardCampGuildOwned(battlegroundContext, index) end
--- Returns:  isGuildOwned

function GetForwardCampOwnerName(battlegroundContext, index) end
--- Returns:  guildName

function GetNumBattleStandards(battlegroundContext) end
--- Returns:  num

function GetBattleStandardPinInfo(battlegroundContext, index) end
--- Returns:  pinType, normalizedX, normalizedY

function GetBattleStandardGuildName(battlegroundContext, index) end
--- Returns:  guildName

function TradeInvite(target) end

function TradeInviteByName(playerName) end

function TradeInviteAccept() end

function TradeInviteDecline() end

function GetTradeInviteInfo() end
--- Returns:  name, millisecondsSinceRequest

function TradeSetMoney(amount) end

function TradeInviteCancel() end

function TradeCancel() end

function TradeAccept() end

function TradeEdit() end

function TradeAddItem(bagId, slotIndex, tradeIndex) end

function TradeRemoveItem(tradeIndex) end

function GetTradeItemInfo(who, tradeIndex) end
--- Returns:  name, icon, stack, quality, creatorName, sellPrice, meetsUsageRequirement, equipType, itemStyle

function GetTradeItemBagAndSlot(who, tradeIndex) end
--- Returns:  bagId, slotIndex

function GetTradeItemLink(who, tradeIndex, linkStyle) end
--- Returns:  link

function StartMapPinAnimation(animationTimeline, animationTarget, limitToMapType, pinType, param1, param2, param3, playOffset, ignoreBreadcrumbs) end
--- Returns:  played

function IsPlayerInsidePinArea(pinType, param1, param2, param3) end
--- Returns:  isPlayerInside

function RemoveMapPinsInRange(startType, endType, param1, param2, param3) end

function GetAvailableSkillPoints() end
--- Returns:  numPoints

function GetNumSkyShards() end
--- Returns:  numShards

function GetNumSkillTypes() end
--- Returns:  numSkillTypes

function GetNumSkillLines(skillType) end
--- Returns:  numSkillLines

function GetSkillLineInfo(skillType, skillIndex) end
--- Returns:  name, rank

function GetSkillLineXPInfo(skillType, skillIndex) end
--- Returns:  lastRankXP, nextRankXP, currentXP

function GetSkillLineRankXPExtents(skillType, skillIndex, rank) end
--- Returns:  startXP, nextRankStartXP

function GetNumSkillAbilities(skillType, skillIndex) end
--- Returns:  numAbilities

function GetSkillAbilityInfo(skillType, skillIndex, abilityIndex) end
--- Returns:  name, texture, earnedRank, passive, ultimate, purchased, progressionIndex

function GetSkillAbilityId(skillType, skillIndex, abilityIndex, showUpgrade) end
--- Returns:  abilityId

function GetSkillAbilityUpgradeInfo(skillType, skillIndex, abilityIndex) end
--- Returns:  currentUpgradeLevel, maxUpgradeLevel

function GetSkillAbilityNextUpgradeInfo(skillType, skillIndex, abilityIndex) end
--- Returns:  name, texture, earnedRank

function GetCraftingSkillLineIndices(craftingSkillType) end
--- Returns:  skillType, skillIndex

function PutPointIntoSkillAbility(skillType, skillIndex, index, putPointInNextUpgrade) end

function GetSkillAbilityIndicesFromProgressionIndex(progressionIndex) end
--- Returns:  skillType, skillIndex, abilityIndex

function IsLocalMailboxFull() end
--- Returns:  isFull

function GetNumMailItems() end
--- Returns:  numMail

function GetNextMailId(lastMailId) end
--- Returns:  nextMailId

function GetMailItemInfo(mailId) end
--- Returns:  senderDisplayName, senderCharacterName, subject, icon, unread, fromSystem, fromCustomerService, returned, numAttachments, attachedMoney, codAmount, expiresInDays, secsSinceReceived

function GetMailSender(mailId) end
--- Returns:  senderDisplayName, senderCharacterName

function GetMailAttachmentInfo(mailId) end
--- Returns:  numAttachments, attachedMoney, codAmount

function GetMailFlags(mailId) end
--- Returns:  unread, returned, fromSystem, fromCustomerService

function SendMail(to, subject, body) end

function GetQueuedMailPostage() end
--- Returns:  postage

function ClearQueuedMail() end

function CloseMailbox() end

function RequestReadMail(mailId) end

function DeleteMail(mailId, forceDelete) end

function IsMailReturnable(mailId) end
--- Returns:  isReturnable

function ReturnMail(mailId) end

function ReadMail(mailId) end
--- Returns:  body

function HasUnreadMail() end
--- Returns:  unread

function GetNumUnreadMail() end
--- Returns:  numUnread

function CanQueueItemAttachment(bagId, slotIndex, attachmentSlot) end
--- Returns:  canAttach

function RemoveQueuedItemAttachment(attachmentSlot) end

function QueueMoneyAttachment(amount) end

function GetQueuedMoneyAttachment() end
--- Returns:  amount

function QueueCOD(amount) end

function GetQueuedCOD() end
--- Returns:  amount

function GetMailQueuedAttachmentLink(attachmentSlot, linkStyle) end
--- Returns:  link

function GetQueuedItemAttachmentInfo(attachmentSlot) end
--- Returns:  bagId, slotIndex, icon, stack

function GetAttachedItemLink(mailId, attachIndex, linkStyle) end
--- Returns:  link

function GetAttachedItemInfo(mailId, attachIndex) end
--- Returns:  icon, stack, creatorName, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality

function TakeMailAttachedItems(mailId) end

function TakeMailAttachedMoney(mailId) end

function RequestOpenMailbox() end

function GetNumCollectibleCategories() end
--- Returns:  numCategories

function GetCollectibleCategoryInfo(topLevelIndex) end
--- Returns:  name, numSubCatgories, numCollectibles, unlockedCollectibles, totalCollectibles, hidesLocked, type

function GetCollectibleCategoryKeyboardIcons(categoryIndex) end
--- Returns:  normalIcon, pressedIcon, mouseoverIcon

function GetCollectibleCategoryGamepadIcon(categoryIndex) end
--- Returns:  gamepadIcon

function GetCollectibleSubCategoryInfo(topLevelIndex, subCategoryIndex) end
--- Returns:  name, numCollectibles, unlockedCollectibles, totalCollectibles, type

function GetUnlockedCollectiblesCount() end
--- Returns:  count

function GetTotalCollectiblesCount() end
--- Returns:  count

function GetCollectibleId(topLevelIndex, categoryIndex, collectibleIndex) end
--- Returns:  collectibleId

function GetCollectibleInfo(collectibleId) end
--- Returns:  name, description, icon, lockedIcon, unlocked, purchasable, isActive, categoryType, hint

function GetCategoryInfoFromCollectibleId(collectibleId) end
--- Returns:  topLevelIndex, categoryIndex, collectibleIndex

function GetTotalCollectiblesByCategoryType(collectibleCategoryType) end
--- Returns:  count

function GetCollectibleIdFromType(collectibleCategoryType, index) end
--- Returns:  collectibleId

function IsCollectibleCategorySlottable(collectibleCategoryType) end
--- Returns:  isSlottable

function IsCollectibleSlottable(collectibleId) end
--- Returns:  isSlottable

function IsCollectibleRenameable(collectibleId) end
--- Returns:  isRenameable

function UseCollectible(collectibleId) end

function GetCollectibleLink(collectibleId, linkStyle) end
--- Returns:  link

function GetCollectibleCategoryTypeFromLink(link) end
--- Returns:  categoryType

function GetCollectibleIdFromLink(link) end
--- Returns:  collectibleId

function StartCollectibleSearch(searchString) end

function GetCollectiblesSearchResults() end
--- Uses variable returns...
--- Returns:  categoryIndex, subcategoryIndex, collectibleIndex

function IsValidCollectibleName(collectibleName) end
--- Uses variable returns...
--- Returns:  violationCode

function RenameCollectible(collectibleId, name) end

function GetCollectibleNickname(collectibleId) end
--- Returns:  name

function GetNumCollectibleNotifications() end
--- Returns:  count

function GetCollectibleNotificationInfo(notificationIndex) end
--- Returns:  notificationId, collectibleId

function RemoveCollectibleNotification(notificationId) end

function GetNumAchievementCategories() end
--- Returns:  numCategories

function GetAchievementCategoryInfo(topLevelIndex) end
--- Returns:  name, numSubCatgories, numAchievements, earnedPoints, totalPoints, hidesPoints

function GetAchievementSubCategoryInfo(topLevelIndex, subCategoryIndex) end
--- Returns:  name, numAchievements, earnedPoints, totalPoints, hidesPoints

function GetAchievementCategoryKeyboardIcons(categoryIndex) end
--- Returns:  normalIcon, pressedIcon, mouseoverIcon

function GetAchievementCategoryGamepadIcon(categoryIndex) end
--- Returns:  gamepadIcon

function GetEarnedAchievementPoints() end
--- Returns:  points

function GetTotalAchievementPoints() end
--- Returns:  points

function GetAchievementId(topLevelIndex, categoryIndex, achievementIndex) end
--- Returns:  achievementId

function GetAchievementInfo(achievementId) end
--- Returns:  name, description, points, icon, completed, date, time

function IsAchievementComplete(achievementId) end
--- Returns:  completed

function GetAchievementNumRewards(achievementId) end
--- Returns:  numRewards

function GetAchievementItemLink(achievementId, linkStyle) end
--- Returns:  link

function GetAchievementNumCriteria(achievementId) end
--- Returns:  numCriteria

function GetAchievementCriterion(achievementId, criterionIndex) end
--- Returns:  description, numCompleted, numRequired

function GetRecentlyCompletedAchievements(numAchievementsToGet) end
--- Uses variable returns...
--- Returns:  achievementId

function GetCategoryInfoFromAchievementId(achievementId) end
--- Returns:  topLevelIndex, categoryIndex, achievementIndex, offsetFromParent

function GetFirstAchievementInLine(achievementId) end
--- Returns:  firstAchievementId

function GetNextAchievementInLine(achievementId) end
--- Returns:  nextAchievementId

function GetPreviousAchievementInLine(achievementId) end
--- Returns:  previousAchievementId

function GetAchievementLink(achievementId, linkStyle) end
--- Returns:  link

function GetAchievementProgressFromLinkData(achievementId, progress) end
--- Uses variable returns...
--- Returns:  numCompleted

function GetAchievementRewardPoints(achievementId) end
--- Returns:  points

function GetAchievementRewardItem(achievementId) end
--- Returns:  hasRewardOfType, itemName, iconTextureName, quality

function GetAchievementRewardTitle(achievementId) end
--- Returns:  hasRewardOfType, titleName

function GetAchievementRewardDye(achievementId) end
--- Returns:  hasRewardOfType, dyeIndex

function GetNumExperiencePointsInLevel(level) end
--- Returns:  numXP

function GetNumVeteranPointsInRank(veteranRank) end
--- Returns:  numVP

function GetEnlightenedMultiplier() end
--- Returns:  multiplier

function GetEnlightenedPool() end
--- Returns:  poolAmount

function IsEnlightenedAvailableForAccount() end
--- Returns:  availableForAccount

function IsEnlightenedAvailableForCharacter() end
--- Returns:  availableForCharacter

function GetChampionXPInRank(championPointsEarned) end
--- Returns:  maxExp

function GetMaxLevel() end
--- Returns:  maxLevel

function GetAbilityProgressionAbilityId(progressionIndex, morph, rank) end
--- Returns:  abilityId

function GetLatestAbilityRespecNote() end
--- Returns:  note

function GetLatestAttributeRespecNote() end
--- Returns:  note

function PurchaseAttributes(health, magicka, stamina) end

function GetAttributeSpentPoints(attributeType) end
--- Returns:  points

function GetAttributeUnspentPoints() end
--- Returns:  points

function GetNumLoreCategories() end
--- Returns:  numTopCategories

function GetLoreCategoryInfo(categoryIndex) end
--- Returns:  name, numCollections

function GetLoreCollectionInfo(categoryIndex, collectionIndex) end
--- Returns:  name, description, numKnownBooks, totalBooks, hidden, gamepadIcon

function GetLoreBookInfo(categoryIndex, collectionIndex, bookIndex) end
--- Returns:  title, icon, known

function ReadLoreBook(categoryIndex, collectionIndex, bookIndex) end
--- Returns:  body, medium, showTitle

function GetLoreBookLink(categoryIndex, collectionIndex, bookIndex, linkStyle) end
--- Returns:  link

function GetGameCameraNonInteractableName() end
--- Returns:  name

function GetPledgeOfMaraOfferInfo() end
--- Returns:  targetName, millisecondsSinceRequest, isSender

function SendPledgeOfMaraResponse(response) end

function GetRingOfMaraExperienceBonus() end
--- Returns:  bonusPercentage

function GetNumTutorials() end
--- Returns:  numTutorials

function GetTutorialType(tutorialIndex) end
--- Returns:  tutorialType

function GetTutorialInfo(tutorialIndex) end
--- Returns:  title, description, displayPriority

function GetTutorialLinkedHelpInfo(tutorialIndex) end
--- Returns:  helpCategoryIndex, helpIndex

function TriggerTutorial(triggerType) end

function ResetAllTutorials() end

function HasSeenTutorial(tutorialIndex) end
--- Returns:  seen

function CanTutorialBeSeen(tutorialIndex) end
--- Returns:  canBeSeen

function IsTutorialActionRequired(tutorialIndex) end
--- Returns:  isActionRequired

function GetTutorialId(triggerType) end
--- Returns:  tutorialId

function SetTutorialSeen(tutorialIndex) end

function ClearActiveActionRequiredTutorial() end

function GetHelpCategoryInfo(helpCategoryIndex) end
--- Returns:  name, description, upIcon, downIcon, overIcon, gamepadIcon

function GetNumHelpCategories() end
--- Returns:  numHelpCategories

function GetNumHelpEntriesWithinCategory(helpCategoryIndex) end
--- Returns:  numHelpEntries

function GetHelpInfo(helpCategoryIndex, helpIndex) end
--- Returns:  name, description, description2, image, descriptionGamepad, descriptionGamepad2

function GetHelpSearchResults() end
--- Uses variable returns...
--- Returns:  helpCategoryIndex, helpIndex

function SubmitCustomerServiceTicket() end
--- Returns:  success

function SetCustomerServiceTicketInfo(contactEmail) end

function StartHelpSearch(searchString) end

function GetCraftingInteractionType() end
--- Returns:  currentCraftingInteraction

function IsPerformingCraftProcess() end
--- Returns:  isCrafting

function GetLastCraftingResultTotalInspiration() end
--- Returns:  totalInspiration

function GetNumLastCraftingResultLearnedTranslations() end
--- Returns:  numLearnedTranslations

function GetLastCraftingResultLearnedTranslationInfo(resultIndex) end
--- Returns:  translationName, itemName, icon, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality

function GetNumLastCraftingResultLearnedTraits() end
--- Returns:  numLearnedTraits

function GetLastCraftingResultLearnedTraitInfo(resultIndex) end
--- Returns:  traitName, itemName, icon, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality

function GetNumLastCraftingResultItemsAndPenalty() end
--- Returns:  numItems, penaltyApplied

function GetLastCraftingResultItemInfo(resultIndex) end
--- Returns:  name, icon, stack, sellPrice, meetsUsageRequirement, equipType, itemType, itemStyle, quality, soundCategory, itemInstanceId

function GetCostToCraftAlchemyItem(solventBagId, solventSlotIndex) end
--- Returns:  cost

function CraftAlchemyItem(solventBagId, solventSlotIndex, reagent1BagId, reagent1SlotIndex, reagent2BagId, reagent2SlotIndex, reagent3BagId, reagent3SlotIndex) end

function GetAlchemyResultingItemInfo(solventBagId, solventSlotIndex, reagent1BagId, reagent1SlotIndex, reagent2BagId, reagent2SlotIndex, reagent3BagId, reagent3SlotIndex) end
--- Returns:  name, icon, stack, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality

function GetAlchemyResultingItemLink(solventBagId, solventSlotIndex, reagent1BagId, reagent1SlotIndex, reagent2BagId, reagent2SlotIndex, reagent3BagId, reagent3SlotIndex, linkStyle) end
--- Returns:  link

function GetAlchemyResultInspiration(solventBagId, solventSlotIndex, reagent1BagId, reagent1SlotIndex, reagent2BagId, reagent2SlotIndex, reagent3BagId, reagent3SlotIndex) end
--- Returns:  inspiration

function GetAlchemyItemTraits(reagentBagId, reagentSlotIndex) end
--- Uses variable returns...
--- Returns:  trait, icon, matchIcon

function GetNumRecipeLists() end
--- Returns:  numRecipeLists

function GetRecipeListInfo(recipeListIndex) end
--- Returns:  name, numRecipes, upIcon, downIcon, overIcon, disabledIcon, createSound

function GetRecipeInfo(recipeListIndex, recipeIndex) end
--- Returns:  known, name, numIngredients, provisionerLevelReq, qualityReq, specialIngredientType

function GetRecipeIngredientItemInfo(recipeListIndex, recipeIndex, ingredientIndex) end
--- Returns:  name, icon, requiredQuantity, sellPrice, quality

function GetRecipeIngredientItemLink(recipeListIndex, recipeIndex, ingredientIndex, linkStyle) end
--- Returns:  link

function GetRecipeResultItemInfo(recipeListIndex, recipeIndex) end
--- Returns:  name, icon, stack, sellPrice, quality

function GetRecipeResultItemLink(recipeListIndex, recipeIndex, linkStyle) end
--- Returns:  link

function GetCostToCraftProvisionerItem(recipeListIndex, recipeIndex) end
--- Returns:  cost

function CraftProvisionerItem(recipeListIndex, recipeIndex) end

function GetCurrentRecipeIngredientCount(recipeListIndex, recipeIndex, ingredientIndex) end
--- Returns:  count

function GetCostToCraftEnchantingItem(potencyRuneBagId, potencyRuneSlotIndex, essenceRuneBagId, essenceRuneSlotIndex, aspectRuneBagId, aspectRuneSlotIndex) end
--- Returns:  cost

function CraftEnchantingItem(potencyRuneBagId, potencyRuneSlotIndex, essenceRuneBagId, essenceRuneSlotIndex, aspectRuneBagId, aspectRuneSlotIndex) end

function ExtractEnchantingItem(bagId, slotIndex) end

function GetEnchantingResultingItemInfo(potencyRuneBagId, potencyRuneSlotIndex, essenceRuneBagId, essenceRuneSlotIndex, aspectRuneBagId, aspectRuneSlotIndex) end
--- Returns:  name, icon, stack, sellPrice, meetsUsageRequirement, quality

function GetEnchantingResultingItemLink(potencyRuneBagId, potencyRuneSlotIndex, essenceRuneBagId, essenceRuneSlotIndex, aspectRuneBagId, aspectRuneSlotIndex, linkStyle) end
--- Returns:  link

function GetRunestoneTranslatedName(bagId, slotIndex) end
--- Returns:  name

function GetRunestoneSoundInfo(bagId, slotIndex) end
--- Returns:  soundName, soundLength

function GetEnchantedItemResultingItemLink(itemBagId, itemSlotIndex, enchantmentBagId, enchantmentSlotIndex, linkStyle) end
--- Returns:  link

function GetCostToCraftSmithingItem(patternIndex, materialIndex, materialQuantity, styleIndex, traitIndex) end
--- Returns:  cost

function CraftSmithingItem(patternIndex, materialIndex, materialQuantity, styleIndex, traitIndex) end

function GetSmithingPatternResultLink(patternIndex, materialIndex, materialQuantity, styleIndex, traitIndex, linkStyle) end
--- Returns:  link

function CanSmithingWeaponPatternsBeCraftedHere() end
--- Returns:  canBeCrafted

function CanSmithingApparelPatternsBeCraftedHere() end
--- Returns:  canBeCrafted

function CanSmithingSetPatternsBeCraftedHere() end
--- Returns:  canBeCrafted

function GetNumSmithingPatterns() end
--- Returns:  smithingPatterns

function GetSmithingPatternInfo(patternIndex, materialIndexOverride, materialQuanityOverride, styleOverride, traitTypeOverride) end
--- Returns:  patternName, baseName, icon, numMaterials, numTraitsRequired, numTraitsKnown, resultItemFilterType

function GetSmithingPatternMaterialItemInfo(patternIndex, materialIndex) end
--- Returns:  itemName, icon, stack, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality, itemInstanceId, skillRequirement

function GetSmithingPatternMaterialItemLink(patternIndex, materialIndex, linkStyle) end
--- Returns:  link

function GetSmithingPatternArmorType(patternIndex) end
--- Returns:  armorType

function GetCurrentSmithingMaterialItemCount(patternIndex, materialIndex) end
--- Returns:  count

function GetNumSmithingStyleItems() end
--- Returns:  numStyleItems

function GetSmithingStyleItemInfo(styleItemIndex) end
--- Returns:  itemName, icon, sellPrice, meetsUsageRequirement, itemStyle, quality

function GetSmithingStyleItemLink(styleItemIndex, linkStyle) end
--- Returns:  link

function GetCurrentSmithingStyleItemCount(styleItemIndex) end
--- Returns:  count

function IsSmithingStyleKnown(styleItemIndex, patternIndex) end
--- Returns:  known

function GetFirstKnownStyleIndex(patternIndex) end
--- Returns:  styleItemIndex

function CanSmithingStyleBeUsedOnPattern(styleIndex, patternIndex, materialIndex, materialQuantity) end
--- Returns:  canBeUsed, levelRequirement, veteranLevelRequirement

function GetNumSmithingTraitItems() end
--- Returns:  numTraitItems

function GetSmithingTraitItemInfo(traitItemIndex) end
--- Returns:  traitType, itemName, icon, sellPrice, meetsUsageRequirement, itemStyle, quality

function GetSmithingTraitItemLink(traitItemIndex, linkStyle) end
--- Returns:  link

function GetCurrentSmithingTraitItemCount(traitItemIndex) end
--- Returns:  count

function IsSmithingTraitItemValidForPattern(patternIndex, traitItemIndex) end
--- Returns:  valid

function IsSmithingTraitKnownForResult(patternIndex, materialIndex, materialQuantity, styleIndex, traitIndex) end
--- Returns:  known

function GetNumSmithingResearchLines(craftingSkillType) end
--- Returns:  numLines

function GetMaxSimultaneousSmithingResearch(craftingSkillType) end
--- Returns:  maxSimultaneousResearch

function GetSmithingResearchLineInfo(craftingSkillType, researchLineIndex) end
--- Returns:  name, icon, numTraits, timeRequiredForNextResearchSecs

function GetSmithingResearchLineTraitInfo(craftingSkillType, researchLineIndex, traitIndex) end
--- Returns:  traitType, traitDescription, known

function GetSmithingResearchLineTraitTimes(craftingSkillType, researchLineIndex, traitIndex) end
--- Returns:  duration, timeRemainingSecs

function CanItemBeSmithingTraitResearched(bagId, slotIndex, craftingSkillType, researchLineIndex, traitIndex) end
--- Returns:  canBeResearched

function ResearchSmithingTrait(bagId, slotIndex) end

function CanItemBeSmithingExtractedOrRefined(bagId, slotIndex, craftingSkillType) end
--- Returns:  canItemBeExtractedOrRefined

function GetRequiredSmithingRefinementStackSize() end
--- Returns:  requiredStackSize

function GetSmithingRefinementMinRawMaterial() end
--- Returns:  minRawMaterial

function GetSmithingRefinementMaxRawMaterial() end
--- Returns:  maxRawMaterial

function ExtractOrRefineSmithingItem(bagId, slotIndex) end

function CanItemBeSmithingImproved(bagId, slotIndex, craftingSkillType) end
--- Returns:  canBeImproved

function GetSmithingImprovementChance(itemToImproveBagId, itemToImproveSlotIndex, numBoostersToUse, craftingSkillType) end
--- Returns:  chance

function GetNumSmithingImprovementItems() end
--- Returns:  numImprovementItems

function GetSmithingImprovementItemInfo(craftingSkillType, improvementItemIndex) end
--- Returns:  itemName, icon, currentStack, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality

function GetSmithingImprovementItemLink(craftingSkillType, improvementItemIndex, linkStyle) end
--- Returns:  link

function GetSmithingImprovedItemInfo(itemToImproveBagId, itemToImproveSlotIndex, craftingSkillType) end
--- Returns:  itemName, icon, sellPrice, meetsUsageRequirement, equipType, itemStyle, quality

function GetSmithingImprovedItemLink(itemToImproveBagId, itemToImproveSlotIndex, craftingSkillType, linkStyle) end
--- Returns:  link

function ImproveSmithingItem(itemToImproveBagId, itemToImproveSlotIndex, numBoostersToUse) end

function GetNonCombatBonus(nonCombatBonus) end
--- Returns:  bonusValue

function GetNumEmotes() end
--- Returns:  numEmotes

function GetEmoteInfo(emoteIndex) end
--- Returns:  slashName, category, emoteId

function GetEmoteSlashNameByIndex(emoteIndex) end
--- Returns:  slashName

function PlayEmoteByIndex(emoteIndex) end

function GetNumLFGOptions(activity) end
--- Returns:  count

function GetLFGOption(activity, index) end
--- Returns:  name, levelMin, levelMax, veteranRankMin, veteranRankMax, groupTypeAllowed, passedReqs, description, descriptionTexture, descriptionTextureGamepad

function GetLFGDisplayLevels(activity, index) end
--- Returns:  displayLevelMin, displayLevelMax, displayVeteranRankMin, displayVeteranRankMax

function GetLFGOptionGroupType(activity, index) end
--- Returns:  groupTypeAllowed

function DoesPlayerMeetLFGLevelRequirements(activity, index) end
--- Returns:  meetsLevelRequirements

function DoesGroupMeetLFGLevelRequirements(activity, index) end
--- Returns:  meetsLevelRequirements

function DoesGroupMeetLFGContributionShareRequirements() end
--- Returns:  meetsContributionShareRequirements

function GetLFGContributionShareRequirements() end
--- Returns:  shareRequirementsLevel, shareRequirementsRank

function UpdatePlayerRole(activity, selected) end

function GetPlayerRoles() end
--- Returns:  isDPS, isHeal, isTank

function GetLFGActivityMaxValue() end
--- Returns:  maxValue

function DoesLFGActivityHasAllOption(activity) end
--- Returns:  hasAllOption

function AddGroupFinderSearchEntry(activity, index, isDPS, isHealer, isTank) end

function ClearGroupFinderSearch() end

function StartGroupFinderSearch() end

function StartLFGSearch(activity, index, groupType) end

function StartLFMSearch(activity, index, numDpsOnly, numTankOnly, numHealerOnly, numDpsTank, numDpsHealer, numTankHealer, numAnyRole) end

function GetNumLFGRequests() end
--- Returns:  numRequests

function GetLFGRequestInfo(requestIndex) end
--- Returns:  activity, index, DPS, healer, tank

function CancelGroupSearches() end

function IsCurrentlySearchingForGroup() end
--- Returns:  isSearching

function GetNumFishingLures() end
--- Returns:  numLures

function GetFishingLureInfo(lureIndex) end
--- Returns:  name, icon, stack, sellPrice, quality

function SetFishingLure(lureIndex) end

function GetFishingLure() end
--- Returns:  lureIndex

function GetNumViewableTreasureMaps() end
--- Returns:  numViewableMaps

function GetTreasureMapInfo(treasureMapIndex) end
--- Returns:  name, imagePath

function SetFloatingMarkerInfo(markerType, size, primaryTexturePath, secondaryTexturePath, primaryPulses, secondaryPulses) end

function SetFloatingMarkerGlobalAlpha(alpha) end

function GetAgentChatRequestInfo() end
--- Returns:  isChatRequested, millisecondsSinceRequest

function IsAgentChatActive() end
--- Returns:  isActive

function AcceptAgentChat() end

function DeclineAgentChat() end

function GetNumKillingAttacks() end
--- Returns:  numKillingAttacks

function GetKillingAttackInfo(index) end
--- Returns:  attackName, attackDamage, attackIcon, wasKillingBlow, castTimeAgoMS, durationMS

function DoesKillingAttackHaveAttacker(index) end
--- Returns:  hasAttacker

function GetKillingAttackerInfo(index) end
--- Returns:  attackerRawName, attackerVeteranRank, attackerLevel, attackerAvARank, isPlayer, isBoss, alliance, minionName

function GetNumDeathRecapHints() end
--- Returns:  numHints

function GetDeathRecapHintInfo(index) end
--- Returns:  text, importance

function SetPendingEquippedItemDye(equipSlot, primaryDyeIndex, secondaryDyeIndex, accentDyeIndex) end

function GetPendingEquippedItemDye(equipSlot) end
--- Returns:  primaryDyeIndex, secondaryDyeIndex, accentDyeIndex

function GetNumDyes() end
--- Returns:  numDyes

function GetDyeInfo(dyeIndex) end
--- Returns:  dyeName, known, rarity, hueCategory, achievementId, r, g, b, sortKey

function GetCurrentItemDyes(bagId, slotIndex) end
--- Returns:  primaryDyeIndex, secondaryDyeIndex, accentDyeIndex

function ApplyPendingDyes() end

function GetNumSavedDyeSets() end
--- Returns:  numSavedDyeSets

function GetSavedDyeSetDyes(dyeSetIndex) end
--- Returns:  primaryDyeIndex, secondaryDyeIndex, accentDyeIndex

function SetSavedDyeSetDyes(dyeSetIndex, primaryDyeIndex, secondaryDyeIndex, accentDyeIndex) end

function IsJusticeEnabled() end
--- Returns:  isJusticeEnabled

function IsJusticeEnabledForZone(aZoneIndex) end
--- Returns:  isBountyEnabled

function IsKillOnSight() end
--- Returns:  isKillOnSight

function GetInfamy() end
--- Returns:  infamy

function GetBounty() end
--- Returns:  bounty

function GetPlayerInfamyData() end
--- Returns:  heat, bounty

function GetReducedBountyPayoffAmount() end
--- Returns:  payoffAmount

function GetFullBountyPayoffAmount() end
--- Returns:  payoffAmount

function GetInfamyLevel(infamyAmount) end
--- Returns:  infamyLevel

function GetInfamyMeterSize() end
--- Returns:  meterSize

function GetFenceSellTransactionInfo() end
--- Returns:  totalSells, sellsUsed

function GetFenceLaunderTransactionInfo() end
--- Returns:  totalLaunders, laundersUsed

function GetSecondsUntilArrestTimeout() end
--- Returns:  secondsUntilArrestTimeout

function IsStuckFixPending() end
--- Returns:  isStuckFixPending

function CanUseStuck(warn) end
--- Returns:  canUseStuck

function GetTimeUntilStuckAvailable() end
--- Returns:  millisecondsUntilAvailable

function GetStuckCooldown() end
--- Returns:  cooldownRemainingSecs

function ApplyPendingHeraldryChanges() end

function IsPlayerAllowedToEditHeraldry(guildIndex) end
--- Returns:  allowed

function IsCurrentlyCustomizingHeraldry() end
--- Returns:  currentlyCustomizing

function GetHeraldryCustomizationCosts() end
--- Returns:  backgroundStyleCost, backgroundPrimaryColorCost, backgroundSecondaryColorCost, crestStyleCost, crestColorCost

function IsCreatingHeraldryForFirstTime() end
--- Returns:  creatingForFirstTime

function HasPendingHeraldryChanges() end
--- Returns:  hasPendingChanges

function GetPendingHeraldryCost() end
--- Returns:  pendingCost

function RevertToSavedHeraldry() end

function SetPendingHeraldryIndices(backgroundCategoryIndex, backgroundStyleIndex, backgroundPrimaryColorIndex, backgroundSecondaryColorIndex, crestCategoryIndex, crestStyleIndex, crestColorIndex) end

function GetPendingHeraldryIndices() end
--- Returns:  backgroundCategoryIndex, backgroundStyleIndex, backgroundPrimaryColorIndex, backgroundSecondaryColorIndex, crestCategoryIndex, crestStyleIndex, crestColorIndex

function GetNumHeraldryColors() end
--- Returns:  numColors

function GetHeraldryColorInfo(colorIndex) end
--- Returns:  colorName, hueCategory, r, g, b, sortKey

function GetNumHeraldryBackgroundCategories() end
--- Returns:  numCategories

function GetHeraldryBackgroundCategoryInfo(categoryIndex) end
--- Returns:  categoryName, icon

function GetNumHeraldryBackgroundStyles(categoryIndex) end
--- Returns:  numStyles

function GetHeraldryBackgroundStyleInfo(categoryIndex, styleIndex) end
--- Returns:  styleName, icon

function GetNumHeraldryCrestCategories() end
--- Returns:  numCategories

function GetHeraldryCrestCategoryInfo(categoryIndex) end
--- Returns:  categoryName, icon

function GetNumHeraldryCrestStyles(categoryIndex) end
--- Returns:  numStyles

function GetHeraldryCrestStyleInfo(categoryIndex, styleIndex) end
--- Returns:  styleName, icon

function StartHeraldryCustomization(guildIndex) end

function EndHeraldryCustomization() end

function GetHeraldryGuildBankedMoney() end
--- Returns:  money

function GetGamepadTemplate() end
--- Returns:  gamepadTemplate

function SaveCachedSettings() end

function GetVibrationInfoFromTrigger(triggerType) end
--- Returns:  durationMS, coarseMotor, fineMotor, leftTriggerMotor, rightTriggerMotor

function SetShouldRenderWorld(shouldRenderWorld) end

function GetNumChampionDisciplines() end
--- Returns:  numDisciplines

function GetChampionDisciplineName(disciplineIndex) end
--- Returns:  name

function GetChampionDisciplineDescription(disciplineIndex) end
--- Returns:  description

function GetChampionDisciplineAttribute(disciplineIndex) end
--- Returns:  attribute

function GetNumChampionDisciplineSkills(disciplineIndex) end
--- Returns:  numSkills

function GetChampionSkillPosition(disciplineIndex, skillIndex) end
--- Returns:  normalizedX, normalizedY

function GetChampionSkillName(disciplineIndex, skillIndex) end
--- Returns:  skillName

function GetMaxPossiblePointsInChampionSkill() end
--- Returns:  maxPossiblePoints

function GetNumPointsSpentOnChampionSkill(disciplineIndex, skillIndex) end
--- Returns:  numSpentPoints

function GetNumPointsSpentInChampionDiscipline(disciplineIndex) end
--- Returns:  numSpentPoints

function GetChampionSkillUnlockLevel(disciplineIndex, skillIndex) end
--- Returns:  autoGrantLevel

function GetNumUnspentChampionPoints(attribute) end
--- Returns:  numUnspentPoints

function ClearPendingChampionPoints() end

function AddPendingChampionPoints(disciplineIndex, skillIndex, numPoints) end

function SpendPendingChampionPoints(respec) end
--- Returns:  requested

function SetChampionMusicActive(active) end

function GetChampionAbilityDescription(abilityId, numPendingPoints) end
--- Returns:  description

function GetChampionAbilityId(disciplineIndex, skillIndex) end
--- Returns:  abilityId

function GetChampionRespecCost() end
--- Returns:  cost

function GetChampionPointAttributeForRank(rank) end
--- Returns:  pointAttribute

function IsChampionSystemUnlocked() end
--- Returns:  unlocked

function BeginItemPreview() end

function EndItemPreview(resetTargetFrame) end

function IsCurrentlyPreviewing() end
--- Returns:  isPreviewing

function EndCurrentItemPreview() end

function BeginItemPreviewSpin() end

function EndItemPreviewSpin() end

function CanSpinPreviewCharacter() end
--- Returns:  canSpin