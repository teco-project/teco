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
    public struct UnknownParameter: TCErrorType {
        enum Code: String {
            case secretIdNotExists = "UnknownParameter.SecretIdNotExists"
            case other = "UnknownParameter"
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
        
        /// 密钥不存在。
        public static var secretIdNotExists: UnknownParameter {
            UnknownParameter(.secretIdNotExists)
        }
        
        /// 未知参数错误。
        public static var other: UnknownParameter {
            UnknownParameter(.other)
        }
    }
}

extension TCRceError.UnknownParameter: Equatable {
    public static func == (lhs: TCRceError.UnknownParameter, rhs: TCRceError.UnknownParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRceError.UnknownParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCRceError.UnknownParameter {
    /// - Returns: ``TCRceError`` that holds the same error and context.
    public func toRceError() -> TCRceError {
        guard let code = TCRceError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCRceError(code, context: self.context)
    }
}

extension TCRceError.UnknownParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
