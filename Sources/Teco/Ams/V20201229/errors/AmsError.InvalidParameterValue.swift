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

extension TCAmsError {
    public struct InvalidParameterValue: TCAmsErrorType {
        enum Code: String {
            case emptyImageContent = "InvalidParameterValue.EmptyImageContent"
            case imageSizeTooSmall = "InvalidParameterValue.ImageSizeTooSmall"
            case invalidContent = "InvalidParameterValue.InvalidContent"
            case invalidDataId = "InvalidParameterValue.InvalidDataId"
            case invalidFileContentSize = "InvalidParameterValue.InvalidFileContentSize"
            case invalidImageContent = "InvalidParameterValue.InvalidImageContent"
            case invalidParameter = "InvalidParameterValue.InvalidParameter"
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

        /// InvalidParameterValue.EmptyImageContent
        public static var emptyImageContent: InvalidParameterValue {
            InvalidParameterValue(.emptyImageContent)
        }

        /// InvalidParameterValue.ImageSizeTooSmall
        public static var imageSizeTooSmall: InvalidParameterValue {
            InvalidParameterValue(.imageSizeTooSmall)
        }

        /// InvalidParameterValue.InvalidContent
        public static var invalidContent: InvalidParameterValue {
            InvalidParameterValue(.invalidContent)
        }

        /// InvalidParameterValue.InvalidDataId
        public static var invalidDataId: InvalidParameterValue {
            InvalidParameterValue(.invalidDataId)
        }

        /// InvalidParameterValue.InvalidFileContentSize
        public static var invalidFileContentSize: InvalidParameterValue {
            InvalidParameterValue(.invalidFileContentSize)
        }

        /// InvalidParameterValue.InvalidImageContent
        public static var invalidImageContent: InvalidParameterValue {
            InvalidParameterValue(.invalidImageContent)
        }

        /// InvalidParameterValue.InvalidParameter
        public static var invalidParameter: InvalidParameterValue {
            InvalidParameterValue(.invalidParameter)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asAmsError() -> TCAmsError {
            let code: TCAmsError.Code
            switch self.error {
            case .emptyImageContent:
                code = .invalidParameterValue_EmptyImageContent
            case .imageSizeTooSmall:
                code = .invalidParameterValue_ImageSizeTooSmall
            case .invalidContent:
                code = .invalidParameterValue_InvalidContent
            case .invalidDataId:
                code = .invalidParameterValue_InvalidDataId
            case .invalidFileContentSize:
                code = .invalidParameterValue_InvalidFileContentSize
            case .invalidImageContent:
                code = .invalidParameterValue_InvalidImageContent
            case .invalidParameter:
                code = .invalidParameterValue_InvalidParameter
            case .other:
                code = .invalidParameterValue
            }
            return TCAmsError(code, context: self.context)
        }
    }
}
