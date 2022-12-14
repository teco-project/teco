//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

/// Service error type returned by `Iotcloud`.
public protocol TCIotcloudErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCIotcloudError``.
    ///
    /// - Returns: ``TCIotcloudError`` that holds the same error code and context.
    func asIotcloudError() -> TCIotcloudError
}

public struct TCIotcloudError: TCIotcloudErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_AccountIsolated = "FailedOperation.AccountIsolated"
        case failedOperation_AlreadyDistributionDevice = "FailedOperation.AlreadyDistributionDevice"
        case failedOperation_BindDeviceOverLimit = "FailedOperation.BindDeviceOverLimit"
        case failedOperation_BroadcastTaskIsRunning = "FailedOperation.BroadcastTaskIsRunning"
        case failedOperation_DeviceAlreadyDisabled = "FailedOperation.DeviceAlreadyDisabled"
        case failedOperation_DeviceFirmwareTaskAlreadDone = "FailedOperation.DeviceFirmwareTaskAlreadDone"
        case failedOperation_DeviceIsUpdating = "FailedOperation.DeviceIsUpdating"
        case failedOperation_DeviceNoSubscription = "FailedOperation.DeviceNoSubscription"
        case failedOperation_DeviceOffline = "FailedOperation.DeviceOffline"
        case failedOperation_DeviceRunningOtherOtaTask = "FailedOperation.DeviceRunningOtherOtaTask"
        case failedOperation_DuplicationOfFunctionItem = "FailedOperation.DuplicationOfFunctionItem"
        case failedOperation_FunctionFileNotExist = "FailedOperation.FunctionFileNotExist"
        case failedOperation_InvalidMsgLen = "FailedOperation.InvalidMsgLen"
        case failedOperation_InvalidTopicName = "FailedOperation.InvalidTopicName"
        case failedOperation_ProductNotBind = "FailedOperation.ProductNotBind"
        case failedOperation_ProductResourceDuplicate = "FailedOperation.ProductResourceDuplicate"
        case failedOperation_ProxyIPIsNotEnough = "FailedOperation.ProxyIPIsNotEnough"
        case failedOperation_RRPCTimeout = "FailedOperation.RRPCTimeout"
        case failedOperation_RuleAlreadyDisabled = "FailedOperation.RuleAlreadyDisabled"
        case failedOperation_RuleAlreadyEnabled = "FailedOperation.RuleAlreadyEnabled"
        case failedOperation_TidWhiteListNotOpen = "FailedOperation.TidWhiteListNotOpen"
        case failedOperation_UpdateVersionNotMatch = "FailedOperation.UpdateVersionNotMatch"
        case internalError = "InternalError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ActionNil = "InvalidParameterValue.ActionNil"
        case invalidParameterValue_CACertInvalid = "InvalidParameterValue.CACertInvalid"
        case invalidParameterValue_CACertNotMatch = "InvalidParameterValue.CACertNotMatch"
        case invalidParameterValue_CheckForwardURLFail = "InvalidParameterValue.CheckForwardURLFail"
        case invalidParameterValue_CloudComponentAlreadyExist = "InvalidParameterValue.CloudComponentAlreadyExist"
        case invalidParameterValue_DefinedPskNotBase64 = "InvalidParameterValue.DefinedPskNotBase64"
        case invalidParameterValue_DeviceAlreadyExist = "InvalidParameterValue.DeviceAlreadyExist"
        case invalidParameterValue_DeviceIsNotGateway = "InvalidParameterValue.DeviceIsNotGateway"
        case invalidParameterValue_FailActionHasSameDevice = "InvalidParameterValue.FailActionHasSameDevice"
        case invalidParameterValue_FirmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
        case invalidParameterValue_ForwardRedirectDenied = "InvalidParameterValue.ForwardRedirectDenied"
        case invalidParameterValue_InvalidJSON = "InvalidParameterValue.InvalidJSON"
        case invalidParameterValue_InvalidSQL = "InvalidParameterValue.InvalidSQL"
        case invalidParameterValue_JSONHasInvalidNode = "InvalidParameterValue.JSONHasInvalidNode"
        case invalidParameterValue_JSONSizeExceedLimit = "InvalidParameterValue.JSONSizeExceedLimit"
        case invalidParameterValue_NotMergeAble = "InvalidParameterValue.NotMergeAble"
        case invalidParameterValue_OperationDenied = "InvalidParameterValue.OperationDenied"
        case invalidParameterValue_ParamIncomplete = "InvalidParameterValue.ParamIncomplete"
        case invalidParameterValue_PayloadOverLimit = "InvalidParameterValue.PayloadOverLimit"
        case invalidParameterValue_PrefixInvalid = "InvalidParameterValue.PrefixInvalid"
        case invalidParameterValue_ProductAlreadyExist = "InvalidParameterValue.ProductAlreadyExist"
        case invalidParameterValue_ProductTypeNotSupport = "InvalidParameterValue.ProductTypeNotSupport"
        case invalidParameterValue_RepublishTopicFormatError = "InvalidParameterValue.RepublishTopicFormatError"
        case invalidParameterValue_RuleNumberBeyondLimit = "InvalidParameterValue.RuleNumberBeyondLimit"
        case invalidParameterValue_TidProductAlreadyExist = "InvalidParameterValue.TidProductAlreadyExist"
        case invalidParameterValue_TopicPolicyAlreadyExist = "InvalidParameterValue.TopicPolicyAlreadyExist"
        case invalidParameterValue_TopicRuleAlreadyExist = "InvalidParameterValue.TopicRuleAlreadyExist"
        case invalidParameterValue_TopicRuleSqlNotEdited = "InvalidParameterValue.TopicRuleSqlNotEdited"
        case invalidParameterValue_UpdateTopicRuleDBFail = "InvalidParameterValue.UpdateTopicRuleDBFail"
        case limitExceeded_CAAlreadyBindProduct = "LimitExceeded.CAAlreadyBindProduct"
        case limitExceeded_CACertNameRepeat = "LimitExceeded.CACertNameRepeat"
        case limitExceeded_CACertNotSupport = "LimitExceeded.CACertNotSupport"
        case limitExceeded_CARepeat = "LimitExceeded.CARepeat"
        case limitExceeded_DeviceExceedLimit = "LimitExceeded.DeviceExceedLimit"
        case limitExceeded_FirmwareExceedLimit = "LimitExceeded.FirmwareExceedLimit"
        case limitExceeded_MessageSaved = "LimitExceeded.MessageSaved"
        case limitExceeded_OfflineMessageExceedLimit = "LimitExceeded.OfflineMessageExceedLimit"
        case limitExceeded_ProductExceedLimit = "LimitExceeded.ProductExceedLimit"
        case limitExceeded_TopicPolicyExceedLimit = "LimitExceeded.TopicPolicyExceedLimit"
        case resourceNotFound_CACertNotExist = "ResourceNotFound.CACertNotExist"
        case resourceNotFound_CreateMultiDeviceTaskNotExist = "ResourceNotFound.CreateMultiDeviceTaskNotExist"
        case resourceNotFound_DeviceFirmwareTaskNotExist = "ResourceNotFound.DeviceFirmwareTaskNotExist"
        case resourceNotFound_DeviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
        case resourceNotFound_DeviceNotExist = "ResourceNotFound.DeviceNotExist"
        case resourceNotFound_DeviceResourceNotExist = "ResourceNotFound.DeviceResourceNotExist"
        case resourceNotFound_DeviceShadowNotExist = "ResourceNotFound.DeviceShadowNotExist"
        case resourceNotFound_FirmwareNotExist = "ResourceNotFound.FirmwareNotExist"
        case resourceNotFound_FirmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
        case resourceNotFound_ProductNotExist = "ResourceNotFound.ProductNotExist"
        case resourceNotFound_ProductOrDeviceNotExist = "ResourceNotFound.ProductOrDeviceNotExist"
        case resourceNotFound_ProductResourceNotExist = "ResourceNotFound.ProductResourceNotExist"
        case resourceNotFound_ResourceFileNotExist = "ResourceNotFound.ResourceFileNotExist"
        case resourceNotFound_TaskNotExist = "ResourceNotFound.TaskNotExist"
        case resourceNotFound_ThingModelNotExist = "ResourceNotFound.ThingModelNotExist"
        case resourceNotFound_TopicPolicyNotExist = "ResourceNotFound.TopicPolicyNotExist"
        case resourceNotFound_TopicRuleNotExist = "ResourceNotFound.TopicRuleNotExist"
        case unauthorizedOperation_DeleteTidFail = "UnauthorizedOperation.DeleteTidFail"
        case unauthorizedOperation_DeviceHasAlreadyBindGateway = "UnauthorizedOperation.DeviceHasAlreadyBindGateway"
        case unauthorizedOperation_DeviceIsNotEnabled = "UnauthorizedOperation.DeviceIsNotEnabled"
        case unauthorizedOperation_DevicesExistUnderProduct = "UnauthorizedOperation.DevicesExistUnderProduct"
        case unauthorizedOperation_GatewayHasBindedDevices = "UnauthorizedOperation.GatewayHasBindedDevices"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unauthorizedOperation_ProductCantHaveLoRaDevice = "UnauthorizedOperation.ProductCantHaveLoRaDevice"
        case unauthorizedOperation_ProductCantHaveNormalDevice = "UnauthorizedOperation.ProductCantHaveNormalDevice"
        case unauthorizedOperation_ProductCantHaveNotLoRaDevice = "UnauthorizedOperation.ProductCantHaveNotLoRaDevice"
        case unauthorizedOperation_ProductIsForbidden = "UnauthorizedOperation.ProductIsForbidden"
        case unauthorizedOperation_ProductNotSupportPSK = "UnauthorizedOperation.ProductNotSupportPSK"
        case unauthorizedOperation_UserNotAuthenticaed = "UnauthorizedOperation.UserNotAuthenticaed"
        case unsupportedOperation_ClientCertAlreadyGot = "UnsupportedOperation.ClientCertAlreadyGot"
        case unsupportedOperation_DeviceOtaTaskInProgress = "UnsupportedOperation.DeviceOtaTaskInProgress"
        case unsupportedOperation_GatewayProductHasBindedProduct = "UnsupportedOperation.GatewayProductHasBindedProduct"
        case unsupportedOperation_ProductHasBindGateway = "UnsupportedOperation.ProductHasBindGateway"
        case unsupportedOperation_ProductHasBindedGatewayProduct = "UnsupportedOperation.ProductHasBindedGatewayProduct"
        case unsupportedOperation_SuiteTokenNoCreate = "UnsupportedOperation.SuiteTokenNoCreate"
        case unsupportedOperation_WrongProductAuthType = "UnsupportedOperation.WrongProductAuthType"
    }

    /// Error domains affliated to ``TCIotcloudError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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

    /// ???????????????
    public static var failedOperation: TCIotcloudError {
        TCIotcloudError(.failedOperation)
    }

    /// ???????????????????????????????????????
    ///
    /// ?????????????????????????????????????????????
    public static var failedOperation_AccountIsolated: TCIotcloudError {
        TCIotcloudError(.failedOperation_AccountIsolated)
    }

    /// ???????????????????????????????????????
    public static var failedOperation_AlreadyDistributionDevice: TCIotcloudError {
        TCIotcloudError(.failedOperation_AlreadyDistributionDevice)
    }

    /// ???????????????????????????
    public static var failedOperation_BindDeviceOverLimit: TCIotcloudError {
        TCIotcloudError(.failedOperation_BindDeviceOverLimit)
    }

    /// ???????????????????????????
    public static var failedOperation_BroadcastTaskIsRunning: TCIotcloudError {
        TCIotcloudError(.failedOperation_BroadcastTaskIsRunning)
    }

    /// ????????????????????????
    public static var failedOperation_DeviceAlreadyDisabled: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceAlreadyDisabled)
    }

    /// ???????????????????????????????????????
    public static var failedOperation_DeviceFirmwareTaskAlreadDone: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceFirmwareTaskAlreadDone)
    }

    /// ????????????????????????
    public static var failedOperation_DeviceIsUpdating: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceIsUpdating)
    }

    /// ???????????????????????????topic???
    public static var failedOperation_DeviceNoSubscription: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceNoSubscription)
    }

    /// ???????????????
    public static var failedOperation_DeviceOffline: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceOffline)
    }

    /// ????????????????????????ota???????????????
    public static var failedOperation_DeviceRunningOtherOtaTask: TCIotcloudError {
        TCIotcloudError(.failedOperation_DeviceRunningOtherOtaTask)
    }

    /// ??????????????????????????????
    public static var failedOperation_DuplicationOfFunctionItem: TCIotcloudError {
        TCIotcloudError(.failedOperation_DuplicationOfFunctionItem)
    }

    /// ????????????????????????
    public static var failedOperation_FunctionFileNotExist: TCIotcloudError {
        TCIotcloudError(.failedOperation_FunctionFileNotExist)
    }

    /// ?????????????????????
    public static var failedOperation_InvalidMsgLen: TCIotcloudError {
        TCIotcloudError(.failedOperation_InvalidMsgLen)
    }

    /// ??????topic?????????
    public static var failedOperation_InvalidTopicName: TCIotcloudError {
        TCIotcloudError(.failedOperation_InvalidTopicName)
    }

    /// ???????????????????????????????????????
    public static var failedOperation_ProductNotBind: TCIotcloudError {
        TCIotcloudError(.failedOperation_ProductNotBind)
    }

    /// ??????????????????????????????
    public static var failedOperation_ProductResourceDuplicate: TCIotcloudError {
        TCIotcloudError(.failedOperation_ProductResourceDuplicate)
    }

    /// ??????ip????????????????????????
    public static var failedOperation_ProxyIPIsNotEnough: TCIotcloudError {
        TCIotcloudError(.failedOperation_ProxyIPIsNotEnough)
    }

    /// RRPC?????????????????????????????????
    public static var failedOperation_RRPCTimeout: TCIotcloudError {
        TCIotcloudError(.failedOperation_RRPCTimeout)
    }

    /// ???????????????????????????????????????????????????????????????
    public static var failedOperation_RuleAlreadyDisabled: TCIotcloudError {
        TCIotcloudError(.failedOperation_RuleAlreadyDisabled)
    }

    /// ??????????????????????????????
    public static var failedOperation_RuleAlreadyEnabled: TCIotcloudError {
        TCIotcloudError(.failedOperation_RuleAlreadyEnabled)
    }

    /// ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    public static var failedOperation_TidWhiteListNotOpen: TCIotcloudError {
        TCIotcloudError(.failedOperation_TidWhiteListNotOpen)
    }

    /// ????????????????????????
    public static var failedOperation_UpdateVersionNotMatch: TCIotcloudError {
        TCIotcloudError(.failedOperation_UpdateVersionNotMatch)
    }

    /// ???????????????
    public static var internalError: TCIotcloudError {
        TCIotcloudError(.internalError)
    }

    public static var internalError_DBOperationError: TCIotcloudError {
        TCIotcloudError(.internalError_DBOperationError)
    }

    /// ???????????????
    public static var invalidParameter: TCIotcloudError {
        TCIotcloudError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue)
    }

    /// ????????????????????????
    public static var invalidParameterValue_ActionNil: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ActionNil)
    }

    /// CA?????????????????????
    public static var invalidParameterValue_CACertInvalid: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CACertInvalid)
    }

    /// CA????????????????????????
    public static var invalidParameterValue_CACertNotMatch: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CACertNotMatch)
    }

    /// ???????????????URL??????????????????
    public static var invalidParameterValue_CheckForwardURLFail: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CheckForwardURLFail)
    }

    /// ???????????????????????????????????????????????????????????????????????????
    public static var invalidParameterValue_CloudComponentAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_CloudComponentAlreadyExist)
    }

    /// ???????????????DefinedPsk??????Base64?????????????????????
    public static var invalidParameterValue_DefinedPskNotBase64: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_DefinedPskNotBase64)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_DeviceAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_DeviceAlreadyExist)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_DeviceIsNotGateway: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_DeviceIsNotGateway)
    }

    /// ?????????????????????????????????????????????????????????????????????????????????
    public static var invalidParameterValue_FailActionHasSameDevice: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_FailActionHasSameDevice)
    }

    /// ??????????????????
    public static var invalidParameterValue_FirmwareAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_FirmwareAlreadyExist)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_ForwardRedirectDenied: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ForwardRedirectDenied)
    }

    /// JSON???????????????
    public static var invalidParameterValue_InvalidJSON: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_InvalidJSON)
    }

    /// SQL???????????????????????????
    public static var invalidParameterValue_InvalidSQL: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_InvalidSQL)
    }

    /// State JSON??????????????????????????????
    public static var invalidParameterValue_JSONHasInvalidNode: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_JSONHasInvalidNode)
    }

    /// State JSON???????????????????????????????????? 8k???
    public static var invalidParameterValue_JSONSizeExceedLimit: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_JSONSizeExceedLimit)
    }

    /// ???????????????
    public static var invalidParameterValue_NotMergeAble: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_NotMergeAble)
    }

    /// ?????????????????????????????????
    ///
    /// ??????????????????????????????????????????
    public static var invalidParameterValue_OperationDenied: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_OperationDenied)
    }

    /// ????????????????????????????????????
    public static var invalidParameterValue_ParamIncomplete: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ParamIncomplete)
    }

    /// ??????Payload???????????????
    public static var invalidParameterValue_PayloadOverLimit: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_PayloadOverLimit)
    }

    /// prefix????????????
    public static var invalidParameterValue_PrefixInvalid: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_PrefixInvalid)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_ProductAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ProductAlreadyExist)
    }

    /// ????????????????????????
    public static var invalidParameterValue_ProductTypeNotSupport: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_ProductTypeNotSupport)
    }

    /// ?????????topic???????????????
    public static var invalidParameterValue_RepublishTopicFormatError: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_RepublishTopicFormatError)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_RuleNumberBeyondLimit: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_RuleNumberBeyondLimit)
    }

    /// ???TID??????????????????
    public static var invalidParameterValue_TidProductAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TidProductAlreadyExist)
    }

    /// Topic????????????
    public static var invalidParameterValue_TopicPolicyAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TopicPolicyAlreadyExist)
    }

    /// ??????????????????
    public static var invalidParameterValue_TopicRuleAlreadyExist: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TopicRuleAlreadyExist)
    }

    /// ??????sql????????????
    public static var invalidParameterValue_TopicRuleSqlNotEdited: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_TopicRuleSqlNotEdited)
    }

    /// ?????????????????????????????????????????????
    ///
    /// ??????????????????????????????????????????????????????????????????????????????
    public static var invalidParameterValue_UpdateTopicRuleDBFail: TCIotcloudError {
        TCIotcloudError(.invalidParameterValue_UpdateTopicRuleDBFail)
    }

    /// CA?????????????????????????????????????????????
    public static var limitExceeded_CAAlreadyBindProduct: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CAAlreadyBindProduct)
    }

    /// CA?????????????????????
    public static var limitExceeded_CACertNameRepeat: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CACertNameRepeat)
    }

    /// ??????????????????????????????
    public static var limitExceeded_CACertNotSupport: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CACertNotSupport)
    }

    /// CA???????????????
    public static var limitExceeded_CARepeat: TCIotcloudError {
        TCIotcloudError(.limitExceeded_CARepeat)
    }

    /// ???????????????????????????
    public static var limitExceeded_DeviceExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_DeviceExceedLimit)
    }

    /// ???????????????????????????
    public static var limitExceeded_FirmwareExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_FirmwareExceedLimit)
    }

    /// ????????????????????????????????????
    public static var limitExceeded_MessageSaved: TCIotcloudError {
        TCIotcloudError(.limitExceeded_MessageSaved)
    }

    /// qos???1????????????????????????????????????
    public static var limitExceeded_OfflineMessageExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_OfflineMessageExceedLimit)
    }

    /// ???????????????????????????
    public static var limitExceeded_ProductExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_ProductExceedLimit)
    }

    /// Topic?????????????????????
    public static var limitExceeded_TopicPolicyExceedLimit: TCIotcloudError {
        TCIotcloudError(.limitExceeded_TopicPolicyExceedLimit)
    }

    /// CA??????????????????
    public static var resourceNotFound_CACertNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_CACertNotExist)
    }

    /// ????????????????????????????????????
    public static var resourceNotFound_CreateMultiDeviceTaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_CreateMultiDeviceTaskNotExist)
    }

    /// ????????????????????????????????????
    public static var resourceNotFound_DeviceFirmwareTaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceFirmwareTaskNotExist)
    }

    /// ????????????????????????
    public static var resourceNotFound_DeviceHasNoFirmware: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceHasNoFirmware)
    }

    /// ??????????????????
    public static var resourceNotFound_DeviceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceNotExist)
    }

    /// ????????????????????????
    public static var resourceNotFound_DeviceResourceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceResourceNotExist)
    }

    /// ????????????????????????
    public static var resourceNotFound_DeviceShadowNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_DeviceShadowNotExist)
    }

    /// ??????????????????
    public static var resourceNotFound_FirmwareNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_FirmwareNotExist)
    }

    /// ??????????????????????????????
    public static var resourceNotFound_FirmwareTaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_FirmwareTaskNotExist)
    }

    /// ??????????????????
    public static var resourceNotFound_ProductNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ProductNotExist)
    }

    /// ????????????????????????????????????
    public static var resourceNotFound_ProductOrDeviceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ProductOrDeviceNotExist)
    }

    /// ????????????????????????
    public static var resourceNotFound_ProductResourceNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ProductResourceNotExist)
    }

    /// ????????????????????????
    public static var resourceNotFound_ResourceFileNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ResourceFileNotExist)
    }

    /// ??????????????????
    public static var resourceNotFound_TaskNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_TaskNotExist)
    }

    /// ?????????????????????
    public static var resourceNotFound_ThingModelNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_ThingModelNotExist)
    }

    /// Topic????????????
    public static var resourceNotFound_TopicPolicyNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_TopicPolicyNotExist)
    }

    /// ??????????????????
    public static var resourceNotFound_TopicRuleNotExist: TCIotcloudError {
        TCIotcloudError(.resourceNotFound_TopicRuleNotExist)
    }

    /// ??????????????????TID????????????????????????
    public static var unauthorizedOperation_DeleteTidFail: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DeleteTidFail)
    }

    /// ????????????????????????????????????????????????
    public static var unauthorizedOperation_DeviceHasAlreadyBindGateway: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DeviceHasAlreadyBindGateway)
    }

    /// ??????????????????
    public static var unauthorizedOperation_DeviceIsNotEnabled: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DeviceIsNotEnabled)
    }

    /// ????????????????????????????????????????????????
    public static var unauthorizedOperation_DevicesExistUnderProduct: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_DevicesExistUnderProduct)
    }

    /// ????????????????????????????????????
    public static var unauthorizedOperation_GatewayHasBindedDevices: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_GatewayHasBindedDevices)
    }

    /// ???????????????
    public static var unauthorizedOperation_PermissionDenied: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_PermissionDenied)
    }

    /// ???????????????????????????LoRa?????????
    public static var unauthorizedOperation_ProductCantHaveLoRaDevice: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductCantHaveLoRaDevice)
    }

    /// NB-IoT????????????????????????????????????
    public static var unauthorizedOperation_ProductCantHaveNormalDevice: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductCantHaveNormalDevice)
    }

    /// ???????????????????????????LoRa?????????
    public static var unauthorizedOperation_ProductCantHaveNotLoRaDevice: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductCantHaveNotLoRaDevice)
    }

    /// ???????????????????????????
    public static var unauthorizedOperation_ProductIsForbidden: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductIsForbidden)
    }

    /// ??????????????????????????????
    public static var unauthorizedOperation_ProductNotSupportPSK: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_ProductNotSupportPSK)
    }

    /// ??????????????????????????????
    public static var unauthorizedOperation_UserNotAuthenticaed: TCIotcloudError {
        TCIotcloudError(.unauthorizedOperation_UserNotAuthenticaed)
    }

    /// ???????????????????????????
    public static var unsupportedOperation_ClientCertAlreadyGot: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_ClientCertAlreadyGot)
    }

    /// ??????ota????????????
    public static var unsupportedOperation_DeviceOtaTaskInProgress: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_DeviceOtaTaskInProgress)
    }

    /// ?????????????????????????????????????????????????????????
    public static var unsupportedOperation_GatewayProductHasBindedProduct: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_GatewayProductHasBindedProduct)
    }

    /// ??????????????????????????????????????????????????????
    public static var unsupportedOperation_ProductHasBindGateway: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_ProductHasBindGateway)
    }

    /// ???????????????????????????????????????????????????
    public static var unsupportedOperation_ProductHasBindedGatewayProduct: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_ProductHasBindedGatewayProduct)
    }

    /// ?????????Suite token?????????????????????????????????
    public static var unsupportedOperation_SuiteTokenNoCreate: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_SuiteTokenNoCreate)
    }

    /// ???????????????????????????
    public static var unsupportedOperation_WrongProductAuthType: TCIotcloudError {
        TCIotcloudError(.unsupportedOperation_WrongProductAuthType)
    }

    public func asIotcloudError() -> TCIotcloudError {
        return self
    }
}
