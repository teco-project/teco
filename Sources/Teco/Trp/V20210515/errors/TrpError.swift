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

/// Service error type returned by `Trp`.
public protocol TCTrpErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTrpError``.
    ///
    /// - Returns: ``TCTrpError`` that holds the same error code and context.
    func asTrpError() -> TCTrpError
}

public struct TCTrpError: TCTrpErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CorpEmpty = "AuthFailure.CorpEmpty"
        case authFailure_CorpExpired = "AuthFailure.CorpExpired"
        case failedOperation = "FailedOperation"
        case invalidParameter = "InvalidParameter"
    }

    /// Error domains affliated to ``TCTrpError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self]
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

    /// CAM签名/鉴权错误。
    public static var authFailure: TCTrpError {
        TCTrpError(.authFailure)
    }

    /// 当前没有创建任何企业。
    ///
    /// 当前没有创建任何企业，请先创建企业以进行后续操作。
    public static var authFailure_CorpEmpty: TCTrpError {
        TCTrpError(.authFailure_CorpEmpty)
    }

    /// 企业服务时间已到期。
    ///
    /// 您购买的服务时间已到期，为不影响您的使用，请您联系商务，续费服务。
    public static var authFailure_CorpExpired: TCTrpError {
        TCTrpError(.authFailure_CorpExpired)
    }

    /// 操作失败。
    public static var failedOperation: TCTrpError {
        TCTrpError(.failedOperation)
    }

    /// 参数错误。
    public static var invalidParameter: TCTrpError {
        TCTrpError(.invalidParameter)
    }

    public func asTrpError() -> TCTrpError {
        return self
    }
}
