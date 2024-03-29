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

/// Service error type returned by `Btoe`.
public protocol TCBtoeErrorType: TCServiceErrorType {
    /// Get the service error as ``TCBtoeError``.
    ///
    /// - Returns: ``TCBtoeError`` that holds the same error code and context.
    func asBtoeError() -> TCBtoeError
}

public struct TCBtoeError: TCBtoeErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_ArrearsError = "FailedOperation.ArrearsError"
        case failedOperation_CountLimitError = "FailedOperation.CountLimitError"
        case failedOperation_DataInfoTooLong = "FailedOperation.DataInfoTooLong"
        case failedOperation_DownLoadError = "FailedOperation.DownLoadError"
        case failedOperation_FileEncodindFormatError = "FailedOperation.FileEncodindFormatError"
        case failedOperation_FileReadFailed = "FailedOperation.FileReadFailed"
        case failedOperation_HashNoMatch = "FailedOperation.HashNoMatch"
        case failedOperation_OnChainFailure = "FailedOperation.OnChainFailure"
        case failedOperation_QueryNoRecord = "FailedOperation.QueryNoRecord"
        case failedOperation_SensitiveData = "FailedOperation.SensitiveData"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_DataInfoTooLong = "InvalidParameterValue.DataInfoTooLong"
        case invalidParameterValue_HashNoMatch = "InvalidParameterValue.HashNoMatch"
        case invalidParameterValue_InvalidFileSuffix = "InvalidParameterValue.InvalidFileSuffix"
        case invalidParameterValue_InvalidURL = "InvalidParameterValue.InvalidURL"
        case invalidParameterValue_ParameterError = "InvalidParameterValue.ParameterError"
        case invalidParameterValue_TooLargeFileError = "InvalidParameterValue.TooLargeFileError"
        case invalidParameter_AccountInfoInvalid = "InvalidParameter.AccountInfoInvalid"
        case invalidParameter_InvalidFileSuffix = "InvalidParameter.InvalidFileSuffix"
        case invalidParameter_InvalidParameterValue = "InvalidParameter.InvalidParameterValue"
        case limitExceeded_TooLargeFileError = "LimitExceeded.TooLargeFileError"
        case resourceInsufficient_LowBalance = "ResourceInsufficient.LowBalance"
        case resourceNotFound_DownLoadError = "ResourceNotFound.DownLoadError"
        case resourceUnavailable_ResourceNotOpened = "ResourceUnavailable.ResourceNotOpened"
    }

    /// Error domains affliated to ``TCBtoeError``.
    public static var domains: [TCErrorType.Type] {
        [
            FailedOperation.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            ResourceInsufficient.self,
            ResourceNotFound.self,
            ResourceUnavailable.self
        ]
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
    public static var authFailure: TCBtoeError {
        TCBtoeError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCBtoeError {
        TCBtoeError(.failedOperation)
    }

    /// 帐号已欠费。
    public static var failedOperation_ArrearsError: TCBtoeError {
        TCBtoeError(.failedOperation_ArrearsError)
    }

    /// 今日次数达到限制。
    public static var failedOperation_CountLimitError: TCBtoeError {
        TCBtoeError(.failedOperation_CountLimitError)
    }

    /// 数据明文内容过长。
    public static var failedOperation_DataInfoTooLong: TCBtoeError {
        TCBtoeError(.failedOperation_DataInfoTooLong)
    }

    /// 文件下载失败。
    public static var failedOperation_DownLoadError: TCBtoeError {
        TCBtoeError(.failedOperation_DownLoadError)
    }

    /// 文件编码格式错误。
    public static var failedOperation_FileEncodindFormatError: TCBtoeError {
        TCBtoeError(.failedOperation_FileEncodindFormatError)
    }

    /// 文件读取失败。
    public static var failedOperation_FileReadFailed: TCBtoeError {
        TCBtoeError(.failedOperation_FileReadFailed)
    }

    /// 哈希不匹配。
    public static var failedOperation_HashNoMatch: TCBtoeError {
        TCBtoeError(.failedOperation_HashNoMatch)
    }

    /// 上链失败。
    public static var failedOperation_OnChainFailure: TCBtoeError {
        TCBtoeError(.failedOperation_OnChainFailure)
    }

    /// 查询无记录。
    public static var failedOperation_QueryNoRecord: TCBtoeError {
        TCBtoeError(.failedOperation_QueryNoRecord)
    }

    /// 敏感数据。
    public static var failedOperation_SensitiveData: TCBtoeError {
        TCBtoeError(.failedOperation_SensitiveData)
    }

    /// 未知错误。
    public static var failedOperation_UnKnowError: TCBtoeError {
        TCBtoeError(.failedOperation_UnKnowError)
    }

    /// 内部错误。
    public static var internalError: TCBtoeError {
        TCBtoeError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCBtoeError {
        TCBtoeError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCBtoeError {
        TCBtoeError(.invalidParameterValue)
    }

    /// 数据明文内容过长。
    public static var invalidParameterValue_DataInfoTooLong: TCBtoeError {
        TCBtoeError(.invalidParameterValue_DataInfoTooLong)
    }

    /// 哈希不匹配。
    public static var invalidParameterValue_HashNoMatch: TCBtoeError {
        TCBtoeError(.invalidParameterValue_HashNoMatch)
    }

    /// 文件后缀不正确。
    public static var invalidParameterValue_InvalidFileSuffix: TCBtoeError {
        TCBtoeError(.invalidParameterValue_InvalidFileSuffix)
    }

    /// URL无效。
    public static var invalidParameterValue_InvalidURL: TCBtoeError {
        TCBtoeError(.invalidParameterValue_InvalidURL)
    }

    /// 参数值错误。
    public static var invalidParameterValue_ParameterError: TCBtoeError {
        TCBtoeError(.invalidParameterValue_ParameterError)
    }

    /// 文件内容太大。
    public static var invalidParameterValue_TooLargeFileError: TCBtoeError {
        TCBtoeError(.invalidParameterValue_TooLargeFileError)
    }

    /// 用户数据无效。
    public static var invalidParameter_AccountInfoInvalid: TCBtoeError {
        TCBtoeError(.invalidParameter_AccountInfoInvalid)
    }

    /// 文件后缀不正确。
    public static var invalidParameter_InvalidFileSuffix: TCBtoeError {
        TCBtoeError(.invalidParameter_InvalidFileSuffix)
    }

    /// 参数值错误。
    public static var invalidParameter_InvalidParameterValue: TCBtoeError {
        TCBtoeError(.invalidParameter_InvalidParameterValue)
    }

    /// 文件内容太大。
    public static var limitExceeded_TooLargeFileError: TCBtoeError {
        TCBtoeError(.limitExceeded_TooLargeFileError)
    }

    /// 余额不足。
    public static var resourceInsufficient_LowBalance: TCBtoeError {
        TCBtoeError(.resourceInsufficient_LowBalance)
    }

    /// 文件下载失败。
    public static var resourceNotFound_DownLoadError: TCBtoeError {
        TCBtoeError(.resourceNotFound_DownLoadError)
    }

    /// 资源未完成开通。
    public static var resourceUnavailable_ResourceNotOpened: TCBtoeError {
        TCBtoeError(.resourceUnavailable_ResourceNotOpened)
    }

    public func asBtoeError() -> TCBtoeError {
        return self
    }
}
