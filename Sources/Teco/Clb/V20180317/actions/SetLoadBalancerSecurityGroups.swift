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
    /// SetLoadBalancerSecurityGroups请求参数结构体
    public struct SetLoadBalancerSecurityGroupsRequest: TCRequest {
        /// 负载均衡实例 ID
        public let loadBalancerId: String

        /// 安全组ID构成的数组，一个负载均衡实例最多可绑定50个安全组，如果要解绑所有安全组，可不传此参数，或传入空数组。
        public let securityGroups: [String]?

        public init(loadBalancerId: String, securityGroups: [String]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.securityGroups = securityGroups
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case securityGroups = "SecurityGroups"
        }
    }

    /// SetLoadBalancerSecurityGroups返回参数结构体
    public struct SetLoadBalancerSecurityGroupsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置负载均衡实例的安全组
    ///
    /// SetLoadBalancerSecurityGroups 接口支持对一个公网负载均衡实例执行设置（绑定、解绑）安全组操作。查询一个负载均衡实例目前已绑定的安全组，可使用 DescribeLoadBalancers 接口。本接口是set语义，
    /// 绑定操作时，入参需要传入负载均衡实例要绑定的所有安全组（已绑定的+新增绑定的）。
    /// 解绑操作时，入参需要传入负载均衡实例执行解绑后所绑定的所有安全组；如果要解绑所有安全组，可不传此参数，或传入空数组。注意：内网负载均衡不支持绑定安全组。
    @inlinable @discardableResult
    public func setLoadBalancerSecurityGroups(_ input: SetLoadBalancerSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetLoadBalancerSecurityGroupsResponse> {
        self.client.execute(action: "SetLoadBalancerSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置负载均衡实例的安全组
    ///
    /// SetLoadBalancerSecurityGroups 接口支持对一个公网负载均衡实例执行设置（绑定、解绑）安全组操作。查询一个负载均衡实例目前已绑定的安全组，可使用 DescribeLoadBalancers 接口。本接口是set语义，
    /// 绑定操作时，入参需要传入负载均衡实例要绑定的所有安全组（已绑定的+新增绑定的）。
    /// 解绑操作时，入参需要传入负载均衡实例执行解绑后所绑定的所有安全组；如果要解绑所有安全组，可不传此参数，或传入空数组。注意：内网负载均衡不支持绑定安全组。
    @inlinable @discardableResult
    public func setLoadBalancerSecurityGroups(_ input: SetLoadBalancerSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetLoadBalancerSecurityGroupsResponse {
        try await self.client.execute(action: "SetLoadBalancerSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置负载均衡实例的安全组
    ///
    /// SetLoadBalancerSecurityGroups 接口支持对一个公网负载均衡实例执行设置（绑定、解绑）安全组操作。查询一个负载均衡实例目前已绑定的安全组，可使用 DescribeLoadBalancers 接口。本接口是set语义，
    /// 绑定操作时，入参需要传入负载均衡实例要绑定的所有安全组（已绑定的+新增绑定的）。
    /// 解绑操作时，入参需要传入负载均衡实例执行解绑后所绑定的所有安全组；如果要解绑所有安全组，可不传此参数，或传入空数组。注意：内网负载均衡不支持绑定安全组。
    @inlinable @discardableResult
    public func setLoadBalancerSecurityGroups(loadBalancerId: String, securityGroups: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetLoadBalancerSecurityGroupsResponse> {
        self.setLoadBalancerSecurityGroups(.init(loadBalancerId: loadBalancerId, securityGroups: securityGroups), region: region, logger: logger, on: eventLoop)
    }

    /// 设置负载均衡实例的安全组
    ///
    /// SetLoadBalancerSecurityGroups 接口支持对一个公网负载均衡实例执行设置（绑定、解绑）安全组操作。查询一个负载均衡实例目前已绑定的安全组，可使用 DescribeLoadBalancers 接口。本接口是set语义，
    /// 绑定操作时，入参需要传入负载均衡实例要绑定的所有安全组（已绑定的+新增绑定的）。
    /// 解绑操作时，入参需要传入负载均衡实例执行解绑后所绑定的所有安全组；如果要解绑所有安全组，可不传此参数，或传入空数组。注意：内网负载均衡不支持绑定安全组。
    @inlinable @discardableResult
    public func setLoadBalancerSecurityGroups(loadBalancerId: String, securityGroups: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetLoadBalancerSecurityGroupsResponse {
        try await self.setLoadBalancerSecurityGroups(.init(loadBalancerId: loadBalancerId, securityGroups: securityGroups), region: region, logger: logger, on: eventLoop)
    }
}
