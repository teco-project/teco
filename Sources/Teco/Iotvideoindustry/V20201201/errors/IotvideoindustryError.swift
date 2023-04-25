//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import TecoCore

/// Service error type returned by `Iotvideoindustry`.
public protocol TCIotvideoindustryErrorType: TCServiceErrorType {
    /// Get the service error as ``TCIotvideoindustryError``.
    ///
    /// - Returns: ``TCIotvideoindustryError`` that holds the same error code and context.
    func asIotvideoindustryError() -> TCIotvideoindustryError
}

public struct TCIotvideoindustryError: TCIotvideoindustryErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case internalError_InternalServerException = "InternalError.InternalServerException"
        case internalError_InternalServerExceptionDB = "InternalError.InternalServerExceptionDB"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BalanceNotEnough = "InvalidParameterValue.BalanceNotEnough"
        case invalidParameterValue_DeviceDataMapError = "InvalidParameterValue.DeviceDataMapError"
        case invalidParameterValue_DeviceId = "InvalidParameterValue.DeviceId"
        case invalidParameterValue_DeviceInfoNotExist = "InvalidParameterValue.DeviceInfoNotExist"
        case invalidParameterValue_DeviceOffline = "InvalidParameterValue.DeviceOffline"
        case invalidParameterValue_DeviceOnline = "InvalidParameterValue.DeviceOnline"
        case invalidParameterValue_DeviceTypeNotSupport = "InvalidParameterValue.DeviceTypeNotSupport"
        case invalidParameterValue_DomainId = "InvalidParameterValue.DomainId"
        case invalidParameterValue_ExpireTime = "InvalidParameterValue.ExpireTime"
        case invalidParameterValue_GroupDomainidExtraInformation = "InvalidParameterValue.GroupDomainidExtraInformation"
        case invalidParameterValue_GroupDomainidNotUpdate = "InvalidParameterValue.GroupDomainidNotUpdate"
        case invalidParameterValue_GroupParmsError = "InvalidParameterValue.GroupParmsError"
        case invalidParameterValue_RecordNotExist = "InvalidParameterValue.RecordNotExist"
        case invalidParameterValue_RecordPlanBeyondLimit = "InvalidParameterValue.RecordPlanBeyondLimit"
        case invalidParameterValue_RuleLimit = "InvalidParameterValue.RuleLimit"
        case invalidParameterValue_RuleNotExist = "InvalidParameterValue.RuleNotExist"
        case invalidParameterValue_StreamId = "InvalidParameterValue.StreamId"
        case invalidParameterValue_StreamInfoNotExist = "InvalidParameterValue.StreamInfoNotExist"
        case invalidParameterValue_TemplateBeyondLimit = "InvalidParameterValue.TemplateBeyondLimit"
        case invalidParameterValue_TemplateSpecEmpty = "InvalidParameterValue.TemplateSpecEmpty"
        case invalidParameterValue_TimeSpecNotSupport = "InvalidParameterValue.TimeSpecNotSupport"
        case invalidParameterValue_TypeNotSupport = "InvalidParameterValue.TypeNotSupport"
        case invalidParameter_DeviceOnline = "InvalidParameter.DeviceOnline"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_DeviceNotExist = "ResourceNotFound.DeviceNotExist"
        case resourceNotFound_DeviceSipPTZError = "ResourceNotFound.DeviceSipPTZError"
        case resourceNotFound_GroupNotExist = "ResourceNotFound.GroupNotExist"
        case resourceNotFound_PlanNotExist = "ResourceNotFound.PlanNotExist"
        case resourceNotFound_ResourceNotFound = "ResourceNotFound.ResourceNotFound"
        case resourceNotFound_StatDataNotExist = "ResourceNotFound.StatDataNotExist"
        case resourceNotFound_TemplateNotExist = "ResourceNotFound.TemplateNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_GBProtocolExecException = "ResourceUnavailable.GBProtocolExecException"
        case resourceUnavailable_StreamInfoException = "ResourceUnavailable.StreamInfoException"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_GroupExist = "UnauthorizedOperation.GroupExist"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_BindExist = "UnsupportedOperation.BindExist"
        case unsupportedOperation_DeviceBindExist = "UnsupportedOperation.DeviceBindExist"
        case unsupportedOperation_DeviceCanNotDo = "UnsupportedOperation.DeviceCanNotDo"
        case unsupportedOperation_DeviceDupKeyExist = "UnsupportedOperation.DeviceDupKeyExist"
        case unsupportedOperation_DeviceMissMatch = "UnsupportedOperation.DeviceMissMatch"
        case unsupportedOperation_DeviceNotFound = "UnsupportedOperation.DeviceNotFound"
        case unsupportedOperation_DeviceSipCommandFail = "UnsupportedOperation.DeviceSipCommandFail"
        case unsupportedOperation_DomainGroup = "UnsupportedOperation.DomainGroup"
        case unsupportedOperation_GroupExist = "UnsupportedOperation.GroupExist"
        case unsupportedOperation_GroupLayerIsMax = "UnsupportedOperation.GroupLayerIsMax"
        case unsupportedOperation_GroupParentidNotExist = "UnsupportedOperation.GroupParentidNotExist"
        case unsupportedOperation_LiveChannelBindExist = "UnsupportedOperation.LiveChannelBindExist"
        case unsupportedOperation_NoPermission = "UnsupportedOperation.NoPermission"
        case unsupportedOperation_PlanExistUnderTemplate = "UnsupportedOperation.PlanExistUnderTemplate"
        case unsupportedOperation_RecordPlanExist = "UnsupportedOperation.RecordPlanExist"
        case unsupportedOperation_RuleDupKeyExist = "UnsupportedOperation.RuleDupKeyExist"
        case unsupportedOperation_SceneExist = "UnsupportedOperation.SceneExist"
        case unsupportedOperation_SubGroupIsMax = "UnsupportedOperation.SubGroupIsMax"
        case unsupportedOperation_SubgrpExist = "UnsupportedOperation.SubgrpExist"
        case unsupportedOperation_TemplateExist = "UnsupportedOperation.TemplateExist"
        case unsupportedOperation_TemplatePreset = "UnsupportedOperation.TemplatePreset"
        case unsupportedOperation_UserIsIsolate = "UnsupportedOperation.UserIsIsolate"
    }

    /// Error domains affliated to ``TCIotvideoindustryError``.
    public static var domains: [TCErrorType.Type] {
        [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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

    /// CAM签名/鉴权错误。
    public static var authFailure: TCIotvideoindustryError {
        TCIotvideoindustryError(.authFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCIotvideoindustryError {
        TCIotvideoindustryError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCIotvideoindustryError {
        TCIotvideoindustryError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCIotvideoindustryError {
        TCIotvideoindustryError(.internalError)
    }

    /// DB操作错误。
    public static var internalError_DBOperationError: TCIotvideoindustryError {
        TCIotvideoindustryError(.internalError_DBOperationError)
    }

    /// 内部错误。
    public static var internalError_InternalServerException: TCIotvideoindustryError {
        TCIotvideoindustryError(.internalError_InternalServerException)
    }

    /// DB操作错误。
    public static var internalError_InternalServerExceptionDB: TCIotvideoindustryError {
        TCIotvideoindustryError(.internalError_InternalServerExceptionDB)
    }

    /// 参数错误。
    public static var invalidParameter: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue)
    }

    /// 账户余额不足，请检查。
    public static var invalidParameterValue_BalanceNotEnough: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_BalanceNotEnough)
    }

    /// 无法通过该设备ID查找设备。
    public static var invalidParameterValue_DeviceDataMapError: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DeviceDataMapError)
    }

    /// 设备Id不合法。
    public static var invalidParameterValue_DeviceId: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DeviceId)
    }

    /// 设备通道不在线，请检查通道配置。
    public static var invalidParameterValue_DeviceInfoNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DeviceInfoNotExist)
    }

    /// 设备离线或未注册。
    public static var invalidParameterValue_DeviceOffline: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DeviceOffline)
    }

    /// 设备或通道处于在线状态。
    public static var invalidParameterValue_DeviceOnline: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DeviceOnline)
    }

    /// 设备类型不支持。
    public static var invalidParameterValue_DeviceTypeNotSupport: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DeviceTypeNotSupport)
    }

    /// 国标域/设备不存在或未注册。
    public static var invalidParameterValue_DomainId: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_DomainId)
    }

    /// 超时时间错误。
    public static var invalidParameterValue_ExpireTime: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_ExpireTime)
    }

    /// domainid分组不允许修改ExtraInformation。
    public static var invalidParameterValue_GroupDomainidExtraInformation: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_GroupDomainidExtraInformation)
    }

    /// 国标平台下级分组不允许修改。
    public static var invalidParameterValue_GroupDomainidNotUpdate: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_GroupDomainidNotUpdate)
    }

    /// 分组参数错误。
    public static var invalidParameterValue_GroupParmsError: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_GroupParmsError)
    }

    /// 回看流不存在。
    public static var invalidParameterValue_RecordNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_RecordNotExist)
    }

    /// 最多创建100个录制计划。
    public static var invalidParameterValue_RecordPlanBeyondLimit: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_RecordPlanBeyondLimit)
    }

    /// 超过创建条目限制。
    public static var invalidParameterValue_RuleLimit: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_RuleLimit)
    }

    /// 规则不存在。
    public static var invalidParameterValue_RuleNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_RuleNotExist)
    }

    /// 流Id不合法。
    public static var invalidParameterValue_StreamId: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_StreamId)
    }

    /// 流不存在，请检查设备配置。
    public static var invalidParameterValue_StreamInfoNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_StreamInfoNotExist)
    }

    /// 最多创建100个时间模板。
    public static var invalidParameterValue_TemplateBeyondLimit: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_TemplateBeyondLimit)
    }

    /// 模板时间片段为空。
    public static var invalidParameterValue_TemplateSpecEmpty: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_TemplateSpecEmpty)
    }

    /// 请求时间粒度不支持。
    public static var invalidParameterValue_TimeSpecNotSupport: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_TimeSpecNotSupport)
    }

    /// 请求类型不支持。
    public static var invalidParameterValue_TypeNotSupport: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameterValue_TypeNotSupport)
    }

    /// 通道状态在线。
    public static var invalidParameter_DeviceOnline: TCIotvideoindustryError {
        TCIotvideoindustryError(.invalidParameter_DeviceOnline)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCIotvideoindustryError {
        TCIotvideoindustryError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCIotvideoindustryError {
        TCIotvideoindustryError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCIotvideoindustryError {
        TCIotvideoindustryError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCIotvideoindustryError {
        TCIotvideoindustryError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound)
    }

    /// 设备未创建或是已删除。
    public static var resourceNotFound_DeviceNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_DeviceNotExist)
    }

    /// PTZ控制的资源处于离线状态。
    public static var resourceNotFound_DeviceSipPTZError: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_DeviceSipPTZError)
    }

    /// 未找到分组或分组已删除。
    public static var resourceNotFound_GroupNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_GroupNotExist)
    }

    /// 未找到录制计划或录制计划已删除。
    public static var resourceNotFound_PlanNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_PlanNotExist)
    }

    /// 未找到时间模板或时间模板已删除。
    public static var resourceNotFound_ResourceNotFound: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_ResourceNotFound)
    }

    /// 统计数据不存在。
    public static var resourceNotFound_StatDataNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_StatDataNotExist)
    }

    /// 未找到时间模板或时间模板已删除。
    public static var resourceNotFound_TemplateNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceNotFound_TemplateNotExist)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceUnavailable)
    }

    /// 国标信令异常。
    public static var resourceUnavailable_GBProtocolExecException: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceUnavailable_GBProtocolExecException)
    }

    /// 流信息异常。
    public static var resourceUnavailable_StreamInfoException: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourceUnavailable_StreamInfoException)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCIotvideoindustryError {
        TCIotvideoindustryError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCIotvideoindustryError {
        TCIotvideoindustryError(.unauthorizedOperation)
    }

    /// 该名字分组已创建，请修改其他分组名字。
    public static var unauthorizedOperation_GroupExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unauthorizedOperation_GroupExist)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCIotvideoindustryError {
        TCIotvideoindustryError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation)
    }

    /// 分组下还存在设备或子分组。
    public static var unsupportedOperation_BindExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_BindExist)
    }

    /// 绑定的设备列表中有已绑定录制计划的设备。
    public static var unsupportedOperation_DeviceBindExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DeviceBindExist)
    }

    /// 设备没有操作权限。
    public static var unsupportedOperation_DeviceCanNotDo: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DeviceCanNotDo)
    }

    /// 存在重复设备。
    public static var unsupportedOperation_DeviceDupKeyExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DeviceDupKeyExist)
    }

    /// 设备和通道不匹配，请检查。
    public static var unsupportedOperation_DeviceMissMatch: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DeviceMissMatch)
    }

    /// 绑定的设备列表中有不存在的设备。
    public static var unsupportedOperation_DeviceNotFound: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DeviceNotFound)
    }

    /// 设备信令不通。
    public static var unsupportedOperation_DeviceSipCommandFail: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DeviceSipCommandFail)
    }

    /// 该分组为平台下级分组，不允许删除。
    public static var unsupportedOperation_DomainGroup: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_DomainGroup)
    }

    /// 该名字分组已创建，请修改其他分组名字。
    public static var unsupportedOperation_GroupExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_GroupExist)
    }

    /// 分组层级超过最大值。
    public static var unsupportedOperation_GroupLayerIsMax: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_GroupLayerIsMax)
    }

    /// 父分组不存在。
    public static var unsupportedOperation_GroupParentidNotExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_GroupParentidNotExist)
    }

    /// 存在直播频道与当前直播录制计划绑定。
    public static var unsupportedOperation_LiveChannelBindExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_LiveChannelBindExist)
    }

    /// 没有该设备的权限。
    public static var unsupportedOperation_NoPermission: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_NoPermission)
    }

    /// 时间模板下存在未删除的录制计划时不允许删除或修改。
    public static var unsupportedOperation_PlanExistUnderTemplate: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_PlanExistUnderTemplate)
    }

    /// 该名字录制计划已创建，请修改其他计划名字。
    public static var unsupportedOperation_RecordPlanExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_RecordPlanExist)
    }

    /// 存在重复规则。
    public static var unsupportedOperation_RuleDupKeyExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_RuleDupKeyExist)
    }

    /// 已存在同名场景。
    public static var unsupportedOperation_SceneExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_SceneExist)
    }

    /// 子分组数量超过最大值。
    public static var unsupportedOperation_SubGroupIsMax: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_SubGroupIsMax)
    }

    /// 分组下还存在设备或子分组。
    public static var unsupportedOperation_SubgrpExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_SubgrpExist)
    }

    /// 该名字时间模板已创建，请修改其他模板名字。
    public static var unsupportedOperation_TemplateExist: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_TemplateExist)
    }

    /// 预置时间模板不允许删除或修改。
    public static var unsupportedOperation_TemplatePreset: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_TemplatePreset)
    }

    /// 处于隔离中的资源不能进行此操作。
    public static var unsupportedOperation_UserIsIsolate: TCIotvideoindustryError {
        TCIotvideoindustryError(.unsupportedOperation_UserIsIsolate)
    }

    public func asIotvideoindustryError() -> TCIotvideoindustryError {
        return self
    }
}
