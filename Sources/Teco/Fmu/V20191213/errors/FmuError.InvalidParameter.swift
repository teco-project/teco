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

extension TCFmuError {
    public struct InvalidParameter: TCFmuErrorType {
        enum Code: String {
            case invalidParameter = "InvalidParameter.InvalidParameter"
            case noFaceInPhoto = "InvalidParameter.NoFaceInPhoto"
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

        /// 参数不合法。
        public static var invalidParameter: InvalidParameter {
            InvalidParameter(.invalidParameter)
        }

        /// 图片中没有人脸。
        public static var noFaceInPhoto: InvalidParameter {
            InvalidParameter(.noFaceInPhoto)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asFmuError() -> TCFmuError {
            let code: TCFmuError.Code
            switch self.error {
            case .invalidParameter:
                code = .invalidParameter_InvalidParameter
            case .noFaceInPhoto:
                code = .invalidParameter_NoFaceInPhoto
            case .other:
                code = .invalidParameter
            }
            return TCFmuError(code, context: self.context)
        }
    }
}
