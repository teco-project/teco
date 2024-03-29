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

extension TCCfsError {
    public struct InternalError: TCCfsErrorType {
        enum Code: String {
            case createFsFailed = "InternalError.CreateFsFailed"
            case getAccountStatusFailed = "InternalError.GetAccountStatusFailed"
            case other = "InternalError"
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

        /// 创建文件系统失败。
        public static var createFsFailed: InternalError {
            InternalError(.createFsFailed)
        }

        /// 获取用户费用状态失败。
        public static var getAccountStatusFailed: InternalError {
            InternalError(.getAccountStatusFailed)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asCfsError() -> TCCfsError {
            let code: TCCfsError.Code
            switch self.error {
            case .createFsFailed:
                code = .internalError_CreateFsFailed
            case .getAccountStatusFailed:
                code = .internalError_GetAccountStatusFailed
            case .other:
                code = .internalError
            }
            return TCCfsError(code, context: self.context)
        }
    }
}
