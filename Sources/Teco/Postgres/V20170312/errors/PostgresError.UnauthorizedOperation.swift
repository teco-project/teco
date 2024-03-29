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

extension TCPostgresError {
    public struct UnauthorizedOperation: TCPostgresErrorType {
        enum Code: String {
            case userHasNoRealnameAuthentication = "UnauthorizedOperation.UserHasNoRealnameAuthentication"
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

        /// 用户未进行实名认证。
        public static var userHasNoRealnameAuthentication: UnauthorizedOperation {
            UnauthorizedOperation(.userHasNoRealnameAuthentication)
        }

        public func asPostgresError() -> TCPostgresError {
            let code: TCPostgresError.Code
            switch self.error {
            case .userHasNoRealnameAuthentication:
                code = .unauthorizedOperation_UserHasNoRealnameAuthentication
            }
            return TCPostgresError(code, context: self.context)
        }
    }
}
