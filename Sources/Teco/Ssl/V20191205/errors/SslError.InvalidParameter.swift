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

extension TCSslError {
    public struct InvalidParameter: TCSslErrorType {
        enum Code: String {
            case certificateIdNumberLimit = "InvalidParameter.CertificateIdNumberLimit"
            case certificatesNumberExceeded = "InvalidParameter.CertificatesNumberExceeded"
            case containsInvalidCertificateId = "InvalidParameter.ContainsInvalidCertificateId"
            case packageIdsInvalid = "InvalidParameter.PackageIdsInvalid"
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

        /// 证书数量超出限制。
        public static var certificatesNumberExceeded: InvalidParameter {
            InvalidParameter(.certificatesNumberExceeded)
        }

        /// 包含无效的证书ID。
        public static var containsInvalidCertificateId: InvalidParameter {
            InvalidParameter(.containsInvalidCertificateId)
        }

        /// 权益点ID列表无效。
        public static var packageIdsInvalid: InvalidParameter {
            InvalidParameter(.packageIdsInvalid)
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
            case .certificatesNumberExceeded:
                code = .invalidParameter_CertificatesNumberExceeded
            case .containsInvalidCertificateId:
                code = .invalidParameter_ContainsInvalidCertificateId
            case .packageIdsInvalid:
                code = .invalidParameter_PackageIdsInvalid
            case .withDetailReason:
                code = .invalidParameter_WithDetailReason
            case .other:
                code = .invalidParameter
            }
            return TCSslError(code, context: self.context)
        }
    }
}
