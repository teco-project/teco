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

import Logging
import NIOCore
import TecoCore

extension Waf {
    /// DescribeDomainDetailsClb请求参数结构体
    public struct DescribeDomainDetailsClbRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 域名id
        public let domainId: String

        /// 实例id
        public let instanceId: String

        public init(domain: String, domainId: String, instanceId: String) {
            self.domain = domain
            self.domainId = domainId
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDomainDetailsClb返回参数结构体
    public struct DescribeDomainDetailsClbResponse: TCResponse {
        /// clb域名详情
        public let domainsClbPartInfo: ClbDomainsInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainsClbPartInfo = "DomainsClbPartInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取负载均衡型WAF域名详情
    ///
    /// 获取一个clbwaf域名详情
    @inlinable
    public func describeDomainDetailsClb(_ input: DescribeDomainDetailsClbRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainDetailsClbResponse> {
        self.client.execute(action: "DescribeDomainDetailsClb", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡型WAF域名详情
    ///
    /// 获取一个clbwaf域名详情
    @inlinable
    public func describeDomainDetailsClb(_ input: DescribeDomainDetailsClbRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainDetailsClbResponse {
        try await self.client.execute(action: "DescribeDomainDetailsClb", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取负载均衡型WAF域名详情
    ///
    /// 获取一个clbwaf域名详情
    @inlinable
    public func describeDomainDetailsClb(domain: String, domainId: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainDetailsClbResponse> {
        self.describeDomainDetailsClb(.init(domain: domain, domainId: domainId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡型WAF域名详情
    ///
    /// 获取一个clbwaf域名详情
    @inlinable
    public func describeDomainDetailsClb(domain: String, domainId: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainDetailsClbResponse {
        try await self.describeDomainDetailsClb(.init(domain: domain, domainId: domainId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
