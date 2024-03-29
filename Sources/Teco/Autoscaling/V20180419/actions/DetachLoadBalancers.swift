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

extension As {
    /// DetachLoadBalancers请求参数结构体
    public struct DetachLoadBalancersRequest: TCRequest {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 传统负载均衡器ID列表，列表长度上限为20，LoadBalancerIds 和 ForwardLoadBalancerIdentifications 二者同时最多只能指定一个
        public let loadBalancerIds: [String]?

        /// 应用型负载均衡器标识信息列表，列表长度上限为100，LoadBalancerIds 和 ForwardLoadBalancerIdentifications二者同时最多只能指定一个
        public let forwardLoadBalancerIdentifications: [ForwardLoadBalancerIdentification]?

        public init(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancerIdentifications: [ForwardLoadBalancerIdentification]? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.loadBalancerIds = loadBalancerIds
            self.forwardLoadBalancerIdentifications = forwardLoadBalancerIdentifications
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case loadBalancerIds = "LoadBalancerIds"
            case forwardLoadBalancerIdentifications = "ForwardLoadBalancerIdentifications"
        }
    }

    /// DetachLoadBalancers返回参数结构体
    public struct DetachLoadBalancersResponse: TCResponse {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 移出负载均衡器
    ///
    /// 本接口（DetachLoadBalancers）用于从伸缩组移出负载均衡器，本接口不会销毁负载均衡器。
    @inlinable
    public func detachLoadBalancers(_ input: DetachLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachLoadBalancersResponse> {
        self.client.execute(action: "DetachLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 移出负载均衡器
    ///
    /// 本接口（DetachLoadBalancers）用于从伸缩组移出负载均衡器，本接口不会销毁负载均衡器。
    @inlinable
    public func detachLoadBalancers(_ input: DetachLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachLoadBalancersResponse {
        try await self.client.execute(action: "DetachLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 移出负载均衡器
    ///
    /// 本接口（DetachLoadBalancers）用于从伸缩组移出负载均衡器，本接口不会销毁负载均衡器。
    @inlinable
    public func detachLoadBalancers(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancerIdentifications: [ForwardLoadBalancerIdentification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachLoadBalancersResponse> {
        self.detachLoadBalancers(.init(autoScalingGroupId: autoScalingGroupId, loadBalancerIds: loadBalancerIds, forwardLoadBalancerIdentifications: forwardLoadBalancerIdentifications), region: region, logger: logger, on: eventLoop)
    }

    /// 移出负载均衡器
    ///
    /// 本接口（DetachLoadBalancers）用于从伸缩组移出负载均衡器，本接口不会销毁负载均衡器。
    @inlinable
    public func detachLoadBalancers(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancerIdentifications: [ForwardLoadBalancerIdentification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachLoadBalancersResponse {
        try await self.detachLoadBalancers(.init(autoScalingGroupId: autoScalingGroupId, loadBalancerIds: loadBalancerIds, forwardLoadBalancerIdentifications: forwardLoadBalancerIdentifications), region: region, logger: logger, on: eventLoop)
    }
}
