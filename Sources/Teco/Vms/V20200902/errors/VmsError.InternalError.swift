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

extension TCVmsError {
    public struct InternalError: TCVmsErrorType {
        enum Code: String {
            case accessUpstreamTimeout = "InternalError.AccessUpstreamTimeout"
            case requestTimeException = "InternalError.RequestTimeException"
            case restApiInterfaceNotExist = "InternalError.RestApiInterfaceNotExist"
            case sigVerificationFail = "InternalError.SigVerificationFail"
            case ssoSendRecvFail = "InternalError.SsoSendRecvFail"
            case upstreamError = "InternalError.UpstreamError"
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
        
        /// 访问上游超时网络，请稍后重试。
        public static var accessUpstreamTimeout: InternalError {
            InternalError(.accessUpstreamTimeout)
        }
        
        /// 请求发起时间不正常，通常由您的服务器与腾讯云服务器之间的时间差超过10分钟引起。
        public static var requestTimeException: InternalError {
            InternalError(.requestTimeException)
        }
        
        /// 后端不存在该 REST API 接口，请核查 REST API 接口说明。
        public static var restApiInterfaceNotExist: InternalError {
            InternalError(.restApiInterfaceNotExist)
        }
        
        /// 后端 Sig 校验失败。
        public static var sigVerificationFail: InternalError {
            InternalError(.sigVerificationFail)
        }
        
        /// 内部sso通道超时。
        public static var ssoSendRecvFail: InternalError {
            InternalError(.ssoSendRecvFail)
        }
        
        /// 语音上游错误，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>沟通解决。
        public static var upstreamError: InternalError {
            InternalError(.upstreamError)
        }
        
        public func asVmsError() -> TCVmsError {
            let code: TCVmsError.Code
            switch self.error {
            case .accessUpstreamTimeout: 
                code = .internalError_AccessUpstreamTimeout
            case .requestTimeException: 
                code = .internalError_RequestTimeException
            case .restApiInterfaceNotExist: 
                code = .internalError_RestApiInterfaceNotExist
            case .sigVerificationFail: 
                code = .internalError_SigVerificationFail
            case .ssoSendRecvFail: 
                code = .internalError_SsoSendRecvFail
            case .upstreamError: 
                code = .internalError_UpstreamError
            }
            return TCVmsError(code, context: self.context)
        }
    }
}
