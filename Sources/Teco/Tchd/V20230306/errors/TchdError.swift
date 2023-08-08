//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

/// Service error type returned by `Tchd`.
public protocol TCTchdErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTchdError``.
    ///
    /// - Returns: ``TCTchdError`` that holds the same error code and context.
    func asTchdError() -> TCTchdError
}

public struct TCTchdError: TCTchdErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
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

    /// 内部错误。
    public static var internalError: TCTchdError {
        TCTchdError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCTchdError {
        TCTchdError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCTchdError {
        TCTchdError(.invalidParameterValue)
    }

    public func asTchdError() -> TCTchdError {
        return self
    }
}
