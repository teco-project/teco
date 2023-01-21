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

extension Gaap {
    /// CreateDomain请求参数结构体
    public struct CreateDomainRequest: TCRequestModel {
        /// 监听器ID。
        public let listenerId: String

        /// 需要创建的域名，一个监听器下最大支持100个域名。
        public let domain: String

        /// 服务器证书，用于客户端与GAAP的HTTPS的交互。
        public let certificateId: String?

        /// 客户端CA证书，用于客户端与GAAP的HTTPS的交互。
        /// 仅当采用双向认证的方式时，需要设置该字段或PolyClientCertificateIds字段。
        public let clientCertificateId: String?

        /// 客户端CA证书，用于客户端与GAAP的HTTPS的交互。
        /// 仅当采用双向认证的方式时，需要设置该字段或ClientCertificateId字段。
        public let polyClientCertificateIds: [String]?

        /// 是否开启Http3特性的标识，其中：
        /// 0，表示不开启Http3；
        /// 1，表示开启Http3。
        /// 默认不开启Http3。可以通过SetDomainHttp3开启。
        public let http3Supported: Int64?

        public init(listenerId: String, domain: String, certificateId: String? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil, http3Supported: Int64? = nil) {
            self.listenerId = listenerId
            self.domain = domain
            self.certificateId = certificateId
            self.clientCertificateId = clientCertificateId
            self.polyClientCertificateIds = polyClientCertificateIds
            self.http3Supported = http3Supported
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case domain = "Domain"
            case certificateId = "CertificateId"
            case clientCertificateId = "ClientCertificateId"
            case polyClientCertificateIds = "PolyClientCertificateIds"
            case http3Supported = "Http3Supported"
        }
    }

    /// CreateDomain返回参数结构体
    public struct CreateDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建HTTPS监听器的访问域名
    ///
    /// 本接口（CreateDomain）用于创建HTTP/HTTPS监听器的访问域名，客户端请求通过访问该域名来请求后端业务。
    /// 该接口仅支持version3.0的通道。
    @inlinable @discardableResult
    public func createDomain(_ input: CreateDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        self.client.execute(action: "CreateDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建HTTPS监听器的访问域名
    ///
    /// 本接口（CreateDomain）用于创建HTTP/HTTPS监听器的访问域名，客户端请求通过访问该域名来请求后端业务。
    /// 该接口仅支持version3.0的通道。
    @inlinable @discardableResult
    public func createDomain(_ input: CreateDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.client.execute(action: "CreateDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建HTTPS监听器的访问域名
    ///
    /// 本接口（CreateDomain）用于创建HTTP/HTTPS监听器的访问域名，客户端请求通过访问该域名来请求后端业务。
    /// 该接口仅支持version3.0的通道。
    @inlinable @discardableResult
    public func createDomain(listenerId: String, domain: String, certificateId: String? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil, http3Supported: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        self.createDomain(CreateDomainRequest(listenerId: listenerId, domain: domain, certificateId: certificateId, clientCertificateId: clientCertificateId, polyClientCertificateIds: polyClientCertificateIds, http3Supported: http3Supported), region: region, logger: logger, on: eventLoop)
    }

    /// 创建HTTPS监听器的访问域名
    ///
    /// 本接口（CreateDomain）用于创建HTTP/HTTPS监听器的访问域名，客户端请求通过访问该域名来请求后端业务。
    /// 该接口仅支持version3.0的通道。
    @inlinable @discardableResult
    public func createDomain(listenerId: String, domain: String, certificateId: String? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil, http3Supported: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.createDomain(CreateDomainRequest(listenerId: listenerId, domain: domain, certificateId: certificateId, clientCertificateId: clientCertificateId, polyClientCertificateIds: polyClientCertificateIds, http3Supported: http3Supported), region: region, logger: logger, on: eventLoop)
    }
}
