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

extension TCSslError {
    public struct InvalidParameter: TCSslErrorType {
        enum Code: String {
            case certificateIdNumberLimit = "InvalidParameter.CertificateIdNumberLimit"
            case certificateStatusNotAllowResubmit = "InvalidParameter.CertificateStatusNotAllowResubmit"
            case certificatesNumberExceeded = "InvalidParameter.CertificatesNumberExceeded"
            case containsInvalidCertificateId = "InvalidParameter.ContainsInvalidCertificateId"
            case domainCountInvalid = "InvalidParameter.DomainCountInvalid"
            case domainInvalid = "InvalidParameter.DomainInvalid"
            case packageIdsInvalid = "InvalidParameter.PackageIdsInvalid"
            case periodInvalid = "InvalidParameter.PeriodInvalid"
            case productPidInvalid = "InvalidParameter.ProductPidInvalid"
            case renewAlgorithmInvalid = "InvalidParameter.RenewAlgorithmInvalid"
            case renewCsrInvalid = "InvalidParameter.RenewCsrInvalid"
            case renewGenCsrMethodInvalid = "InvalidParameter.RenewGenCsrMethodInvalid"
            case withDetailReason = "InvalidParameter.WithDetailReason"
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

        /// 查询的证书ID不能超过50个。
        public static var certificateIdNumberLimit: InvalidParameter {
            InvalidParameter(.certificateIdNumberLimit)
        }

        /// 当前证书状态不允许重新提交申请。
        public static var certificateStatusNotAllowResubmit: InvalidParameter {
            InvalidParameter(.certificateStatusNotAllowResubmit)
        }

        /// 证书数量超出限制。
        public static var certificatesNumberExceeded: InvalidParameter {
            InvalidParameter(.certificatesNumberExceeded)
        }

        /// 包含无效的证书ID。
        public static var containsInvalidCertificateId: InvalidParameter {
            InvalidParameter(.containsInvalidCertificateId)
        }

        /// 域名数量无效。
        public static var domainCountInvalid: InvalidParameter {
            InvalidParameter(.domainCountInvalid)
        }

        /// 域名无效，请重新输入。
        public static var domainInvalid: InvalidParameter {
            InvalidParameter(.domainInvalid)
        }

        /// 权益点ID列表无效。
        public static var packageIdsInvalid: InvalidParameter {
            InvalidParameter(.packageIdsInvalid)
        }

        /// 证书期限无效。
        public static var periodInvalid: InvalidParameter {
            InvalidParameter(.periodInvalid)
        }

        /// 产品PID无效。
        public static var productPidInvalid: InvalidParameter {
            InvalidParameter(.productPidInvalid)
        }

        /// 算法无效。
        public static var renewAlgorithmInvalid: InvalidParameter {
            InvalidParameter(.renewAlgorithmInvalid)
        }

        /// CSR无效。
        public static var renewCsrInvalid: InvalidParameter {
            InvalidParameter(.renewCsrInvalid)
        }

        /// 生成CSR方式无效。
        public static var renewGenCsrMethodInvalid: InvalidParameter {
            InvalidParameter(.renewGenCsrMethodInvalid)
        }

        /// 参数有误。
        public static var withDetailReason: InvalidParameter {
            InvalidParameter(.withDetailReason)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asSslError() -> TCSslError {
            let code: TCSslError.Code
            switch self.error {
            case .certificateIdNumberLimit:
                code = .invalidParameter_CertificateIdNumberLimit
            case .certificateStatusNotAllowResubmit:
                code = .invalidParameter_CertificateStatusNotAllowResubmit
            case .certificatesNumberExceeded:
                code = .invalidParameter_CertificatesNumberExceeded
            case .containsInvalidCertificateId:
                code = .invalidParameter_ContainsInvalidCertificateId
            case .domainCountInvalid:
                code = .invalidParameter_DomainCountInvalid
            case .domainInvalid:
                code = .invalidParameter_DomainInvalid
            case .packageIdsInvalid:
                code = .invalidParameter_PackageIdsInvalid
            case .periodInvalid:
                code = .invalidParameter_PeriodInvalid
            case .productPidInvalid:
                code = .invalidParameter_ProductPidInvalid
            case .renewAlgorithmInvalid:
                code = .invalidParameter_RenewAlgorithmInvalid
            case .renewCsrInvalid:
                code = .invalidParameter_RenewCsrInvalid
            case .renewGenCsrMethodInvalid:
                code = .invalidParameter_RenewGenCsrMethodInvalid
            case .withDetailReason:
                code = .invalidParameter_WithDetailReason
            case .other:
                code = .invalidParameter
            }
            return TCSslError(code, context: self.context)
        }
    }
}
