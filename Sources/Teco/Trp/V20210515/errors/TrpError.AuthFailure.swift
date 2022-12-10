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

extension TCTrpError {
    public struct AuthFailure: TCErrorType {
        enum Code: String {
            case corpEmpty = "AuthFailure.CorpEmpty"
            case corpExpired = "AuthFailure.CorpExpired"
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
        
        /// 当前没有创建任何企业。
        public static var corpEmpty: AuthFailure {
            AuthFailure(.corpEmpty)
        }
        
        /// 企业服务时间已到期。
        public static var corpExpired: AuthFailure {
            AuthFailure(.corpExpired)
        }
        
        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }
    }
}

extension TCTrpError.AuthFailure: Equatable {
    public static func == (lhs: TCTrpError.AuthFailure, rhs: TCTrpError.AuthFailure) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTrpError.AuthFailure: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTrpError.AuthFailure {
    public func toTrpError() -> TCTrpError {
        guard let code = TCTrpError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTrpError(code, context: self.context)
    }
}