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

extension TCDcError {
    public struct AuthFailure: TCDcErrorType {
        enum Code: String {
            case unauthorizedOperation = "AuthFailure.UnauthorizedOperation"
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

        /// CAM签名/鉴权错误，未授权的操作。
        public static var unauthorizedOperation: AuthFailure {
            AuthFailure(.unauthorizedOperation)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asDcError() -> TCDcError {
            let code: TCDcError.Code
            switch self.error {
            case .unauthorizedOperation:
                code = .authFailure_UnauthorizedOperation
            case .other:
                code = .authFailure
            }
            return TCDcError(code, context: self.context)
        }
    }
}
