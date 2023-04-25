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

extension TCImsError {
    public struct InvalidParameter: TCImsErrorType {
        enum Code: String {
            case imageSizeTooSmall = "InvalidParameter.ImageSizeTooSmall"
            case invalidImageContent = "InvalidParameter.InvalidImageContent"
            case invalidParameter = "InvalidParameter.InvalidParameter"
            case other = "InvalidParameter"
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

        /// 图片分辨率过低。
        public static var imageSizeTooSmall: InvalidParameter {
            InvalidParameter(.imageSizeTooSmall)
        }

        /// 图片内容错误。
        public static var invalidImageContent: InvalidParameter {
            InvalidParameter(.invalidImageContent)
        }

        /// 参数不合法。
        public static var invalidParameter: InvalidParameter {
            InvalidParameter(.invalidParameter)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asImsError() -> TCImsError {
            let code: TCImsError.Code
            switch self.error {
            case .imageSizeTooSmall:
                code = .invalidParameter_ImageSizeTooSmall
            case .invalidImageContent:
                code = .invalidParameter_InvalidImageContent
            case .invalidParameter:
                code = .invalidParameter_InvalidParameter
            case .other:
                code = .invalidParameter
            }
            return TCImsError(code, context: self.context)
        }
    }
}
