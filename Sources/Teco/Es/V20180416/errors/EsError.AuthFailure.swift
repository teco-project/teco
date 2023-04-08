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

extension TCEsError {
    public struct AuthFailure: TCEsErrorType {
        enum Code: String {
            case unAuthorizedOperation = "AuthFailure.UnAuthorizedOperation"
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

        /// 操作未授权。
        public static var unAuthorizedOperation: AuthFailure {
            AuthFailure(.unAuthorizedOperation)
        }

        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }

        public func asEsError() -> TCEsError {
            let code: TCEsError.Code
            switch self.error {
            case .unAuthorizedOperation:
                code = .authFailure_UnAuthorizedOperation
            case .other:
                code = .authFailure
            }
            return TCEsError(code, context: self.context)
        }
    }
}
