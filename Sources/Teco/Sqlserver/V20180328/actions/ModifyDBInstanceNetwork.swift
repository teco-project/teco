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

extension Sqlserver {
    /// ModifyDBInstanceNetwork请求参数结构体
    public struct ModifyDBInstanceNetworkRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 新VPC网络Id
        public let newVpcId: String

        /// 新子网Id
        public let newSubnetId: String

        /// 原vip保留时长，单位小时，默认为0，代表立即回收，最大为168小时
        public let oldIpRetainTime: Int64?

        /// 指定VIP地址
        public let vip: String?

        public init(instanceId: String, newVpcId: String, newSubnetId: String, oldIpRetainTime: Int64? = nil, vip: String? = nil) {
            self.instanceId = instanceId
            self.newVpcId = newVpcId
            self.newSubnetId = newSubnetId
            self.oldIpRetainTime = oldIpRetainTime
            self.vip = vip
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case newVpcId = "NewVpcId"
            case newSubnetId = "NewSubnetId"
            case oldIpRetainTime = "OldIpRetainTime"
            case vip = "Vip"
        }
    }

    /// ModifyDBInstanceNetwork返回参数结构体
    public struct ModifyDBInstanceNetworkResponse: TCResponseModel {
        /// 实例转网流程id，可通过[DescribeFlowStatus](https://cloud.tencent.com/document/product/238/19967)接口查询流程状态
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例网络
    ///
    /// 本接口（ModifyDBInstanceNetwork）用于修改运行中实例的网络，仅支持从VPC网络到VPC网络的转换
    @inlinable
    public func modifyDBInstanceNetwork(_ input: ModifyDBInstanceNetworkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNetworkResponse> {
        self.client.execute(action: "ModifyDBInstanceNetwork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例网络
    ///
    /// 本接口（ModifyDBInstanceNetwork）用于修改运行中实例的网络，仅支持从VPC网络到VPC网络的转换
    @inlinable
    public func modifyDBInstanceNetwork(_ input: ModifyDBInstanceNetworkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNetworkResponse {
        try await self.client.execute(action: "ModifyDBInstanceNetwork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例网络
    ///
    /// 本接口（ModifyDBInstanceNetwork）用于修改运行中实例的网络，仅支持从VPC网络到VPC网络的转换
    @inlinable
    public func modifyDBInstanceNetwork(instanceId: String, newVpcId: String, newSubnetId: String, oldIpRetainTime: Int64? = nil, vip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNetworkResponse> {
        self.modifyDBInstanceNetwork(ModifyDBInstanceNetworkRequest(instanceId: instanceId, newVpcId: newVpcId, newSubnetId: newSubnetId, oldIpRetainTime: oldIpRetainTime, vip: vip), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例网络
    ///
    /// 本接口（ModifyDBInstanceNetwork）用于修改运行中实例的网络，仅支持从VPC网络到VPC网络的转换
    @inlinable
    public func modifyDBInstanceNetwork(instanceId: String, newVpcId: String, newSubnetId: String, oldIpRetainTime: Int64? = nil, vip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNetworkResponse {
        try await self.modifyDBInstanceNetwork(ModifyDBInstanceNetworkRequest(instanceId: instanceId, newVpcId: newVpcId, newSubnetId: newSubnetId, oldIpRetainTime: oldIpRetainTime, vip: vip), region: region, logger: logger, on: eventLoop)
    }
}
