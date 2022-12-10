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

extension TCRceError {
    public struct AuthFailure: TCErrorType {
        enum Code: String {
            case capSigError = "AuthFailure.CapSigError"
            case expired = "AuthFailure.Expired"
            case other = "AuthFailure"
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
        
        /// 验证码签名错误。
        public static var capSigError: AuthFailure {
            AuthFailure(.capSigError)
        }
        
        /// 请求过期。
        public static var expired: AuthFailure {
            AuthFailure(.expired)
        }
        
        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }
    }
}

extension TCRceError.AuthFailure: Equatable {
    public static func == (lhs: TCRceError.AuthFailure, rhs: TCRceError.AuthFailure) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRceError.AuthFailure: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCRceError.AuthFailure {
    public func toRceError() -> TCRceError {
        guard let code = TCRceError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCRceError(code, context: self.context)
    }
}