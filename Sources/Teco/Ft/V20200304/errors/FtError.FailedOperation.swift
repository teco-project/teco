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

extension TCFtError {
    public struct FailedOperation: TCFtErrorType {
        enum Code: String {
            case cancelJobFailure = "FailedOperation.CancelJobFailure"
            case detectNoFace = "FailedOperation.DetectNoFace"
            case faceDetectFailed = "FailedOperation.FaceDetectFailed"
            case faceExceedBorder = "FailedOperation.FaceExceedBorder"
            case faceShapeFailed = "FailedOperation.FaceShapeFailed"
            case faceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
            case freqCtrl = "FailedOperation.FreqCtrl"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imageNotSupported = "FailedOperation.ImageNotSupported"
            case imagePixelExceed = "FailedOperation.ImagePixelExceed"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
            case imageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
            case innerError = "FailedOperation.InnerError"
            case jobConflict = "FailedOperation.JobConflict"
            case jobHasBeenCanceled = "FailedOperation.JobHasBeenCanceled"
            case jobNotExist = "FailedOperation.JobNotExist"
            case jobStopProcessing = "FailedOperation.JobStopProcessing"
            case parameterValueError = "FailedOperation.ParameterValueError"
            case requestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case taskNotExist = "FailedOperation.TaskNotExist"
            case unknown = "FailedOperation.Unknown"
            case other = "FailedOperation"
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

        /// 撤销任务无法被成功执行, 请重试。
        public static var cancelJobFailure: FailedOperation {
            FailedOperation(.cancelJobFailure)
        }

        /// 未检测到人脸。
        public static var detectNoFace: FailedOperation {
            FailedOperation(.detectNoFace)
        }

        /// 人脸检测失败。
        public static var faceDetectFailed: FailedOperation {
            FailedOperation(.faceDetectFailed)
        }

        /// 人脸出框，无法使用。
        public static var faceExceedBorder: FailedOperation {
            FailedOperation(.faceExceedBorder)
        }

        /// 人脸配准失败。
        public static var faceShapeFailed: FailedOperation {
            FailedOperation(.faceShapeFailed)
        }

        /// 人脸因太小被过滤，建议人脸分辨率不小于34*34。
        public static var faceSizeTooSmall: FailedOperation {
            FailedOperation(.faceSizeTooSmall)
        }

        /// 操作太频繁，触发频控，请稍后重试。
        public static var freqCtrl: FailedOperation {
            FailedOperation(.freqCtrl)
        }

        /// 图片解码失败。
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }

        /// 图片下载错误。
        public static var imageDownloadError: FailedOperation {
            FailedOperation(.imageDownloadError)
        }

        /// 不支持的图片文件。
        public static var imageNotSupported: FailedOperation {
            FailedOperation(.imageNotSupported)
        }

        /// 素材尺寸超过2000*2000像素。
        public static var imagePixelExceed: FailedOperation {
            FailedOperation(.imagePixelExceed)
        }

        /// 图片分辨率过大，超过2000*2000。
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }

        /// 图片短边分辨率太小，小于64。
        public static var imageResolutionTooSmall: FailedOperation {
            FailedOperation(.imageResolutionTooSmall)
        }

        /// 服务内部错误，请重试。
        public static var innerError: FailedOperation {
            FailedOperation(.innerError)
        }

        /// 任务冲突。
        public static var jobConflict: FailedOperation {
            FailedOperation(.jobConflict)
        }

        /// 任务已撤销，请重新提交任务。
        public static var jobHasBeenCanceled: FailedOperation {
            FailedOperation(.jobHasBeenCanceled)
        }

        /// 任务不存在。
        public static var jobNotExist: FailedOperation {
            FailedOperation(.jobNotExist)
        }

        /// 任务已停止处理，请重新提交任务。
        public static var jobStopProcessing: FailedOperation {
            FailedOperation(.jobStopProcessing)
        }

        /// FailedOperation.ParameterValueError
        public static var parameterValueError: FailedOperation {
            FailedOperation(.parameterValueError)
        }

        /// 整个请求体太大（通常主要是图片）。
        public static var requestEntityTooLarge: FailedOperation {
            FailedOperation(.requestEntityTooLarge)
        }

        /// 后端服务超时。
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }

        /// RPC请求失败，一般为算法微服务故障。
        public static var rpcFail: FailedOperation {
            FailedOperation(.rpcFail)
        }

        /// 任务不存在。
        public static var taskNotExist: FailedOperation {
            FailedOperation(.taskNotExist)
        }

        /// 未知错误。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asFtError() -> TCFtError {
            let code: TCFtError.Code
            switch self.error {
            case .cancelJobFailure:
                code = .failedOperation_CancelJobFailure
            case .detectNoFace:
                code = .failedOperation_DetectNoFace
            case .faceDetectFailed:
                code = .failedOperation_FaceDetectFailed
            case .faceExceedBorder:
                code = .failedOperation_FaceExceedBorder
            case .faceShapeFailed:
                code = .failedOperation_FaceShapeFailed
            case .faceSizeTooSmall:
                code = .failedOperation_FaceSizeTooSmall
            case .freqCtrl:
                code = .failedOperation_FreqCtrl
            case .imageDecodeFailed:
                code = .failedOperation_ImageDecodeFailed
            case .imageDownloadError:
                code = .failedOperation_ImageDownloadError
            case .imageNotSupported:
                code = .failedOperation_ImageNotSupported
            case .imagePixelExceed:
                code = .failedOperation_ImagePixelExceed
            case .imageResolutionExceed:
                code = .failedOperation_ImageResolutionExceed
            case .imageResolutionTooSmall:
                code = .failedOperation_ImageResolutionTooSmall
            case .innerError:
                code = .failedOperation_InnerError
            case .jobConflict:
                code = .failedOperation_JobConflict
            case .jobHasBeenCanceled:
                code = .failedOperation_JobHasBeenCanceled
            case .jobNotExist:
                code = .failedOperation_JobNotExist
            case .jobStopProcessing:
                code = .failedOperation_JobStopProcessing
            case .parameterValueError:
                code = .failedOperation_ParameterValueError
            case .requestEntityTooLarge:
                code = .failedOperation_RequestEntityTooLarge
            case .requestTimeout:
                code = .failedOperation_RequestTimeout
            case .rpcFail:
                code = .failedOperation_RpcFail
            case .taskNotExist:
                code = .failedOperation_TaskNotExist
            case .unknown:
                code = .failedOperation_Unknown
            case .other:
                code = .failedOperation
            }
            return TCFtError(code, context: self.context)
        }
    }
}
