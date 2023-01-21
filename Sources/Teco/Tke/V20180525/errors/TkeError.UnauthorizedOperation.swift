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

extension TCTkeError {
    public struct UnauthorizedOperation: TCTkeErrorType {
        enum Code: String {
            case camNoAuth = "UnauthorizedOperation.CamNoAuth"
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

        /// 无该接口CAM权限。
        ///
        /// 联系主账号或管理员前往CAM控制台配置该Action的权限
        public static var camNoAuth: UnauthorizedOperation {
            UnauthorizedOperation(.camNoAuth)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .camNoAuth:
                code = .unauthorizedOperation_CamNoAuth
            case .other:
                code = .unauthorizedOperation
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
