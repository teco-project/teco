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

extension TCWavError {
    public struct AuthFailure: TCWavErrorType {
        enum Code: String {
            case invalidAuthorizationCode = "AuthFailure.InvalidAuthorizationCode"
            case missingAccessToken = "AuthFailure.MissingAccessToken"
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

        /// 授权码无效。
        ///
        /// 请重新申请授权码，再申请token
        public static var invalidAuthorizationCode: AuthFailure {
            AuthFailure(.invalidAuthorizationCode)
        }

        /// 令牌无效。
        ///
        /// 请重新申请令牌。
        public static var missingAccessToken: AuthFailure {
            AuthFailure(.missingAccessToken)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asWavError() -> TCWavError {
            let code: TCWavError.Code
            switch self.error {
            case .invalidAuthorizationCode:
                code = .authFailure_InvalidAuthorizationCode
            case .missingAccessToken:
                code = .authFailure_MissingAccessToken
            case .other:
                code = .authFailure
            }
            return TCWavError(code, context: self.context)
        }
    }
}
