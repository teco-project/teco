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

extension TCTemError {
    public struct UnauthorizedOperation: TCTemErrorType {
        enum Code: String {
            case missingEksLogRole = "UnauthorizedOperation.MissingEksLogRole"
            case unauthorizedOperation = "UnauthorizedOperation.UnauthorizedOperation"
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

        /// 缺少容器服务的 CLS 日志角色，请打开控制台授权。
        public static var missingEksLogRole: UnauthorizedOperation {
            UnauthorizedOperation(.missingEksLogRole)
        }

        /// 未授权。
        public static var unauthorizedOperation: UnauthorizedOperation {
            UnauthorizedOperation(.unauthorizedOperation)
        }

        public func asTemError() -> TCTemError {
            let code: TCTemError.Code
            switch self.error {
            case .missingEksLogRole:
                code = .unauthorizedOperation_MissingEksLogRole
            case .unauthorizedOperation:
                code = .unauthorizedOperation_UnauthorizedOperation
            }
            return TCTemError(code, context: self.context)
        }
    }
}
