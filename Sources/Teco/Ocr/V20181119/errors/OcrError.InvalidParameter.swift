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

extension TCOcrError {
    public struct InvalidParameter: TCOcrErrorType {
        enum Code: String {
            case configFormatError = "InvalidParameter.ConfigFormatError"
            case engineImageDecodeFailed = "InvalidParameter.EngineImageDecodeFailed"
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

        /// Config不是有效的JSON格式。
        public static var configFormatError: InvalidParameter {
            InvalidParameter(.configFormatError)
        }

        /// 图片解码失败。
        public static var engineImageDecodeFailed: InvalidParameter {
            InvalidParameter(.engineImageDecodeFailed)
        }

        public func asOcrError() -> TCOcrError {
            let code: TCOcrError.Code
            switch self.error {
            case .configFormatError:
                code = .invalidParameter_ConfigFormatError
            case .engineImageDecodeFailed:
                code = .invalidParameter_EngineImageDecodeFailed
            }
            return TCOcrError(code, context: self.context)
        }
    }
}
