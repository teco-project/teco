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

/// Service error type returned by `Tics`.
public protocol TCTicsErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTicsError``.
    ///
    /// - Returns: ``TCTicsError`` that holds the same error code and context.
    func asTicsError() -> TCTicsError
}

public struct TCTicsError: TCTicsErrorType {
    enum Code: String {
        case internalError_CacheErr = "InternalError.CacheErr"
        case internalError_LocalErr = "InternalError.LocalErr"
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter = "InvalidParameter"
        case limitExceeded = "LimitExceeded"
    }

    /// Error domains affliated to ``TCTicsError``.
    public static var domains: [TCErrorType.Type] {
        [InternalError.self]
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

    /// 内部系统错误，组件异常。
    public static var internalError_CacheErr: TCTicsError {
        TCTicsError(.internalError_CacheErr)
    }

    /// 内部系统错误，逻辑错误。
    public static var internalError_LocalErr: TCTicsError {
        TCTicsError(.internalError_LocalErr)
    }

    /// 内部系统错误，超时等异常。
    public static var internalError_Timeout: TCTicsError {
        TCTicsError(.internalError_Timeout)
    }

    /// 参数错误。
    public static var invalidParameter: TCTicsError {
        TCTicsError(.invalidParameter)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCTicsError {
        TCTicsError(.limitExceeded)
    }

    public func asTicsError() -> TCTicsError {
        return self
    }
}
