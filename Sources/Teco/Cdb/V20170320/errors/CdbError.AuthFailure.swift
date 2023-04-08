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

extension TCCdbError {
    public struct AuthFailure: TCCdbErrorType {
        enum Code: String {
            case invalidAuthorization = "AuthFailure.InvalidAuthorization"
            case subAccountDenied = "AuthFailure.SubAccountDenied"
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

        /// 授权无效。
        public static var invalidAuthorization: AuthFailure {
            AuthFailure(.invalidAuthorization)
        }

        /// 子账号无权限。
        public static var subAccountDenied: AuthFailure {
            AuthFailure(.subAccountDenied)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asCdbError() -> TCCdbError {
            let code: TCCdbError.Code
            switch self.error {
            case .invalidAuthorization:
                code = .authFailure_InvalidAuthorization
            case .subAccountDenied:
                code = .authFailure_SubAccountDenied
            case .other:
                code = .authFailure
            }
            return TCCdbError(code, context: self.context)
        }
    }
}
