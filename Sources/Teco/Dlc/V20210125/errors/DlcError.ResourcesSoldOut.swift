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

extension TCDlcError {
    public struct ResourcesSoldOut: TCDlcErrorType {
        enum Code: String {
            case unauthorizedGrantPolicy = "ResourcesSoldOut.UnauthorizedGrantPolicy"
            case unauthorizedOperation = "ResourcesSoldOut.UnauthorizedOperation"
            case unauthorizedRevokePolicy = "ResourcesSoldOut.UnauthorizedRevokePolicy"
            case other = "ResourcesSoldOut"
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

        /// 无权限授权策略。
        public static var unauthorizedGrantPolicy: ResourcesSoldOut {
            ResourcesSoldOut(.unauthorizedGrantPolicy)
        }

        /// 无权限操作。
        public static var unauthorizedOperation: ResourcesSoldOut {
            ResourcesSoldOut(.unauthorizedOperation)
        }

        /// 无权限回收权限。
        public static var unauthorizedRevokePolicy: ResourcesSoldOut {
            ResourcesSoldOut(.unauthorizedRevokePolicy)
        }

        /// 资源售罄。
        public static var other: ResourcesSoldOut {
            ResourcesSoldOut(.other)
        }

        public func asDlcError() -> TCDlcError {
            let code: TCDlcError.Code
            switch self.error {
            case .unauthorizedGrantPolicy:
                code = .resourcesSoldOut_UnauthorizedGrantPolicy
            case .unauthorizedOperation:
                code = .resourcesSoldOut_UnauthorizedOperation
            case .unauthorizedRevokePolicy:
                code = .resourcesSoldOut_UnauthorizedRevokePolicy
            case .other:
                code = .resourcesSoldOut
            }
            return TCDlcError(code, context: self.context)
        }
    }
}
