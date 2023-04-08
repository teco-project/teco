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

extension TCTbpError {
    public struct InternalError: TCTbpErrorType {
        enum Code: String {
            case errorMms = "InternalError.ErrorMms"
            case errorNlu = "InternalError.ErrorNlu"
            case errorRpc = "InternalError.ErrorRpc"
            case errorWebHook = "InternalError.ErrorWebHook"
            case noAppPrivilege = "InternalError.NoAppPrivilege"
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

        /// 查询数据库失败，没有对应数据。
        public static var errorMms: InternalError {
            InternalError(.errorMms)
        }

        /// nlu处理失败。
        public static var errorNlu: InternalError {
            InternalError(.errorNlu)
        }

        /// rpc调用失败。
        public static var errorRpc: InternalError {
            InternalError(.errorRpc)
        }

        /// webHook处理失败。
        public static var errorWebHook: InternalError {
            InternalError(.errorWebHook)
        }

        /// 未开通相关应用访问权限。
        public static var noAppPrivilege: InternalError {
            InternalError(.noAppPrivilege)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asTbpError() -> TCTbpError {
            let code: TCTbpError.Code
            switch self.error {
            case .errorMms:
                code = .internalError_ErrorMms
            case .errorNlu:
                code = .internalError_ErrorNlu
            case .errorRpc:
                code = .internalError_ErrorRpc
            case .errorWebHook:
                code = .internalError_ErrorWebHook
            case .noAppPrivilege:
                code = .internalError_NoAppPrivilege
            case .other:
                code = .internalError
            }
            return TCTbpError(code, context: self.context)
        }
    }
}
