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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCSqlserverError {
    public struct UnauthorizedOperation: TCSqlserverErrorType {
        enum Code: String {
            case permissionDenied = "UnauthorizedOperation.PermissionDenied"
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

        /// cam鉴权错误。
        public static var permissionDenied: UnauthorizedOperation {
            UnauthorizedOperation(.permissionDenied)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asSqlserverError() -> TCSqlserverError {
            let code: TCSqlserverError.Code
            switch self.error {
            case .permissionDenied:
                code = .unauthorizedOperation_PermissionDenied
            case .other:
                code = .unauthorizedOperation
            }
            return TCSqlserverError(code, context: self.context)
        }
    }
}
