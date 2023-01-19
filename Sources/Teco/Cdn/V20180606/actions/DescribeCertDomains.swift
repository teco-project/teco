//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cdn {
    /// DescribeCertDomains请求参数结构体
    public struct DescribeCertDomainsRequest: TCRequestModel {
        /// PEM格式证书Base64编码后的字符串
        public let cert: String?

        /// 托管证书ID，Cert和CertId不能均未空，都填写时以CerId为准。
        public let certId: String?

        /// 域名所属产品，cdn或ecdn，默认cdn。
        public let product: String?

        public init(cert: String? = nil, certId: String? = nil, product: String? = nil) {
            self.cert = cert
            self.certId = certId
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case cert = "Cert"
            case certId = "CertId"
            case product = "Product"
        }
    }

    /// DescribeCertDomains返回参数结构体
    public struct DescribeCertDomainsResponse: TCResponseModel {
        /// 已接入CDN的域名列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domains: [String]?

        /// 已配置证书的CDN域名列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certifiedDomains: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case certifiedDomains = "CertifiedDomains"
            case requestId = "RequestId"
        }
    }

    /// 获取SSL证书中的可用域名
    ///
    /// DescribeCertDomains 用于校验SSL证书并提取证书中包含的域名。
    @inlinable
    public func describeCertDomains(_ input: DescribeCertDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertDomainsResponse> {
        self.client.execute(action: "DescribeCertDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取SSL证书中的可用域名
    ///
    /// DescribeCertDomains 用于校验SSL证书并提取证书中包含的域名。
    @inlinable
    public func describeCertDomains(_ input: DescribeCertDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertDomainsResponse {
        try await self.client.execute(action: "DescribeCertDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取SSL证书中的可用域名
    ///
    /// DescribeCertDomains 用于校验SSL证书并提取证书中包含的域名。
    @inlinable
    public func describeCertDomains(cert: String? = nil, certId: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertDomainsResponse> {
        self.describeCertDomains(DescribeCertDomainsRequest(cert: cert, certId: certId, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取SSL证书中的可用域名
    ///
    /// DescribeCertDomains 用于校验SSL证书并提取证书中包含的域名。
    @inlinable
    public func describeCertDomains(cert: String? = nil, certId: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertDomainsResponse {
        try await self.describeCertDomains(DescribeCertDomainsRequest(cert: cert, certId: certId, product: product), region: region, logger: logger, on: eventLoop)
    }
}
