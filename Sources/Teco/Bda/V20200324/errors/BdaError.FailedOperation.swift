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

extension TCBdaError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case audioDecodeFailed = "FailedOperation.AudioDecodeFailed"
            case audioEncodeFailed = "FailedOperation.AudioEncodeFailed"
            case bodyFeatureFail = "FailedOperation.BodyFeatureFail"
            case bodyJointsFail = "FailedOperation.BodyJointsFail"
            case bodyQualityNotQualified = "FailedOperation.BodyQualityNotQualified"
            case bodyRectIllegal = "FailedOperation.BodyRectIllegal"
            case bodyRectNumIllegal = "FailedOperation.BodyRectNumIllegal"
            case createTraceFailed = "FailedOperation.CreateTraceFailed"
            case downloadError = "FailedOperation.DownloadError"
            case groupEmpty = "FailedOperation.GroupEmpty"
            case imageBodyDetectFailed = "FailedOperation.ImageBodyDetectFailed"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imageFacedetectFailed = "FailedOperation.ImageFacedetectFailed"
            case imageNotForeground = "FailedOperation.ImageNotForeground"
            case imageNotSupported = "FailedOperation.ImageNotSupported"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
            case imageResolutionInsufficient = "FailedOperation.ImageResolutionInsufficient"
            case imageSizeExceed = "FailedOperation.ImageSizeExceed"
            case innerError = "FailedOperation.InnerError"
            case jobConflict = "FailedOperation.JobConflict"
            case jobQueueFull = "FailedOperation.JobQueueFull"
            case noBodyInPhoto = "FailedOperation.NoBodyInPhoto"
            case profileNumExceed = "FailedOperation.ProfileNumExceed"
            case requestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
            case requestLimitExceeded = "FailedOperation.RequestLimitExceeded"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case segmentFailed = "FailedOperation.SegmentFailed"
            case serverError = "FailedOperation.ServerError"
            case taskLimitExceeded = "FailedOperation.TaskLimitExceeded"
            case taskNotExist = "FailedOperation.TaskNotExist"
            case terminateTaskFailed = "FailedOperation.TerminateTaskFailed"
            case tooLargeFileError = "FailedOperation.TooLargeFileError"
            case unKnowError = "FailedOperation.UnKnowError"
            case unknown = "FailedOperation.Unknown"
            case videoDecodeFailed = "FailedOperation.VideoDecodeFailed"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 音频解码失败。
        public static var audioDecodeFailed: FailedOperation {
            FailedOperation(.audioDecodeFailed)
        }
        
        /// 音频编码失败。
        public static var audioEncodeFailed: FailedOperation {
            FailedOperation(.audioEncodeFailed)
        }
        
        /// 人体特征检测失败。
        public static var bodyFeatureFail: FailedOperation {
            FailedOperation(.bodyFeatureFail)
        }
        
        /// 人体关键点检测失败。
        public static var bodyJointsFail: FailedOperation {
            FailedOperation(.bodyJointsFail)
        }
        
        /// 人体质量分过低。
        public static var bodyQualityNotQualified: FailedOperation {
            FailedOperation(.bodyQualityNotQualified)
        }
        
        /// 输入的人体框不合法。
        public static var bodyRectIllegal: FailedOperation {
            FailedOperation(.bodyRectIllegal)
        }
        
        /// 输入的人体框数量不合法。
        public static var bodyRectNumIllegal: FailedOperation {
            FailedOperation(.bodyRectNumIllegal)
        }
        
        /// 创建动作轨迹失败，请选择符合要求的人体图片。
        public static var createTraceFailed: FailedOperation {
            FailedOperation(.createTraceFailed)
        }
        
        /// 文件下载失败。
        public static var downloadError: FailedOperation {
            FailedOperation(.downloadError)
        }
        
        /// 搜索的人体库为空。
        public static var groupEmpty: FailedOperation {
            FailedOperation(.groupEmpty)
        }
        
        /// 人体检测失败。
        public static var imageBodyDetectFailed: FailedOperation {
            FailedOperation(.imageBodyDetectFailed)
        }
        
        /// 图片解码失败。
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }
        
        /// 图片下载错误。
        public static var imageDownloadError: FailedOperation {
            FailedOperation(.imageDownloadError)
        }
        
        /// 人脸检测失败。
        public static var imageFacedetectFailed: FailedOperation {
            FailedOperation(.imageFacedetectFailed)
        }
        
        public static var imageNotForeground: FailedOperation {
            FailedOperation(.imageNotForeground)
        }
        
        /// 不支持的图片文件。
        public static var imageNotSupported: FailedOperation {
            FailedOperation(.imageNotSupported)
        }
        
        /// 图片分辨率过大。
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }
        
        /// 图片分辨率过小。
        public static var imageResolutionInsufficient: FailedOperation {
            FailedOperation(.imageResolutionInsufficient)
        }
        
        /// base64编码后的图片数据过大。
        public static var imageSizeExceed: FailedOperation {
            FailedOperation(.imageSizeExceed)
        }
        
        /// 服务内部错误，请重试。
        public static var innerError: FailedOperation {
            FailedOperation(.innerError)
        }
        
        /// 任务冲突。
        public static var jobConflict: FailedOperation {
            FailedOperation(.jobConflict)
        }
        
        /// 任务队列已满。
        public static var jobQueueFull: FailedOperation {
            FailedOperation(.jobQueueFull)
        }
        
        /// 图片中没有人体。
        public static var noBodyInPhoto: FailedOperation {
            FailedOperation(.noBodyInPhoto)
        }
        
        /// 人像数过多。
        public static var profileNumExceed: FailedOperation {
            FailedOperation(.profileNumExceed)
        }
        
        /// 整个请求体太大（通常主要是图片）。
        public static var requestEntityTooLarge: FailedOperation {
            FailedOperation(.requestEntityTooLarge)
        }
        
        /// 请求的次数超过了频率限制。
        public static var requestLimitExceeded: FailedOperation {
            FailedOperation(.requestLimitExceeded)
        }
        
        /// 后端服务超时。
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }
        
        /// RPC请求失败，一般为算法微服务故障。
        public static var rpcFail: FailedOperation {
            FailedOperation(.rpcFail)
        }
        
        /// 人像分割失败。
        public static var segmentFailed: FailedOperation {
            FailedOperation(.segmentFailed)
        }
        
        /// 算法服务异常，请重试。
        public static var serverError: FailedOperation {
            FailedOperation(.serverError)
        }
        
        /// 任务超过上限。
        public static var taskLimitExceeded: FailedOperation {
            FailedOperation(.taskLimitExceeded)
        }
        
        /// 任务不存在。
        public static var taskNotExist: FailedOperation {
            FailedOperation(.taskNotExist)
        }
        
        /// 任务取消失败。
        public static var terminateTaskFailed: FailedOperation {
            FailedOperation(.terminateTaskFailed)
        }
        
        /// 文件太大。
        public static var tooLargeFileError: FailedOperation {
            FailedOperation(.tooLargeFileError)
        }
        
        /// 内部错误。
        public static var unKnowError: FailedOperation {
            FailedOperation(.unKnowError)
        }
        
        /// 未知错误。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }
        
        /// 视频解码失败。
        public static var videoDecodeFailed: FailedOperation {
            FailedOperation(.videoDecodeFailed)
        }
    }
}

extension TCBdaError.FailedOperation: Equatable {
    public static func == (lhs: TCBdaError.FailedOperation, rhs: TCBdaError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBdaError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBdaError.FailedOperation {
    /// - Returns: ``TCBdaError`` that holds the same error and context.
    public func toBdaError() -> TCBdaError {
        guard let code = TCBdaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCBdaError(code, context: self.context)
    }
}

extension TCBdaError.FailedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
