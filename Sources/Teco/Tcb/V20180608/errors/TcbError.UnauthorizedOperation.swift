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

extension TCTcbError {
    public struct UnauthorizedOperation: TCTcbErrorType {
        enum Code: String {
            case codeOAuthUnauthorized = "UnauthorizedOperation.CodeOAuthUnauthorized"
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

        /// 外部代码仓库未授权。
        public static var codeOAuthUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.codeOAuthUnauthorized)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asTcbError() -> TCTcbError {
            let code: TCTcbError.Code
            switch self.error {
            case .codeOAuthUnauthorized:
                code = .unauthorizedOperation_CodeOAuthUnauthorized
            case .other:
                code = .unauthorizedOperation
            }
            return TCTcbError(code, context: self.context)
        }
    }
}
