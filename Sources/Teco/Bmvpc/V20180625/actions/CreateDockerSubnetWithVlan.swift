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

extension Bmvpc {
    /// CreateDockerSubnetWithVlan请求参数结构体
    public struct CreateDockerSubnetWithVlanRequest: TCRequestModel {
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

    /// CreateDockerSubnetWithVlan返回参数结构体
    public struct CreateDockerSubnetWithVlanResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石Docker子网
    ///
    /// 创建黑石Docker子网， 如果不指定VlanId，将会分配2000--2999范围的VlanId; 子网会关闭分布式网关
    @inlinable
    public func createDockerSubnetWithVlan(_ input: CreateDockerSubnetWithVlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDockerSubnetWithVlanResponse> {
        self.client.execute(action: "CreateDockerSubnetWithVlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石Docker子网
    ///
    /// 创建黑石Docker子网， 如果不指定VlanId，将会分配2000--2999范围的VlanId; 子网会关闭分布式网关
    @inlinable
    public func createDockerSubnetWithVlan(_ input: CreateDockerSubnetWithVlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDockerSubnetWithVlanResponse {
        try await self.client.execute(action: "CreateDockerSubnetWithVlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石Docker子网
    ///
    /// 创建黑石Docker子网， 如果不指定VlanId，将会分配2000--2999范围的VlanId; 子网会关闭分布式网关
    @inlinable
    public func createDockerSubnetWithVlan(vpcId: String, subnetSet: [SubnetCreateInputInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDockerSubnetWithVlanResponse> {
        self.createDockerSubnetWithVlan(CreateDockerSubnetWithVlanRequest(vpcId: vpcId, subnetSet: subnetSet), region: region, logger: logger, on: eventLoop)
    }

    /// 创建黑石Docker子网
    ///
    /// 创建黑石Docker子网， 如果不指定VlanId，将会分配2000--2999范围的VlanId; 子网会关闭分布式网关
    @inlinable
    public func createDockerSubnetWithVlan(vpcId: String, subnetSet: [SubnetCreateInputInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDockerSubnetWithVlanResponse {
        try await self.createDockerSubnetWithVlan(CreateDockerSubnetWithVlanRequest(vpcId: vpcId, subnetSet: subnetSet), region: region, logger: logger, on: eventLoop)
    }
}
