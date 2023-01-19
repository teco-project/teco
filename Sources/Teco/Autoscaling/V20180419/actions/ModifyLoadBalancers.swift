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

extension As {
    /// ModifyLoadBalancers请求参数结构体
    public struct ModifyLoadBalancersRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 传统负载均衡器ID列表，目前长度上限为20，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        public let loadBalancerIds: [String]?

        /// 应用型负载均衡器列表，目前长度上限为100，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        public let forwardLoadBalancers: [ForwardLoadBalancer]?

        /// 负载均衡器校验策略，取值包括 ALL 和 DIFF，默认取值为 ALL。
        /// <br><li> ALL，所有负载均衡器都合法则通过校验，否则校验报错。
        /// <br><li> DIFF，仅校验负载均衡器参数中实际变化的部分，如果合法则通过校验，否则校验报错。
        public let loadBalancersCheckPolicy: String?

        public init(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, loadBalancersCheckPolicy: String? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.loadBalancerIds = loadBalancerIds
            self.forwardLoadBalancers = forwardLoadBalancers
            self.loadBalancersCheckPolicy = loadBalancersCheckPolicy
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case loadBalancerIds = "LoadBalancerIds"
            case forwardLoadBalancers = "ForwardLoadBalancers"
            case loadBalancersCheckPolicy = "LoadBalancersCheckPolicy"
        }
    }

    /// ModifyLoadBalancers返回参数结构体
    public struct ModifyLoadBalancersResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 修改伸缩组的负载均衡器
    ///
    /// 本接口（ModifyLoadBalancers）用于修改伸缩组的负载均衡器。
    /// * 本接口用于为伸缩组指定新的负载均衡器配置，采用`完全覆盖`风格，无论之前配置如何，`统一按照接口参数配置为新的负载均衡器`。
    /// * 如果要为伸缩组清空负载均衡器，则在调用本接口时仅指定伸缩组ID，不指定具体负载均衡器。
    /// * 本接口会立即修改伸缩组的负载均衡器，并生成一个伸缩活动，异步修改存量实例的负载均衡器。
    @inlinable
    public func modifyLoadBalancers(_ input: ModifyLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancersResponse> {
        self.client.execute(action: "ModifyLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改伸缩组的负载均衡器
    ///
    /// 本接口（ModifyLoadBalancers）用于修改伸缩组的负载均衡器。
    /// * 本接口用于为伸缩组指定新的负载均衡器配置，采用`完全覆盖`风格，无论之前配置如何，`统一按照接口参数配置为新的负载均衡器`。
    /// * 如果要为伸缩组清空负载均衡器，则在调用本接口时仅指定伸缩组ID，不指定具体负载均衡器。
    /// * 本接口会立即修改伸缩组的负载均衡器，并生成一个伸缩活动，异步修改存量实例的负载均衡器。
    @inlinable
    public func modifyLoadBalancers(_ input: ModifyLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancersResponse {
        try await self.client.execute(action: "ModifyLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改伸缩组的负载均衡器
    ///
    /// 本接口（ModifyLoadBalancers）用于修改伸缩组的负载均衡器。
    /// * 本接口用于为伸缩组指定新的负载均衡器配置，采用`完全覆盖`风格，无论之前配置如何，`统一按照接口参数配置为新的负载均衡器`。
    /// * 如果要为伸缩组清空负载均衡器，则在调用本接口时仅指定伸缩组ID，不指定具体负载均衡器。
    /// * 本接口会立即修改伸缩组的负载均衡器，并生成一个伸缩活动，异步修改存量实例的负载均衡器。
    @inlinable
    public func modifyLoadBalancers(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, loadBalancersCheckPolicy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancersResponse> {
        self.modifyLoadBalancers(ModifyLoadBalancersRequest(autoScalingGroupId: autoScalingGroupId, loadBalancerIds: loadBalancerIds, forwardLoadBalancers: forwardLoadBalancers, loadBalancersCheckPolicy: loadBalancersCheckPolicy), region: region, logger: logger, on: eventLoop)
    }

    /// 修改伸缩组的负载均衡器
    ///
    /// 本接口（ModifyLoadBalancers）用于修改伸缩组的负载均衡器。
    /// * 本接口用于为伸缩组指定新的负载均衡器配置，采用`完全覆盖`风格，无论之前配置如何，`统一按照接口参数配置为新的负载均衡器`。
    /// * 如果要为伸缩组清空负载均衡器，则在调用本接口时仅指定伸缩组ID，不指定具体负载均衡器。
    /// * 本接口会立即修改伸缩组的负载均衡器，并生成一个伸缩活动，异步修改存量实例的负载均衡器。
    @inlinable
    public func modifyLoadBalancers(autoScalingGroupId: String, loadBalancerIds: [String]? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, loadBalancersCheckPolicy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancersResponse {
        try await self.modifyLoadBalancers(ModifyLoadBalancersRequest(autoScalingGroupId: autoScalingGroupId, loadBalancerIds: loadBalancerIds, forwardLoadBalancers: forwardLoadBalancers, loadBalancersCheckPolicy: loadBalancersCheckPolicy), region: region, logger: logger, on: eventLoop)
    }
}
