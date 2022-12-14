//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

/// Service error type returned by `Memcached`.
public protocol TCMemcachedErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCMemcachedError``.
    ///
    /// - Returns: ``TCMemcachedError`` that holds the same error code and context.
    func asMemcachedError() -> TCMemcachedError
}

public struct TCMemcachedError: TCMemcachedErrorType {
    enum Code: String {
        case failedOperation_DbOperationFailed = "FailedOperation.DbOperationFailed"
        case failedOperation_SystemError = "FailedOperation.SystemError"
        case internalError_InternalError = "InternalError.InternalError"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case missingParameter_EmptyParam = "MissingParameter.EmptyParam"
        case resourceNotFound_AccountDoesNotExists = "ResourceNotFound.AccountDoesNotExists"
        case unauthorizedOperation_NoCAMAuthed = "UnauthorizedOperation.NoCAMAuthed"
    }

    /// Error domains affliated to ``TCMemcachedError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, MissingParameter.self, ResourceNotFound.self, UnauthorizedOperation.self]
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

    /// ?????????????????????
    public static var failedOperation_DbOperationFailed: TCMemcachedError {
        TCMemcachedError(.failedOperation_DbOperationFailed)
    }

    /// ??????????????????
    public static var failedOperation_SystemError: TCMemcachedError {
        TCMemcachedError(.failedOperation_SystemError)
    }

    /// ????????????
    public static var internalError_InternalError: TCMemcachedError {
        TCMemcachedError(.internalError_InternalError)
    }

    /// ??????????????????
    public static var invalidParameter_InvalidParameter: TCMemcachedError {
        TCMemcachedError(.invalidParameter_InvalidParameter)
    }

    /// ????????????
    public static var missingParameter_EmptyParam: TCMemcachedError {
        TCMemcachedError(.missingParameter_EmptyParam)
    }

    /// ????????????????????????
    public static var resourceNotFound_AccountDoesNotExists: TCMemcachedError {
        TCMemcachedError(.resourceNotFound_AccountDoesNotExists)
    }

    /// Cam????????????
    public static var unauthorizedOperation_NoCAMAuthed: TCMemcachedError {
        TCMemcachedError(.unauthorizedOperation_NoCAMAuthed)
    }

    public func asMemcachedError() -> TCMemcachedError {
        return self
    }
}
