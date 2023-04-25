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

/// Service error type returned by `Mmps`.
public protocol TCMmpsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCMmpsError``.
    ///
    /// - Returns: ``TCMmpsError`` that holds the same error code and context.
    func asMmpsError() -> TCMmpsError
}

public struct TCMmpsError: TCMmpsErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
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
    public static var failedOperation: TCMmpsError {
        TCMmpsError(.failedOperation)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCMmpsError {
        TCMmpsError(.unsupportedOperation)
    }

    public func asMmpsError() -> TCMmpsError {
        return self
    }
}
