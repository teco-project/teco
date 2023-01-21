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
    /// DeleteInterfaces请求参数结构体
    public struct DeleteInterfacesRequest: TCRequestModel {
        /// 物理机ID
        public let instanceId: String

        /// 子网的唯一ID列表
        public let subnetIds: [String]

        public init(instanceId: String, subnetIds: [String]) {
            self.instanceId = instanceId
            self.subnetIds = subnetIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case subnetIds = "SubnetIds"
        }
    }

    /// DeleteInterfaces返回参数结构体
    public struct DeleteInterfacesResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 物理机移除子网(批量接口)
    ///
    /// 物理机移除子网批量接口，传入一台物理机和多个子网，批量移除这些子网。异步接口，接口返回TaskId。
    @inlinable
    public func deleteInterfaces(_ input: DeleteInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInterfacesResponse> {
        self.client.execute(action: "DeleteInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 物理机移除子网(批量接口)
    ///
    /// 物理机移除子网批量接口，传入一台物理机和多个子网，批量移除这些子网。异步接口，接口返回TaskId。
    @inlinable
    public func deleteInterfaces(_ input: DeleteInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInterfacesResponse {
        try await self.client.execute(action: "DeleteInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 物理机移除子网(批量接口)
    ///
    /// 物理机移除子网批量接口，传入一台物理机和多个子网，批量移除这些子网。异步接口，接口返回TaskId。
    @inlinable
    public func deleteInterfaces(instanceId: String, subnetIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInterfacesResponse> {
        self.deleteInterfaces(DeleteInterfacesRequest(instanceId: instanceId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }

    /// 物理机移除子网(批量接口)
    ///
    /// 物理机移除子网批量接口，传入一台物理机和多个子网，批量移除这些子网。异步接口，接口返回TaskId。
    @inlinable
    public func deleteInterfaces(instanceId: String, subnetIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInterfacesResponse {
        try await self.deleteInterfaces(DeleteInterfacesRequest(instanceId: instanceId, subnetIds: subnetIds), region: region, logger: logger, on: eventLoop)
    }
}
