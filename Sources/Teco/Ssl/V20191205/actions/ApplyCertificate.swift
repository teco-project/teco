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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ssl {
    /// ApplyCertificate请求参数结构体
    public struct ApplyCertificateRequest: TCRequestModel {
        /// 验证方式：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证。
        public let dvAuthMethod: String

        /// 域名。
        public let domainName: String

        /// 项目 ID。
        public let projectId: UInt64?

        /// 证书类型，目前仅支持类型2。2 = TrustAsia TLS RSA CA。
        public let packageType: String?

        /// 邮箱。
        public let contactEmail: String?

        /// 手机。
        public let contactPhone: String?

        /// 有效期，默认12个月，目前仅支持12个月。
        public let validityPeriod: String?

        /// 加密算法，仅支持 RSA。
        public let csrEncryptAlgo: String?

        /// 密钥对参数，仅支持2048。
        public let csrKeyParameter: String?

        /// CSR 的加密密码。
        public let csrKeyPassword: String?

        /// 备注名称。
        public let alias: String?

        /// 原证书 ID，用于重新申请。
        public let oldCertificateId: String?

        /// 权益包ID，用于免费证书扩容包使用
        public let packageId: String?

        /// 签发后是否删除自动域名验证记录， 默认为否；仅域名为DNS_AUTO验证类型支持传参
        public let deleteDnsAutoRecord: Bool?

        public init(dvAuthMethod: String, domainName: String, projectId: UInt64? = nil, packageType: String? = nil, contactEmail: String? = nil, contactPhone: String? = nil, validityPeriod: String? = nil, csrEncryptAlgo: String? = nil, csrKeyParameter: String? = nil, csrKeyPassword: String? = nil, alias: String? = nil, oldCertificateId: String? = nil, packageId: String? = nil, deleteDnsAutoRecord: Bool? = nil) {
            self.dvAuthMethod = dvAuthMethod
            self.domainName = domainName
            self.projectId = projectId
            self.packageType = packageType
            self.contactEmail = contactEmail
            self.contactPhone = contactPhone
            self.validityPeriod = validityPeriod
            self.csrEncryptAlgo = csrEncryptAlgo
            self.csrKeyParameter = csrKeyParameter
            self.csrKeyPassword = csrKeyPassword
            self.alias = alias
            self.oldCertificateId = oldCertificateId
            self.packageId = packageId
            self.deleteDnsAutoRecord = deleteDnsAutoRecord
        }

        enum CodingKeys: String, CodingKey {
            case dvAuthMethod = "DvAuthMethod"
            case domainName = "DomainName"
            case projectId = "ProjectId"
            case packageType = "PackageType"
            case contactEmail = "ContactEmail"
            case contactPhone = "ContactPhone"
            case validityPeriod = "ValidityPeriod"
            case csrEncryptAlgo = "CsrEncryptAlgo"
            case csrKeyParameter = "CsrKeyParameter"
            case csrKeyPassword = "CsrKeyPassword"
            case alias = "Alias"
            case oldCertificateId = "OldCertificateId"
            case packageId = "PackageId"
            case deleteDnsAutoRecord = "DeleteDnsAutoRecord"
        }
    }

    /// ApplyCertificate返回参数结构体
    public struct ApplyCertificateResponse: TCResponseModel {
        /// 证书 ID。
        public let certificateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }

    /// 免费证书申请
    ///
    /// 本接口（ApplyCertificate）用于免费证书申请。
    @inlinable
    public func applyCertificate(_ input: ApplyCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyCertificateResponse> {
        self.client.execute(action: "ApplyCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 免费证书申请
    ///
    /// 本接口（ApplyCertificate）用于免费证书申请。
    @inlinable
    public func applyCertificate(_ input: ApplyCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyCertificateResponse {
        try await self.client.execute(action: "ApplyCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 免费证书申请
    ///
    /// 本接口（ApplyCertificate）用于免费证书申请。
    @inlinable
    public func applyCertificate(dvAuthMethod: String, domainName: String, projectId: UInt64? = nil, packageType: String? = nil, contactEmail: String? = nil, contactPhone: String? = nil, validityPeriod: String? = nil, csrEncryptAlgo: String? = nil, csrKeyParameter: String? = nil, csrKeyPassword: String? = nil, alias: String? = nil, oldCertificateId: String? = nil, packageId: String? = nil, deleteDnsAutoRecord: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyCertificateResponse> {
        self.applyCertificate(.init(dvAuthMethod: dvAuthMethod, domainName: domainName, projectId: projectId, packageType: packageType, contactEmail: contactEmail, contactPhone: contactPhone, validityPeriod: validityPeriod, csrEncryptAlgo: csrEncryptAlgo, csrKeyParameter: csrKeyParameter, csrKeyPassword: csrKeyPassword, alias: alias, oldCertificateId: oldCertificateId, packageId: packageId, deleteDnsAutoRecord: deleteDnsAutoRecord), region: region, logger: logger, on: eventLoop)
    }

    /// 免费证书申请
    ///
    /// 本接口（ApplyCertificate）用于免费证书申请。
    @inlinable
    public func applyCertificate(dvAuthMethod: String, domainName: String, projectId: UInt64? = nil, packageType: String? = nil, contactEmail: String? = nil, contactPhone: String? = nil, validityPeriod: String? = nil, csrEncryptAlgo: String? = nil, csrKeyParameter: String? = nil, csrKeyPassword: String? = nil, alias: String? = nil, oldCertificateId: String? = nil, packageId: String? = nil, deleteDnsAutoRecord: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyCertificateResponse {
        try await self.applyCertificate(.init(dvAuthMethod: dvAuthMethod, domainName: domainName, projectId: projectId, packageType: packageType, contactEmail: contactEmail, contactPhone: contactPhone, validityPeriod: validityPeriod, csrEncryptAlgo: csrEncryptAlgo, csrKeyParameter: csrKeyParameter, csrKeyPassword: csrKeyPassword, alias: alias, oldCertificateId: oldCertificateId, packageId: packageId, deleteDnsAutoRecord: deleteDnsAutoRecord), region: region, logger: logger, on: eventLoop)
    }
}
