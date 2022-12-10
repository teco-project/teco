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

extension TCCvmError {
    public struct InvalidSecurityGroupId: TCErrorType {
        enum Code: String {
            case notFound = "InvalidSecurityGroupId.NotFound"
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
        
        /// 指定的<code>安全组ID</code>不存在。
        public static var notFound: InvalidSecurityGroupId {
            InvalidSecurityGroupId(.notFound)
        }
    }
}

extension TCCvmError.InvalidSecurityGroupId: Equatable {
    public static func == (lhs: TCCvmError.InvalidSecurityGroupId, rhs: TCCvmError.InvalidSecurityGroupId) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.InvalidSecurityGroupId: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.InvalidSecurityGroupId {
    /// - Returns: ``TCCvmError`` that holds the same error and context.
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}

extension TCCvmError.InvalidSecurityGroupId {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
