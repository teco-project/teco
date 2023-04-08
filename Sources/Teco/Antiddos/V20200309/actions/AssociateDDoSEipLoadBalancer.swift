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

import TecoCore

extension Antiddos {
    /// AssociateDDoSEipLoadBalancer请求参数结构体
    public struct AssociateDDoSEipLoadBalancerRequest: TCRequestModel {
        /// 资源实例ID，实例ID形如：bgpip-0000011x。只能填写高防IP实例。
        public let instanceId: String

        /// 资源实例ID对应的高防弹性公网IP。
        public let eip: String

        /// 要绑定的负载均衡ID。负载均衡 ID 形如：lb-0000002i。可通过登录控制台查询，也可通过 DescribeLoadBalancers 接口返回值中的LoadBalancerId获取。
        public let loadBalancerID: String

        /// CLB所在地域，例如：ap-hongkong。
        public let loadBalancerRegion: String

        /// CLB内网IP
        public let vip: String?

        public init(instanceId: String, eip: String, loadBalancerID: String, loadBalancerRegion: String, vip: String? = nil) {
            self.instanceId = instanceId
            self.eip = eip
            self.loadBalancerID = loadBalancerID
            self.loadBalancerRegion = loadBalancerRegion
            self.vip = vip
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case eip = "Eip"
            case loadBalancerID = "LoadBalancerID"
            case loadBalancerRegion = "LoadBalancerRegion"
            case vip = "Vip"
        }
    }

    /// AssociateDDoSEipLoadBalancer返回参数结构体
    public struct AssociateDDoSEipLoadBalancerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定高防弹性公网IP到Clb
    ///
    /// 本接口 (AssociateDDoSEipLoadBalancer) 用于将高防弹性公网IP绑定到负载均衡指定内网 IP 上。
    @inlinable @discardableResult
    public func associateDDoSEipLoadBalancer(_ input: AssociateDDoSEipLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDDoSEipLoadBalancerResponse> {
        self.client.execute(action: "AssociateDDoSEipLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定高防弹性公网IP到Clb
    ///
    /// 本接口 (AssociateDDoSEipLoadBalancer) 用于将高防弹性公网IP绑定到负载均衡指定内网 IP 上。
    @inlinable @discardableResult
    public func associateDDoSEipLoadBalancer(_ input: AssociateDDoSEipLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDDoSEipLoadBalancerResponse {
        try await self.client.execute(action: "AssociateDDoSEipLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定高防弹性公网IP到Clb
    ///
    /// 本接口 (AssociateDDoSEipLoadBalancer) 用于将高防弹性公网IP绑定到负载均衡指定内网 IP 上。
    @inlinable @discardableResult
    public func associateDDoSEipLoadBalancer(instanceId: String, eip: String, loadBalancerID: String, loadBalancerRegion: String, vip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDDoSEipLoadBalancerResponse> {
        self.associateDDoSEipLoadBalancer(.init(instanceId: instanceId, eip: eip, loadBalancerID: loadBalancerID, loadBalancerRegion: loadBalancerRegion, vip: vip), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定高防弹性公网IP到Clb
    ///
    /// 本接口 (AssociateDDoSEipLoadBalancer) 用于将高防弹性公网IP绑定到负载均衡指定内网 IP 上。
    @inlinable @discardableResult
    public func associateDDoSEipLoadBalancer(instanceId: String, eip: String, loadBalancerID: String, loadBalancerRegion: String, vip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDDoSEipLoadBalancerResponse {
        try await self.associateDDoSEipLoadBalancer(.init(instanceId: instanceId, eip: eip, loadBalancerID: loadBalancerID, loadBalancerRegion: loadBalancerRegion, vip: vip), region: region, logger: logger, on: eventLoop)
    }
}
