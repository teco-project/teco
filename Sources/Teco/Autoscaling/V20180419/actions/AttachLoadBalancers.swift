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

extension As {
    /// AttachLoadBalancers请求参数结构体
    public struct AttachLoadBalancersRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 传统型负载均衡器ID列表，每个伸缩组绑定传统型负载均衡器数量上限为20，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        public let loadBalancerIds: [String]?

        /// 应用型负载均衡器列表，每个伸缩组绑定应用型负载均衡器数量上限为100，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        public let forwardLoadBalancers: [ForwardLoadBalancer]?

        public init(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.loadBalancerIds = loadBalancerIds
            self.forwardLoadBalancers = forwardLoadBalancers
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case loadBalancerIds = "LoadBalancerIds"
            case forwardLoadBalancers = "ForwardLoadBalancers"
        }
    }

    /// AttachLoadBalancers返回参数结构体
    public struct AttachLoadBalancersResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 添加负载均衡器
    ///
    /// 此接口（AttachLoadBalancers）用于将负载均衡器添加到伸缩组。
    @inlinable
    public func attachLoadBalancers(_ input: AttachLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachLoadBalancersResponse> {
        self.client.execute(action: "AttachLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加负载均衡器
    ///
    /// 此接口（AttachLoadBalancers）用于将负载均衡器添加到伸缩组。
    @inlinable
    public func attachLoadBalancers(_ input: AttachLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachLoadBalancersResponse {
        try await self.client.execute(action: "AttachLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加负载均衡器
    ///
    /// 此接口（AttachLoadBalancers）用于将负载均衡器添加到伸缩组。
    @inlinable
    public func attachLoadBalancers(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachLoadBalancersResponse> {
        self.attachLoadBalancers(.init(autoScalingGroupId: autoScalingGroupId, loadBalancerIds: loadBalancerIds, forwardLoadBalancers: forwardLoadBalancers), region: region, logger: logger, on: eventLoop)
    }

    /// 添加负载均衡器
    ///
    /// 此接口（AttachLoadBalancers）用于将负载均衡器添加到伸缩组。
    @inlinable
    public func attachLoadBalancers(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachLoadBalancersResponse {
        try await self.attachLoadBalancers(.init(autoScalingGroupId: autoScalingGroupId, loadBalancerIds: loadBalancerIds, forwardLoadBalancers: forwardLoadBalancers), region: region, logger: logger, on: eventLoop)
    }
}
