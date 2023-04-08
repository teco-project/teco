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

/// Service error type returned by `Cds`.
public protocol TCCdsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCdsError``.
    ///
    /// - Returns: ``TCCdsError`` that holds the same error code and context.
    func asCdsError() -> TCCdsError
}

public struct TCCdsError: TCCdsErrorType {
    enum Code: String {
        case invalidParameter_ResourceId = "InvalidParameter.ResourceId"
        case invalidParameter_ResourceIdError = "InvalidParameter.ResourceIdError"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
    }

    /// Error domains affliated to ``TCCdsError``.
    public static var domains: [TCErrorType.Type] {
        [InvalidParameter.self, UnauthorizedOperation.self]
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

    /// 无效的资源ID，用于资源不存在或已过期。
    public static var invalidParameter_ResourceId: TCCdsError {
        TCCdsError(.invalidParameter_ResourceId)
    }

    /// 审计资源ID 错误。
    public static var invalidParameter_ResourceIdError: TCCdsError {
        TCCdsError(.invalidParameter_ResourceIdError)
    }

    /// 无操作权限。
    public static var unauthorizedOperation_NoPermission: TCCdsError {
        TCCdsError(.unauthorizedOperation_NoPermission)
    }

    public func asCdsError() -> TCCdsError {
        return self
    }
}
