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

/// Service error type returned by `Tcbr`.
public protocol TCTcbrErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTcbrError``.
    ///
    /// - Returns: ``TCTcbrError`` that holds the same error code and context.
    func asTcbrError() -> TCTcbrError
}

public struct TCTcbrError: TCTcbrErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    public static var authFailure: TCTcbrError {
        TCTcbrError(.authFailure)
    }

    /// 内部错误。
    public static var internalError: TCTcbrError {
        TCTcbrError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCTcbrError {
        TCTcbrError(.invalidParameter)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCTcbrError {
        TCTcbrError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCTcbrError {
        TCTcbrError(.missingParameter)
    }

    /// 资源被占用。
    public static var resourceInUse: TCTcbrError {
        TCTcbrError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCTcbrError {
        TCTcbrError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCTcbrError {
        TCTcbrError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCTcbrError {
        TCTcbrError(.resourceUnavailable)
    }

    public func asTcbrError() -> TCTcbrError {
        return self
    }
}
