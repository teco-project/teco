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

extension TCBpaasError {
    public struct InternalError: TCBpaasErrorType {
        enum Code: String {
            case cauthError = "InternalError.CauthError"
            case dbError = "InternalError.DbError"
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
        public static var cauthError: InternalError {
            InternalError(.cauthError)
        }

        /// 插入db失败。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        public func asBpaasError() -> TCBpaasError {
            let code: TCBpaasError.Code
            switch self.error {
            case .cauthError:
                code = .internalError_CauthError
            case .dbError:
                code = .internalError_DbError
            }
            return TCBpaasError(code, context: self.context)
        }
    }
}
