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

extension TCMemcachedError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case dbOperationFailed = "FailedOperation.DbOperationFailed"
            case systemError = "FailedOperation.SystemError"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 数据库操作异常
        public static var dbOperationFailed: FailedOperation {
            FailedOperation(.dbOperationFailed)
        }
        
        /// 系统内部错误
        public static var systemError: FailedOperation {
            FailedOperation(.systemError)
        }
    }
}

extension TCMemcachedError.FailedOperation: Equatable {
    public static func == (lhs: TCMemcachedError.FailedOperation, rhs: TCMemcachedError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMemcachedError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMemcachedError.FailedOperation {
    /// - Returns: ``TCMemcachedError`` that holds the same error and context.
    public func toMemcachedError() -> TCMemcachedError {
        guard let code = TCMemcachedError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCMemcachedError(code, context: self.context)
    }
}

extension TCMemcachedError.FailedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
