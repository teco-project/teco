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

extension Ecm {
    /// ModifyLoadBalancerAttributes请求参数结构体
    public struct ModifyLoadBalancerAttributesRequest: TCRequestModel {
        /// 负载均衡的唯一ID
        public let loadBalancerId: String

        /// 负载均衡实例名称
        public let loadBalancerName: String?

        /// 网络计费及带宽相关参数
        public let internetChargeInfo: LoadBalancerInternetAccessible?

        /// Target是否放通来自ELB的流量。开启放通（true）：只验证ELB上的安全组；不开启放通（false）：需同时验证ELB和后端实例上的安全组。
        public let loadBalancerPassToTarget: Bool?

        public init(loadBalancerId: String, loadBalancerName: String? = nil, internetChargeInfo: LoadBalancerInternetAccessible? = nil, loadBalancerPassToTarget: Bool? = nil) {
            self.loadBalancerId = loadBalancerId
            self.loadBalancerName = loadBalancerName
            self.internetChargeInfo = internetChargeInfo
            self.loadBalancerPassToTarget = loadBalancerPassToTarget
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case loadBalancerName = "LoadBalancerName"
            case internetChargeInfo = "InternetChargeInfo"
            case loadBalancerPassToTarget = "LoadBalancerPassToTarget"
        }
    }

    /// ModifyLoadBalancerAttributes返回参数结构体
    public struct ModifyLoadBalancerAttributesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。
    @inlinable @discardableResult
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerAttributesResponse> {
        self.client.execute(action: "ModifyLoadBalancerAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。
    @inlinable @discardableResult
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerAttributesResponse {
        try await self.client.execute(action: "ModifyLoadBalancerAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。
    @inlinable @discardableResult
    public func modifyLoadBalancerAttributes(loadBalancerId: String, loadBalancerName: String? = nil, internetChargeInfo: LoadBalancerInternetAccessible? = nil, loadBalancerPassToTarget: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerAttributesResponse> {
        self.modifyLoadBalancerAttributes(ModifyLoadBalancerAttributesRequest(loadBalancerId: loadBalancerId, loadBalancerName: loadBalancerName, internetChargeInfo: internetChargeInfo, loadBalancerPassToTarget: loadBalancerPassToTarget), region: region, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。
    @inlinable @discardableResult
    public func modifyLoadBalancerAttributes(loadBalancerId: String, loadBalancerName: String? = nil, internetChargeInfo: LoadBalancerInternetAccessible? = nil, loadBalancerPassToTarget: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerAttributesResponse {
        try await self.modifyLoadBalancerAttributes(ModifyLoadBalancerAttributesRequest(loadBalancerId: loadBalancerId, loadBalancerName: loadBalancerName, internetChargeInfo: internetChargeInfo, loadBalancerPassToTarget: loadBalancerPassToTarget), region: region, logger: logger, on: eventLoop)
    }
}
