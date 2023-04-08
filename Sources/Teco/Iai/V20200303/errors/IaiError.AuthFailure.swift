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

extension TCIaiError {
    public struct AuthFailure: TCIaiErrorType {
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

        /// 认证失败。
        public static var invalidAuthorization: AuthFailure {
            AuthFailure(.invalidAuthorization)
        }

        public func asIaiError() -> TCIaiError {
            let code: TCIaiError.Code
            switch self.error {
            case .invalidAuthorization:
                code = .authFailure_InvalidAuthorization
            }
            return TCIaiError(code, context: self.context)
        }
    }
}
