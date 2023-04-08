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

extension Dnspod {
    /// DescribeDomain请求参数结构体
    public struct DescribeDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
        }
    }

    /// DescribeDomain返回参数结构体
    public struct DescribeDomainResponse: TCResponseModel {
        /// 域名信息
        public let domainInfo: DomainInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainInfo = "DomainInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取域名信息
    @inlinable
    public func describeDomain(_ input: DescribeDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainResponse> {
        self.client.execute(action: "DescribeDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名信息
    @inlinable
    public func describeDomain(_ input: DescribeDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainResponse {
        try await self.client.execute(action: "DescribeDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名信息
    @inlinable
    public func describeDomain(domain: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainResponse> {
        self.describeDomain(.init(domain: domain, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名信息
    @inlinable
    public func describeDomain(domain: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainResponse {
        try await self.describeDomain(.init(domain: domain, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
