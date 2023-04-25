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

extension TCTmsError {
    public struct InvalidParameter: TCTmsErrorType {
        enum Code: String {
            case errAction = "InvalidParameter.ErrAction"
            case errTextContentLen = "InvalidParameter.ErrTextContentLen"
            case errTextContentType = "InvalidParameter.ErrTextContentType"
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

        /// 错误的action。
        public static var errAction: InvalidParameter {
            InvalidParameter(.errAction)
        }

        /// 请求的文本长度过长。
        public static var errTextContentLen: InvalidParameter {
            InvalidParameter(.errTextContentLen)
        }

        /// 文本类型错误，需要base64的文本。
        public static var errTextContentType: InvalidParameter {
            InvalidParameter(.errTextContentType)
        }

        /// InvalidParameter.ParameterError
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }

        public func asTmsError() -> TCTmsError {
            let code: TCTmsError.Code
            switch self.error {
            case .errAction:
                code = .invalidParameter_ErrAction
            case .errTextContentLen:
                code = .invalidParameter_ErrTextContentLen
            case .errTextContentType:
                code = .invalidParameter_ErrTextContentType
            case .parameterError:
                code = .invalidParameter_ParameterError
            }
            return TCTmsError(code, context: self.context)
        }
    }
}
