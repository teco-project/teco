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

extension TCBatchError {
    public struct UnauthorizedOperation: TCBatchErrorType {
        enum Code: String {
            case userNotAllowedToUseBatch = "UnauthorizedOperation.UserNotAllowedToUseBatch"
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

        /// 禁止使用批量计算服务。
        public static var userNotAllowedToUseBatch: UnauthorizedOperation {
            UnauthorizedOperation(.userNotAllowedToUseBatch)
        }

        public func asBatchError() -> TCBatchError {
            let code: TCBatchError.Code
            switch self.error {
            case .userNotAllowedToUseBatch:
                code = .unauthorizedOperation_UserNotAllowedToUseBatch
            }
            return TCBatchError(code, context: self.context)
        }
    }
}
