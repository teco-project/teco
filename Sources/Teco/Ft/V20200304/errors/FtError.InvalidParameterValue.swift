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
    public struct InvalidParameterValue: TCFtErrorType {
        enum Code: String {
            case faceRectInvalid = "InvalidParameterValue.FaceRectInvalid"
            case faceRectInvalidFirst = "InvalidParameterValue.FaceRectInvalidFirst"
            case faceRectInvalidSecond = "InvalidParameterValue.FaceRectInvalidSecond"
            case faceRectInvalidThrid = "InvalidParameterValue.FaceRectInvalidThrid"
            case imageEmpty = "InvalidParameterValue.ImageEmpty"
            case imageSizeExceed = "InvalidParameterValue.ImageSizeExceed"
            case lutImageSizeInvalid = "InvalidParameterValue.LutImageSizeInvalid"
            case noFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
            case parameterValueError = "InvalidParameterValue.ParameterValueError"
            case urlIllegal = "InvalidParameterValue.UrlIllegal"
            case other = "InvalidParameterValue"
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

        /// 人脸框不合法。
        public static var faceRectInvalid: InvalidParameterValue {
            InvalidParameterValue(.faceRectInvalid)
        }

        /// 第1个人脸框参数不合法。
        public static var faceRectInvalidFirst: InvalidParameterValue {
            InvalidParameterValue(.faceRectInvalidFirst)
        }

        /// 第2个人脸框参数不合法。
        public static var faceRectInvalidSecond: InvalidParameterValue {
            InvalidParameterValue(.faceRectInvalidSecond)
        }

        /// 第3个人脸框参数不合法。
        public static var faceRectInvalidThrid: InvalidParameterValue {
            InvalidParameterValue(.faceRectInvalidThrid)
        }

        /// 图片为空。
        public static var imageEmpty: InvalidParameterValue {
            InvalidParameterValue(.imageEmpty)
        }

        /// 图片数据太大。
        public static var imageSizeExceed: InvalidParameterValue {
            InvalidParameterValue(.imageSizeExceed)
        }

        /// 图片尺寸不对。
        public static var lutImageSizeInvalid: InvalidParameterValue {
            InvalidParameterValue(.lutImageSizeInvalid)
        }

        /// 图片中没有人脸。
        public static var noFaceInPhoto: InvalidParameterValue {
            InvalidParameterValue(.noFaceInPhoto)
        }

        /// 参数不合法。
        public static var parameterValueError: InvalidParameterValue {
            InvalidParameterValue(.parameterValueError)
        }

        /// URL格式不合法。
        public static var urlIllegal: InvalidParameterValue {
            InvalidParameterValue(.urlIllegal)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asFtError() -> TCFtError {
            let code: TCFtError.Code
            switch self.error {
            case .faceRectInvalid:
                code = .invalidParameterValue_FaceRectInvalid
            case .faceRectInvalidFirst:
                code = .invalidParameterValue_FaceRectInvalidFirst
            case .faceRectInvalidSecond:
                code = .invalidParameterValue_FaceRectInvalidSecond
            case .faceRectInvalidThrid:
                code = .invalidParameterValue_FaceRectInvalidThrid
            case .imageEmpty:
                code = .invalidParameterValue_ImageEmpty
            case .imageSizeExceed:
                code = .invalidParameterValue_ImageSizeExceed
            case .lutImageSizeInvalid:
                code = .invalidParameterValue_LutImageSizeInvalid
            case .noFaceInPhoto:
                code = .invalidParameterValue_NoFaceInPhoto
            case .parameterValueError:
                code = .invalidParameterValue_ParameterValueError
            case .urlIllegal:
                code = .invalidParameterValue_UrlIllegal
            case .other:
                code = .invalidParameterValue
            }
            return TCFtError(code, context: self.context)
        }
    }
}
