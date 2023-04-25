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

/// Service error type returned by `Drm`.
public protocol TCDrmErrorType: TCServiceErrorType {
    /// Get the service error as ``TCDrmError``.
    ///
    /// - Returns: ``TCDrmError`` that holds the same error code and context.
    func asDrmError() -> TCDrmError
}

public struct TCDrmError: TCDrmErrorType {
    enum Code: String {
        case failedOperation_PemIdNotExist = "FailedOperation.PemIdNotExist"
        case failedOperation_PemNumTooMuch = "FailedOperation.PemNumTooMuch"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case unknownParameter = "UnknownParameter"
    }

    /// Error domains affliated to ``TCDrmError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self]
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

    /// pem id 不存在。
    public static var failedOperation_PemIdNotExist: TCDrmError {
        TCDrmError(.failedOperation_PemIdNotExist)
    }

    /// 系统中存在的私钥数超过两个。
    public static var failedOperation_PemNumTooMuch: TCDrmError {
        TCDrmError(.failedOperation_PemNumTooMuch)
    }

    /// 内部错误。
    public static var internalError: TCDrmError {
        TCDrmError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCDrmError {
        TCDrmError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCDrmError {
        TCDrmError(.invalidParameterValue)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCDrmError {
        TCDrmError(.unknownParameter)
    }

    public func asDrmError() -> TCDrmError {
        return self
    }
}
