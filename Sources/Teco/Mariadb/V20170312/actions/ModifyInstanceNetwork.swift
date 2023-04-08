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

extension Mariadb {
    /// ModifyInstanceNetwork请求参数结构体
    public struct ModifyInstanceNetworkRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 希望转到的VPC网络的VpcId
        public let vpcId: String

        /// 希望转到的VPC网络的子网ID
        public let subnetId: String

        /// 如果需要指定VIP，填上该字段
        public let vip: String?

        /// 如果需要指定VIPv6，填上该字段
        public let vipv6: String?

        /// VIP保留时长，单位小时，取值范围（0~168），0表示立即释放，有一分钟释放延迟。不传此参数，默认24小时释放VIP。
        public let vipReleaseDelay: UInt64?

        public init(instanceId: String, vpcId: String, subnetId: String, vip: String? = nil, vipv6: String? = nil, vipReleaseDelay: UInt64? = nil) {
            self.instanceId = instanceId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.vip = vip
            self.vipv6 = vipv6
            self.vipReleaseDelay = vipReleaseDelay
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case vip = "Vip"
            case vipv6 = "Vipv6"
            case vipReleaseDelay = "VipReleaseDelay"
        }
    }

    /// ModifyInstanceNetwork返回参数结构体
    public struct ModifyInstanceNetworkResponse: TCResponseModel {
        /// 异步任务ID，根据此FlowId通过DescribeFlow接口查询任务进行状态
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例所属网络
    ///
    /// 本接口（ModifyInstanceNetwork）用于修改实例所属网络
    @inlinable
    public func modifyInstanceNetwork(_ input: ModifyInstanceNetworkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceNetworkResponse> {
        self.client.execute(action: "ModifyInstanceNetwork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例所属网络
    ///
    /// 本接口（ModifyInstanceNetwork）用于修改实例所属网络
    @inlinable
    public func modifyInstanceNetwork(_ input: ModifyInstanceNetworkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceNetworkResponse {
        try await self.client.execute(action: "ModifyInstanceNetwork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例所属网络
    ///
    /// 本接口（ModifyInstanceNetwork）用于修改实例所属网络
    @inlinable
    public func modifyInstanceNetwork(instanceId: String, vpcId: String, subnetId: String, vip: String? = nil, vipv6: String? = nil, vipReleaseDelay: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceNetworkResponse> {
        self.modifyInstanceNetwork(.init(instanceId: instanceId, vpcId: vpcId, subnetId: subnetId, vip: vip, vipv6: vipv6, vipReleaseDelay: vipReleaseDelay), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例所属网络
    ///
    /// 本接口（ModifyInstanceNetwork）用于修改实例所属网络
    @inlinable
    public func modifyInstanceNetwork(instanceId: String, vpcId: String, subnetId: String, vip: String? = nil, vipv6: String? = nil, vipReleaseDelay: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceNetworkResponse {
        try await self.modifyInstanceNetwork(.init(instanceId: instanceId, vpcId: vpcId, subnetId: subnetId, vip: vip, vipv6: vipv6, vipReleaseDelay: vipReleaseDelay), region: region, logger: logger, on: eventLoop)
    }
}
