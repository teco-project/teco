//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

/// Service error type returned by `Cwp`.
public protocol TCCwpErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCCwpError``.
    ///
    /// - Returns: ``TCCwpError`` that holds the same error code and context.
    func asCwpError() -> TCCwpError
}

public struct TCCwpError: TCCwpErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_APIServerFail = "FailedOperation.APIServerFail"
        case failedOperation_AgentOffline = "FailedOperation.AgentOffline"
        case failedOperation_Export = "FailedOperation.Export"
        case failedOperation_LicenseExceeded = "FailedOperation.LicenseExceeded"
        case failedOperation_MachineDelete = "FailedOperation.MachineDelete"
        case failedOperation_NoProfessionHost = "FailedOperation.NoProfessionHost"
        case failedOperation_PartSeparate = "FailedOperation.PartSeparate"
        case failedOperation_ProtectStartFail = "FailedOperation.ProtectStartFail"
        case failedOperation_Recover = "FailedOperation.Recover"
        case failedOperation_RescanVul = "FailedOperation.RescanVul"
        case failedOperation_SingleSeparate = "FailedOperation.SingleSeparate"
        case failedOperation_TooManyStrategy = "FailedOperation.TooManyStrategy"
        case internalError = "InternalError"
        case internalError_MainDBFail = "InternalError.MainDBFail"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_TagNameLengthLimit = "InvalidParameterValue.TagNameLengthLimit"
        case invalidParameter_DateRange = "InvalidParameter.DateRange"
        case invalidParameter_IllegalRequest = "InvalidParameter.IllegalRequest"
        case invalidParameter_InvalidFormat = "InvalidParameter.InvalidFormat"
        case invalidParameter_IpNoValid = "InvalidParameter.IpNoValid"
        case invalidParameter_MissingParameter = "InvalidParameter.MissingParameter"
        case invalidParameter_NameHasRepetition = "InvalidParameter.NameHasRepetition"
        case invalidParameter_ParsingError = "InvalidParameter.ParsingError"
        case invalidParameter_RegexRuleError = "InvalidParameter.RegexRuleError"
        case invalidParameter_ReverShellKeyFieldAllEmpty = "InvalidParameter.ReverShellKeyFieldAllEmpty"
        case invalidParameter_RuleHostipErr = "InvalidParameter.RuleHostipErr"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_AreaQuota = "LimitExceeded.AreaQuota"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case unknownParameter = "UnknownParameter"
    }

    /// Error domains affliated to ``TCCwpError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self]
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
    public static var authFailure: TCCwpError {
        TCCwpError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCCwpError {
        TCCwpError(.failedOperation)
    }

    /// 调用API服务失败。
    public static var failedOperation_APIServerFail: TCCwpError {
        TCCwpError(.failedOperation_APIServerFail)
    }

    /// 客户端已离线。
    public static var failedOperation_AgentOffline: TCCwpError {
        TCCwpError(.failedOperation_AgentOffline)
    }

    /// 导出文件失败。
    public static var failedOperation_Export: TCCwpError {
        TCCwpError(.failedOperation_Export)
    }

    /// 可用license数量不足，缺少1个license，请购买新license。
    public static var failedOperation_LicenseExceeded: TCCwpError {
        TCCwpError(.failedOperation_LicenseExceeded)
    }

    /// 卸载主机。
    public static var failedOperation_MachineDelete: TCCwpError {
        TCCwpError(.failedOperation_MachineDelete)
    }

    /// 无专业版主机。
    public static var failedOperation_NoProfessionHost: TCCwpError {
        TCCwpError(.failedOperation_NoProfessionHost)
    }

    /// 多台主机隔离，部分或全部失败。
    public static var failedOperation_PartSeparate: TCCwpError {
        TCCwpError(.failedOperation_PartSeparate)
    }

    /// 开启防护失败。
    public static var failedOperation_ProtectStartFail: TCCwpError {
        TCCwpError(.failedOperation_ProtectStartFail)
    }

    /// 回复木马失败。
    public static var failedOperation_Recover: TCCwpError {
        TCCwpError(.failedOperation_Recover)
    }

    /// 重新检测漏洞失败。
    public static var failedOperation_RescanVul: TCCwpError {
        TCCwpError(.failedOperation_RescanVul)
    }

    /// 单台主机隔离失败。
    public static var failedOperation_SingleSeparate: TCCwpError {
        TCCwpError(.failedOperation_SingleSeparate)
    }

    /// 创建基线策略超过上限。
    public static var failedOperation_TooManyStrategy: TCCwpError {
        TCCwpError(.failedOperation_TooManyStrategy)
    }

    /// 内部错误。
    public static var internalError: TCCwpError {
        TCCwpError(.internalError)
    }

    /// 操作数据失败。
    public static var internalError_MainDBFail: TCCwpError {
        TCCwpError(.internalError_MainDBFail)
    }

    /// 参数错误。
    public static var invalidParameter: TCCwpError {
        TCCwpError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCCwpError {
        TCCwpError(.invalidParameterValue)
    }

    /// 标签名称长度不能超过15个字符。
    public static var invalidParameterValue_TagNameLengthLimit: TCCwpError {
        TCCwpError(.invalidParameterValue_TagNameLengthLimit)
    }

    /// 时间区间格式错误。
    public static var invalidParameter_DateRange: TCCwpError {
        TCCwpError(.invalidParameter_DateRange)
    }

    /// 非法请求。
    public static var invalidParameter_IllegalRequest: TCCwpError {
        TCCwpError(.invalidParameter_IllegalRequest)
    }

    /// 参数格式错误。
    public static var invalidParameter_InvalidFormat: TCCwpError {
        TCCwpError(.invalidParameter_InvalidFormat)
    }

    /// IP格式不合法。
    public static var invalidParameter_IpNoValid: TCCwpError {
        TCCwpError(.invalidParameter_IpNoValid)
    }

    /// 参数缺失。
    public static var invalidParameter_MissingParameter: TCCwpError {
        TCCwpError(.invalidParameter_MissingParameter)
    }

    /// 名字已重复。
    public static var invalidParameter_NameHasRepetition: TCCwpError {
        TCCwpError(.invalidParameter_NameHasRepetition)
    }

    /// 参数解析错误。
    public static var invalidParameter_ParsingError: TCCwpError {
        TCCwpError(.invalidParameter_ParsingError)
    }

    /// 正则参数格式错误。
    public static var invalidParameter_RegexRuleError: TCCwpError {
        TCCwpError(.invalidParameter_RegexRuleError)
    }

    /// 进程名/目标IP/目标端口，不能同时为空。
    public static var invalidParameter_ReverShellKeyFieldAllEmpty: TCCwpError {
        TCCwpError(.invalidParameter_ReverShellKeyFieldAllEmpty)
    }

    /// 规则类接口，主机IP不正确。
    public static var invalidParameter_RuleHostipErr: TCCwpError {
        TCCwpError(.invalidParameter_RuleHostipErr)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCCwpError {
        TCCwpError(.limitExceeded)
    }

    /// 超出批量添加数量。
    public static var limitExceeded_AreaQuota: TCCwpError {
        TCCwpError(.limitExceeded_AreaQuota)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCwpError {
        TCCwpError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCCwpError {
        TCCwpError(.operationDenied)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCCwpError {
        TCCwpError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCCwpError {
        TCCwpError(.resourceNotFound)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCCwpError {
        TCCwpError(.unknownParameter)
    }

    public func asCwpError() -> TCCwpError {
        return self
    }
}
