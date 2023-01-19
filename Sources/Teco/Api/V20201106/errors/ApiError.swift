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

/// Service error type returned by `Api`.
public protocol TCApiErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCApiError``.
    ///
    /// - Returns: ``TCApiError`` that holds the same error code and context.
    func asApiError() -> TCApiError
}

public struct TCApiError: TCApiErrorType {
    enum Code: String {
        case invalidParameter = "InvalidParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
        case unsupportedOperation = "UnsupportedOperation"
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

    /// 参数错误。
    public static var invalidParameter: TCApiError {
        TCApiError(.invalidParameter)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCApiError {
        TCApiError(.requestLimitExceeded)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCApiError {
        TCApiError(.unsupportedOperation)
    }

    public func asApiError() -> TCApiError {
        return self
    }
}
