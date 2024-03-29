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

extension TCAiartError {
    public struct AuthFailure: TCAiartErrorType {
        enum Code: String {
            case unauthorizedOperation = "AuthFailure.UnauthorizedOperation"
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

        /// 无权执行该操作，请检查您的CAM策略，确保您拥有对应的CAM权限。
        ///
        /// 检查当前子账号是否拥有AI绘画的CAM策略
        public static var unauthorizedOperation: AuthFailure {
            AuthFailure(.unauthorizedOperation)
        }

        public func asAiartError() -> TCAiartError {
            let code: TCAiartError.Code
            switch self.error {
            case .unauthorizedOperation:
                code = .authFailure_UnauthorizedOperation
            }
            return TCAiartError(code, context: self.context)
        }
    }
}
