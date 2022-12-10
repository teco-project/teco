//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCEisError {
    public struct InternalError: TCErrorType {
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
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
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
    }
}

extension TCEisError.InternalError: Equatable {
    public static func == (lhs: TCEisError.InternalError, rhs: TCEisError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEisError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEisError.InternalError {
    public func toEisError() -> TCEisError {
        guard let code = TCEisError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEisError(code, context: self.context)
    }
}