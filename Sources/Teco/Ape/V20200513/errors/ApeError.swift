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

/// Service error type returned by `Ape`.
public protocol TCApeErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCApeError``.
    ///
    /// - Returns: ``TCApeError`` that holds the same error code and context.
    func asApeError() -> TCApeError
}

public struct TCApeError: TCApeErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_OrderExpiredError = "LimitExceeded.OrderExpiredError"
        case limitExceeded_OrderLimitError = "LimitExceeded.OrderLimitError"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_SensitiveImage = "ResourceNotFound.SensitiveImage"
        case resourceNotFound_SensitiveSearch = "ResourceNotFound.SensitiveSearch"
        case resourceUnavailable = "ResourceUnavailable"
    }
    
    /// Error domains affliated to ``TCApeError``.
    public static var domains: [TCErrorType.Type] {
        [LimitExceeded.self, ResourceNotFound.self]
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCApeError {
        TCApeError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCApeError {
        TCApeError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCApeError {
        TCApeError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCApeError {
        TCApeError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCApeError {
        TCApeError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCApeError {
        TCApeError(.limitExceeded)
    }
    
    /// 图片使用期限已过期。
    public static var limitExceeded_OrderExpiredError: TCApeError {
        TCApeError(.limitExceeded_OrderExpiredError)
    }
    
    /// 下单频率超过限制。
    public static var limitExceeded_OrderLimitError: TCApeError {
        TCApeError(.limitExceeded_OrderLimitError)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCApeError {
        TCApeError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCApeError {
        TCApeError(.resourceNotFound)
    }
    
    /// 图片涉嫌违禁内容
    public static var resourceNotFound_SensitiveImage: TCApeError {
        TCApeError(.resourceNotFound_SensitiveImage)
    }
    
    /// 包含敏感词汇。
    public static var resourceNotFound_SensitiveSearch: TCApeError {
        TCApeError(.resourceNotFound_SensitiveSearch)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCApeError {
        TCApeError(.resourceUnavailable)
    }
    
    public func asApeError() -> TCApeError {
        return self
    }
}
