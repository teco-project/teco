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

extension Clb {
    /// DeleteRule请求参数结构体
    public struct DeleteRuleRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// 负载均衡监听器ID。
        public let listenerId: String

        /// 要删除的转发规则的ID组成的数组。
        public let locationIds: [String]?

        /// 要删除的转发规则的域名，如果是多域名，可以指定多域名列表中的任意一个。
        public let domain: String?

        /// 要删除的转发规则的转发路径。
        public let url: String?

        /// 监听器下必须配置一个默认域名，当需要删除默认域名时，可以指定另一个域名作为新的默认域名，如果新的默认域名是多域名，可以指定多域名列表中的任意一个。
        public let newDefaultServerDomain: String?

        public init(loadBalancerId: String, listenerId: String, locationIds: [String]? = nil, domain: String? = nil, url: String? = nil, newDefaultServerDomain: String? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.locationIds = locationIds
            self.domain = domain
            self.url = url
            self.newDefaultServerDomain = newDefaultServerDomain
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case locationIds = "LocationIds"
            case domain = "Domain"
            case url = "Url"
            case newDefaultServerDomain = "NewDefaultServerDomain"
        }
    }

    /// DeleteRule返回参数结构体
    public struct DeleteRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除负载均衡七层监听器的转发规则
    ///
    /// DeleteRule 接口用来删除负载均衡实例七层监听器下的转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡七层监听器的转发规则
    ///
    /// DeleteRule 接口用来删除负载均衡实例七层监听器下的转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除负载均衡七层监听器的转发规则
    ///
    /// DeleteRule 接口用来删除负载均衡实例七层监听器下的转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRule(loadBalancerId: String, listenerId: String, locationIds: [String]? = nil, domain: String? = nil, url: String? = nil, newDefaultServerDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.deleteRule(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, locationIds: locationIds, domain: domain, url: url, newDefaultServerDomain: newDefaultServerDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 删除负载均衡七层监听器的转发规则
    ///
    /// DeleteRule 接口用来删除负载均衡实例七层监听器下的转发规则。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func deleteRule(loadBalancerId: String, listenerId: String, locationIds: [String]? = nil, domain: String? = nil, url: String? = nil, newDefaultServerDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.deleteRule(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, locationIds: locationIds, domain: domain, url: url, newDefaultServerDomain: newDefaultServerDomain), region: region, logger: logger, on: eventLoop)
    }
}
