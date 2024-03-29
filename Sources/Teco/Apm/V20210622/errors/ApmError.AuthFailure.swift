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

extension TCApmError {
    public struct AuthFailure: TCApmErrorType {
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

        /// AuthFailure.UnauthorizedOperation
        public static var unauthorizedOperation: AuthFailure {
            AuthFailure(.unauthorizedOperation)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asApmError() -> TCApmError {
            let code: TCApmError.Code
            switch self.error {
            case .unauthorizedOperation:
                code = .authFailure_UnauthorizedOperation
            case .other:
                code = .authFailure
            }
            return TCApmError(code, context: self.context)
        }
    }
}
