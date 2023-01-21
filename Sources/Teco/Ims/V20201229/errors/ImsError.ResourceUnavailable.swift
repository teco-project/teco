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

extension TCImsError {
    public struct ResourceUnavailable: TCImsErrorType {
        enum Code: String {
            case imageDownloadError = "ResourceUnavailable.ImageDownloadError"
            case invalidImageContent = "ResourceUnavailable.InvalidImageContent"
            case other = "ResourceUnavailable"
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

        /// 图片文件下载失败。
        public static var imageDownloadError: ResourceUnavailable {
            ResourceUnavailable(.imageDownloadError)
        }

        /// 图片资源错误。
        public static var invalidImageContent: ResourceUnavailable {
            ResourceUnavailable(.invalidImageContent)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asImsError() -> TCImsError {
            let code: TCImsError.Code
            switch self.error {
            case .imageDownloadError:
                code = .resourceUnavailable_ImageDownloadError
            case .invalidImageContent:
                code = .resourceUnavailable_InvalidImageContent
            case .other:
                code = .resourceUnavailable
            }
            return TCImsError(code, context: self.context)
        }
    }
}
