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

/// Service error type returned by `Ft`.
public protocol TCFtErrorType: TCServiceErrorType {
    /// Get the service error as ``TCFtError``.
    ///
    /// - Returns: ``TCFtError`` that holds the same error code and context.
    func asFtError() -> TCFtError
}

public struct TCFtError: TCFtErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_CancelJobFailure = "FailedOperation.CancelJobFailure"
        case failedOperation_DetectNoFace = "FailedOperation.DetectNoFace"
        case failedOperation_FaceDetectFailed = "FailedOperation.FaceDetectFailed"
        case failedOperation_FaceExceedBorder = "FailedOperation.FaceExceedBorder"
        case failedOperation_FaceShapeFailed = "FailedOperation.FaceShapeFailed"
        case failedOperation_FaceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
        case failedOperation_FreqCtrl = "FailedOperation.FreqCtrl"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageDownloadError = "FailedOperation.ImageDownloadError"
        case failedOperation_ImageNotSupported = "FailedOperation.ImageNotSupported"
        case failedOperation_ImagePixelExceed = "FailedOperation.ImagePixelExceed"
        case failedOperation_ImageResolutionExceed = "FailedOperation.ImageResolutionExceed"
        case failedOperation_ImageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
        case failedOperation_InnerError = "FailedOperation.InnerError"
        case failedOperation_JobConflict = "FailedOperation.JobConflict"
        case failedOperation_JobHasBeenCanceled = "FailedOperation.JobHasBeenCanceled"
        case failedOperation_JobNotExist = "FailedOperation.JobNotExist"
        case failedOperation_JobStopProcessing = "FailedOperation.JobStopProcessing"
        case failedOperation_RequestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
        case failedOperation_RequestTimeout = "FailedOperation.RequestTimeout"
        case failedOperation_RpcFail = "FailedOperation.RpcFail"
        case failedOperation_TaskNotExist = "FailedOperation.TaskNotExist"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_FaceRectInvalid = "InvalidParameterValue.FaceRectInvalid"
        case invalidParameterValue_FaceRectInvalidFirst = "InvalidParameterValue.FaceRectInvalidFirst"
        case invalidParameterValue_FaceRectInvalidSecond = "InvalidParameterValue.FaceRectInvalidSecond"
        case invalidParameterValue_FaceRectInvalidThrid = "InvalidParameterValue.FaceRectInvalidThrid"
        case invalidParameterValue_ImageEmpty = "InvalidParameterValue.ImageEmpty"
        case invalidParameterValue_ImageSizeExceed = "InvalidParameterValue.ImageSizeExceed"
        case invalidParameterValue_NoFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
        case invalidParameterValue_ParameterValueError = "InvalidParameterValue.ParameterValueError"
        case invalidParameterValue_UrlIllegal = "InvalidParameterValue.UrlIllegal"
        case resourceUnavailable_Delivering = "ResourceUnavailable.Delivering"
        case resourceUnavailable_Freeze = "ResourceUnavailable.Freeze"
        case resourceUnavailable_GetAuthInfoError = "ResourceUnavailable.GetAuthInfoError"
        case resourceUnavailable_InArrears = "ResourceUnavailable.InArrears"
        case resourceUnavailable_LowBalance = "ResourceUnavailable.LowBalance"
        case resourceUnavailable_NotExist = "ResourceUnavailable.NotExist"
        case resourceUnavailable_NotReady = "ResourceUnavailable.NotReady"
        case resourceUnavailable_Recover = "ResourceUnavailable.Recover"
        case resourceUnavailable_StopUsing = "ResourceUnavailable.StopUsing"
        case resourceUnavailable_UnknownStatus = "ResourceUnavailable.UnknownStatus"
        case resourcesSoldOut_ChargeStatusException = "ResourcesSoldOut.ChargeStatusException"
        case unsupportedOperation_UnknowMethod = "UnsupportedOperation.UnknowMethod"
    }

    /// Error domains affliated to ``TCFtError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameterValue.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnsupportedOperation.self]
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

    /// 操作失败。
    public static var failedOperation: TCFtError {
        TCFtError(.failedOperation)
    }

    /// 撤销任务无法被成功执行, 请重试。
    public static var failedOperation_CancelJobFailure: TCFtError {
        TCFtError(.failedOperation_CancelJobFailure)
    }

    /// 未检测到人脸。
    public static var failedOperation_DetectNoFace: TCFtError {
        TCFtError(.failedOperation_DetectNoFace)
    }

    /// 人脸检测失败。
    public static var failedOperation_FaceDetectFailed: TCFtError {
        TCFtError(.failedOperation_FaceDetectFailed)
    }

    /// 人脸出框，无法使用。
    public static var failedOperation_FaceExceedBorder: TCFtError {
        TCFtError(.failedOperation_FaceExceedBorder)
    }

    /// 人脸配准失败。
    public static var failedOperation_FaceShapeFailed: TCFtError {
        TCFtError(.failedOperation_FaceShapeFailed)
    }

    /// 人脸因太小被过滤，建议人脸分辨率不小于34*34。
    public static var failedOperation_FaceSizeTooSmall: TCFtError {
        TCFtError(.failedOperation_FaceSizeTooSmall)
    }

    /// 操作太频繁，触发频控，请稍后重试。
    public static var failedOperation_FreqCtrl: TCFtError {
        TCFtError(.failedOperation_FreqCtrl)
    }

    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCFtError {
        TCFtError(.failedOperation_ImageDecodeFailed)
    }

    /// 图片下载错误。
    public static var failedOperation_ImageDownloadError: TCFtError {
        TCFtError(.failedOperation_ImageDownloadError)
    }

    /// 不支持的图片文件。
    public static var failedOperation_ImageNotSupported: TCFtError {
        TCFtError(.failedOperation_ImageNotSupported)
    }

    /// 素材尺寸超过2000*2000像素。
    public static var failedOperation_ImagePixelExceed: TCFtError {
        TCFtError(.failedOperation_ImagePixelExceed)
    }

    /// 图片分辨率过大，超过2000*2000。
    public static var failedOperation_ImageResolutionExceed: TCFtError {
        TCFtError(.failedOperation_ImageResolutionExceed)
    }

    /// 图片短边分辨率太小，小于64。
    public static var failedOperation_ImageResolutionTooSmall: TCFtError {
        TCFtError(.failedOperation_ImageResolutionTooSmall)
    }

    /// 服务内部错误，请重试。
    public static var failedOperation_InnerError: TCFtError {
        TCFtError(.failedOperation_InnerError)
    }

    /// 任务冲突。
    public static var failedOperation_JobConflict: TCFtError {
        TCFtError(.failedOperation_JobConflict)
    }

    /// 任务已撤销，请重新提交任务。
    public static var failedOperation_JobHasBeenCanceled: TCFtError {
        TCFtError(.failedOperation_JobHasBeenCanceled)
    }

    /// 任务不存在。
    public static var failedOperation_JobNotExist: TCFtError {
        TCFtError(.failedOperation_JobNotExist)
    }

    /// 任务已停止处理，请重新提交任务。
    public static var failedOperation_JobStopProcessing: TCFtError {
        TCFtError(.failedOperation_JobStopProcessing)
    }

    /// 整个请求体太大（通常主要是图片）。
    public static var failedOperation_RequestEntityTooLarge: TCFtError {
        TCFtError(.failedOperation_RequestEntityTooLarge)
    }

    /// 后端服务超时。
    public static var failedOperation_RequestTimeout: TCFtError {
        TCFtError(.failedOperation_RequestTimeout)
    }

    /// RPC请求失败，一般为算法微服务故障。
    public static var failedOperation_RpcFail: TCFtError {
        TCFtError(.failedOperation_RpcFail)
    }

    /// 任务不存在。
    public static var failedOperation_TaskNotExist: TCFtError {
        TCFtError(.failedOperation_TaskNotExist)
    }

    /// 内部错误。
    public static var internalError: TCFtError {
        TCFtError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCFtError {
        TCFtError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCFtError {
        TCFtError(.invalidParameterValue)
    }

    /// 人脸框不合法。
    public static var invalidParameterValue_FaceRectInvalid: TCFtError {
        TCFtError(.invalidParameterValue_FaceRectInvalid)
    }

    /// 第1个人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalidFirst: TCFtError {
        TCFtError(.invalidParameterValue_FaceRectInvalidFirst)
    }

    /// 第2个人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalidSecond: TCFtError {
        TCFtError(.invalidParameterValue_FaceRectInvalidSecond)
    }

    /// 第3个人脸框参数不合法。
    public static var invalidParameterValue_FaceRectInvalidThrid: TCFtError {
        TCFtError(.invalidParameterValue_FaceRectInvalidThrid)
    }

    /// 图片为空。
    public static var invalidParameterValue_ImageEmpty: TCFtError {
        TCFtError(.invalidParameterValue_ImageEmpty)
    }

    /// 图片数据太大。
    public static var invalidParameterValue_ImageSizeExceed: TCFtError {
        TCFtError(.invalidParameterValue_ImageSizeExceed)
    }

    /// 图片中没有人脸。
    public static var invalidParameterValue_NoFaceInPhoto: TCFtError {
        TCFtError(.invalidParameterValue_NoFaceInPhoto)
    }

    /// 参数不合法。
    public static var invalidParameterValue_ParameterValueError: TCFtError {
        TCFtError(.invalidParameterValue_ParameterValueError)
    }

    /// URL格式不合法。
    public static var invalidParameterValue_UrlIllegal: TCFtError {
        TCFtError(.invalidParameterValue_UrlIllegal)
    }

    /// 资源正在发货中。
    public static var resourceUnavailable_Delivering: TCFtError {
        TCFtError(.resourceUnavailable_Delivering)
    }

    /// 帐号已被冻结。
    public static var resourceUnavailable_Freeze: TCFtError {
        TCFtError(.resourceUnavailable_Freeze)
    }

    /// 获取认证信息失败。
    public static var resourceUnavailable_GetAuthInfoError: TCFtError {
        TCFtError(.resourceUnavailable_GetAuthInfoError)
    }

    /// 帐号已欠费。
    public static var resourceUnavailable_InArrears: TCFtError {
        TCFtError(.resourceUnavailable_InArrears)
    }

    /// 余额不足。
    public static var resourceUnavailable_LowBalance: TCFtError {
        TCFtError(.resourceUnavailable_LowBalance)
    }

    /// 计费状态未知，请确认是否已在控制台开通服务。
    public static var resourceUnavailable_NotExist: TCFtError {
        TCFtError(.resourceUnavailable_NotExist)
    }

    /// 服务未开通。
    public static var resourceUnavailable_NotReady: TCFtError {
        TCFtError(.resourceUnavailable_NotReady)
    }

    /// 资源已被回收。
    public static var resourceUnavailable_Recover: TCFtError {
        TCFtError(.resourceUnavailable_Recover)
    }

    /// 帐号已停服。
    public static var resourceUnavailable_StopUsing: TCFtError {
        TCFtError(.resourceUnavailable_StopUsing)
    }

    /// 计费状态未知。
    public static var resourceUnavailable_UnknownStatus: TCFtError {
        TCFtError(.resourceUnavailable_UnknownStatus)
    }

    /// 帐号已欠费。
    public static var resourcesSoldOut_ChargeStatusException: TCFtError {
        TCFtError(.resourcesSoldOut_ChargeStatusException)
    }

    /// 未知方法名。
    public static var unsupportedOperation_UnknowMethod: TCFtError {
        TCFtError(.unsupportedOperation_UnknowMethod)
    }

    public func asFtError() -> TCFtError {
        return self
    }
}
