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

extension Gaap {
    /// EnableGlobalDomain请求参数结构体
    public struct EnableGlobalDomainRequest: TCRequestModel {
        /// 域名ID
        public let domainId: String

        public init(domainId: String) {
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
        }
    }

    /// EnableGlobalDomain返回参数结构体
    public struct EnableGlobalDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启域名解析
    @inlinable
    public func enableGlobalDomain(_ input: EnableGlobalDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableGlobalDomainResponse> {
        self.client.execute(action: "EnableGlobalDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启域名解析
    @inlinable
    public func enableGlobalDomain(_ input: EnableGlobalDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableGlobalDomainResponse {
        try await self.client.execute(action: "EnableGlobalDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启域名解析
    @inlinable
    public func enableGlobalDomain(domainId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableGlobalDomainResponse> {
        self.enableGlobalDomain(EnableGlobalDomainRequest(domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启域名解析
    @inlinable
    public func enableGlobalDomain(domainId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableGlobalDomainResponse {
        try await self.enableGlobalDomain(EnableGlobalDomainRequest(domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
