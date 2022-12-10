//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCKmsError {
    public struct InvalidParameter: TCErrorType {
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
    }
}

extension TCKmsError.InvalidParameter: Equatable {
    public static func == (lhs: TCKmsError.InvalidParameter, rhs: TCKmsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCKmsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCKmsError.InvalidParameter {
    public func toKmsError() -> TCKmsError {
        guard let code = TCKmsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCKmsError(code, context: self.context)
    }
}