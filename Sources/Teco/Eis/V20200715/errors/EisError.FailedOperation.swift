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

extension TCEisError {
    public struct FailedOperation: TCEisErrorType {
        enum Code: String {
            case authenticationFailed = "FailedOperation.AuthenticationFailed"
            case metaCompilerError = "FailedOperation.MetaCompilerError"
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

        /// 鉴权失败。
        public static var authenticationFailed: FailedOperation {
            FailedOperation(.authenticationFailed)
        }

        /// 依赖服务错误。
        public static var metaCompilerError: FailedOperation {
            FailedOperation(.metaCompilerError)
        }

        public func asEisError() -> TCEisError {
            let code: TCEisError.Code
            switch self.error {
            case .authenticationFailed:
                code = .failedOperation_AuthenticationFailed
            case .metaCompilerError:
                code = .failedOperation_MetaCompilerError
            }
            return TCEisError(code, context: self.context)
        }
    }
}
