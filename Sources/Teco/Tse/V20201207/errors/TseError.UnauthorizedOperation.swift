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

extension TCTseError {
    public struct UnauthorizedOperation: TCTseErrorType {
        enum Code: String {
            case camNoAuth = "UnauthorizedOperation.CamNoAuth"
            case camPassRoleNotExist = "UnauthorizedOperation.CamPassRoleNotExist"
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

        /// cam认证失败。
        public static var camNoAuth: UnauthorizedOperation {
            UnauthorizedOperation(.camNoAuth)
        }

        /// 子账号缺少passRole权限。
        public static var camPassRoleNotExist: UnauthorizedOperation {
            UnauthorizedOperation(.camPassRoleNotExist)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asTseError() -> TCTseError {
            let code: TCTseError.Code
            switch self.error {
            case .camNoAuth:
                code = .unauthorizedOperation_CamNoAuth
            case .camPassRoleNotExist:
                code = .unauthorizedOperation_CamPassRoleNotExist
            case .other:
                code = .unauthorizedOperation
            }
            return TCTseError(code, context: self.context)
        }
    }
}
