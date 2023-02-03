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

extension Bmlb {
    /// DescribeDevicesBindInfo请求参数结构体
    public struct DescribeDevicesBindInfoRequest: TCRequestModel {
        /// 黑石私有网络唯一ID。
        public let vpcId: String

        /// 主机ID或虚机IP列表，可用于获取绑定了该主机的负载均衡列表。
        public let instanceIds: [String]

        public init(vpcId: String, instanceIds: [String]) {
            self.vpcId = vpcId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeDevicesBindInfo返回参数结构体
    public struct DescribeDevicesBindInfoResponse: TCResponseModel {
        /// 返回的负载均衡绑定信息。
        public let loadBalancerSet: [DevicesBindInfoLoadBalancer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancerSet = "LoadBalancerSet"
            case requestId = "RequestId"
        }
    }

    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情
    ///
    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情。
    @inlinable
    public func describeDevicesBindInfo(_ input: DescribeDevicesBindInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesBindInfoResponse> {
        self.client.execute(action: "DescribeDevicesBindInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情
    ///
    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情。
    @inlinable
    public func describeDevicesBindInfo(_ input: DescribeDevicesBindInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesBindInfoResponse {
        try await self.client.execute(action: "DescribeDevicesBindInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情
    ///
    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情。
    @inlinable
    public func describeDevicesBindInfo(vpcId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesBindInfoResponse> {
        let input = DescribeDevicesBindInfoRequest(vpcId: vpcId, instanceIds: instanceIds)
        return self.client.execute(action: "DescribeDevicesBindInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情
    ///
    /// 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情。
    @inlinable
    public func describeDevicesBindInfo(vpcId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesBindInfoResponse {
        let input = DescribeDevicesBindInfoRequest(vpcId: vpcId, instanceIds: instanceIds)
        return try await self.client.execute(action: "DescribeDevicesBindInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
