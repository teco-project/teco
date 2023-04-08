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
    /// ModifyRule请求参数结构体
    public struct ModifyRuleRequest: TCRequestModel {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 负载均衡监听器 ID。
        public let listenerId: String

        /// 要修改的转发规则的 ID。
        public let locationId: String

        /// 转发规则的新的转发路径，如不需修改Url，则不需提供此参数。
        public let url: String?

        /// 健康检查信息。
        public let healthCheck: HealthCheck?

        /// 规则的请求转发方式，可选值：WRR、LEAST_CONN、IP_HASH
        /// 分别表示按权重轮询、最小连接数、按IP哈希， 默认为 WRR。
        public let scheduler: String?

        /// 会话保持时间。
        public let sessionExpireTime: Int64?

        /// 负载均衡实例与后端服务之间的转发协议，默认HTTP，可取值：HTTP、HTTPS、TRPC。
        public let forwardType: String?

        /// TRPC被调服务器路由，ForwardType为TRPC时必填。
        public let trpcCallee: String?

        /// TRPC调用服务接口，ForwardType为TRPC时必填。
        public let trpcFunc: String?

        public init(loadBalancerId: String, listenerId: String, locationId: String, url: String? = nil, healthCheck: HealthCheck? = nil, scheduler: String? = nil, sessionExpireTime: Int64? = nil, forwardType: String? = nil, trpcCallee: String? = nil, trpcFunc: String? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.locationId = locationId
            self.url = url
            self.healthCheck = healthCheck
            self.scheduler = scheduler
            self.sessionExpireTime = sessionExpireTime
            self.forwardType = forwardType
            self.trpcCallee = trpcCallee
            self.trpcFunc = trpcFunc
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case locationId = "LocationId"
            case url = "Url"
            case healthCheck = "HealthCheck"
            case scheduler = "Scheduler"
            case sessionExpireTime = "SessionExpireTime"
            case forwardType = "ForwardType"
            case trpcCallee = "TrpcCallee"
            case trpcFunc = "TrpcFunc"
        }
    }

    /// ModifyRule返回参数结构体
    public struct ModifyRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改负载均衡七层监听器的转发规则
    ///
    /// ModifyRule 接口用来修改负载均衡七层监听器下的转发规则的各项属性，包括转发路径、健康检查属性、转发策略等。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyRule(_ input: ModifyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleResponse> {
        self.client.execute(action: "ModifyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡七层监听器的转发规则
    ///
    /// ModifyRule 接口用来修改负载均衡七层监听器下的转发规则的各项属性，包括转发路径、健康检查属性、转发策略等。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyRule(_ input: ModifyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleResponse {
        try await self.client.execute(action: "ModifyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改负载均衡七层监听器的转发规则
    ///
    /// ModifyRule 接口用来修改负载均衡七层监听器下的转发规则的各项属性，包括转发路径、健康检查属性、转发策略等。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyRule(loadBalancerId: String, listenerId: String, locationId: String, url: String? = nil, healthCheck: HealthCheck? = nil, scheduler: String? = nil, sessionExpireTime: Int64? = nil, forwardType: String? = nil, trpcCallee: String? = nil, trpcFunc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleResponse> {
        self.modifyRule(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, locationId: locationId, url: url, healthCheck: healthCheck, scheduler: scheduler, sessionExpireTime: sessionExpireTime, forwardType: forwardType, trpcCallee: trpcCallee, trpcFunc: trpcFunc), region: region, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡七层监听器的转发规则
    ///
    /// ModifyRule 接口用来修改负载均衡七层监听器下的转发规则的各项属性，包括转发路径、健康检查属性、转发策略等。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyRule(loadBalancerId: String, listenerId: String, locationId: String, url: String? = nil, healthCheck: HealthCheck? = nil, scheduler: String? = nil, sessionExpireTime: Int64? = nil, forwardType: String? = nil, trpcCallee: String? = nil, trpcFunc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleResponse {
        try await self.modifyRule(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, locationId: locationId, url: url, healthCheck: healthCheck, scheduler: scheduler, sessionExpireTime: sessionExpireTime, forwardType: forwardType, trpcCallee: trpcCallee, trpcFunc: trpcFunc), region: region, logger: logger, on: eventLoop)
    }
}
