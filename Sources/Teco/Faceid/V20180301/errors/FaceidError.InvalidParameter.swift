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

extension TCFaceidError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case ruleId = "InvalidParameter.RuleId"
            case unsupportEncryptField = "InvalidParameter.UnsupportEncryptField"
            case other = "InvalidParameter"
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
        
        /// RuleId不存在。
        public static var ruleId: InvalidParameter {
            InvalidParameter(.ruleId)
        }
        
        /// 存在不加密的字段，请参考文档修改。
        public static var unsupportEncryptField: InvalidParameter {
            InvalidParameter(.unsupportEncryptField)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCFaceidError.InvalidParameter: Equatable {
    public static func == (lhs: TCFaceidError.InvalidParameter, rhs: TCFaceidError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCFaceidError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCFaceidError.InvalidParameter {
    /// - Returns: ``TCFaceidError`` that holds the same error and context.
    public func toFaceidError() -> TCFaceidError {
        guard let code = TCFaceidError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCFaceidError(code, context: self.context)
    }
}

extension TCFaceidError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
