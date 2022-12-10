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

extension TCTicError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case cosError = "InternalError.CosError"
            case dbError = "InternalError.DbError"
            case mqError = "InternalError.MqError"
            case system = "InternalError.System"
            case other = "InternalError"
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
        
        /// 使用的云存储错误。
        public static var cosError: InternalError {
            InternalError(.cosError)
        }
        
        /// 数据库操作错误。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }
        
        /// 使用的消息队列错误。
        public static var mqError: InternalError {
            InternalError(.mqError)
        }
        
        /// 系统错误。
        public static var system: InternalError {
            InternalError(.system)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCTicError.InternalError: Equatable {
    public static func == (lhs: TCTicError.InternalError, rhs: TCTicError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTicError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTicError.InternalError {
    /// - Returns: ``TCTicError`` that holds the same error and context.
    public func toTicError() -> TCTicError {
        guard let code = TCTicError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTicError(code, context: self.context)
    }
}

extension TCTicError.InternalError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
