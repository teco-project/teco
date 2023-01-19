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

extension TCCdbError {
    public struct UnauthorizedOperation: TCCdbErrorType {
        enum Code: String {
            case notEnoughPrivileges = "UnauthorizedOperation.NotEnoughPrivileges"
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

        /// 认证失败，没有足够权限。
        public static var notEnoughPrivileges: UnauthorizedOperation {
            UnauthorizedOperation(.notEnoughPrivileges)
        }

        public func asCdbError() -> TCCdbError {
            let code: TCCdbError.Code
            switch self.error {
            case .notEnoughPrivileges:
                code = .unauthorizedOperation_NotEnoughPrivileges
            }
            return TCCdbError(code, context: self.context)
        }
    }
}
