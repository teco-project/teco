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

/// Service error type returned by `Cms`.
public protocol TCCmsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCmsError``.
    ///
    /// - Returns: ``TCCmsError`` that holds the same error code and context.
    func asCmsError() -> TCCmsError
}

public struct TCCmsError: TCCmsErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_InternalError = "InternalError.InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_ErrFileContent = "InvalidParameterValue.ErrFileContent"
        case invalidParameterValue_ErrImageSize = "InvalidParameterValue.ErrImageSize"
        case invalidParameterValue_ErrTextContentLen = "InvalidParameterValue.ErrTextContentLen"
        case invalidParameterValue_ErrTextContentType = "InvalidParameterValue.ErrTextContentType"
        case invalidParameterValue_InvalidContent = "InvalidParameterValue.InvalidContent"
        case invalidParameterValue_InvalidFileContentSize = "InvalidParameterValue.InvalidFileContentSize"
        case invalidParameterValue_InvalidImageContent = "InvalidParameterValue.InvalidImageContent"
        case invalidParameterValue_InvalidParameter = "InvalidParameterValue.InvalidParameter"
        case invalidParameter_ImageAspectRatioTooLarge = "InvalidParameter.ImageAspectRatioTooLarge"
        case invalidParameter_ImageDataTooSmall = "InvalidParameter.ImageDataTooSmall"
        case invalidParameter_ImageSizeTooSmall = "InvalidParameter.ImageSizeTooSmall"
        case invalidParameter_InvalidImageContent = "InvalidParameter.InvalidImageContent"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_ErrFileUrl = "MissingParameter.ErrFileUrl"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_ErrDowdownInternalError = "ResourceNotFound.ErrDowdownInternalError"
        case resourceNotFound_ErrDowdownParamsError = "ResourceNotFound.ErrDowdownParamsError"
        case resourceNotFound_ErrDowdownSourceError = "ResourceNotFound.ErrDowdownSourceError"
        case resourceNotFound_ErrDowdownTimeOut = "ResourceNotFound.ErrDowdownTimeOut"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_ErrImageTimeOut = "ResourceUnavailable.ErrImageTimeOut"
        case resourceUnavailable_ErrTextTimeOut = "ResourceUnavailable.ErrTextTimeOut"
        case resourceUnavailable_ImageDownloadError = "ResourceUnavailable.ImageDownloadError"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_ErrAuth = "UnauthorizedOperation.ErrAuth"
        case unauthorizedOperation_Unauthorized = "UnauthorizedOperation.Unauthorized"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCCmsError``.
    public static var domains: [TCErrorType.Type] {
        [
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            MissingParameter.self,
            ResourceNotFound.self,
            ResourceUnavailable.self,
            UnauthorizedOperation.self
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
    public static var authFailure: TCCmsError {
        TCCmsError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCCmsError {
        TCCmsError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCCmsError {
        TCCmsError(.internalError)
    }

    /// 服务内部错误。
    public static var internalError_InternalError: TCCmsError {
        TCCmsError(.internalError_InternalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCCmsError {
        TCCmsError(.invalidParameter)
    }

    /// FileContent不可用：需Base64编码
    public static var invalidParameterValue_ErrFileContent: TCCmsError {
        TCCmsError(.invalidParameterValue_ErrFileContent)
    }

    /// 图片尺寸错误。
    public static var invalidParameterValue_ErrImageSize: TCCmsError {
        TCCmsError(.invalidParameterValue_ErrImageSize)
    }

    /// 文本内容过长。
    public static var invalidParameterValue_ErrTextContentLen: TCCmsError {
        TCCmsError(.invalidParameterValue_ErrTextContentLen)
    }

    /// 文本内容类型错误：需base64编码
    public static var invalidParameterValue_ErrTextContentType: TCCmsError {
        TCCmsError(.invalidParameterValue_ErrTextContentType)
    }

    /// Content参数错误
    public static var invalidParameterValue_InvalidContent: TCCmsError {
        TCCmsError(.invalidParameterValue_InvalidContent)
    }

    /// 图片文件内容大小异常。
    public static var invalidParameterValue_InvalidFileContentSize: TCCmsError {
        TCCmsError(.invalidParameterValue_InvalidFileContentSize)
    }

    /// 图片内容错误
    public static var invalidParameterValue_InvalidImageContent: TCCmsError {
        TCCmsError(.invalidParameterValue_InvalidImageContent)
    }

    /// 参数取值错误
    public static var invalidParameterValue_InvalidParameter: TCCmsError {
        TCCmsError(.invalidParameterValue_InvalidParameter)
    }

    /// 图片长宽比太大
    ///
    /// 图片长宽比太大，减少图片的长度
    public static var invalidParameter_ImageAspectRatioTooLarge: TCCmsError {
        TCCmsError(.invalidParameter_ImageAspectRatioTooLarge)
    }

    /// 图片体积太小
    ///
    /// 更换更大体积的图片
    public static var invalidParameter_ImageDataTooSmall: TCCmsError {
        TCCmsError(.invalidParameter_ImageDataTooSmall)
    }

    /// 图片尺寸过小。
    public static var invalidParameter_ImageSizeTooSmall: TCCmsError {
        TCCmsError(.invalidParameter_ImageSizeTooSmall)
    }

    /// 图片内容错误。
    public static var invalidParameter_InvalidImageContent: TCCmsError {
        TCCmsError(.invalidParameter_InvalidImageContent)
    }

    /// 参数不可用
    public static var invalidParameter_ParameterError: TCCmsError {
        TCCmsError(.invalidParameter_ParameterError)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCCmsError {
        TCCmsError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCmsError {
        TCCmsError(.missingParameter)
    }

    /// FileUrl或FileContent都为空
    public static var missingParameter_ErrFileUrl: TCCmsError {
        TCCmsError(.missingParameter_ErrFileUrl)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCCmsError {
        TCCmsError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCCmsError {
        TCCmsError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCCmsError {
        TCCmsError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCCmsError {
        TCCmsError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCCmsError {
        TCCmsError(.resourceNotFound)
    }

    /// 文件链接下载内部错误
    public static var resourceNotFound_ErrDowdownInternalError: TCCmsError {
        TCCmsError(.resourceNotFound_ErrDowdownInternalError)
    }

    /// 文件链接下载服务参数异常
    public static var resourceNotFound_ErrDowdownParamsError: TCCmsError {
        TCCmsError(.resourceNotFound_ErrDowdownParamsError)
    }

    /// 文件链接下载源错误
    public static var resourceNotFound_ErrDowdownSourceError: TCCmsError {
        TCCmsError(.resourceNotFound_ErrDowdownSourceError)
    }

    /// 文件链接下载超时
    public static var resourceNotFound_ErrDowdownTimeOut: TCCmsError {
        TCCmsError(.resourceNotFound_ErrDowdownTimeOut)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCCmsError {
        TCCmsError(.resourceUnavailable)
    }

    /// 图片识别服务超时
    public static var resourceUnavailable_ErrImageTimeOut: TCCmsError {
        TCCmsError(.resourceUnavailable_ErrImageTimeOut)
    }

    /// 文本识别服务超时
    public static var resourceUnavailable_ErrTextTimeOut: TCCmsError {
        TCCmsError(.resourceUnavailable_ErrTextTimeOut)
    }

    /// 图片文件下载失败。
    public static var resourceUnavailable_ImageDownloadError: TCCmsError {
        TCCmsError(.resourceUnavailable_ImageDownloadError)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCCmsError {
        TCCmsError(.unauthorizedOperation)
    }

    /// 鉴权失败
    public static var unauthorizedOperation_ErrAuth: TCCmsError {
        TCCmsError(.unauthorizedOperation_ErrAuth)
    }

    /// 未开通权限/无有效套餐包/账号已欠费。
    public static var unauthorizedOperation_Unauthorized: TCCmsError {
        TCCmsError(.unauthorizedOperation_Unauthorized)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCCmsError {
        TCCmsError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCCmsError {
        TCCmsError(.unsupportedOperation)
    }

    public func asCmsError() -> TCCmsError {
        return self
    }
}
