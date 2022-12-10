//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIaiError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case acrossVersionsError = "FailedOperation.AcrossVersionsError"
            case conflictOperation = "FailedOperation.ConflictOperation"
            case createFaceConcurrent = "FailedOperation.CreateFaceConcurrent"
            case duplicatedGroupDescription = "FailedOperation.DuplicatedGroupDescription"
            case faceQualityNotQualified = "FailedOperation.FaceQualityNotQualified"
            case faceSizeTooSmall = "FailedOperation.FaceSizeTooSmall"
            case groupCannotUpgrade = "FailedOperation.GroupCannotUpgrade"
            case groupInDeletedState = "FailedOperation.GroupInDeletedState"
            case groupLostFaces = "FailedOperation.GroupLostFaces"
            case groupPersonMapExist = "FailedOperation.GroupPersonMapExist"
            case groupPersonMapNotExist = "FailedOperation.GroupPersonMapNotExist"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imageFacedetectFailed = "FailedOperation.ImageFacedetectFailed"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
            case imageResolutionTooSmall = "FailedOperation.ImageResolutionTooSmall"
            case imageSizeExceed = "FailedOperation.ImageSizeExceed"
            case jobCannnotRollback = "FailedOperation.JobCannnotRollback"
            case requestLimitExceeded = "FailedOperation.RequestLimitExceeded"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case searchFacesExceed = "FailedOperation.SearchFacesExceed"
            case serverError = "FailedOperation.ServerError"
            case unKnowError = "FailedOperation.UnKnowError"
            case upgradeJobIdNotExist = "FailedOperation.UpgradeJobIdNotExist"
            case other = "FailedOperation"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
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
        
        /// 该操作不支持跨算法模型版本。
        public static var acrossVersionsError: FailedOperation {
            FailedOperation(.acrossVersionsError)
        }
        
        /// 操作冲突，请勿同时操作相同的Person。
        public static var conflictOperation: FailedOperation {
            FailedOperation(.conflictOperation)
        }
        
        /// 增加人脸不支持并发操作。
        public static var createFaceConcurrent: FailedOperation {
            FailedOperation(.createFaceConcurrent)
        }
        
        /// 同一人员库中自定义描述字段不可重复。
        public static var duplicatedGroupDescription: FailedOperation {
            FailedOperation(.duplicatedGroupDescription)
        }
        
        /// 人脸图片质量不符要求。
        public static var faceQualityNotQualified: FailedOperation {
            FailedOperation(.faceQualityNotQualified)
        }
        
        /// 人脸框大小小于MinFaceSize设置，人脸被过滤。
        public static var faceSizeTooSmall: FailedOperation {
            FailedOperation(.faceSizeTooSmall)
        }
        
        /// 指定人员库的升级操作无法执行。
        public static var groupCannotUpgrade: FailedOperation {
            FailedOperation(.groupCannotUpgrade)
        }
        
        /// 当前组正处于删除状态，请等待。
        public static var groupInDeletedState: FailedOperation {
            FailedOperation(.groupInDeletedState)
        }
        
        /// 人员库存在人脸图片丢失。
        public static var groupLostFaces: FailedOperation {
            FailedOperation(.groupLostFaces)
        }
        
        /// 组中已包含对应的人员Id。
        public static var groupPersonMapExist: FailedOperation {
            FailedOperation(.groupPersonMapExist)
        }
        
        /// 组中不包含对应的人员Id。
        public static var groupPersonMapNotExist: FailedOperation {
            FailedOperation(.groupPersonMapNotExist)
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
        
        /// 图片分辨率过大。
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }
        
        /// 图片短边分辨率小于64。
        public static var imageResolutionTooSmall: FailedOperation {
            FailedOperation(.imageResolutionTooSmall)
        }
        
        /// base64编码后的图片数据大小不超过5M。
        public static var imageSizeExceed: FailedOperation {
            FailedOperation(.imageSizeExceed)
        }
        
        /// 任务无法回滚。
        public static var jobCannnotRollback: FailedOperation {
            FailedOperation(.jobCannnotRollback)
        }
        
        /// 请求频率超过限制。
        public static var requestLimitExceeded: FailedOperation {
            FailedOperation(.requestLimitExceeded)
        }
        
        /// 后端服务超时。
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }
        
        /// 检索人脸个数超过限制。
        public static var searchFacesExceed: FailedOperation {
            FailedOperation(.searchFacesExceed)
        }
        
        /// 算法服务异常，请重试。
        public static var serverError: FailedOperation {
            FailedOperation(.serverError)
        }
        
        /// 内部错误。
        public static var unKnowError: FailedOperation {
            FailedOperation(.unKnowError)
        }
        
        /// 人员库升级任务不存在。
        public static var upgradeJobIdNotExist: FailedOperation {
            FailedOperation(.upgradeJobIdNotExist)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCIaiError.FailedOperation: Equatable {
    public static func == (lhs: TCIaiError.FailedOperation, rhs: TCIaiError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIaiError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIaiError.FailedOperation {
    public func toIaiError() -> TCIaiError {
        guard let code = TCIaiError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIaiError(code, context: self.context)
    }
}