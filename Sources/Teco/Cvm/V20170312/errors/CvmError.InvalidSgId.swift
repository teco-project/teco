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
    public struct InvalidSgId: TCCvmErrorType {
        enum Code: String {
            case malformed = "InvalidSgId.Malformed"
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
        
        /// 指定的<code>安全组ID</code>格式错误，例如<code>实例ID</code>长度错误<code>sg-ide32</code>。
        public static var malformed: InvalidSgId {
            InvalidSgId(.malformed)
        }
        
        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .malformed: 
                code = .invalidSgId_Malformed
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
