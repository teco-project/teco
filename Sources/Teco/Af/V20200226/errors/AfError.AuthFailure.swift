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

extension TCAfError {
    public struct AuthFailure: TCAfErrorType {
        enum Code: String {
            case capSigError = "AuthFailure.CapSigError"
            case expired = "AuthFailure.Expired"
            case other = "AuthFailure"
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

        /// 验证码签名错误。
        public static var capSigError: AuthFailure {
            AuthFailure(.capSigError)
        }

        /// 请求过期。
        public static var expired: AuthFailure {
            AuthFailure(.expired)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asAfError() -> TCAfError {
            let code: TCAfError.Code
            switch self.error {
            case .capSigError:
                code = .authFailure_CapSigError
            case .expired:
                code = .authFailure_Expired
            case .other:
                code = .authFailure
            }
            return TCAfError(code, context: self.context)
        }
    }
}
