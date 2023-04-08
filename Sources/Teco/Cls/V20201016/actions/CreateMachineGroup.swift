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

extension Cls {
    /// CreateMachineGroup请求参数结构体
    public struct CreateMachineGroupRequest: TCRequestModel {
        /// 机器组名字，不能重复
        public let groupName: String

        /// 创建机器组类型，Type为ip，Values中为Ip字符串列表创建机器组，Type为label， Values中为标签字符串列表创建机器组
        public let machineGroupType: MachineGroupTypeInfo

        /// 标签描述列表，通过指定该参数可以同时绑定标签到相应的机器组。最大支持10个标签键值对，同一个资源只能绑定到同一个标签键下。
        public let tags: [Tag]?

        /// 是否开启机器组自动更新
        public let autoUpdate: Bool?

        /// 升级开始时间，建议业务低峰期升级LogListener
        public let updateStartTime: String?

        /// 升级结束时间，建议业务低峰期升级LogListener
        public let updateEndTime: String?

        /// 是否开启服务日志，用于记录因Loglistener 服务自身产生的log，开启后，会创建内部日志集cls_service_logging和日志主题loglistener_status,loglistener_alarm,loglistener_business，不产生计费
        public let serviceLogging: Bool?

        public init(groupName: String, machineGroupType: MachineGroupTypeInfo, tags: [Tag]? = nil, autoUpdate: Bool? = nil, updateStartTime: String? = nil, updateEndTime: String? = nil, serviceLogging: Bool? = nil) {
            self.groupName = groupName
            self.machineGroupType = machineGroupType
            self.tags = tags
            self.autoUpdate = autoUpdate
            self.updateStartTime = updateStartTime
            self.updateEndTime = updateEndTime
            self.serviceLogging = serviceLogging
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case machineGroupType = "MachineGroupType"
            case tags = "Tags"
            case autoUpdate = "AutoUpdate"
            case updateStartTime = "UpdateStartTime"
            case updateEndTime = "UpdateEndTime"
            case serviceLogging = "ServiceLogging"
        }
    }

    /// CreateMachineGroup返回参数结构体
    public struct CreateMachineGroupResponse: TCResponseModel {
        /// 机器组ID
        public let groupId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建机器组
    @inlinable
    public func createMachineGroup(_ input: CreateMachineGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMachineGroupResponse> {
        self.client.execute(action: "CreateMachineGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建机器组
    @inlinable
    public func createMachineGroup(_ input: CreateMachineGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMachineGroupResponse {
        try await self.client.execute(action: "CreateMachineGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建机器组
    @inlinable
    public func createMachineGroup(groupName: String, machineGroupType: MachineGroupTypeInfo, tags: [Tag]? = nil, autoUpdate: Bool? = nil, updateStartTime: String? = nil, updateEndTime: String? = nil, serviceLogging: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMachineGroupResponse> {
        self.createMachineGroup(.init(groupName: groupName, machineGroupType: machineGroupType, tags: tags, autoUpdate: autoUpdate, updateStartTime: updateStartTime, updateEndTime: updateEndTime, serviceLogging: serviceLogging), region: region, logger: logger, on: eventLoop)
    }

    /// 创建机器组
    @inlinable
    public func createMachineGroup(groupName: String, machineGroupType: MachineGroupTypeInfo, tags: [Tag]? = nil, autoUpdate: Bool? = nil, updateStartTime: String? = nil, updateEndTime: String? = nil, serviceLogging: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMachineGroupResponse {
        try await self.createMachineGroup(.init(groupName: groupName, machineGroupType: machineGroupType, tags: tags, autoUpdate: autoUpdate, updateStartTime: updateStartTime, updateEndTime: updateEndTime, serviceLogging: serviceLogging), region: region, logger: logger, on: eventLoop)
    }
}
