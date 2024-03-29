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

/// Service error type returned by `Trdp`.
public protocol TCTrdpErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTrdpError``.
    ///
    /// - Returns: ``TCTrdpError`` that holds the same error code and context.
    func asTrdpError() -> TCTrdpError
}

public struct TCTrdpError: TCTrdpErrorType {
    enum Code: String {
        case failedOperation_DeviceFingerprintNotFound = "FailedOperation.DeviceFingerprintNotFound"
        case failedOperation_UnKnownModelId = "FailedOperation.UnKnownModelId"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter_ParameterIllegal = "InvalidParameter.ParameterIllegal"
        case unauthorizedOperation_TenantNotActivated = "UnauthorizedOperation.TenantNotActivated"
    }

    /// Error domains affliated to ``TCTrdpError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, UnauthorizedOperation.self]
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

    /// 未发现有效的设备指纹数据。
    public static var failedOperation_DeviceFingerprintNotFound: TCTrdpError {
        TCTrdpError(.failedOperation_DeviceFingerprintNotFound)
    }

    /// ModelId 未开通。
    public static var failedOperation_UnKnownModelId: TCTrdpError {
        TCTrdpError(.failedOperation_UnKnownModelId)
    }

    /// 未知错误。
    public static var internalError_UnknownError: TCTrdpError {
        TCTrdpError(.internalError_UnknownError)
    }

    /// 请求参数不合法。
    public static var invalidParameter_ParameterIllegal: TCTrdpError {
        TCTrdpError(.invalidParameter_ParameterIllegal)
    }

    /// 服务未开通。
    public static var unauthorizedOperation_TenantNotActivated: TCTrdpError {
        TCTrdpError(.unauthorizedOperation_TenantNotActivated)
    }

    public func asTrdpError() -> TCTrdpError {
        return self
    }
}
