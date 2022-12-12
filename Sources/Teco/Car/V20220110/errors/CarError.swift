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

/// Service error type returned by `Car`.
public protocol TCCarErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCCarError``.
    ///
    /// - Returns: ``TCCarError`` that holds the same error code and context.
    func asCarError() -> TCCarError
}

public struct TCCarError: TCCarErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_LockTimeout = "FailedOperation.LockTimeout"
        case failedOperation_ProcessTimeout = "FailedOperation.ProcessTimeout"
        case failedOperation_SlowDown = "FailedOperation.SlowDown"
        case internalError = "InternalError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_JsonParseError = "InvalidParameter.JsonParseError"
        case operationDenied = "OperationDenied"
        case resourceNotFound_NoIdle = "ResourceNotFound.NoIdle"
        case resourceNotFound_SessionNotFound = "ResourceNotFound.SessionNotFound"
        case resourceUnavailable_AccessFailed = "ResourceUnavailable.AccessFailed"
        case resourceUnavailable_Initialization = "ResourceUnavailable.Initialization"
        case unsupportedOperation_Stopping = "UnsupportedOperation.Stopping"
    }
    
    /// Error domains affliated to ``TCCarError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameter.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// 操作失败。
    public static var failedOperation: TCCarError {
        TCCarError(.failedOperation)
    }
    
    /// 未申请并发或申请后超时。
    public static var failedOperation_LockTimeout: TCCarError {
        TCCarError(.failedOperation_LockTimeout)
    }
    
    /// 处理超时。
    public static var failedOperation_ProcessTimeout: TCCarError {
        TCCarError(.failedOperation_ProcessTimeout)
    }
    
    /// 请降低访问频率。
    public static var failedOperation_SlowDown: TCCarError {
        TCCarError(.failedOperation_SlowDown)
    }
    
    /// 内部错误。
    public static var internalError: TCCarError {
        TCCarError(.internalError)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCarError {
        TCCarError(.invalidParameterValue)
    }
    
    /// Json 解析失败。
    public static var invalidParameter_JsonParseError: TCCarError {
        TCCarError(.invalidParameter_JsonParseError)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCarError {
        TCCarError(.operationDenied)
    }
    
    /// 没有空闲并发。
    public static var resourceNotFound_NoIdle: TCCarError {
        TCCarError(.resourceNotFound_NoIdle)
    }
    
    /// 未找到会话。
    public static var resourceNotFound_SessionNotFound: TCCarError {
        TCCarError(.resourceNotFound_SessionNotFound)
    }
    
    /// 访问并发实例失败。
    public static var resourceUnavailable_AccessFailed: TCCarError {
        TCCarError(.resourceUnavailable_AccessFailed)
    }
    
    /// 初始化中。
    public static var resourceUnavailable_Initialization: TCCarError {
        TCCarError(.resourceUnavailable_Initialization)
    }
    
    /// 销毁会话中。
    public static var unsupportedOperation_Stopping: TCCarError {
        TCCarError(.unsupportedOperation_Stopping)
    }
    
    public func asCarError() -> TCCarError {
        return self
    }
}
