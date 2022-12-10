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

extension TCMongodbError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case checkAppIdFailed = "InternalError.CheckAppIdFailed"
            case findInstanceFailed = "InternalError.FindInstanceFailed"
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
        
        /// appId校验失败。
        public static var checkAppIdFailed: InternalError {
            InternalError(.checkAppIdFailed)
        }
        
        /// 实例查询失败。
        ///
        /// 请输入正确的实例instanceId。
        public static var findInstanceFailed: InternalError {
            InternalError(.findInstanceFailed)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCMongodbError.InternalError: Equatable {
    public static func == (lhs: TCMongodbError.InternalError, rhs: TCMongodbError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMongodbError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMongodbError.InternalError {
    /// - Returns: ``TCMongodbError`` that holds the same error and context.
    public func toMongodbError() -> TCMongodbError {
        guard let code = TCMongodbError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCMongodbError(code, context: self.context)
    }
}

extension TCMongodbError.InternalError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
