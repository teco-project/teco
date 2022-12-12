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

extension TCCamError {
    public struct LimitExceeded: TCCamErrorType {
        enum Code: String {
            case identityFull = "LimitExceeded.IdentityFull"
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
        
        /// 身份提供商已达到上限。
        public static var identityFull: LimitExceeded {
            LimitExceeded(.identityFull)
        }
        
        public func asCamError() -> TCCamError {
            let code: TCCamError.Code
            switch self.error {
            case .identityFull: 
                code = .limitExceeded_IdentityFull
            }
            return TCCamError(code, context: self.context)
        }
    }
}
