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
    public struct InvalidPublicKey: TCErrorType {
        enum Code: String {
            case duplicate = "InvalidPublicKey.Duplicate"
            case malformed = "InvalidPublicKey.Malformed"
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
        
        /// 无效密钥公钥。指定公钥已经存在。
        public static var duplicate: InvalidPublicKey {
            InvalidPublicKey(.duplicate)
        }
        
        /// 无效密钥公钥。指定公钥格式错误，不符合<code>OpenSSH RSA</code>格式要求。
        public static var malformed: InvalidPublicKey {
            InvalidPublicKey(.malformed)
        }
    }
}

extension TCCvmError.InvalidPublicKey: Equatable {
    public static func == (lhs: TCCvmError.InvalidPublicKey, rhs: TCCvmError.InvalidPublicKey) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.InvalidPublicKey: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.InvalidPublicKey {
    /// - Returns: ``TCCvmError`` that holds the same error and context.
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}

extension TCCvmError.InvalidPublicKey {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
