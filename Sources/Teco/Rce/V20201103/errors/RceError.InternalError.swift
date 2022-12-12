//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCRceError {
    public struct InternalError: TCRceErrorType {
        enum Code: String {
            case backendLogicError = "InternalError.BackendLogicError"
            case connectDBTimeout = "InternalError.ConnectDBTimeout"
            case signBackendError = "InternalError.SignBackendError"
            case other = "InternalError"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        /// 业务系统逻辑错误。
        public static var backendLogicError: InternalError {
            InternalError(.backendLogicError)
        }
        
        /// 连接数据库超时。
        public static var connectDBTimeout: InternalError {
            InternalError(.connectDBTimeout)
        }
        
        /// Sign后端错误。
        public static var signBackendError: InternalError {
            InternalError(.signBackendError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asRceError() -> TCRceError {
            let code: TCRceError.Code
            switch self.error {
            case .backendLogicError: 
                code = .internalError_BackendLogicError
            case .connectDBTimeout: 
                code = .internalError_ConnectDBTimeout
            case .signBackendError: 
                code = .internalError_SignBackendError
            case .other: 
                code = .internalError
            }
            return TCRceError(code, context: self.context)
        }
    }
}
