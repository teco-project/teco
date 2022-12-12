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

extension TCSsaError {
    public struct AuthFailure: TCSsaErrorType {
        enum Code: String {
            case authModuleFailed = "AuthFailure.AuthModuleFailed"
            case other = "AuthFailure"
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
        
        /// 云上资产、安全配置、合规风险配置、互联网攻击面测绘模块未授权。
        ///
        /// 引导客户进行模块授权
        public static var authModuleFailed: AuthFailure {
            AuthFailure(.authModuleFailed)
        }
        
        /// CAM签名/鉴权错误。
        public static var other: AuthFailure {
            AuthFailure(.other)
        }
        
        public func asSsaError() -> TCSsaError {
            let code: TCSsaError.Code
            switch self.error {
            case .authModuleFailed: 
                code = .authFailure_AuthModuleFailed
            case .other: 
                code = .authFailure
            }
            return TCSsaError(code, context: self.context)
        }
    }
}
