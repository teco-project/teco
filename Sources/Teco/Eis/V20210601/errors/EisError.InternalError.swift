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

extension TCEisError {
    public struct InternalError: TCEisErrorType {
        enum Code: String {
            case checkRuntimeFailed = "InternalError.CheckRuntimeFailed"
            case countRuntimeInstancesFailed = "InternalError.CountRuntimeInstancesFailed"
            case databaseError = "InternalError.DatabaseError"
            case listRuntimeInstancesFailed = "InternalError.ListRuntimeInstancesFailed"
            case listRuntimesFailed = "InternalError.ListRuntimesFailed"
            case metaCompilerError = "InternalError.MetaCompilerError"
            case rpcPilotServerError = "InternalError.RpcPilotServerError"
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

        /// 检查运行时失败。
        public static var checkRuntimeFailed: InternalError {
            InternalError(.checkRuntimeFailed)
        }

        /// 获取运行时应用数量失败。
        public static var countRuntimeInstancesFailed: InternalError {
            InternalError(.countRuntimeInstancesFailed)
        }

        /// 数据库内部错误。
        public static var databaseError: InternalError {
            InternalError(.databaseError)
        }

        /// 获取运行时应用列表失败。
        public static var listRuntimeInstancesFailed: InternalError {
            InternalError(.listRuntimeInstancesFailed)
        }

        /// 获取运行时列表失败。
        public static var listRuntimesFailed: InternalError {
            InternalError(.listRuntimesFailed)
        }

        /// 依赖模块metacompiler错误。
        public static var metaCompilerError: InternalError {
            InternalError(.metaCompilerError)
        }

        /// rpc调用异常。
        public static var rpcPilotServerError: InternalError {
            InternalError(.rpcPilotServerError)
        }

        public func asEisError() -> TCEisError {
            let code: TCEisError.Code
            switch self.error {
            case .checkRuntimeFailed:
                code = .internalError_CheckRuntimeFailed
            case .countRuntimeInstancesFailed:
                code = .internalError_CountRuntimeInstancesFailed
            case .databaseError:
                code = .internalError_DatabaseError
            case .listRuntimeInstancesFailed:
                code = .internalError_ListRuntimeInstancesFailed
            case .listRuntimesFailed:
                code = .internalError_ListRuntimesFailed
            case .metaCompilerError:
                code = .internalError_MetaCompilerError
            case .rpcPilotServerError:
                code = .internalError_RpcPilotServerError
            }
            return TCEisError(code, context: self.context)
        }
    }
}
