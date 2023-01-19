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

/// Service error type returned by `Market`.
public protocol TCMarketErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCMarketError``.
    ///
    /// - Returns: ``TCMarketError`` that holds the same error code and context.
    func asMarketError() -> TCMarketError
}

public struct TCMarketError: TCMarketErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
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

    /// 操作失败。
    public static var failedOperation: TCMarketError {
        TCMarketError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCMarketError {
        TCMarketError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCMarketError {
        TCMarketError(.invalidParameter)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCMarketError {
        TCMarketError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCMarketError {
        TCMarketError(.resourceUnavailable)
    }

    public func asMarketError() -> TCMarketError {
        return self
    }
}
