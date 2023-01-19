//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

/// Service error type returned by `Hcm`.
public protocol TCHcmErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCHcmError``.
    ///
    /// - Returns: ``TCHcmError`` that holds the same error code and context.
    func asHcmError() -> TCHcmError
}

public struct TCHcmError: TCHcmErrorType {
    enum Code: String {
        case failedOperation_ChargeCountError = "FailedOperation.ChargeCountError"
        case internalError_EngineRequestFailed = "InternalError.EngineRequestFailed"
        case internalError_EngineResultError = "InternalError.EngineResultError"
        case internalError_InitialParameterError = "InternalError.InitialParameterError"
        case internalError_ServerInternalError = "InternalError.ServerInternalError"
        case invalidParameterValue_CannotFindImageError = "InvalidParameterValue.CannotFindImageError"
        case invalidParameterValue_CannotFindSession = "InvalidParameterValue.CannotFindSession"
        case invalidParameterValue_EmptyImageError = "InvalidParameterValue.EmptyImageError"
        case invalidParameterValue_EmptyInputError = "InvalidParameterValue.EmptyInputError"
        case invalidParameterValue_ExceedDownloadImageSizeError = "InvalidParameterValue.ExceedDownloadImageSizeError"
        case invalidParameterValue_FailDecodeError = "InvalidParameterValue.FailDecodeError"
        case invalidParameterValue_FailDownloadImageError = "InvalidParameterValue.FailDownloadImageError"
        case invalidParameterValue_FailRecognizeError = "InvalidParameterValue.FailRecognizeError"
        case invalidParameterValue_InvalidImageError = "InvalidParameterValue.InvalidImageError"
        case resourceNotFound_CannotFindUser = "ResourceNotFound.CannotFindUser"
    }

    /// Error domains affliated to ``TCHcmError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameterValue.self, ResourceNotFound.self]
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

    /// 计费次数统计失败。
    public static var failedOperation_ChargeCountError: TCHcmError {
        TCHcmError(.failedOperation_ChargeCountError)
    }

    /// 引擎请求失败。
    ///
    /// 请检查图片是否正确后重试请求。
    public static var internalError_EngineRequestFailed: TCHcmError {
        TCHcmError(.internalError_EngineRequestFailed)
    }

    /// 引擎识别失败。
    ///
    /// 请检查图片是否正确后重试请求。
    public static var internalError_EngineResultError: TCHcmError {
        TCHcmError(.internalError_EngineResultError)
    }

    /// 初始化参数错误。
    public static var internalError_InitialParameterError: TCHcmError {
        TCHcmError(.internalError_InitialParameterError)
    }

    /// 服务器内部错误。
    public static var internalError_ServerInternalError: TCHcmError {
        TCHcmError(.internalError_ServerInternalError)
    }

    /// 无法找到图像，请确认Image参数与Url参数无误。
    public static var invalidParameterValue_CannotFindImageError: TCHcmError {
        TCHcmError(.invalidParameterValue_CannotFindImageError)
    }

    /// 评估之前没有初始化或已过期。
    public static var invalidParameterValue_CannotFindSession: TCHcmError {
        TCHcmError(.invalidParameterValue_CannotFindSession)
    }

    /// Image参数为空，请重新填写。
    public static var invalidParameterValue_EmptyImageError: TCHcmError {
        TCHcmError(.invalidParameterValue_EmptyImageError)
    }

    /// 必填参数为空，请核实传入参数。
    public static var invalidParameterValue_EmptyInputError: TCHcmError {
        TCHcmError(.invalidParameterValue_EmptyInputError)
    }

    /// 超过图片大小限制，请裁剪后再评估。
    public static var invalidParameterValue_ExceedDownloadImageSizeError: TCHcmError {
        TCHcmError(.invalidParameterValue_ExceedDownloadImageSizeError)
    }

    /// 图像解码错误，请重新核实图像信息。
    public static var invalidParameterValue_FailDecodeError: TCHcmError {
        TCHcmError(.invalidParameterValue_FailDecodeError)
    }

    /// 图片下载失败，请核实图像下载地址。
    public static var invalidParameterValue_FailDownloadImageError: TCHcmError {
        TCHcmError(.invalidParameterValue_FailDownloadImageError)
    }

    /// 算式信息获取失败，请核实图像内容。
    public static var invalidParameterValue_FailRecognizeError: TCHcmError {
        TCHcmError(.invalidParameterValue_FailRecognizeError)
    }

    /// 输入的图片为非速算图片，请核实图片中存在手写数学公式，且背景没有太多干扰。
    public static var invalidParameterValue_InvalidImageError: TCHcmError {
        TCHcmError(.invalidParameterValue_InvalidImageError)
    }

    /// 无法找到用户，请确认已在控制台开通服务并使用了正确的HCMAPPID。
    public static var resourceNotFound_CannotFindUser: TCHcmError {
        TCHcmError(.resourceNotFound_CannotFindUser)
    }

    public func asHcmError() -> TCHcmError {
        return self
    }
}
