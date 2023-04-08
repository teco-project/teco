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

/// Service error type returned by `Bma`.
public protocol TCBmaErrorType: TCServiceErrorType {
    /// Get the service error as ``TCBmaError``.
    ///
    /// - Returns: ``TCBmaError`` that holds the same error code and context.
    func asBmaError() -> TCBmaError
}

public struct TCBmaError: TCBmaErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CompanyNameWrong = "FailedOperation.CompanyNameWrong"
        case failedOperation_ExistCompany = "FailedOperation.ExistCompany"
        case failedOperation_ExistDetectTarget = "FailedOperation.ExistDetectTarget"
        case failedOperation_ExistSoftware = "FailedOperation.ExistSoftware"
        case failedOperation_ReuseResource = "FailedOperation.ReuseResource"
        case failedOperation_SmsVerify = "FailedOperation.SmsVerify"
        case failedOperation_UnusableResource = "FailedOperation.UnusableResource"
        case internalError = "InternalError"
        case internalError_SmsVerify = "InternalError.SmsVerify"
        case invalidAction = "InvalidAction"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_PrivacyTextIsNotUtf8 = "InvalidParameter.PrivacyTextIsNotUtf8"
        case invalidParameter_PrivacyTextURL = "InvalidParameter.PrivacyTextURL"
        case invalidParameter_SoftwareURL = "InvalidParameter.SoftwareURL"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case noSuchVersion = "NoSuchVersion"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedRegion = "UnsupportedRegion"
    }

    /// Error domains affliated to ``TCBmaError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self]
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
    public static var authFailure: TCBmaError {
        TCBmaError(.authFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCBmaError {
        TCBmaError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCBmaError {
        TCBmaError(.failedOperation)
    }

    /// 操作失败，企业名称有误。
    public static var failedOperation_CompanyNameWrong: TCBmaError {
        TCBmaError(.failedOperation_CompanyNameWrong)
    }

    /// 操作失败，已存在企业信息。
    public static var failedOperation_ExistCompany: TCBmaError {
        TCBmaError(.failedOperation_ExistCompany)
    }

    /// 操作失败，已存在检测对象。
    public static var failedOperation_ExistDetectTarget: TCBmaError {
        TCBmaError(.failedOperation_ExistDetectTarget)
    }

    /// 操作失败，已存在软件信息。
    public static var failedOperation_ExistSoftware: TCBmaError {
        TCBmaError(.failedOperation_ExistSoftware)
    }

    /// 该资源已使用，请勿重复使用。
    public static var failedOperation_ReuseResource: TCBmaError {
        TCBmaError(.failedOperation_ReuseResource)
    }

    /// 操作失败，验证码错误。
    public static var failedOperation_SmsVerify: TCBmaError {
        TCBmaError(.failedOperation_SmsVerify)
    }

    /// 操作失败，资源不可用。
    public static var failedOperation_UnusableResource: TCBmaError {
        TCBmaError(.failedOperation_UnusableResource)
    }

    /// 内部错误。
    public static var internalError: TCBmaError {
        TCBmaError(.internalError)
    }

    /// 服务暂时不可用，请稍后重试。若无法解决，请联系智能客服。
    public static var internalError_SmsVerify: TCBmaError {
        TCBmaError(.internalError_SmsVerify)
    }

    /// 接口不存在。
    public static var invalidAction: TCBmaError {
        TCBmaError(.invalidAction)
    }

    /// 参数错误。
    public static var invalidParameter: TCBmaError {
        TCBmaError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCBmaError {
        TCBmaError(.invalidParameterValue)
    }

    /// 无效的隐私文本，请使用规定方法上传UTF-8编码格式文件。
    public static var invalidParameter_PrivacyTextIsNotUtf8: TCBmaError {
        TCBmaError(.invalidParameter_PrivacyTextIsNotUtf8)
    }

    /// 无效的隐私文本下载链接，请使用规定方法上传文件。
    public static var invalidParameter_PrivacyTextURL: TCBmaError {
        TCBmaError(.invalidParameter_PrivacyTextURL)
    }

    /// 无效的软件下载链接，请使用规定方法上传文件。
    public static var invalidParameter_SoftwareURL: TCBmaError {
        TCBmaError(.invalidParameter_SoftwareURL)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCBmaError {
        TCBmaError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCBmaError {
        TCBmaError(.missingParameter)
    }

    /// 接口版本不存在。
    public static var noSuchVersion: TCBmaError {
        TCBmaError(.noSuchVersion)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCBmaError {
        TCBmaError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCBmaError {
        TCBmaError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCBmaError {
        TCBmaError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCBmaError {
        TCBmaError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCBmaError {
        TCBmaError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCBmaError {
        TCBmaError(.resourceUnavailable)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCBmaError {
        TCBmaError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCBmaError {
        TCBmaError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCBmaError {
        TCBmaError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCBmaError {
        TCBmaError(.unsupportedOperation)
    }

    /// 接口不支持所传地域。
    public static var unsupportedRegion: TCBmaError {
        TCBmaError(.unsupportedRegion)
    }

    public func asBmaError() -> TCBmaError {
        return self
    }
}
