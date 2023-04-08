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

extension Cls {
    /// AddMachineGroupInfo请求参数结构体
    public struct AddMachineGroupInfoRequest: TCRequestModel {
        /// 机器组ID
        public let groupId: String

        /// 机器组类型
        /// 目前type支持 ip 和 label
        public let machineGroupType: MachineGroupTypeInfo

        public init(groupId: String, machineGroupType: MachineGroupTypeInfo) {
            self.groupId = groupId
            self.machineGroupType = machineGroupType
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case machineGroupType = "MachineGroupType"
        }
    }

    /// AddMachineGroupInfo返回参数结构体
    public struct AddMachineGroupInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加机器组信息
    ///
    /// 用于添加机器组信息
    @inlinable @discardableResult
    public func addMachineGroupInfo(_ input: AddMachineGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddMachineGroupInfoResponse> {
        self.client.execute(action: "AddMachineGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加机器组信息
    ///
    /// 用于添加机器组信息
    @inlinable @discardableResult
    public func addMachineGroupInfo(_ input: AddMachineGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddMachineGroupInfoResponse {
        try await self.client.execute(action: "AddMachineGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加机器组信息
    ///
    /// 用于添加机器组信息
    @inlinable @discardableResult
    public func addMachineGroupInfo(groupId: String, machineGroupType: MachineGroupTypeInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddMachineGroupInfoResponse> {
        self.addMachineGroupInfo(.init(groupId: groupId, machineGroupType: machineGroupType), region: region, logger: logger, on: eventLoop)
    }

    /// 添加机器组信息
    ///
    /// 用于添加机器组信息
    @inlinable @discardableResult
    public func addMachineGroupInfo(groupId: String, machineGroupType: MachineGroupTypeInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddMachineGroupInfoResponse {
        try await self.addMachineGroupInfo(.init(groupId: groupId, machineGroupType: machineGroupType), region: region, logger: logger, on: eventLoop)
    }
}
