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

/// Service error type returned by `Yunsou`.
public protocol TCYunsouErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCYunsouError``.
    ///
    /// - Returns: ``TCYunsouError`` that holds the same error code and context.
    func asYunsouError() -> TCYunsouError
}

public struct TCYunsouError: TCYunsouErrorType {
    enum Code: String {
        case failedOperation_AccountInfo = "FailedOperation.AccountInfo"
        case failedOperation_AppInfo = "FailedOperation.AppInfo"
        case failedOperation_Search = "FailedOperation.Search"
        case failedOperation_UploadDataApiFail = "FailedOperation.UploadDataApiFail"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_DataContent = "InvalidParameter.DataContent"
        case limitExceeded_Search = "LimitExceeded.Search"
        case unauthorizedOperation = "UnauthorizedOperation"
    }
    
    /// Error domains affliated to ``TCYunsouError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameter.self, LimitExceeded.self]
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
    
    /// 查询用户信息失败。
    public static var failedOperation_AccountInfo: TCYunsouError {
        TCYunsouError(.failedOperation_AccountInfo)
    }
    
    /// 查询应用信息失败。
    public static var failedOperation_AppInfo: TCYunsouError {
        TCYunsouError(.failedOperation_AppInfo)
    }
    
    /// 搜索接口异常。
    public static var failedOperation_Search: TCYunsouError {
        TCYunsouError(.failedOperation_Search)
    }
    
    /// 数据上传异常。
    public static var failedOperation_UploadDataApiFail: TCYunsouError {
        TCYunsouError(.failedOperation_UploadDataApiFail)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCYunsouError {
        TCYunsouError(.invalidParameter)
    }
    
    /// 数据文件无效。
    public static var invalidParameter_DataContent: TCYunsouError {
        TCYunsouError(.invalidParameter_DataContent)
    }
    
    /// 请求的次数超过了频率限制。
    public static var limitExceeded_Search: TCYunsouError {
        TCYunsouError(.limitExceeded_Search)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCYunsouError {
        TCYunsouError(.unauthorizedOperation)
    }
    
    public func asYunsouError() -> TCYunsouError {
        return self
    }
}
