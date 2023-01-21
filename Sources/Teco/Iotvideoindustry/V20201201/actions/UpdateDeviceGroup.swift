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

extension Iotvideoindustry {
    /// UpdateDeviceGroup请求参数结构体
    public struct UpdateDeviceGroupRequest: TCRequestModel {
        /// 分组名称
        public let groupName: String

        /// 分组ID
        public let groupId: String

        /// 分组描述
        public let groupDescribe: String?

        /// 新父分组ID，用于修改分组路径
        public let newParentId: String?

        public init(groupName: String, groupId: String, groupDescribe: String? = nil, newParentId: String? = nil) {
            self.groupName = groupName
            self.groupId = groupId
            self.groupDescribe = groupDescribe
            self.newParentId = newParentId
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupId = "GroupId"
            case groupDescribe = "GroupDescribe"
            case newParentId = "NewParentId"
        }
    }

    /// UpdateDeviceGroup返回参数结构体
    public struct UpdateDeviceGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改分组信息
    ///
    /// 本接口(UpdateDeviceGroup)用于修改分组信息。
    @inlinable @discardableResult
    public func updateDeviceGroup(_ input: UpdateDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceGroupResponse> {
        self.client.execute(action: "UpdateDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改分组信息
    ///
    /// 本接口(UpdateDeviceGroup)用于修改分组信息。
    @inlinable @discardableResult
    public func updateDeviceGroup(_ input: UpdateDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceGroupResponse {
        try await self.client.execute(action: "UpdateDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改分组信息
    ///
    /// 本接口(UpdateDeviceGroup)用于修改分组信息。
    @inlinable @discardableResult
    public func updateDeviceGroup(groupName: String, groupId: String, groupDescribe: String? = nil, newParentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceGroupResponse> {
        self.updateDeviceGroup(UpdateDeviceGroupRequest(groupName: groupName, groupId: groupId, groupDescribe: groupDescribe, newParentId: newParentId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改分组信息
    ///
    /// 本接口(UpdateDeviceGroup)用于修改分组信息。
    @inlinable @discardableResult
    public func updateDeviceGroup(groupName: String, groupId: String, groupDescribe: String? = nil, newParentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceGroupResponse {
        try await self.updateDeviceGroup(UpdateDeviceGroupRequest(groupName: groupName, groupId: groupId, groupDescribe: groupDescribe, newParentId: newParentId), region: region, logger: logger, on: eventLoop)
    }
}
