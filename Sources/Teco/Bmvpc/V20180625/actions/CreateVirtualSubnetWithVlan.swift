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

extension Bmvpc {
    /// CreateVirtualSubnetWithVlan请求参数结构体
    public struct CreateVirtualSubnetWithVlanRequest: TCRequestModel {
        /// 系统分配的私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String

        /// 子网信息
        public let subnetSet: [SubnetCreateInputInfo]

        public init(vpcId: String, subnetSet: [SubnetCreateInputInfo]) {
            self.vpcId = vpcId
            self.subnetSet = subnetSet
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetSet = "SubnetSet"
        }
    }

    /// CreateVirtualSubnetWithVlan返回参数结构体
    public struct CreateVirtualSubnetWithVlanResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石虚拟子网
    ///
    /// 创建黑石虚拟子网， 虚拟子网用于在黑石上创建虚拟网络，与黑石子网要做好规划。虚拟子网会分配2000-2999的VlanId。
    @inlinable
    public func createVirtualSubnetWithVlan(_ input: CreateVirtualSubnetWithVlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVirtualSubnetWithVlanResponse > {
        self.client.execute(action: "CreateVirtualSubnetWithVlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石虚拟子网
    ///
    /// 创建黑石虚拟子网， 虚拟子网用于在黑石上创建虚拟网络，与黑石子网要做好规划。虚拟子网会分配2000-2999的VlanId。
    @inlinable
    public func createVirtualSubnetWithVlan(_ input: CreateVirtualSubnetWithVlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirtualSubnetWithVlanResponse {
        try await self.client.execute(action: "CreateVirtualSubnetWithVlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石虚拟子网
    ///
    /// 创建黑石虚拟子网， 虚拟子网用于在黑石上创建虚拟网络，与黑石子网要做好规划。虚拟子网会分配2000-2999的VlanId。
    @inlinable
    public func createVirtualSubnetWithVlan(vpcId: String, subnetSet: [SubnetCreateInputInfo], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVirtualSubnetWithVlanResponse > {
        self.createVirtualSubnetWithVlan(CreateVirtualSubnetWithVlanRequest(vpcId: vpcId, subnetSet: subnetSet), logger: logger, on: eventLoop)
    }

    /// 创建黑石虚拟子网
    ///
    /// 创建黑石虚拟子网， 虚拟子网用于在黑石上创建虚拟网络，与黑石子网要做好规划。虚拟子网会分配2000-2999的VlanId。
    @inlinable
    public func createVirtualSubnetWithVlan(vpcId: String, subnetSet: [SubnetCreateInputInfo], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirtualSubnetWithVlanResponse {
        try await self.createVirtualSubnetWithVlan(CreateVirtualSubnetWithVlanRequest(vpcId: vpcId, subnetSet: subnetSet), logger: logger, on: eventLoop)
    }
}
