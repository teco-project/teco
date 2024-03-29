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
    public struct InvalidParameterValue: TCFacefusionErrorType {
        enum Code: String {
            case activityIdNotFound = "InvalidParameterValue.ActivityIdNotFound"
            case faceRectParameterValueError = "InvalidParameterValue.FaceRectParameterValueError"
            case imageEmpty = "InvalidParameterValue.ImageEmpty"
            case materialIdNotFound = "InvalidParameterValue.MaterialIdNotFound"
            case noFaceInPhoto = "InvalidParameterValue.NoFaceInPhoto"
            case parameterValueError = "InvalidParameterValue.ParameterValueError"
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

        /// 未查找到活动id。
        public static var activityIdNotFound: InvalidParameterValue {
            InvalidParameterValue(.activityIdNotFound)
        }

        /// 人脸框参数有误或者人脸框太小。
        public static var faceRectParameterValueError: InvalidParameterValue {
            InvalidParameterValue(.faceRectParameterValueError)
        }

        /// 人脸检测-图片为空。
        public static var imageEmpty: InvalidParameterValue {
            InvalidParameterValue(.imageEmpty)
        }

        /// 未查找到素材Id。
        public static var materialIdNotFound: InvalidParameterValue {
            InvalidParameterValue(.materialIdNotFound)
        }

        /// 人脸检测-图片没有人脸。
        public static var noFaceInPhoto: InvalidParameterValue {
            InvalidParameterValue(.noFaceInPhoto)
        }

        /// 参数字段或者值有误。
        public static var parameterValueError: InvalidParameterValue {
            InvalidParameterValue(.parameterValueError)
        }

        public func asFacefusionError() -> TCFacefusionError {
            let code: TCFacefusionError.Code
            switch self.error {
            case .activityIdNotFound:
                code = .invalidParameterValue_ActivityIdNotFound
            case .faceRectParameterValueError:
                code = .invalidParameterValue_FaceRectParameterValueError
            case .imageEmpty:
                code = .invalidParameterValue_ImageEmpty
            case .materialIdNotFound:
                code = .invalidParameterValue_MaterialIdNotFound
            case .noFaceInPhoto:
                code = .invalidParameterValue_NoFaceInPhoto
            case .parameterValueError:
                code = .invalidParameterValue_ParameterValueError
            }
            return TCFacefusionError(code, context: self.context)
        }
    }
}
