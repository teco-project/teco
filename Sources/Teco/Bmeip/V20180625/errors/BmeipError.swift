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

/// Service error type returned by `Bmeip`.
public protocol TCBmeipErrorType: TCServiceErrorType {
    /// Get the service error as ``TCBmeipError``.
    ///
    /// - Returns: ``TCBmeipError`` that holds the same error code and context.
    func asBmeipError() -> TCBmeipError
}

public struct TCBmeipError: TCBmeipErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case resourceNotFound = "ResourceNotFound"
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
    public static var internalError: TCBmeipError {
        TCBmeipError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCBmeipError {
        TCBmeipError(.invalidParameter)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCBmeipError {
        TCBmeipError(.resourceNotFound)
    }

    public func asBmeipError() -> TCBmeipError {
        return self
    }
}
