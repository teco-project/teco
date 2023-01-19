//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCRkpError {
    public struct InvalidParameterValue: TCRkpErrorType {
        enum Code: String {
            case badBody = "InvalidParameterValue.BadBody"
            case bodyTooLarge = "InvalidParameterValue.BodyTooLarge"
            case capMisMatch = "InvalidParameterValue.CapMisMatch"
            case httpMethodError = "InvalidParameterValue.HttpMethodError"
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

        /// 请求body错误。
        public static var badBody: InvalidParameterValue {
            InvalidParameterValue(.badBody)
        }

        /// 请求包过大。
        public static var bodyTooLarge: InvalidParameterValue {
            InvalidParameterValue(.bodyTooLarge)
        }

        /// 验证码不匹配。
        public static var capMisMatch: InvalidParameterValue {
            InvalidParameterValue(.capMisMatch)
        }

        /// Http方法错误。
        public static var httpMethodError: InvalidParameterValue {
            InvalidParameterValue(.httpMethodError)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asRkpError() -> TCRkpError {
            let code: TCRkpError.Code
            switch self.error {
            case .badBody:
                code = .invalidParameterValue_BadBody
            case .bodyTooLarge:
                code = .invalidParameterValue_BodyTooLarge
            case .capMisMatch:
                code = .invalidParameterValue_CapMisMatch
            case .httpMethodError:
                code = .invalidParameterValue_HttpMethodError
            case .other:
                code = .invalidParameterValue
            }
            return TCRkpError(code, context: self.context)
        }
    }
}
