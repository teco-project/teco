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

extension TCHcmError {
    public struct InvalidParameterValue: TCHcmErrorType {
        enum Code: String {
            case cannotFindImageError = "InvalidParameterValue.CannotFindImageError"
            case cannotFindSession = "InvalidParameterValue.CannotFindSession"
            case emptyImageError = "InvalidParameterValue.EmptyImageError"
            case emptyInputError = "InvalidParameterValue.EmptyInputError"
            case exceedDownloadImageSizeError = "InvalidParameterValue.ExceedDownloadImageSizeError"
            case failDecodeError = "InvalidParameterValue.FailDecodeError"
            case failDownloadImageError = "InvalidParameterValue.FailDownloadImageError"
            case failRecognizeError = "InvalidParameterValue.FailRecognizeError"
            case invalidImageError = "InvalidParameterValue.InvalidImageError"
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

        /// 无法找到图像，请确认Image参数与Url参数无误。
        public static var cannotFindImageError: InvalidParameterValue {
            InvalidParameterValue(.cannotFindImageError)
        }

        /// 评估之前没有初始化或已过期。
        public static var cannotFindSession: InvalidParameterValue {
            InvalidParameterValue(.cannotFindSession)
        }

        /// Image参数为空，请重新填写。
        public static var emptyImageError: InvalidParameterValue {
            InvalidParameterValue(.emptyImageError)
        }

        /// 必填参数为空，请核实传入参数。
        public static var emptyInputError: InvalidParameterValue {
            InvalidParameterValue(.emptyInputError)
        }

        /// 超过图片大小限制，请裁剪后再评估。
        public static var exceedDownloadImageSizeError: InvalidParameterValue {
            InvalidParameterValue(.exceedDownloadImageSizeError)
        }

        /// 图像解码错误，请重新核实图像信息。
        public static var failDecodeError: InvalidParameterValue {
            InvalidParameterValue(.failDecodeError)
        }

        /// 图片下载失败，请核实图像下载地址。
        public static var failDownloadImageError: InvalidParameterValue {
            InvalidParameterValue(.failDownloadImageError)
        }

        /// 算式信息获取失败，请核实图像内容。
        public static var failRecognizeError: InvalidParameterValue {
            InvalidParameterValue(.failRecognizeError)
        }

        /// 输入的图片为非速算图片，请核实图片中存在手写数学公式，且背景没有太多干扰。
        public static var invalidImageError: InvalidParameterValue {
            InvalidParameterValue(.invalidImageError)
        }

        public func asHcmError() -> TCHcmError {
            let code: TCHcmError.Code
            switch self.error {
            case .cannotFindImageError:
                code = .invalidParameterValue_CannotFindImageError
            case .cannotFindSession:
                code = .invalidParameterValue_CannotFindSession
            case .emptyImageError:
                code = .invalidParameterValue_EmptyImageError
            case .emptyInputError:
                code = .invalidParameterValue_EmptyInputError
            case .exceedDownloadImageSizeError:
                code = .invalidParameterValue_ExceedDownloadImageSizeError
            case .failDecodeError:
                code = .invalidParameterValue_FailDecodeError
            case .failDownloadImageError:
                code = .invalidParameterValue_FailDownloadImageError
            case .failRecognizeError:
                code = .invalidParameterValue_FailRecognizeError
            case .invalidImageError:
                code = .invalidParameterValue_InvalidImageError
            }
            return TCHcmError(code, context: self.context)
        }
    }
}
