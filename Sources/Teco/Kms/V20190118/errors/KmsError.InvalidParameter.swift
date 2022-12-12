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

extension TCKmsError {
    public struct InvalidParameter: TCKmsErrorType {
        enum Code: String {
            case decryptMaterialError = "InvalidParameter.DecryptMaterialError"
            case invalidPendingWindowInDays = "InvalidParameter.InvalidPendingWindowInDays"
            case other = "InvalidParameter"
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
        
        /// 解密EncryptedKeyMaterial失败。
        public static var decryptMaterialError: InvalidParameter {
            InvalidParameter(.decryptMaterialError)
        }
        
        /// 计划删除时间参数非法。
        public static var invalidPendingWindowInDays: InvalidParameter {
            InvalidParameter(.invalidPendingWindowInDays)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
        
        public func asKmsError() -> TCKmsError {
            let code: TCKmsError.Code
            switch self.error {
            case .decryptMaterialError: 
                code = .invalidParameter_DecryptMaterialError
            case .invalidPendingWindowInDays: 
                code = .invalidParameter_InvalidPendingWindowInDays
            case .other: 
                code = .invalidParameter
            }
            return TCKmsError(code, context: self.context)
        }
    }
}
