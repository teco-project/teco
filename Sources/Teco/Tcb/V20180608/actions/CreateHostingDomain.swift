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

extension Tcb {
    /// CreateHostingDomain请求参数结构体
    public struct CreateHostingDomainRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 域名
        public let domain: String

        /// 证书ID
        public let certId: String

        public init(envId: String, domain: String, certId: String) {
            self.envId = envId
            self.domain = domain
            self.certId = certId
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case domain = "Domain"
            case certId = "CertId"
        }
    }

    /// CreateHostingDomain返回参数结构体
    public struct CreateHostingDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建托管域名
    @inlinable @discardableResult
    public func createHostingDomain(_ input: CreateHostingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHostingDomainResponse> {
        self.client.execute(action: "CreateHostingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建托管域名
    @inlinable @discardableResult
    public func createHostingDomain(_ input: CreateHostingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHostingDomainResponse {
        try await self.client.execute(action: "CreateHostingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建托管域名
    @inlinable @discardableResult
    public func createHostingDomain(envId: String, domain: String, certId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHostingDomainResponse> {
        self.createHostingDomain(.init(envId: envId, domain: domain, certId: certId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建托管域名
    @inlinable @discardableResult
    public func createHostingDomain(envId: String, domain: String, certId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHostingDomainResponse {
        try await self.createHostingDomain(.init(envId: envId, domain: domain, certId: certId), region: region, logger: logger, on: eventLoop)
    }
}
