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

extension Tke {
    /// EnableVpcCniNetworkType请求参数结构体
    public struct EnableVpcCniNetworkTypeRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 开启vpc-cni的模式，tke-route-eni开启的是策略路由模式，tke-direct-eni开启的是独立网卡模式
        public let vpcCniType: String

        /// 是否开启固定IP模式
        public let enableStaticIp: Bool

        /// 使用的容器子网
        public let subnets: [String]

        /// 在固定IP模式下，Pod销毁后退还IP的时间，传参必须大于300；不传默认IP永不销毁。
        public let expiredSeconds: UInt64?

        /// 是否同步添加 vpc 网段到 ip-masq-agent-config 的 NonMasqueradeCIDRs 字段，默认 false 会同步添加
        public let skipAddingNonMasqueradeCIDRs: Bool?

        public init(clusterId: String, vpcCniType: String, enableStaticIp: Bool, subnets: [String], expiredSeconds: UInt64? = nil, skipAddingNonMasqueradeCIDRs: Bool? = nil) {
            self.clusterId = clusterId
            self.vpcCniType = vpcCniType
            self.enableStaticIp = enableStaticIp
            self.subnets = subnets
            self.expiredSeconds = expiredSeconds
            self.skipAddingNonMasqueradeCIDRs = skipAddingNonMasqueradeCIDRs
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vpcCniType = "VpcCniType"
            case enableStaticIp = "EnableStaticIp"
            case subnets = "Subnets"
            case expiredSeconds = "ExpiredSeconds"
            case skipAddingNonMasqueradeCIDRs = "SkipAddingNonMasqueradeCIDRs"
        }
    }

    /// EnableVpcCniNetworkType返回参数结构体
    public struct EnableVpcCniNetworkTypeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启vpc-cni容器网络能力
    ///
    /// GR集群可以通过本接口附加vpc-cni容器网络插件，开启vpc-cni容器网络能力
    @inlinable @discardableResult
    public func enableVpcCniNetworkType(_ input: EnableVpcCniNetworkTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableVpcCniNetworkTypeResponse> {
        self.client.execute(action: "EnableVpcCniNetworkType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启vpc-cni容器网络能力
    ///
    /// GR集群可以通过本接口附加vpc-cni容器网络插件，开启vpc-cni容器网络能力
    @inlinable @discardableResult
    public func enableVpcCniNetworkType(_ input: EnableVpcCniNetworkTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableVpcCniNetworkTypeResponse {
        try await self.client.execute(action: "EnableVpcCniNetworkType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启vpc-cni容器网络能力
    ///
    /// GR集群可以通过本接口附加vpc-cni容器网络插件，开启vpc-cni容器网络能力
    @inlinable @discardableResult
    public func enableVpcCniNetworkType(clusterId: String, vpcCniType: String, enableStaticIp: Bool, subnets: [String], expiredSeconds: UInt64? = nil, skipAddingNonMasqueradeCIDRs: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableVpcCniNetworkTypeResponse> {
        self.enableVpcCniNetworkType(.init(clusterId: clusterId, vpcCniType: vpcCniType, enableStaticIp: enableStaticIp, subnets: subnets, expiredSeconds: expiredSeconds, skipAddingNonMasqueradeCIDRs: skipAddingNonMasqueradeCIDRs), region: region, logger: logger, on: eventLoop)
    }

    /// 开启vpc-cni容器网络能力
    ///
    /// GR集群可以通过本接口附加vpc-cni容器网络插件，开启vpc-cni容器网络能力
    @inlinable @discardableResult
    public func enableVpcCniNetworkType(clusterId: String, vpcCniType: String, enableStaticIp: Bool, subnets: [String], expiredSeconds: UInt64? = nil, skipAddingNonMasqueradeCIDRs: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableVpcCniNetworkTypeResponse {
        try await self.enableVpcCniNetworkType(.init(clusterId: clusterId, vpcCniType: vpcCniType, enableStaticIp: enableStaticIp, subnets: subnets, expiredSeconds: expiredSeconds, skipAddingNonMasqueradeCIDRs: skipAddingNonMasqueradeCIDRs), region: region, logger: logger, on: eventLoop)
    }
}
