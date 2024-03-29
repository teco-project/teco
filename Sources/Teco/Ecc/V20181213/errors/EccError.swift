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

/// Service error type returned by `Ecc`.
public protocol TCEccErrorType: TCServiceErrorType {
    /// Get the service error as ``TCEccError``.
    ///
    /// - Returns: ``TCEccError`` that holds the same error code and context.
    func asEccError() -> TCEccError
}

public struct TCEccError: TCEccErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_CorrectError = "InternalError.CorrectError"
        case internalError_DataFormatAbnormalError = "InternalError.DataFormatAbnormalError"
        case internalError_DatabaseServerInternalError = "InternalError.DatabaseServerInternalError"
        case internalError_OcrError = "InternalError.OcrError"
        case internalError_OcrServerInternError = "InternalError.OcrServerInternError"
        case internalError_OtherError = "InternalError.OtherError"
        case internalError_OverLoadError = "InternalError.OverLoadError"
        case internalError_RecognizeError = "InternalError.RecognizeError"
        case internalError_ServerConnectDownloadError = "InternalError.ServerConnectDownloadError"
        case internalError_SplitError = "InternalError.SplitError"
        case invalidParameterValue_AppidInvalidError = "InvalidParameterValue.AppidInvalidError"
        case invalidParameterValue_DecodeImageError = "InvalidParameterValue.DecodeImageError"
        case invalidParameterValue_DownloadImageFailError = "InvalidParameterValue.DownloadImageFailError"
        case invalidParameterValue_EmptyImageError = "InvalidParameterValue.EmptyImageError"
        case invalidParameterValue_ImageDownloadFailError = "InvalidParameterValue.ImageDownloadFailError"
        case invalidParameterValue_ImageSizeExceedError = "InvalidParameterValue.ImageSizeExceedError"
        case invalidParameterValue_ImageTooBigError = "InvalidParameterValue.ImageTooBigError"
        case invalidParameterValue_InputTypeValueError = "InvalidParameterValue.InputTypeValueError"
        case invalidParameterValue_SessionError = "InvalidParameterValue.SessionError"
        case invalidParameterValue_UrlFromatIvadlidError = "InvalidParameterValue.UrlFromatIvadlidError"
        case invalidParameter_EmptyParameterError = "InvalidParameter.EmptyParameterError"
        case invalidParameter_InputError = "InvalidParameter.InputError"
        case invalidParameter_TaskNotFound = "InvalidParameter.TaskNotFound"
        case limitExceeded_FreqLimitForbiddenAccessError = "LimitExceeded.FreqLimitForbiddenAccessError"
        case resourceNotFound_CannotFindUser = "ResourceNotFound.CannotFindUser"
        case resourceNotFound_ServerNameNotExistInLicenseError = "ResourceNotFound.ServerNameNotExistInLicenseError"
        case resourceUnavailable_AuthorizeError = "ResourceUnavailable.AuthorizeError"
        case unauthorizedOperation_LicenseInvalidForbiddenAccessError = "UnauthorizedOperation.LicenseInvalidForbiddenAccessError"
        case unauthorizedOperation_ServerNameUnauthorizedInError = "UnauthorizedOperation.ServerNameUnauthorizedInError"
    }

    /// Error domains affliated to ``TCEccError``.
    public static var domains: [TCErrorType.Type] {
        [
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
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

    /// 内部错误。
    public static var internalError: TCEccError {
        TCEccError(.internalError)
    }

    /// 批改错误。
    public static var internalError_CorrectError: TCEccError {
        TCEccError(.internalError_CorrectError)
    }

    /// 数据格式错误。
    public static var internalError_DataFormatAbnormalError: TCEccError {
        TCEccError(.internalError_DataFormatAbnormalError)
    }

    /// 服务内部错误。
    ///
    /// 请稍后重试。
    public static var internalError_DatabaseServerInternalError: TCEccError {
        TCEccError(.internalError_DatabaseServerInternalError)
    }

    /// 识别错误。
    public static var internalError_OcrError: TCEccError {
        TCEccError(.internalError_OcrError)
    }

    /// 服务器内部错误，初始化失败。
    public static var internalError_OcrServerInternError: TCEccError {
        TCEccError(.internalError_OcrServerInternError)
    }

    /// 其它错误。
    public static var internalError_OtherError: TCEccError {
        TCEccError(.internalError_OtherError)
    }

    /// 服务器过载，请联系相关客服。
    public static var internalError_OverLoadError: TCEccError {
        TCEccError(.internalError_OverLoadError)
    }

    /// 图片识别错误。
    public static var internalError_RecognizeError: TCEccError {
        TCEccError(.internalError_RecognizeError)
    }

    /// 无法连接图像下载服务器。
    public static var internalError_ServerConnectDownloadError: TCEccError {
        TCEccError(.internalError_ServerConnectDownloadError)
    }

    /// 图片切割错误。
    public static var internalError_SplitError: TCEccError {
        TCEccError(.internalError_SplitError)
    }

    /// Appid无效。
    public static var invalidParameterValue_AppidInvalidError: TCEccError {
        TCEccError(.invalidParameterValue_AppidInvalidError)
    }

    /// 图片解码失败，请核实输入信息。
    public static var invalidParameterValue_DecodeImageError: TCEccError {
        TCEccError(.invalidParameterValue_DecodeImageError)
    }

    /// url图片下载失败。
    public static var invalidParameterValue_DownloadImageFailError: TCEccError {
        TCEccError(.invalidParameterValue_DownloadImageFailError)
    }

    /// 图片数据为空。
    public static var invalidParameterValue_EmptyImageError: TCEccError {
        TCEccError(.invalidParameterValue_EmptyImageError)
    }

    /// 图片下载失败。
    public static var invalidParameterValue_ImageDownloadFailError: TCEccError {
        TCEccError(.invalidParameterValue_ImageDownloadFailError)
    }

    /// 图片超出下载限制。
    public static var invalidParameterValue_ImageSizeExceedError: TCEccError {
        TCEccError(.invalidParameterValue_ImageSizeExceedError)
    }

    /// 图片尺寸太大。
    public static var invalidParameterValue_ImageTooBigError: TCEccError {
        TCEccError(.invalidParameterValue_ImageTooBigError)
    }

    /// 输入错误，请核实InputType参数。
    public static var invalidParameterValue_InputTypeValueError: TCEccError {
        TCEccError(.invalidParameterValue_InputTypeValueError)
    }

    /// SessionId无效。
    public static var invalidParameterValue_SessionError: TCEccError {
        TCEccError(.invalidParameterValue_SessionError)
    }

    /// 图像请求URL的格式错误。
    public static var invalidParameterValue_UrlFromatIvadlidError: TCEccError {
        TCEccError(.invalidParameterValue_UrlFromatIvadlidError)
    }

    /// 参数为空。
    public static var invalidParameter_EmptyParameterError: TCEccError {
        TCEccError(.invalidParameter_EmptyParameterError)
    }

    /// 传入的参数有误。
    public static var invalidParameter_InputError: TCEccError {
        TCEccError(.invalidParameter_InputError)
    }

    /// 任务不存在。
    public static var invalidParameter_TaskNotFound: TCEccError {
        TCEccError(.invalidParameter_TaskNotFound)
    }

    /// 频率限制。
    public static var limitExceeded_FreqLimitForbiddenAccessError: TCEccError {
        TCEccError(.limitExceeded_FreqLimitForbiddenAccessError)
    }

    /// 无法找到用户，请确认已在控制台开通服务并使用了正确的 ECCAPPID。
    public static var resourceNotFound_CannotFindUser: TCEccError {
        TCEccError(.resourceNotFound_CannotFindUser)
    }

    /// 无效的服务名称。
    public static var resourceNotFound_ServerNameNotExistInLicenseError: TCEccError {
        TCEccError(.resourceNotFound_ServerNameNotExistInLicenseError)
    }

    /// 服务未开通或已欠费。
    public static var resourceUnavailable_AuthorizeError: TCEccError {
        TCEccError(.resourceUnavailable_AuthorizeError)
    }

    /// license无效。
    public static var unauthorizedOperation_LicenseInvalidForbiddenAccessError: TCEccError {
        TCEccError(.unauthorizedOperation_LicenseInvalidForbiddenAccessError)
    }

    /// license中未授权该服务。
    public static var unauthorizedOperation_ServerNameUnauthorizedInError: TCEccError {
        TCEccError(.unauthorizedOperation_ServerNameUnauthorizedInError)
    }

    public func asEccError() -> TCEccError {
        return self
    }
}
