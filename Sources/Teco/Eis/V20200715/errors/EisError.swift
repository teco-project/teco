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

/// Service error type returned by `Eis`.
public protocol TCEisErrorType: TCServiceErrorType {
    /// Get the service error as ``TCEisError``.
    ///
    /// - Returns: ``TCEisError`` that holds the same error code and context.
    func asEisError() -> TCEisError
}

public struct TCEisError: TCEisErrorType {
    enum Code: String {
        case failedOperation_AuthenticationFailed = "FailedOperation.AuthenticationFailed"
        case failedOperation_MetaCompilerError = "FailedOperation.MetaCompilerError"
        case internalError_DatabaseError = "InternalError.DatabaseError"
        case internalError_RpcPilotServerError = "InternalError.RpcPilotServerError"
        case invalidParameterValue_ConnectorNotExist = "InvalidParameterValue.ConnectorNotExist"
        case resourceNotFound = "ResourceNotFound"
    }

    /// Error domains affliated to ``TCEisError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameterValue.self]
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

    /// 鉴权失败。
    public static var failedOperation_AuthenticationFailed: TCEisError {
        TCEisError(.failedOperation_AuthenticationFailed)
    }

    /// 依赖服务错误。
    public static var failedOperation_MetaCompilerError: TCEisError {
        TCEisError(.failedOperation_MetaCompilerError)
    }

    /// 数据库内部错误。
    public static var internalError_DatabaseError: TCEisError {
        TCEisError(.internalError_DatabaseError)
    }

    /// rpc调用异常。
    public static var internalError_RpcPilotServerError: TCEisError {
        TCEisError(.internalError_RpcPilotServerError)
    }

    /// 连接器不存在。
    public static var invalidParameterValue_ConnectorNotExist: TCEisError {
        TCEisError(.invalidParameterValue_ConnectorNotExist)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCEisError {
        TCEisError(.resourceNotFound)
    }

    public func asEisError() -> TCEisError {
        return self
    }
}
