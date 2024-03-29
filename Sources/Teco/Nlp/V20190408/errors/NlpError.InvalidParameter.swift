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

extension TCNlpError {
    public struct InvalidParameter: TCNlpErrorType {
        enum Code: String {
            case serviceError = "InvalidParameter.ServiceError"
            case textTooLongCode = "InvalidParameter.TextTooLongCode"
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

        /// 服务调用失败。
        public static var serviceError: InvalidParameter {
            InvalidParameter(.serviceError)
        }

        /// 文本长度超过限制。
        public static var textTooLongCode: InvalidParameter {
            InvalidParameter(.textTooLongCode)
        }

        public func asNlpError() -> TCNlpError {
            let code: TCNlpError.Code
            switch self.error {
            case .serviceError:
                code = .invalidParameter_ServiceError
            case .textTooLongCode:
                code = .invalidParameter_TextTooLongCode
            }
            return TCNlpError(code, context: self.context)
        }
    }
}
