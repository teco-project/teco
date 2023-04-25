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

extension TCStsError {
    public struct AuthFailure: TCStsErrorType {
        enum Code: String {
            case accessKeyIllegal = "AuthFailure.AccessKeyIllegal"
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

        /// 密钥不合法。
        public static var accessKeyIllegal: AuthFailure {
            AuthFailure(.accessKeyIllegal)
        }

        public func asStsError() -> TCStsError {
            let code: TCStsError.Code
            switch self.error {
            case .accessKeyIllegal:
                code = .authFailure_AccessKeyIllegal
            }
            return TCStsError(code, context: self.context)
        }
    }
}
