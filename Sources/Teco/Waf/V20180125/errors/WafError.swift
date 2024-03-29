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

/// Service error type returned by `Waf`.
public protocol TCWafErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCWafError``.
    ///
    /// - Returns: ``TCWafError`` that holds the same error code and context.
    func asWafError() -> TCWafError
}

public struct TCWafError: TCWafErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CLSInternalError = "FailedOperation.CLSInternalError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_InvalidCertificate = "InvalidParameter.InvalidCertificate"
        case invalidParameter_QueryCertBySSLIDFailed = "InvalidParameter.QueryCertBySSLIDFailed"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
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
    }

    /// Error domains affliated to ``TCWafError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameter.self]
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
    public static var authFailure: TCWafError {
        TCWafError(.authFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCWafError {
        TCWafError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCWafError {
        TCWafError(.failedOperation)
    }

    /// CLS内部错误。
    ///
    /// 错误表示WAF的API后端访问CLS接口失败,包括接口失败,语法失败,参数校验不通过等。
    public static var failedOperation_CLSInternalError: TCWafError {
        TCWafError(.failedOperation_CLSInternalError)
    }

    /// 内部错误。
    public static var internalError: TCWafError {
        TCWafError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCWafError {
        TCWafError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCWafError {
        TCWafError(.invalidParameterValue)
    }

    /// 证书内容非法。
    public static var invalidParameter_InvalidCertificate: TCWafError {
        TCWafError(.invalidParameter_InvalidCertificate)
    }

    /// 根据ID查询证书失败。
    public static var invalidParameter_QueryCertBySSLIDFailed: TCWafError {
        TCWafError(.invalidParameter_QueryCertBySSLIDFailed)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCWafError {
        TCWafError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCWafError {
        TCWafError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCWafError {
        TCWafError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCWafError {
        TCWafError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCWafError {
        TCWafError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCWafError {
        TCWafError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCWafError {
        TCWafError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCWafError {
        TCWafError(.resourceUnavailable)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCWafError {
        TCWafError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCWafError {
        TCWafError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCWafError {
        TCWafError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCWafError {
        TCWafError(.unsupportedOperation)
    }

    public func asWafError() -> TCWafError {
        return self
    }
}
