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

extension TCZjError {
    public struct UnauthorizedOperation: TCZjErrorType {
        enum Code: String {
            case expiredLicense = "UnauthorizedOperation.ExpiredLicense"
            case invalidLicense = "UnauthorizedOperation.InvalidLicense"
            case roleFailure = "UnauthorizedOperation.RoleFailure"
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

        /// license已过期。
        public static var expiredLicense: UnauthorizedOperation {
            UnauthorizedOperation(.expiredLicense)
        }

        /// license无权限。
        public static var invalidLicense: UnauthorizedOperation {
            UnauthorizedOperation(.invalidLicense)
        }

        /// 用户角色错误。
        public static var roleFailure: UnauthorizedOperation {
            UnauthorizedOperation(.roleFailure)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asZjError() -> TCZjError {
            let code: TCZjError.Code
            switch self.error {
            case .expiredLicense:
                code = .unauthorizedOperation_ExpiredLicense
            case .invalidLicense:
                code = .unauthorizedOperation_InvalidLicense
            case .roleFailure:
                code = .unauthorizedOperation_RoleFailure
            case .other:
                code = .unauthorizedOperation
            }
            return TCZjError(code, context: self.context)
        }
    }
}
