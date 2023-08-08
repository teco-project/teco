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

extension TCFacefusionError {
    public struct FailedOperation: TCFacefusionErrorType {
        enum Code: String {
            case faceBorderCheckFailed = "FailedOperation.FaceBorderCheckFailed"
            case faceExceedBorder = "FailedOperation.FaceExceedBorder"
            case faceFusionError = "FailedOperation.FaceFusionError"
            case faceRectInvalid = "FailedOperation.FaceRectInvalid"
            case faceShapeFailed = "FailedOperation.FaceShapeFailed"
            case faceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
            case fuseFreqCtrl = "FailedOperation.FuseFreqCtrl"
            case fuseImageError = "FailedOperation.FuseImageError"
            case fuseInnerError = "FailedOperation.FuseInnerError"
            case fuseMaterialNotAuth = "FailedOperation.FuseMaterialNotAuth"
            case fuseMaterialNotExist = "FailedOperation.FuseMaterialNotExist"
            case fuseSavePhotoFail = "FailedOperation.FuseSavePhotoFail"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imagePixelExceed = "FailedOperation.ImagePixelExceed"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
            case imageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
            case imageSizeExceed = "FailedOperation.ImageSizeExceed"
            case imageSizeInvalid = "FailedOperation.ImageSizeInvalid"
            case innerError = "FailedOperation.InnerError"
            case noFaceDetected = "FailedOperation.NoFaceDetected"
            case parameterValueError = "FailedOperation.ParameterValueError"
            case projectNotAuth = "FailedOperation.ProjectNotAuth"
            case requestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case serverError = "FailedOperation.ServerError"
            case templateFaceIDNotExist = "FailedOperation.TemplateFaceIDNotExist"
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

        /// 人脸配准点出框错误码。
        public static var faceBorderCheckFailed: FailedOperation {
            FailedOperation(.faceBorderCheckFailed)
        }

        /// 人脸出框，无法使用。
        public static var faceExceedBorder: FailedOperation {
            FailedOperation(.faceExceedBorder)
        }

        /// 人脸融合失败，请更换图片后重试。
        public static var faceFusionError: FailedOperation {
            FailedOperation(.faceFusionError)
        }

        /// 人脸框不合法。
        public static var faceRectInvalid: FailedOperation {
            FailedOperation(.faceRectInvalid)
        }

        /// 人脸配准失败。
        public static var faceShapeFailed: FailedOperation {
            FailedOperation(.faceShapeFailed)
        }

        /// 人脸因太小被过滤，建议人脸分辨率不小于34*34。
        public static var faceSizeTooSmall: FailedOperation {
            FailedOperation(.faceSizeTooSmall)
        }

        /// 操作太频繁，触发频控。
        public static var fuseFreqCtrl: FailedOperation {
            FailedOperation(.fuseFreqCtrl)
        }

        /// 图像处理出错。
        public static var fuseImageError: FailedOperation {
            FailedOperation(.fuseImageError)
        }

        /// 服务内部错误，请重试。
        public static var fuseInnerError: FailedOperation {
            FailedOperation(.fuseInnerError)
        }

        /// 素材未经过审核。
        public static var fuseMaterialNotAuth: FailedOperation {
            FailedOperation(.fuseMaterialNotAuth)
        }

        /// 素材不存在。
        public static var fuseMaterialNotExist: FailedOperation {
            FailedOperation(.fuseMaterialNotExist)
        }

        /// 保存结果图片出错。
        public static var fuseSavePhotoFail: FailedOperation {
            FailedOperation(.fuseSavePhotoFail)
        }

        /// 人脸检测-图片解码失败。
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }

        /// 图片下载失败。
        public static var imageDownloadError: FailedOperation {
            FailedOperation(.imageDownloadError)
        }

        /// 素材尺寸超过1080*1080像素。
        public static var imagePixelExceed: FailedOperation {
            FailedOperation(.imagePixelExceed)
        }

        /// 图片分辨率过大。建议您resize压缩到3k*3k以内。
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }

        /// 图片短边分辨率小于64。
        public static var imageResolutionTooSmall: FailedOperation {
            FailedOperation(.imageResolutionTooSmall)
        }

        /// 输入图片base64数据大小超过5M。
        public static var imageSizeExceed: FailedOperation {
            FailedOperation(.imageSizeExceed)
        }

        /// 图片尺寸过大或者过小；不满足算法要求。
        public static var imageSizeInvalid: FailedOperation {
            FailedOperation(.imageSizeInvalid)
        }

        /// 服务内部错误。
        public static var innerError: FailedOperation {
            FailedOperation(.innerError)
        }

        /// 无法检测出人脸, 人脸框配准分低于阈值。
        public static var noFaceDetected: FailedOperation {
            FailedOperation(.noFaceDetected)
        }

        /// 参数字段或者值有误。
        public static var parameterValueError: FailedOperation {
            FailedOperation(.parameterValueError)
        }

        /// 活动未支付授权费或已停用。
        public static var projectNotAuth: FailedOperation {
            FailedOperation(.projectNotAuth)
        }

        /// 请求实体太大。
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

        /// 系统内部错误。
        public static var serverError: FailedOperation {
            FailedOperation(.serverError)
        }

        /// 素材人脸ID不存在。
        public static var templateFaceIDNotExist: FailedOperation {
            FailedOperation(.templateFaceIDNotExist)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asFacefusionError() -> TCFacefusionError {
            let code: TCFacefusionError.Code
            switch self.error {
            case .faceBorderCheckFailed:
                code = .failedOperation_FaceBorderCheckFailed
            case .faceExceedBorder:
                code = .failedOperation_FaceExceedBorder
            case .faceFusionError:
                code = .failedOperation_FaceFusionError
            case .faceRectInvalid:
                code = .failedOperation_FaceRectInvalid
            case .faceShapeFailed:
                code = .failedOperation_FaceShapeFailed
            case .faceSizeTooSmall:
                code = .failedOperation_FaceSizeTooSmall
            case .fuseFreqCtrl:
                code = .failedOperation_FuseFreqCtrl
            case .fuseImageError:
                code = .failedOperation_FuseImageError
            case .fuseInnerError:
                code = .failedOperation_FuseInnerError
            case .fuseMaterialNotAuth:
                code = .failedOperation_FuseMaterialNotAuth
            case .fuseMaterialNotExist:
                code = .failedOperation_FuseMaterialNotExist
            case .fuseSavePhotoFail:
                code = .failedOperation_FuseSavePhotoFail
            case .imageDecodeFailed:
                code = .failedOperation_ImageDecodeFailed
            case .imageDownloadError:
                code = .failedOperation_ImageDownloadError
            case .imagePixelExceed:
                code = .failedOperation_ImagePixelExceed
            case .imageResolutionExceed:
                code = .failedOperation_ImageResolutionExceed
            case .imageResolutionTooSmall:
                code = .failedOperation_ImageResolutionTooSmall
            case .imageSizeExceed:
                code = .failedOperation_ImageSizeExceed
            case .imageSizeInvalid:
                code = .failedOperation_ImageSizeInvalid
            case .innerError:
                code = .failedOperation_InnerError
            case .noFaceDetected:
                code = .failedOperation_NoFaceDetected
            case .parameterValueError:
                code = .failedOperation_ParameterValueError
            case .projectNotAuth:
                code = .failedOperation_ProjectNotAuth
            case .requestEntityTooLarge:
                code = .failedOperation_RequestEntityTooLarge
            case .requestTimeout:
                code = .failedOperation_RequestTimeout
            case .rpcFail:
                code = .failedOperation_RpcFail
            case .serverError:
                code = .failedOperation_ServerError
            case .templateFaceIDNotExist:
                code = .failedOperation_TemplateFaceIDNotExist
            case .other:
                code = .failedOperation
            }
            return TCFacefusionError(code, context: self.context)
        }
    }
}
