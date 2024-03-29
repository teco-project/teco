//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCWafError {
    public struct InvalidParameter: TCWafErrorType {
        enum Code: String {
            case certificationParameterErr = "InvalidParameter.CertificationParameterErr"
            case domainExceedsLimitErr = "InvalidParameter.DomainExceedsLimitErr"
            case domainNotRecord = "InvalidParameter.DomainNotRecord"
            case invalidCertificate = "InvalidParameter.InvalidCertificate"
            case logicErr = "InvalidParameter.LogicErr"
            case portParameterErr = "InvalidParameter.PortParameterErr"
            case protectionDomainParameterErr = "InvalidParameter.ProtectionDomainParameterErr"
            case queryCertBySSLIDFailed = "InvalidParameter.QueryCertBySSLIDFailed"
            case queryStringSyntaxErr = "InvalidParameter.QueryStringSyntaxErr"
            case sqlSyntaxErr = "InvalidParameter.SQLSyntaxErr"
            case supportTLSConfFailed = "InvalidParameter.SupportTLSConfFailed"
            case tlsParameterErr = "InvalidParameter.TLSParameterErr"
            case typeMismatch = "InvalidParameter.TypeMismatch"
            case unauthorizedOperationParameterErr = "InvalidParameter.UnauthorizedOperationParameterErr"
            case unknownAction = "InvalidParameter.UnknownAction"
            case upstreamParameterErr = "InvalidParameter.UpstreamParameterErr"
            case xffResetParameterErr = "InvalidParameter.XFFResetParameterErr"
            case other = "InvalidParameter"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 证书信息参数错误
        public static var certificationParameterErr: InvalidParameter {
            InvalidParameter(.certificationParameterErr)
        }

        /// 域名数量超出限制错误
        public static var domainExceedsLimitErr: InvalidParameter {
            InvalidParameter(.domainExceedsLimitErr)
        }

        /// 域名未备案
        public static var domainNotRecord: InvalidParameter {
            InvalidParameter(.domainNotRecord)
        }

        /// 证书内容非法。
        public static var invalidCertificate: InvalidParameter {
            InvalidParameter(.invalidCertificate)
        }

        public static var logicErr: InvalidParameter {
            InvalidParameter(.logicErr)
        }

        /// 端口信息参数错误
        public static var portParameterErr: InvalidParameter {
            InvalidParameter(.portParameterErr)
        }

        /// 防护域名参数错误
        public static var protectionDomainParameterErr: InvalidParameter {
            InvalidParameter(.protectionDomainParameterErr)
        }

        /// 根据ID查询证书失败。
        public static var queryCertBySSLIDFailed: InvalidParameter {
            InvalidParameter(.queryCertBySSLIDFailed)
        }

        public static var queryStringSyntaxErr: InvalidParameter {
            InvalidParameter(.queryStringSyntaxErr)
        }

        public static var sqlSyntaxErr: InvalidParameter {
            InvalidParameter(.sqlSyntaxErr)
        }

        /// 当前实例版本不支持开启TLS自定义，请升级到高级版及以上
        public static var supportTLSConfFailed: InvalidParameter {
            InvalidParameter(.supportTLSConfFailed)
        }

        /// TLS或加密套件参数错误
        public static var tlsParameterErr: InvalidParameter {
            InvalidParameter(.tlsParameterErr)
        }

        public static var typeMismatch: InvalidParameter {
            InvalidParameter(.typeMismatch)
        }

        /// 越权参数错误
        public static var unauthorizedOperationParameterErr: InvalidParameter {
            InvalidParameter(.unauthorizedOperationParameterErr)
        }

        /// UnknownAction
        public static var unknownAction: InvalidParameter {
            InvalidParameter(.unknownAction)
        }

        /// 回源信息参数错误
        public static var upstreamParameterErr: InvalidParameter {
            InvalidParameter(.upstreamParameterErr)
        }

        /// 开启XFF重置时，代理情况必须选择“否”
        public static var xffResetParameterErr: InvalidParameter {
            InvalidParameter(.xffResetParameterErr)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asWafError() -> TCWafError {
            let code: TCWafError.Code
            switch self.error {
            case .certificationParameterErr:
                code = .invalidParameter_CertificationParameterErr
            case .domainExceedsLimitErr:
                code = .invalidParameter_DomainExceedsLimitErr
            case .domainNotRecord:
                code = .invalidParameter_DomainNotRecord
            case .invalidCertificate:
                code = .invalidParameter_InvalidCertificate
            case .logicErr:
                code = .invalidParameter_LogicErr
            case .portParameterErr:
                code = .invalidParameter_PortParameterErr
            case .protectionDomainParameterErr:
                code = .invalidParameter_ProtectionDomainParameterErr
            case .queryCertBySSLIDFailed:
                code = .invalidParameter_QueryCertBySSLIDFailed
            case .queryStringSyntaxErr:
                code = .invalidParameter_QueryStringSyntaxErr
            case .sqlSyntaxErr:
                code = .invalidParameter_SQLSyntaxErr
            case .supportTLSConfFailed:
                code = .invalidParameter_SupportTLSConfFailed
            case .tlsParameterErr:
                code = .invalidParameter_TLSParameterErr
            case .typeMismatch:
                code = .invalidParameter_TypeMismatch
            case .unauthorizedOperationParameterErr:
                code = .invalidParameter_UnauthorizedOperationParameterErr
            case .unknownAction:
                code = .invalidParameter_UnknownAction
            case .upstreamParameterErr:
                code = .invalidParameter_UpstreamParameterErr
            case .xffResetParameterErr:
                code = .invalidParameter_XFFResetParameterErr
            case .other:
                code = .invalidParameter
            }
            return TCWafError(code, context: self.context)
        }
    }
}
