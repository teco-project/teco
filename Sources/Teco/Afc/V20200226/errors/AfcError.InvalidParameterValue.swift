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

extension TCAfcError {
    public struct InvalidParameterValue: TCAfcErrorType {
        enum Code: String {
            case badBody = "InvalidParameterValue.BadBody"
            case bodyTooLarge = "InvalidParameterValue.BodyTooLarge"
            case capMisMatch = "InvalidParameterValue.CapMisMatch"
            case httpMethodError = "InvalidParameterValue.HttpMethodError"
            case invalidDate = "InvalidParameterValue.InvalidDate"
            case invalidLimit = "InvalidParameterValue.InvalidLimit"
            case invalidSrvName = "InvalidParameterValue.InvalidSrvName"
            case invalidStride = "InvalidParameterValue.InvalidStride"
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

        /// BadBody。
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

        /// HTTP方法错误。
        public static var httpMethodError: InvalidParameterValue {
            InvalidParameterValue(.httpMethodError)
        }

        /// 日期取值错误。
        public static var invalidDate: InvalidParameterValue {
            InvalidParameterValue(.invalidDate)
        }

        /// PageLimit取值错误。
        public static var invalidLimit: InvalidParameterValue {
            InvalidParameterValue(.invalidLimit)
        }

        /// SrvName取值错误。
        public static var invalidSrvName: InvalidParameterValue {
            InvalidParameterValue(.invalidSrvName)
        }

        /// Stride取值错误。
        public static var invalidStride: InvalidParameterValue {
            InvalidParameterValue(.invalidStride)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asAfcError() -> TCAfcError {
            let code: TCAfcError.Code
            switch self.error {
            case .badBody:
                code = .invalidParameterValue_BadBody
            case .bodyTooLarge:
                code = .invalidParameterValue_BodyTooLarge
            case .capMisMatch:
                code = .invalidParameterValue_CapMisMatch
            case .httpMethodError:
                code = .invalidParameterValue_HttpMethodError
            case .invalidDate:
                code = .invalidParameterValue_InvalidDate
            case .invalidLimit:
                code = .invalidParameterValue_InvalidLimit
            case .invalidSrvName:
                code = .invalidParameterValue_InvalidSrvName
            case .invalidStride:
                code = .invalidParameterValue_InvalidStride
            case .other:
                code = .invalidParameterValue
            }
            return TCAfcError(code, context: self.context)
        }
    }
}
