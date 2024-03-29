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

/// Service error type returned by `Tds`.
public protocol TCTdsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTdsError``.
    ///
    /// - Returns: ``TCTdsError`` that holds the same error code and context.
    func asTdsError() -> TCTdsError
}

public struct TCTdsError: TCTdsErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case resourceInsufficient = "ResourceInsufficient"
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
    public static var failedOperation: TCTdsError {
        TCTdsError(.failedOperation)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCTdsError {
        TCTdsError(.resourceInsufficient)
    }

    public func asTdsError() -> TCTdsError {
        return self
    }
}
