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

extension Bmlb {
    /// DescribeL7Rules请求参数结构体
    public struct DescribeL7RulesRequest: TCRequest {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 七层监听器ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String

        /// 转发域名ID列表，可通过接口DescribeL7Rules查询。
        public let domainIds: [String]?

        public init(loadBalancerId: String, listenerId: String, domainIds: [String]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainIds = domainIds
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainIds = "DomainIds"
        }
    }

    /// DescribeL7Rules返回参数结构体
    public struct DescribeL7RulesResponse: TCResponse {
        /// 返回的转发规则列表。
        public let ruleSet: [L7Rule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleSet = "RuleSet"
            case requestId = "RequestId"
        }
    }

    /// 获取黑石负载均衡七层转发规则
    ///
    /// 获取黑石负载均衡七层转发规则。
    @inlinable
    public func describeL7Rules(_ input: DescribeL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7RulesResponse> {
        self.client.execute(action: "DescribeL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡七层转发规则
    ///
    /// 获取黑石负载均衡七层转发规则。
    @inlinable
    public func describeL7Rules(_ input: DescribeL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7RulesResponse {
        try await self.client.execute(action: "DescribeL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑石负载均衡七层转发规则
    ///
    /// 获取黑石负载均衡七层转发规则。
    @inlinable
    public func describeL7Rules(loadBalancerId: String, listenerId: String, domainIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7RulesResponse> {
        self.describeL7Rules(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, domainIds: domainIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡七层转发规则
    ///
    /// 获取黑石负载均衡七层转发规则。
    @inlinable
    public func describeL7Rules(loadBalancerId: String, listenerId: String, domainIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7RulesResponse {
        try await self.describeL7Rules(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, domainIds: domainIds), region: region, logger: logger, on: eventLoop)
    }
}
