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

extension TCCmsError {
    public struct InvalidParameter: TCCmsErrorType {
        enum Code: String {
            case imageSizeTooSmall = "InvalidParameter.ImageSizeTooSmall"
            case invalidImageContent = "InvalidParameter.InvalidImageContent"
            case parameterError = "InvalidParameter.ParameterError"
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

        /// 图片尺寸过小。
        public static var imageSizeTooSmall: InvalidParameter {
            InvalidParameter(.imageSizeTooSmall)
        }

        /// 图片内容错误。
        public static var invalidImageContent: InvalidParameter {
            InvalidParameter(.invalidImageContent)
        }

        /// 参数不可用
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }

        public func asCmsError() -> TCCmsError {
            let code: TCCmsError.Code
            switch self.error {
            case .imageSizeTooSmall:
                code = .invalidParameter_ImageSizeTooSmall
            case .invalidImageContent:
                code = .invalidParameter_InvalidImageContent
            case .parameterError:
                code = .invalidParameter_ParameterError
            }
            return TCCmsError(code, context: self.context)
        }
    }
}
