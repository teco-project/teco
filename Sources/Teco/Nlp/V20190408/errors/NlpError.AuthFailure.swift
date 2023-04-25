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

extension TCNlpError {
    public struct AuthFailure: TCNlpErrorType {
        enum Code: String {
            case invalidAuthorization = "AuthFailure.InvalidAuthorization"
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

        /// 请求头部的 Authorization 不符合腾讯云标准。
        public static var invalidAuthorization: AuthFailure {
            AuthFailure(.invalidAuthorization)
        }

        public func asNlpError() -> TCNlpError {
            let code: TCNlpError.Code
            switch self.error {
            case .invalidAuthorization:
                code = .authFailure_InvalidAuthorization
            }
            return TCNlpError(code, context: self.context)
        }
    }
}
