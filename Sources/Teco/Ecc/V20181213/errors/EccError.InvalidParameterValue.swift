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

extension TCEccError {
    public struct InvalidParameterValue: TCEccErrorType {
        enum Code: String {
            case appidInvalidError = "InvalidParameterValue.AppidInvalidError"
            case decodeImageError = "InvalidParameterValue.DecodeImageError"
            case downloadImageFailError = "InvalidParameterValue.DownloadImageFailError"
            case emptyImageError = "InvalidParameterValue.EmptyImageError"
            case imageDownloadFailError = "InvalidParameterValue.ImageDownloadFailError"
            case imageSizeExceedError = "InvalidParameterValue.ImageSizeExceedError"
            case imageTooBigError = "InvalidParameterValue.ImageTooBigError"
            case inputTypeValueError = "InvalidParameterValue.InputTypeValueError"
            case sessionError = "InvalidParameterValue.SessionError"
            case urlFromatIvadlidError = "InvalidParameterValue.UrlFromatIvadlidError"
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

        /// Appid无效。
        public static var appidInvalidError: InvalidParameterValue {
            InvalidParameterValue(.appidInvalidError)
        }

        /// 图片解码失败，请核实输入信息。
        public static var decodeImageError: InvalidParameterValue {
            InvalidParameterValue(.decodeImageError)
        }

        /// url图片下载失败。
        public static var downloadImageFailError: InvalidParameterValue {
            InvalidParameterValue(.downloadImageFailError)
        }

        /// 图片数据为空。
        public static var emptyImageError: InvalidParameterValue {
            InvalidParameterValue(.emptyImageError)
        }

        /// 图片下载失败。
        public static var imageDownloadFailError: InvalidParameterValue {
            InvalidParameterValue(.imageDownloadFailError)
        }

        /// 图片超出下载限制。
        public static var imageSizeExceedError: InvalidParameterValue {
            InvalidParameterValue(.imageSizeExceedError)
        }

        /// 图片尺寸太大。
        public static var imageTooBigError: InvalidParameterValue {
            InvalidParameterValue(.imageTooBigError)
        }

        /// 输入错误，请核实InputType参数。
        public static var inputTypeValueError: InvalidParameterValue {
            InvalidParameterValue(.inputTypeValueError)
        }

        /// SessionId无效。
        public static var sessionError: InvalidParameterValue {
            InvalidParameterValue(.sessionError)
        }

        /// 图像请求URL的格式错误。
        public static var urlFromatIvadlidError: InvalidParameterValue {
            InvalidParameterValue(.urlFromatIvadlidError)
        }

        public func asEccError() -> TCEccError {
            let code: TCEccError.Code
            switch self.error {
            case .appidInvalidError:
                code = .invalidParameterValue_AppidInvalidError
            case .decodeImageError:
                code = .invalidParameterValue_DecodeImageError
            case .downloadImageFailError:
                code = .invalidParameterValue_DownloadImageFailError
            case .emptyImageError:
                code = .invalidParameterValue_EmptyImageError
            case .imageDownloadFailError:
                code = .invalidParameterValue_ImageDownloadFailError
            case .imageSizeExceedError:
                code = .invalidParameterValue_ImageSizeExceedError
            case .imageTooBigError:
                code = .invalidParameterValue_ImageTooBigError
            case .inputTypeValueError:
                code = .invalidParameterValue_InputTypeValueError
            case .sessionError:
                code = .invalidParameterValue_SessionError
            case .urlFromatIvadlidError:
                code = .invalidParameterValue_UrlFromatIvadlidError
            }
            return TCEccError(code, context: self.context)
        }
    }
}
