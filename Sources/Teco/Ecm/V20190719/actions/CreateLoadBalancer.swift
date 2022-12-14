//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreateLoadBalancer请求参数结构体
    public struct CreateLoadBalancerRequest: TCRequestModel {
        /// ECM区域，形如ap-xian-ecm。
        public let ecmRegion: String

        /// 负载均衡实例的网络类型。目前只支持传入OPEN，表示公网属性。
        public let loadBalancerType: String

        /// CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通。
        public let vipIsp: String

        /// 负载均衡实例的名称，只在创建一个实例的时候才会生效。规则：1-50 个英文、汉字、数字、连接线“-”或下划线“_”。
        /// 注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。
        public let loadBalancerName: String?

        /// 负载均衡后端目标设备所属的网络 ID，如vpc-12345678。
        public let vpcId: String?

        /// 创建负载均衡的个数，默认值 1。
        public let number: Int64?

        /// 负载均衡的带宽限制等信息。
        public let internetAccessible: LoadBalancerInternetAccessible?

        /// 标签。
        public let tags: [TagInfo]?

        /// 安全组。
        public let securityGroups: [String]?

        public init(ecmRegion: String, loadBalancerType: String, vipIsp: String, loadBalancerName: String? = nil, vpcId: String? = nil, number: Int64? = nil, internetAccessible: LoadBalancerInternetAccessible? = nil, tags: [TagInfo]? = nil, securityGroups: [String]? = nil) {
            self.ecmRegion = ecmRegion
            self.loadBalancerType = loadBalancerType
            self.vipIsp = vipIsp
            self.loadBalancerName = loadBalancerName
            self.vpcId = vpcId
            self.number = number
            self.internetAccessible = internetAccessible
            self.tags = tags
            self.securityGroups = securityGroups
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case loadBalancerType = "LoadBalancerType"
            case vipIsp = "VipIsp"
            case loadBalancerName = "LoadBalancerName"
            case vpcId = "VpcId"
            case number = "Number"
            case internetAccessible = "InternetAccessible"
            case tags = "Tags"
            case securityGroups = "SecurityGroups"
        }
    }

    /// CreateLoadBalancer返回参数结构体
    public struct CreateLoadBalancerResponse: TCResponseModel {
        /// 由负载均衡实例ID组成的数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case requestId = "RequestId"
        }
    }

    /// 购买负载均衡实例
    ///
    /// 购买负载均衡实例。
    @inlinable
    public func createLoadBalancer(_ input: CreateLoadBalancerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLoadBalancerResponse > {
        self.client.execute(action: "CreateLoadBalancer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买负载均衡实例
    ///
    /// 购买负载均衡实例。
    @inlinable
    public func createLoadBalancer(_ input: CreateLoadBalancerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancerResponse {
        try await self.client.execute(action: "CreateLoadBalancer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买负载均衡实例
    ///
    /// 购买负载均衡实例。
    @inlinable
    public func createLoadBalancer(ecmRegion: String, loadBalancerType: String, vipIsp: String, loadBalancerName: String? = nil, vpcId: String? = nil, number: Int64? = nil, internetAccessible: LoadBalancerInternetAccessible? = nil, tags: [TagInfo]? = nil, securityGroups: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLoadBalancerResponse > {
        self.createLoadBalancer(CreateLoadBalancerRequest(ecmRegion: ecmRegion, loadBalancerType: loadBalancerType, vipIsp: vipIsp, loadBalancerName: loadBalancerName, vpcId: vpcId, number: number, internetAccessible: internetAccessible, tags: tags, securityGroups: securityGroups), logger: logger, on: eventLoop)
    }

    /// 购买负载均衡实例
    ///
    /// 购买负载均衡实例。
    @inlinable
    public func createLoadBalancer(ecmRegion: String, loadBalancerType: String, vipIsp: String, loadBalancerName: String? = nil, vpcId: String? = nil, number: Int64? = nil, internetAccessible: LoadBalancerInternetAccessible? = nil, tags: [TagInfo]? = nil, securityGroups: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancerResponse {
        try await self.createLoadBalancer(CreateLoadBalancerRequest(ecmRegion: ecmRegion, loadBalancerType: loadBalancerType, vipIsp: vipIsp, loadBalancerName: loadBalancerName, vpcId: vpcId, number: number, internetAccessible: internetAccessible, tags: tags, securityGroups: securityGroups), logger: logger, on: eventLoop)
    }
}
