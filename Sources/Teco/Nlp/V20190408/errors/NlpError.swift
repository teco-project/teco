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

import TecoCore

/// Service error type returned by `Nlp`.
public protocol TCNlpErrorType: TCServiceErrorType {
    /// Get the service error as ``TCNlpError``.
    ///
    /// - Returns: ``TCNlpError`` that holds the same error code and context.
    func asNlpError() -> TCNlpError
}

public struct TCNlpError: TCNlpErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_BalanceInsufficient = "FailedOperation.BalanceInsufficient"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_NoCouplets = "FailedOperation.NoCouplets"
        case failedOperation_NoPoetry = "FailedOperation.NoPoetry"
        case failedOperation_NoResults = "FailedOperation.NoResults"
        case failedOperation_NotFoundData = "FailedOperation.NotFoundData"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_ResourceBusy = "FailedOperation.ResourceBusy"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case internalError = "InternalError"
        case internalError_ServiceCallError = "InternalError.ServiceCallError"
        case internalError_ServiceError = "InternalError.ServiceError"
        case internalError_TextClassifyError = "InternalError.TextClassifyError"
        case internalError_TextParsingError = "InternalError.TextParsingError"
        case invalidParameterValue_Genre = "InvalidParameterValue.Genre"
        case invalidParameterValue_InvalidParameter = "InvalidParameterValue.InvalidParameter"
        case invalidParameterValue_PoetryType = "InvalidParameterValue.PoetryType"
        case invalidParameterValue_SensitiveText = "InvalidParameterValue.SensitiveText"
        case invalidParameterValue_TargetType = "InvalidParameterValue.TargetType"
        case invalidParameterValue_Text = "InvalidParameterValue.Text"
        case invalidParameterValue_TextNumTooMuch = "InvalidParameterValue.TextNumTooMuch"
        case invalidParameterValue_TextTooLong = "InvalidParameterValue.TextTooLong"
        case invalidParameter_ServiceError = "InvalidParameter.ServiceError"
        case invalidParameter_TextTooLongCode = "InvalidParameter.TextTooLongCode"
        case limitExceeded_ResourceReachedLimit = "LimitExceeded.ResourceReachedLimit"
        case requestLimitExceeded_UinLimitExceeded = "RequestLimitExceeded.UinLimitExceeded"
        case resourceInsufficient_QuotaRunOut = "ResourceInsufficient.QuotaRunOut"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_Freeze = "ResourceUnavailable.Freeze"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_IsOpening = "ResourceUnavailable.IsOpening"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
        case resourceUnavailable_Recover = "ResourceUnavailable.Recover"
        case resourceUnavailable_ServiceNotOpenedError = "ResourceUnavailable.ServiceNotOpenedError"
        case resourceUnavailable_StopUsing = "ResourceUnavailable.StopUsing"
    }

    /// Error domains affliated to ``TCNlpError``.
    public static var domains: [TCErrorType.Type] {
        [
            FailedOperation.self,
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            RequestLimitExceeded.self,
            ResourceInsufficient.self,
            ResourceUnavailable.self
        ]
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

    /// 操作失败。
    public static var failedOperation: TCNlpError {
        TCNlpError(.failedOperation)
    }

    /// 余额不足，开通失败，请充值后再开通。
    public static var failedOperation_BalanceInsufficient: TCNlpError {
        TCNlpError(.failedOperation_BalanceInsufficient)
    }

    /// 服务内部错误，请重试。
    public static var failedOperation_InnerError: TCNlpError {
        TCNlpError(.failedOperation_InnerError)
    }

    /// 暂无春联生成，请更换关键词重试。
    public static var failedOperation_NoCouplets: TCNlpError {
        TCNlpError(.failedOperation_NoCouplets)
    }

    /// 暂无诗词生成，请更换关键词重试。
    public static var failedOperation_NoPoetry: TCNlpError {
        TCNlpError(.failedOperation_NoPoetry)
    }

    /// 暂无结果，请更换文本重试。
    public static var failedOperation_NoResults: TCNlpError {
        TCNlpError(.failedOperation_NoResults)
    }

    /// 未查询到结果。
    public static var failedOperation_NotFoundData: TCNlpError {
        TCNlpError(.failedOperation_NotFoundData)
    }

    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCNlpError {
        TCNlpError(.failedOperation_RequestTimeout)
    }

    /// 服务器繁忙，请稍后再试。
    public static var failedOperation_ResourceBusy: TCNlpError {
        TCNlpError(.failedOperation_ResourceBusy)
    }

    /// RPC请求失败，一般为算法微服务故障。
    public static var failedOperation_RpcFail: TCNlpError {
        TCNlpError(.failedOperation_RpcFail)
    }

    /// 内部错误。
    public static var failedOperation_UnKnowError: TCNlpError {
        TCNlpError(.failedOperation_UnKnowError)
    }

    /// 未知错误。
    public static var failedOperation_Unknown: TCNlpError {
        TCNlpError(.failedOperation_Unknown)
    }

    /// 内部错误
    public static var internalError: TCNlpError {
        TCNlpError(.internalError)
    }

    /// 内部服务调用错误。
    public static var internalError_ServiceCallError: TCNlpError {
        TCNlpError(.internalError_ServiceCallError)
    }

    /// 内部服务调用失败。
    public static var internalError_ServiceError: TCNlpError {
        TCNlpError(.internalError_ServiceError)
    }

    public static var internalError_TextClassifyError: TCNlpError {
        TCNlpError(.internalError_TextClassifyError)
    }

    public static var internalError_TextParsingError: TCNlpError {
        TCNlpError(.internalError_TextParsingError)
    }

    /// Genre非法，请参考Genre参数说明。
    public static var invalidParameterValue_Genre: TCNlpError {
        TCNlpError(.invalidParameterValue_Genre)
    }

    /// 参数不合法。
    public static var invalidParameterValue_InvalidParameter: TCNlpError {
        TCNlpError(.invalidParameterValue_InvalidParameter)
    }

    /// PoetryType非法，请参考PoetryType参数说明。
    public static var invalidParameterValue_PoetryType: TCNlpError {
        TCNlpError(.invalidParameterValue_PoetryType)
    }

    /// Text输入含有敏感信息。
    public static var invalidParameterValue_SensitiveText: TCNlpError {
        TCNlpError(.invalidParameterValue_SensitiveText)
    }

    /// TargetType非法，请参考TargetType参数说明。
    public static var invalidParameterValue_TargetType: TCNlpError {
        TCNlpError(.invalidParameterValue_TargetType)
    }

    /// Text非法，请参考Text参数说明。
    public static var invalidParameterValue_Text: TCNlpError {
        TCNlpError(.invalidParameterValue_Text)
    }

    /// 输入文本超出数量限制
    public static var invalidParameterValue_TextNumTooMuch: TCNlpError {
        TCNlpError(.invalidParameterValue_TextNumTooMuch)
    }

    /// 输入文本超出长度限制
    public static var invalidParameterValue_TextTooLong: TCNlpError {
        TCNlpError(.invalidParameterValue_TextTooLong)
    }

    /// 服务调用失败。
    public static var invalidParameter_ServiceError: TCNlpError {
        TCNlpError(.invalidParameter_ServiceError)
    }

    /// 文本长度超过限制。
    public static var invalidParameter_TextTooLongCode: TCNlpError {
        TCNlpError(.invalidParameter_TextTooLongCode)
    }

    /// 资源用量达到上限。
    public static var limitExceeded_ResourceReachedLimit: TCNlpError {
        TCNlpError(.limitExceeded_ResourceReachedLimit)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded_UinLimitExceeded: TCNlpError {
        TCNlpError(.requestLimitExceeded_UinLimitExceeded)
    }

    /// 额度用尽，请充值后重试
    public static var resourceInsufficient_QuotaRunOut: TCNlpError {
        TCNlpError(.resourceInsufficient_QuotaRunOut)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCNlpError {
        TCNlpError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCNlpError {
        TCNlpError(.resourceUnavailable)
    }

    /// 帐号已被冻结。
    public static var resourceUnavailable_Freeze: TCNlpError {
        TCNlpError(.resourceUnavailable_Freeze)
    }

    /// 账号已欠费。
    public static var resourceUnavailable_InArrears: TCNlpError {
        TCNlpError(.resourceUnavailable_InArrears)
    }

    /// 服务正在开通中，请稍等。
    public static var resourceUnavailable_IsOpening: TCNlpError {
        TCNlpError(.resourceUnavailable_IsOpening)
    }

    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCNlpError {
        TCNlpError(.resourceUnavailable_NotExist)
    }

    /// 资源已被回收。
    public static var resourceUnavailable_Recover: TCNlpError {
        TCNlpError(.resourceUnavailable_Recover)
    }

    /// 您的账号尚未开通NLP服务，请登录腾讯云NLP控制台进行服务开通后再使用
    public static var resourceUnavailable_ServiceNotOpenedError: TCNlpError {
        TCNlpError(.resourceUnavailable_ServiceNotOpenedError)
    }

    /// 帐号已停服。
    public static var resourceUnavailable_StopUsing: TCNlpError {
        TCNlpError(.resourceUnavailable_StopUsing)
    }

    public func asNlpError() -> TCNlpError {
        return self
    }
}
