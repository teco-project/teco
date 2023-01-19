//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCAfcError {
    public struct UnauthorizedOperation: TCAfcErrorType {
        enum Code: String {
            case authFailed = "UnauthorizedOperation.AuthFailed"
            case other = "UnauthorizedOperation"
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
        public static var authFailed: UnauthorizedOperation {
            UnauthorizedOperation(.authFailed)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asAfcError() -> TCAfcError {
            let code: TCAfcError.Code
            switch self.error {
            case .authFailed:
                code = .unauthorizedOperation_AuthFailed
            case .other:
                code = .unauthorizedOperation
            }
            return TCAfcError(code, context: self.context)
        }
    }
}
