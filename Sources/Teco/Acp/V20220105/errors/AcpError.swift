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

/// Service error type returned by `Acp`.
public protocol TCAcpErrorType: TCServiceErrorType {
    /// Get the service error as ``TCAcpError``.
    ///
    /// - Returns: ``TCAcpError`` that holds the same error code and context.
    func asAcpError() -> TCAcpError
}

public struct TCAcpError: TCAcpErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case invalidParameter = "InvalidParameter"
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

    /// 操作失败。
    public static var failedOperation: TCAcpError {
        TCAcpError(.failedOperation)
    }

    /// 参数错误。
    public static var invalidParameter: TCAcpError {
        TCAcpError(.invalidParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCAcpError {
        TCAcpError(.unsupportedOperation)
    }

    public func asAcpError() -> TCAcpError {
        return self
    }
}
