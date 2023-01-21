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

extension TCCiamError {
    public struct UnauthorizedOperation: TCCiamErrorType {
        enum Code: String {
            case tenantNotActivated = "UnauthorizedOperation.TenantNotActivated"
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

        /// 服务未开通。
        public static var tenantNotActivated: UnauthorizedOperation {
            UnauthorizedOperation(.tenantNotActivated)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asCiamError() -> TCCiamError {
            let code: TCCiamError.Code
            switch self.error {
            case .tenantNotActivated:
                code = .unauthorizedOperation_TenantNotActivated
            case .other:
                code = .unauthorizedOperation
            }
            return TCCiamError(code, context: self.context)
        }
    }
}
