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

extension TCFacefusionError {
    public struct FailedOperation: TCFacefusionErrorType {
        enum Code: String {
            case activityStatusInvalid = "FailedOperation.ActivityStatusInvalid"
            case faceBorderCheckFailed = "FailedOperation.FaceBorderCheckFailed"
            case faceDetectFailed = "FailedOperation.FaceDetectFailed"
            case faceExceedBorder = "FailedOperation.FaceExceedBorder"
            case faceFeatureFailed = "FailedOperation.FaceFeatureFailed"
            case faceFusionError = "FailedOperation.FaceFusionError"
            case facePoseFailed = "FailedOperation.FacePoseFailed"
            case faceRectInvalid = "FailedOperation.FaceRectInvalid"
            case faceShapeInvalid = "FailedOperation.FaceShapeInvalid"
            case faceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
            case fuseBackendServerFault = "FailedOperation.FuseBackendServerFault"
            case fuseDetectNoFace = "FailedOperation.FuseDetectNoFace"
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
            case imageSizeExceedFiveHundredKB = "FailedOperation.ImageSizeExceedFiveHundredKB"
            case imageSizeInvalid = "FailedOperation.ImageSizeInvalid"
            case imageUploadFailed = "FailedOperation.ImageUploadFailed"
            case innerError = "FailedOperation.InnerError"
            case materialValueExceed = "FailedOperation.MaterialValueExceed"
            case noFaceDetected = "FailedOperation.NoFaceDetected"
            case parameterValueError = "FailedOperation.ParameterValueError"
            case projectNotAuth = "FailedOperation.ProjectNotAuth"
            case requestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case serverError = "FailedOperation.ServerError"
            case templateFaceIDNotExist = "FailedOperation.TemplateFaceIDNotExist"
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

        /// 活动状态错误。
        public static var activityStatusInvalid: FailedOperation {
            FailedOperation(.activityStatusInvalid)
        }

        /// 人脸配准点出框错误码。
        public static var faceBorderCheckFailed: FailedOperation {
            FailedOperation(.faceBorderCheckFailed)
        }

        /// 人脸检测失败。
        public static var faceDetectFailed: FailedOperation {
            FailedOperation(.faceDetectFailed)
        }

        /// 人脸出框，无法使用。
        public static var faceExceedBorder: FailedOperation {
            FailedOperation(.faceExceedBorder)
        }

        /// 人脸提特征失败。
        public static var faceFeatureFailed: FailedOperation {
            FailedOperation(.faceFeatureFailed)
        }

        /// 人脸融合失败，请更换图片后重试。
        public static var faceFusionError: FailedOperation {
            FailedOperation(.faceFusionError)
        }

        /// 人脸姿态检测失败。
        public static var facePoseFailed: FailedOperation {
            FailedOperation(.facePoseFailed)
        }

        /// 人脸框不合法。
        public static var faceRectInvalid: FailedOperation {
            FailedOperation(.faceRectInvalid)
        }

        /// 人脸配准点不合法。
        public static var faceShapeInvalid: FailedOperation {
            FailedOperation(.faceShapeInvalid)
        }

        /// 人脸因太小被过滤，建议人脸分辨率不小于34*34。
        public static var faceSizeTooSmall: FailedOperation {
            FailedOperation(.faceSizeTooSmall)
        }

        /// 人脸融合后端服务异常。
        public static var fuseBackendServerFault: FailedOperation {
            FailedOperation(.fuseBackendServerFault)
        }

        /// 未检测到人脸。
        public static var fuseDetectNoFace: FailedOperation {
            FailedOperation(.fuseDetectNoFace)
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

        /// base64编码后的图片数据大小不超500k。
        public static var imageSizeExceedFiveHundredKB: FailedOperation {
            FailedOperation(.imageSizeExceedFiveHundredKB)
        }

        /// 图片尺寸过大或者过小；不满足算法要求。
        public static var imageSizeInvalid: FailedOperation {
            FailedOperation(.imageSizeInvalid)
        }

        /// 图片上传失败。
        public static var imageUploadFailed: FailedOperation {
            FailedOperation(.imageUploadFailed)
        }

        /// 服务内部错误。
        public static var innerError: FailedOperation {
            FailedOperation(.innerError)
        }

        /// 素材条数超过上限。
        public static var materialValueExceed: FailedOperation {
            FailedOperation(.materialValueExceed)
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

        /// 未知错误。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asFacefusionError() -> TCFacefusionError {
            let code: TCFacefusionError.Code
            switch self.error {
            case .activityStatusInvalid: 
                code = .failedOperation_ActivityStatusInvalid
            case .faceBorderCheckFailed: 
                code = .failedOperation_FaceBorderCheckFailed
            case .faceDetectFailed: 
                code = .failedOperation_FaceDetectFailed
            case .faceExceedBorder: 
                code = .failedOperation_FaceExceedBorder
            case .faceFeatureFailed: 
                code = .failedOperation_FaceFeatureFailed
            case .faceFusionError: 
                code = .failedOperation_FaceFusionError
            case .facePoseFailed: 
                code = .failedOperation_FacePoseFailed
            case .faceRectInvalid: 
                code = .failedOperation_FaceRectInvalid
            case .faceShapeInvalid: 
                code = .failedOperation_FaceShapeInvalid
            case .faceSizeTooSmall: 
                code = .failedOperation_FaceSizeTooSmall
            case .fuseBackendServerFault: 
                code = .failedOperation_FuseBackendServerFault
            case .fuseDetectNoFace: 
                code = .failedOperation_FuseDetectNoFace
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
            case .imageSizeExceedFiveHundredKB: 
                code = .failedOperation_ImageSizeExceedFiveHundredKB
            case .imageSizeInvalid: 
                code = .failedOperation_ImageSizeInvalid
            case .imageUploadFailed: 
                code = .failedOperation_ImageUploadFailed
            case .innerError: 
                code = .failedOperation_InnerError
            case .materialValueExceed: 
                code = .failedOperation_MaterialValueExceed
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
            case .unknown: 
                code = .failedOperation_Unknown
            case .other: 
                code = .failedOperation
            }
            return TCFacefusionError(code, context: self.context)
        }
    }
}
