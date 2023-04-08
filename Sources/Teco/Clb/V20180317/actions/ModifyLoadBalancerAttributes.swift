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

extension Clb {
    /// ModifyLoadBalancerAttributes请求参数结构体
    public struct ModifyLoadBalancerAttributesRequest: TCRequestModel {
        /// 负载均衡的唯一ID
        public let loadBalancerId: String

        /// 负载均衡实例名称
        public let loadBalancerName: String?

        /// 负载均衡绑定的后端服务的地域信息
        public let targetRegionInfo: TargetRegionInfo?

        /// 网络计费相关参数
        public let internetChargeInfo: InternetAccessible?

        /// Target是否放通来自CLB的流量。开启放通（true）：只验证CLB上的安全组；不开启放通（false）：需同时验证CLB和后端实例上的安全组。
        public let loadBalancerPassToTarget: Bool?

        /// 是否开启SnatPro
        public let snatPro: Bool?

        /// 是否开启删除保护
        public let deleteProtect: Bool?

        public init(loadBalancerId: String, loadBalancerName: String? = nil, targetRegionInfo: TargetRegionInfo? = nil, internetChargeInfo: InternetAccessible? = nil, loadBalancerPassToTarget: Bool? = nil, snatPro: Bool? = nil, deleteProtect: Bool? = nil) {
            self.loadBalancerId = loadBalancerId
            self.loadBalancerName = loadBalancerName
            self.targetRegionInfo = targetRegionInfo
            self.internetChargeInfo = internetChargeInfo
            self.loadBalancerPassToTarget = loadBalancerPassToTarget
            self.snatPro = snatPro
            self.deleteProtect = deleteProtect
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case loadBalancerName = "LoadBalancerName"
            case targetRegionInfo = "TargetRegionInfo"
            case internetChargeInfo = "InternetChargeInfo"
            case loadBalancerPassToTarget = "LoadBalancerPassToTarget"
            case snatPro = "SnatPro"
            case deleteProtect = "DeleteProtect"
        }
    }

    /// ModifyLoadBalancerAttributes返回参数结构体
    public struct ModifyLoadBalancerAttributesResponse: TCResponseModel {
        /// 切换负载均衡计费方式时，可用此参数查询切换任务是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。支持修改负载均衡实例的名称、设置负载均衡的跨域属性。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerAttributesResponse> {
        self.client.execute(action: "ModifyLoadBalancerAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。支持修改负载均衡实例的名称、设置负载均衡的跨域属性。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerAttributesResponse {
        try await self.client.execute(action: "ModifyLoadBalancerAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。支持修改负载均衡实例的名称、设置负载均衡的跨域属性。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func modifyLoadBalancerAttributes(loadBalancerId: String, loadBalancerName: String? = nil, targetRegionInfo: TargetRegionInfo? = nil, internetChargeInfo: InternetAccessible? = nil, loadBalancerPassToTarget: Bool? = nil, snatPro: Bool? = nil, deleteProtect: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerAttributesResponse> {
        self.modifyLoadBalancerAttributes(.init(loadBalancerId: loadBalancerId, loadBalancerName: loadBalancerName, targetRegionInfo: targetRegionInfo, internetChargeInfo: internetChargeInfo, loadBalancerPassToTarget: loadBalancerPassToTarget, snatPro: snatPro, deleteProtect: deleteProtect), region: region, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡实例的属性
    ///
    /// 修改负载均衡实例的属性。支持修改负载均衡实例的名称、设置负载均衡的跨域属性。
    /// 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func modifyLoadBalancerAttributes(loadBalancerId: String, loadBalancerName: String? = nil, targetRegionInfo: TargetRegionInfo? = nil, internetChargeInfo: InternetAccessible? = nil, loadBalancerPassToTarget: Bool? = nil, snatPro: Bool? = nil, deleteProtect: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerAttributesResponse {
        try await self.modifyLoadBalancerAttributes(.init(loadBalancerId: loadBalancerId, loadBalancerName: loadBalancerName, targetRegionInfo: targetRegionInfo, internetChargeInfo: internetChargeInfo, loadBalancerPassToTarget: loadBalancerPassToTarget, snatPro: snatPro, deleteProtect: deleteProtect), region: region, logger: logger, on: eventLoop)
    }
}
