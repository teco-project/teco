//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCIssError {
    public struct InvalidParameterValue: TCIssErrorType {
        enum Code: String {
            case bakTimeNotEnough = "InvalidParameterValue.BakTimeNotEnough"
            case callbackURLContainIllegalCharacter = "InvalidParameterValue.CallbackURLContainIllegalCharacter"
            case channelIdAlreadyExistsInOtherAITasks = "InvalidParameterValue.ChannelIdAlreadyExistsInOtherAITasks"
            case channelIdMustBeNotEmpty = "InvalidParameterValue.ChannelIdMustBeNotEmpty"
            case channelListContainIllegalCharacter = "InvalidParameterValue.ChannelListContainIllegalCharacter"
            case channelListMustBeNotEmpty = "InvalidParameterValue.ChannelListMustBeNotEmpty"
            case channelNumberMustBeLessThanOneThousand = "InvalidParameterValue.ChannelNumberMustBeLessThanOneThousand"
            case containInvalidChannelId = "InvalidParameterValue.ContainInvalidChannelId"
            case dataOutOfRange = "InvalidParameterValue.DataOutOfRange"
            case deviceMismatchChannel = "InvalidParameterValue.DeviceMismatchChannel"
            case emptyChannelId = "InvalidParameterValue.EmptyChannelId"
            case emptyDeviceId = "InvalidParameterValue.EmptyDeviceId"
            case emptyName = "InvalidParameterValue.EmptyName"
            case emptyOrganizationId = "InvalidParameterValue.EmptyOrganizationId"
            case emptyTemplateId = "InvalidParameterValue.EmptyTemplateId"
            case endTimeZero = "InvalidParameterValue.EndTimeZero"
            case hasDuplicateOperTimeSlot = "InvalidParameterValue.HasDuplicateOperTimeSlot"
            case illegalChannelId = "InvalidParameterValue.IllegalChannelId"
            case illegalDescribe = "InvalidParameterValue.IllegalDescribe"
            case illegalDeviceId = "InvalidParameterValue.IllegalDeviceId"
            case illegalName = "InvalidParameterValue.IllegalName"
            case illegalOrganizationId = "InvalidParameterValue.IllegalOrganizationId"
            case illegalStreamType = "InvalidParameterValue.IllegalStreamType"
            case invalidAITaskDesc = "InvalidParameterValue.InvalidAITaskDesc"
            case invalidAITaskID = "InvalidParameterValue.InvalidAITaskID"
            case invalidAITaskName = "InvalidParameterValue.InvalidAITaskName"
            case invalidAITaskStatus = "InvalidParameterValue.InvalidAITaskStatus"
            case invalidAccessProtocol = "InvalidParameterValue.InvalidAccessProtocol"
            case invalidBeginAndEndTime = "InvalidParameterValue.InvalidBeginAndEndTime"
            case invalidBeginTime = "InvalidParameterValue.InvalidBeginTime"
            case invalidChannelId = "InvalidParameterValue.InvalidChannelId"
            case invalidChannelIdOrDeviceId = "InvalidParameterValue.InvalidChannelIdOrDeviceId"
            case invalidChannelName = "InvalidParameterValue.InvalidChannelName"
            case invalidClusterId = "InvalidParameterValue.InvalidClusterId"
            case invalidDescription = "InvalidParameterValue.InvalidDescription"
            case invalidDetectType = "InvalidParameterValue.InvalidDetectType"
            case invalidDeviceId = "InvalidParameterValue.InvalidDeviceId"
            case invalidDeviceName = "InvalidParameterValue.InvalidDeviceName"
            case invalidDevicePasswordLength = "InvalidParameterValue.InvalidDevicePasswordLength"
            case invalidDeviceStatus = "InvalidParameterValue.InvalidDeviceStatus"
            case invalidDeviceType = "InvalidParameterValue.InvalidDeviceType"
            case invalidDomain = "InvalidParameterValue.InvalidDomain"
            case invalidEndTime = "InvalidParameterValue.InvalidEndTime"
            case invalidExpiration = "InvalidParameterValue.InvalidExpiration"
            case invalidExpirationRange = "InvalidParameterValue.InvalidExpirationRange"
            case invalidFileType = "InvalidParameterValue.InvalidFileType"
            case invalidGatewayId = "InvalidParameterValue.InvalidGatewayId"
            case invalidGatewayProtocolType = "InvalidParameterValue.InvalidGatewayProtocolType"
            case invalidIpv4 = "InvalidParameterValue.InvalidIpv4"
            case invalidName = "InvalidParameterValue.InvalidName"
            case invalidOperTimeSlotFormat = "InvalidParameterValue.InvalidOperTimeSlotFormat"
            case invalidOrgName = "InvalidParameterValue.InvalidOrgName"
            case invalidOrganizationId = "InvalidParameterValue.InvalidOrganizationId"
            case invalidPageNumber = "InvalidParameterValue.InvalidPageNumber"
            case invalidPageSize = "InvalidParameterValue.InvalidPageSize"
            case invalidPlanId = "InvalidParameterValue.InvalidPlanId"
            case invalidPullState = "InvalidParameterValue.InvalidPullState"
            case invalidPushState = "InvalidParameterValue.InvalidPushState"
            case invalidRetrievalMode = "InvalidParameterValue.InvalidRetrievalMode"
            case invalidRetrieveTaskId = "InvalidParameterValue.InvalidRetrieveTaskId"
            case invalidSecret = "InvalidParameterValue.InvalidSecret"
            case invalidStartTimeOrEndTime = "InvalidParameterValue.InvalidStartTimeOrEndTime"
            case invalidStreamType = "InvalidParameterValue.InvalidStreamType"
            case invalidTemplateId = "InvalidParameterValue.InvalidTemplateId"
            case invalidTemplateTag = "InvalidParameterValue.InvalidTemplateTag"
            case invalidTimeFormat = "InvalidParameterValue.InvalidTimeFormat"
            case invalidTimeInterval = "InvalidParameterValue.InvalidTimeInterval"
            case invalidTimeSectionValue = "InvalidParameterValue.InvalidTimeSectionValue"
            case invalidTransitionRange = "InvalidParameterValue.InvalidTransitionRange"
            case invalidUsername = "InvalidParameterValue.InvalidUsername"
            case nonSameDay = "InvalidParameterValue.NonSameDay"
            case objectContainIllegalCharacter = "InvalidParameterValue.ObjectContainIllegalCharacter"
            case operTimeSlotContainIllegalCharacter = "InvalidParameterValue.OperTimeSlotContainIllegalCharacter"
            case operTimeSlotNumberMustBeLessThanFive = "InvalidParameterValue.OperTimeSlotNumberMustBeLessThanFive"
            case operTimeSlotStartMustBeLessThanEnd = "InvalidParameterValue.OperTimeSlotStartMustBeLessThanEnd"
            case orgNameRepeat = "InvalidParameterValue.OrgNameRepeat"
            case organizationCountExceedsRange = "InvalidParameterValue.OrganizationCountExceedsRange"
            case outOfTimeRange = "InvalidParameterValue.OutOfTimeRange"
            case planChannelsExceedsRange = "InvalidParameterValue.PlanChannelsExceedsRange"
            case retrieveTaskChannelsExceedsRange = "InvalidParameterValue.RetrieveTaskChannelsExceedsRange"
            case startOverEndTime = "InvalidParameterValue.StartOverEndTime"
            case startOverNowTime = "InvalidParameterValue.StartOverNowTime"
            case startTimeGreaterThanOrEqualEndTime = "InvalidParameterValue.StartTimeGreaterThanOrEqualEndTime"
            case startTimeZero = "InvalidParameterValue.StartTimeZero"
            case statusMustBeNotEmpty = "InvalidParameterValue.StatusMustBeNotEmpty"
            case templateTagMustBeConsistent = "InvalidParameterValue.TemplateTagMustBeConsistent"
            case timeLessThanTenMinutes = "InvalidParameterValue.TimeLessThanTenMinutes"
            case tooLongDescribe = "InvalidParameterValue.TooLongDescribe"
            case tooLongName = "InvalidParameterValue.TooLongName"
            case tooLongStreamType = "InvalidParameterValue.TooLongStreamType"
            case unSupportScale = "InvalidParameterValue.UnSupportScale"
            case unSupportedAccessType = "InvalidParameterValue.UnSupportedAccessType"
            case unSupportedPTZCMD = "InvalidParameterValue.UnSupportedPTZCMD"
            case unSupportedPresetCMD = "InvalidParameterValue.UnSupportedPresetCMD"
            case unSupportedScaleParam = "InvalidParameterValue.UnSupportedScaleParam"
            case unsupportedStreamProtocol = "InvalidParameterValue.UnsupportedStreamProtocol"
            case other = "InvalidParameterValue"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        public static var bakTimeNotEnough: InvalidParameterValue {
            InvalidParameterValue(.bakTimeNotEnough)
        }

        public static var callbackURLContainIllegalCharacter: InvalidParameterValue {
            InvalidParameterValue(.callbackURLContainIllegalCharacter)
        }

        public static var channelIdAlreadyExistsInOtherAITasks: InvalidParameterValue {
            InvalidParameterValue(.channelIdAlreadyExistsInOtherAITasks)
        }

        public static var channelIdMustBeNotEmpty: InvalidParameterValue {
            InvalidParameterValue(.channelIdMustBeNotEmpty)
        }

        public static var channelListContainIllegalCharacter: InvalidParameterValue {
            InvalidParameterValue(.channelListContainIllegalCharacter)
        }

        public static var channelListMustBeNotEmpty: InvalidParameterValue {
            InvalidParameterValue(.channelListMustBeNotEmpty)
        }

        public static var channelNumberMustBeLessThanOneThousand: InvalidParameterValue {
            InvalidParameterValue(.channelNumberMustBeLessThanOneThousand)
        }

        public static var containInvalidChannelId: InvalidParameterValue {
            InvalidParameterValue(.containInvalidChannelId)
        }

        public static var dataOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.dataOutOfRange)
        }

        public static var deviceMismatchChannel: InvalidParameterValue {
            InvalidParameterValue(.deviceMismatchChannel)
        }

        public static var emptyChannelId: InvalidParameterValue {
            InvalidParameterValue(.emptyChannelId)
        }

        public static var emptyDeviceId: InvalidParameterValue {
            InvalidParameterValue(.emptyDeviceId)
        }

        public static var emptyName: InvalidParameterValue {
            InvalidParameterValue(.emptyName)
        }

        public static var emptyOrganizationId: InvalidParameterValue {
            InvalidParameterValue(.emptyOrganizationId)
        }

        public static var emptyTemplateId: InvalidParameterValue {
            InvalidParameterValue(.emptyTemplateId)
        }

        public static var endTimeZero: InvalidParameterValue {
            InvalidParameterValue(.endTimeZero)
        }

        public static var hasDuplicateOperTimeSlot: InvalidParameterValue {
            InvalidParameterValue(.hasDuplicateOperTimeSlot)
        }

        public static var illegalChannelId: InvalidParameterValue {
            InvalidParameterValue(.illegalChannelId)
        }

        public static var illegalDescribe: InvalidParameterValue {
            InvalidParameterValue(.illegalDescribe)
        }

        public static var illegalDeviceId: InvalidParameterValue {
            InvalidParameterValue(.illegalDeviceId)
        }

        public static var illegalName: InvalidParameterValue {
            InvalidParameterValue(.illegalName)
        }

        public static var illegalOrganizationId: InvalidParameterValue {
            InvalidParameterValue(.illegalOrganizationId)
        }

        public static var illegalStreamType: InvalidParameterValue {
            InvalidParameterValue(.illegalStreamType)
        }

        public static var invalidAITaskDesc: InvalidParameterValue {
            InvalidParameterValue(.invalidAITaskDesc)
        }

        public static var invalidAITaskID: InvalidParameterValue {
            InvalidParameterValue(.invalidAITaskID)
        }

        public static var invalidAITaskName: InvalidParameterValue {
            InvalidParameterValue(.invalidAITaskName)
        }

        public static var invalidAITaskStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidAITaskStatus)
        }

        public static var invalidAccessProtocol: InvalidParameterValue {
            InvalidParameterValue(.invalidAccessProtocol)
        }

        public static var invalidBeginAndEndTime: InvalidParameterValue {
            InvalidParameterValue(.invalidBeginAndEndTime)
        }

        public static var invalidBeginTime: InvalidParameterValue {
            InvalidParameterValue(.invalidBeginTime)
        }

        public static var invalidChannelId: InvalidParameterValue {
            InvalidParameterValue(.invalidChannelId)
        }

        public static var invalidChannelIdOrDeviceId: InvalidParameterValue {
            InvalidParameterValue(.invalidChannelIdOrDeviceId)
        }

        public static var invalidChannelName: InvalidParameterValue {
            InvalidParameterValue(.invalidChannelName)
        }

        public static var invalidClusterId: InvalidParameterValue {
            InvalidParameterValue(.invalidClusterId)
        }

        public static var invalidDescription: InvalidParameterValue {
            InvalidParameterValue(.invalidDescription)
        }

        public static var invalidDetectType: InvalidParameterValue {
            InvalidParameterValue(.invalidDetectType)
        }

        public static var invalidDeviceId: InvalidParameterValue {
            InvalidParameterValue(.invalidDeviceId)
        }

        public static var invalidDeviceName: InvalidParameterValue {
            InvalidParameterValue(.invalidDeviceName)
        }

        public static var invalidDevicePasswordLength: InvalidParameterValue {
            InvalidParameterValue(.invalidDevicePasswordLength)
        }

        public static var invalidDeviceStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidDeviceStatus)
        }

        public static var invalidDeviceType: InvalidParameterValue {
            InvalidParameterValue(.invalidDeviceType)
        }

        public static var invalidDomain: InvalidParameterValue {
            InvalidParameterValue(.invalidDomain)
        }

        public static var invalidEndTime: InvalidParameterValue {
            InvalidParameterValue(.invalidEndTime)
        }

        public static var invalidExpiration: InvalidParameterValue {
            InvalidParameterValue(.invalidExpiration)
        }

        public static var invalidExpirationRange: InvalidParameterValue {
            InvalidParameterValue(.invalidExpirationRange)
        }

        public static var invalidFileType: InvalidParameterValue {
            InvalidParameterValue(.invalidFileType)
        }

        public static var invalidGatewayId: InvalidParameterValue {
            InvalidParameterValue(.invalidGatewayId)
        }

        public static var invalidGatewayProtocolType: InvalidParameterValue {
            InvalidParameterValue(.invalidGatewayProtocolType)
        }

        public static var invalidIpv4: InvalidParameterValue {
            InvalidParameterValue(.invalidIpv4)
        }

        public static var invalidName: InvalidParameterValue {
            InvalidParameterValue(.invalidName)
        }

        public static var invalidOperTimeSlotFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidOperTimeSlotFormat)
        }

        public static var invalidOrgName: InvalidParameterValue {
            InvalidParameterValue(.invalidOrgName)
        }

        public static var invalidOrganizationId: InvalidParameterValue {
            InvalidParameterValue(.invalidOrganizationId)
        }

        public static var invalidPageNumber: InvalidParameterValue {
            InvalidParameterValue(.invalidPageNumber)
        }

        public static var invalidPageSize: InvalidParameterValue {
            InvalidParameterValue(.invalidPageSize)
        }

        public static var invalidPlanId: InvalidParameterValue {
            InvalidParameterValue(.invalidPlanId)
        }

        public static var invalidPullState: InvalidParameterValue {
            InvalidParameterValue(.invalidPullState)
        }

        public static var invalidPushState: InvalidParameterValue {
            InvalidParameterValue(.invalidPushState)
        }

        public static var invalidRetrievalMode: InvalidParameterValue {
            InvalidParameterValue(.invalidRetrievalMode)
        }

        public static var invalidRetrieveTaskId: InvalidParameterValue {
            InvalidParameterValue(.invalidRetrieveTaskId)
        }

        public static var invalidSecret: InvalidParameterValue {
            InvalidParameterValue(.invalidSecret)
        }

        public static var invalidStartTimeOrEndTime: InvalidParameterValue {
            InvalidParameterValue(.invalidStartTimeOrEndTime)
        }

        public static var invalidStreamType: InvalidParameterValue {
            InvalidParameterValue(.invalidStreamType)
        }

        public static var invalidTemplateId: InvalidParameterValue {
            InvalidParameterValue(.invalidTemplateId)
        }

        public static var invalidTemplateTag: InvalidParameterValue {
            InvalidParameterValue(.invalidTemplateTag)
        }

        public static var invalidTimeFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidTimeFormat)
        }

        public static var invalidTimeInterval: InvalidParameterValue {
            InvalidParameterValue(.invalidTimeInterval)
        }

        public static var invalidTimeSectionValue: InvalidParameterValue {
            InvalidParameterValue(.invalidTimeSectionValue)
        }

        public static var invalidTransitionRange: InvalidParameterValue {
            InvalidParameterValue(.invalidTransitionRange)
        }

        public static var invalidUsername: InvalidParameterValue {
            InvalidParameterValue(.invalidUsername)
        }

        public static var nonSameDay: InvalidParameterValue {
            InvalidParameterValue(.nonSameDay)
        }

        public static var objectContainIllegalCharacter: InvalidParameterValue {
            InvalidParameterValue(.objectContainIllegalCharacter)
        }

        public static var operTimeSlotContainIllegalCharacter: InvalidParameterValue {
            InvalidParameterValue(.operTimeSlotContainIllegalCharacter)
        }

        public static var operTimeSlotNumberMustBeLessThanFive: InvalidParameterValue {
            InvalidParameterValue(.operTimeSlotNumberMustBeLessThanFive)
        }

        public static var operTimeSlotStartMustBeLessThanEnd: InvalidParameterValue {
            InvalidParameterValue(.operTimeSlotStartMustBeLessThanEnd)
        }

        public static var orgNameRepeat: InvalidParameterValue {
            InvalidParameterValue(.orgNameRepeat)
        }

        public static var organizationCountExceedsRange: InvalidParameterValue {
            InvalidParameterValue(.organizationCountExceedsRange)
        }

        /// 检查BeginTime开始时间和BndTime结束时间，时间长度大于0且不超过30分钟
        public static var outOfTimeRange: InvalidParameterValue {
            InvalidParameterValue(.outOfTimeRange)
        }

        public static var planChannelsExceedsRange: InvalidParameterValue {
            InvalidParameterValue(.planChannelsExceedsRange)
        }

        public static var retrieveTaskChannelsExceedsRange: InvalidParameterValue {
            InvalidParameterValue(.retrieveTaskChannelsExceedsRange)
        }

        public static var startOverEndTime: InvalidParameterValue {
            InvalidParameterValue(.startOverEndTime)
        }

        public static var startOverNowTime: InvalidParameterValue {
            InvalidParameterValue(.startOverNowTime)
        }

        public static var startTimeGreaterThanOrEqualEndTime: InvalidParameterValue {
            InvalidParameterValue(.startTimeGreaterThanOrEqualEndTime)
        }

        public static var startTimeZero: InvalidParameterValue {
            InvalidParameterValue(.startTimeZero)
        }

        public static var statusMustBeNotEmpty: InvalidParameterValue {
            InvalidParameterValue(.statusMustBeNotEmpty)
        }

        public static var templateTagMustBeConsistent: InvalidParameterValue {
            InvalidParameterValue(.templateTagMustBeConsistent)
        }

        public static var timeLessThanTenMinutes: InvalidParameterValue {
            InvalidParameterValue(.timeLessThanTenMinutes)
        }

        public static var tooLongDescribe: InvalidParameterValue {
            InvalidParameterValue(.tooLongDescribe)
        }

        public static var tooLongName: InvalidParameterValue {
            InvalidParameterValue(.tooLongName)
        }

        public static var tooLongStreamType: InvalidParameterValue {
            InvalidParameterValue(.tooLongStreamType)
        }

        public static var unSupportScale: InvalidParameterValue {
            InvalidParameterValue(.unSupportScale)
        }

        public static var unSupportedAccessType: InvalidParameterValue {
            InvalidParameterValue(.unSupportedAccessType)
        }

        public static var unSupportedPTZCMD: InvalidParameterValue {
            InvalidParameterValue(.unSupportedPTZCMD)
        }

        public static var unSupportedPresetCMD: InvalidParameterValue {
            InvalidParameterValue(.unSupportedPresetCMD)
        }

        public static var unSupportedScaleParam: InvalidParameterValue {
            InvalidParameterValue(.unSupportedScaleParam)
        }

        public static var unsupportedStreamProtocol: InvalidParameterValue {
            InvalidParameterValue(.unsupportedStreamProtocol)
        }

        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asIssError() -> TCIssError {
            let code: TCIssError.Code
            switch self.error {
            case .bakTimeNotEnough:
                code = .invalidParameterValue_BakTimeNotEnough
            case .callbackURLContainIllegalCharacter:
                code = .invalidParameterValue_CallbackURLContainIllegalCharacter
            case .channelIdAlreadyExistsInOtherAITasks:
                code = .invalidParameterValue_ChannelIdAlreadyExistsInOtherAITasks
            case .channelIdMustBeNotEmpty:
                code = .invalidParameterValue_ChannelIdMustBeNotEmpty
            case .channelListContainIllegalCharacter:
                code = .invalidParameterValue_ChannelListContainIllegalCharacter
            case .channelListMustBeNotEmpty:
                code = .invalidParameterValue_ChannelListMustBeNotEmpty
            case .channelNumberMustBeLessThanOneThousand:
                code = .invalidParameterValue_ChannelNumberMustBeLessThanOneThousand
            case .containInvalidChannelId:
                code = .invalidParameterValue_ContainInvalidChannelId
            case .dataOutOfRange:
                code = .invalidParameterValue_DataOutOfRange
            case .deviceMismatchChannel:
                code = .invalidParameterValue_DeviceMismatchChannel
            case .emptyChannelId:
                code = .invalidParameterValue_EmptyChannelId
            case .emptyDeviceId:
                code = .invalidParameterValue_EmptyDeviceId
            case .emptyName:
                code = .invalidParameterValue_EmptyName
            case .emptyOrganizationId:
                code = .invalidParameterValue_EmptyOrganizationId
            case .emptyTemplateId:
                code = .invalidParameterValue_EmptyTemplateId
            case .endTimeZero:
                code = .invalidParameterValue_EndTimeZero
            case .hasDuplicateOperTimeSlot:
                code = .invalidParameterValue_HasDuplicateOperTimeSlot
            case .illegalChannelId:
                code = .invalidParameterValue_IllegalChannelId
            case .illegalDescribe:
                code = .invalidParameterValue_IllegalDescribe
            case .illegalDeviceId:
                code = .invalidParameterValue_IllegalDeviceId
            case .illegalName:
                code = .invalidParameterValue_IllegalName
            case .illegalOrganizationId:
                code = .invalidParameterValue_IllegalOrganizationId
            case .illegalStreamType:
                code = .invalidParameterValue_IllegalStreamType
            case .invalidAITaskDesc:
                code = .invalidParameterValue_InvalidAITaskDesc
            case .invalidAITaskID:
                code = .invalidParameterValue_InvalidAITaskID
            case .invalidAITaskName:
                code = .invalidParameterValue_InvalidAITaskName
            case .invalidAITaskStatus:
                code = .invalidParameterValue_InvalidAITaskStatus
            case .invalidAccessProtocol:
                code = .invalidParameterValue_InvalidAccessProtocol
            case .invalidBeginAndEndTime:
                code = .invalidParameterValue_InvalidBeginAndEndTime
            case .invalidBeginTime:
                code = .invalidParameterValue_InvalidBeginTime
            case .invalidChannelId:
                code = .invalidParameterValue_InvalidChannelId
            case .invalidChannelIdOrDeviceId:
                code = .invalidParameterValue_InvalidChannelIdOrDeviceId
            case .invalidChannelName:
                code = .invalidParameterValue_InvalidChannelName
            case .invalidClusterId:
                code = .invalidParameterValue_InvalidClusterId
            case .invalidDescription:
                code = .invalidParameterValue_InvalidDescription
            case .invalidDetectType:
                code = .invalidParameterValue_InvalidDetectType
            case .invalidDeviceId:
                code = .invalidParameterValue_InvalidDeviceId
            case .invalidDeviceName:
                code = .invalidParameterValue_InvalidDeviceName
            case .invalidDevicePasswordLength:
                code = .invalidParameterValue_InvalidDevicePasswordLength
            case .invalidDeviceStatus:
                code = .invalidParameterValue_InvalidDeviceStatus
            case .invalidDeviceType:
                code = .invalidParameterValue_InvalidDeviceType
            case .invalidDomain:
                code = .invalidParameterValue_InvalidDomain
            case .invalidEndTime:
                code = .invalidParameterValue_InvalidEndTime
            case .invalidExpiration:
                code = .invalidParameterValue_InvalidExpiration
            case .invalidExpirationRange:
                code = .invalidParameterValue_InvalidExpirationRange
            case .invalidFileType:
                code = .invalidParameterValue_InvalidFileType
            case .invalidGatewayId:
                code = .invalidParameterValue_InvalidGatewayId
            case .invalidGatewayProtocolType:
                code = .invalidParameterValue_InvalidGatewayProtocolType
            case .invalidIpv4:
                code = .invalidParameterValue_InvalidIpv4
            case .invalidName:
                code = .invalidParameterValue_InvalidName
            case .invalidOperTimeSlotFormat:
                code = .invalidParameterValue_InvalidOperTimeSlotFormat
            case .invalidOrgName:
                code = .invalidParameterValue_InvalidOrgName
            case .invalidOrganizationId:
                code = .invalidParameterValue_InvalidOrganizationId
            case .invalidPageNumber:
                code = .invalidParameterValue_InvalidPageNumber
            case .invalidPageSize:
                code = .invalidParameterValue_InvalidPageSize
            case .invalidPlanId:
                code = .invalidParameterValue_InvalidPlanId
            case .invalidPullState:
                code = .invalidParameterValue_InvalidPullState
            case .invalidPushState:
                code = .invalidParameterValue_InvalidPushState
            case .invalidRetrievalMode:
                code = .invalidParameterValue_InvalidRetrievalMode
            case .invalidRetrieveTaskId:
                code = .invalidParameterValue_InvalidRetrieveTaskId
            case .invalidSecret:
                code = .invalidParameterValue_InvalidSecret
            case .invalidStartTimeOrEndTime:
                code = .invalidParameterValue_InvalidStartTimeOrEndTime
            case .invalidStreamType:
                code = .invalidParameterValue_InvalidStreamType
            case .invalidTemplateId:
                code = .invalidParameterValue_InvalidTemplateId
            case .invalidTemplateTag:
                code = .invalidParameterValue_InvalidTemplateTag
            case .invalidTimeFormat:
                code = .invalidParameterValue_InvalidTimeFormat
            case .invalidTimeInterval:
                code = .invalidParameterValue_InvalidTimeInterval
            case .invalidTimeSectionValue:
                code = .invalidParameterValue_InvalidTimeSectionValue
            case .invalidTransitionRange:
                code = .invalidParameterValue_InvalidTransitionRange
            case .invalidUsername:
                code = .invalidParameterValue_InvalidUsername
            case .nonSameDay:
                code = .invalidParameterValue_NonSameDay
            case .objectContainIllegalCharacter:
                code = .invalidParameterValue_ObjectContainIllegalCharacter
            case .operTimeSlotContainIllegalCharacter:
                code = .invalidParameterValue_OperTimeSlotContainIllegalCharacter
            case .operTimeSlotNumberMustBeLessThanFive:
                code = .invalidParameterValue_OperTimeSlotNumberMustBeLessThanFive
            case .operTimeSlotStartMustBeLessThanEnd:
                code = .invalidParameterValue_OperTimeSlotStartMustBeLessThanEnd
            case .orgNameRepeat:
                code = .invalidParameterValue_OrgNameRepeat
            case .organizationCountExceedsRange:
                code = .invalidParameterValue_OrganizationCountExceedsRange
            case .outOfTimeRange:
                code = .invalidParameterValue_OutOfTimeRange
            case .planChannelsExceedsRange:
                code = .invalidParameterValue_PlanChannelsExceedsRange
            case .retrieveTaskChannelsExceedsRange:
                code = .invalidParameterValue_RetrieveTaskChannelsExceedsRange
            case .startOverEndTime:
                code = .invalidParameterValue_StartOverEndTime
            case .startOverNowTime:
                code = .invalidParameterValue_StartOverNowTime
            case .startTimeGreaterThanOrEqualEndTime:
                code = .invalidParameterValue_StartTimeGreaterThanOrEqualEndTime
            case .startTimeZero:
                code = .invalidParameterValue_StartTimeZero
            case .statusMustBeNotEmpty:
                code = .invalidParameterValue_StatusMustBeNotEmpty
            case .templateTagMustBeConsistent:
                code = .invalidParameterValue_TemplateTagMustBeConsistent
            case .timeLessThanTenMinutes:
                code = .invalidParameterValue_TimeLessThanTenMinutes
            case .tooLongDescribe:
                code = .invalidParameterValue_TooLongDescribe
            case .tooLongName:
                code = .invalidParameterValue_TooLongName
            case .tooLongStreamType:
                code = .invalidParameterValue_TooLongStreamType
            case .unSupportScale:
                code = .invalidParameterValue_UnSupportScale
            case .unSupportedAccessType:
                code = .invalidParameterValue_UnSupportedAccessType
            case .unSupportedPTZCMD:
                code = .invalidParameterValue_UnSupportedPTZCMD
            case .unSupportedPresetCMD:
                code = .invalidParameterValue_UnSupportedPresetCMD
            case .unSupportedScaleParam:
                code = .invalidParameterValue_UnSupportedScaleParam
            case .unsupportedStreamProtocol:
                code = .invalidParameterValue_UnsupportedStreamProtocol
            case .other:
                code = .invalidParameterValue
            }
            return TCIssError(code, context: self.context)
        }
    }
}
