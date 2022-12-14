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
    /// CreateInterfaces请求参数结构体
    public struct CreateInterfacesRequest: TCRequestModel {
        /// 物理机实例ID列表
        public let instanceIds: [String]

        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        public init(instanceIds: [String], vpcId: String, subnetId: String) {
            self.instanceIds = instanceIds
            self.vpcId = vpcId
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }

    /// CreateInterfaces返回参数结构体
    public struct CreateInterfacesResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 物理机加入子网
    @inlinable
    public func createInterfaces(_ input: CreateInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateInterfacesResponse > {
        self.client.execute(action: "CreateInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 物理机加入子网
    @inlinable
    public func createInterfaces(_ input: CreateInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInterfacesResponse {
        try await self.client.execute(action: "CreateInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 物理机加入子网
    @inlinable
    public func createInterfaces(instanceIds: [String], vpcId: String, subnetId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateInterfacesResponse > {
        self.createInterfaces(CreateInterfacesRequest(instanceIds: instanceIds, vpcId: vpcId, subnetId: subnetId), logger: logger, on: eventLoop)
    }

    /// 物理机加入子网
    @inlinable
    public func createInterfaces(instanceIds: [String], vpcId: String, subnetId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInterfacesResponse {
        try await self.createInterfaces(CreateInterfacesRequest(instanceIds: instanceIds, vpcId: vpcId, subnetId: subnetId), logger: logger, on: eventLoop)
    }
}
