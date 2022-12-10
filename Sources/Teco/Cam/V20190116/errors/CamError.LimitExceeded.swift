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

extension TCCamError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case identityFull = "LimitExceeded.IdentityFull"
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
        
        /// 身份提供商已达到上限。
        public static var identityFull: LimitExceeded {
            LimitExceeded(.identityFull)
        }
    }
}

extension TCCamError.LimitExceeded: Equatable {
    public static func == (lhs: TCCamError.LimitExceeded, rhs: TCCamError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCamError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCamError.LimitExceeded {
    public func toCamError() -> TCCamError {
        guard let code = TCCamError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCamError(code, context: self.context)
    }
}