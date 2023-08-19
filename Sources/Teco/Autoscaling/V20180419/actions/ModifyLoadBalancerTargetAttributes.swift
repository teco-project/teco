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
    /// ModifyLoadBalancerTargetAttributes请求参数结构体
    public struct ModifyLoadBalancerTargetAttributesRequest: TCRequest {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 需修改目标规则属性的应用型负载均衡器列表，列表长度上限为100
        public let forwardLoadBalancers: [ForwardLoadBalancer]

        public init(autoScalingGroupId: String, forwardLoadBalancers: [ForwardLoadBalancer]) {
            self.autoScalingGroupId = autoScalingGroupId
            self.forwardLoadBalancers = forwardLoadBalancers
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case forwardLoadBalancers = "ForwardLoadBalancers"
        }
    }

    /// ModifyLoadBalancerTargetAttributes返回参数结构体
    public struct ModifyLoadBalancerTargetAttributesResponse: TCResponse {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 修改负载均衡器目标规则属性
    ///
    /// 本接口（ModifyLoadBalancerTargetAttributes）用于修改伸缩组内负载均衡器的目标规则属性。
    @inlinable
    public func modifyLoadBalancerTargetAttributes(_ input: ModifyLoadBalancerTargetAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerTargetAttributesResponse> {
        self.client.execute(action: "ModifyLoadBalancerTargetAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡器目标规则属性
    ///
    /// 本接口（ModifyLoadBalancerTargetAttributes）用于修改伸缩组内负载均衡器的目标规则属性。
    @inlinable
    public func modifyLoadBalancerTargetAttributes(_ input: ModifyLoadBalancerTargetAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerTargetAttributesResponse {
        try await self.client.execute(action: "ModifyLoadBalancerTargetAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改负载均衡器目标规则属性
    ///
    /// 本接口（ModifyLoadBalancerTargetAttributes）用于修改伸缩组内负载均衡器的目标规则属性。
    @inlinable
    public func modifyLoadBalancerTargetAttributes(autoScalingGroupId: String, forwardLoadBalancers: [ForwardLoadBalancer], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerTargetAttributesResponse> {
        self.modifyLoadBalancerTargetAttributes(.init(autoScalingGroupId: autoScalingGroupId, forwardLoadBalancers: forwardLoadBalancers), region: region, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡器目标规则属性
    ///
    /// 本接口（ModifyLoadBalancerTargetAttributes）用于修改伸缩组内负载均衡器的目标规则属性。
    @inlinable
    public func modifyLoadBalancerTargetAttributes(autoScalingGroupId: String, forwardLoadBalancers: [ForwardLoadBalancer], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerTargetAttributesResponse {
        try await self.modifyLoadBalancerTargetAttributes(.init(autoScalingGroupId: autoScalingGroupId, forwardLoadBalancers: forwardLoadBalancers), region: region, logger: logger, on: eventLoop)
    }
}
