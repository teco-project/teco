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

import Logging
import NIOCore
import TecoCore

extension Iotvideoindustry {
    /// CreateDeviceGroup请求参数结构体
    public struct CreateDeviceGroupRequest: TCRequest {
        /// 分组名称
        public let groupName: String

        /// 父分组ID
        public let parentId: String

        /// 分组描述
        public let groupDescribe: String?

        public init(groupName: String, parentId: String, groupDescribe: String? = nil) {
            self.groupName = groupName
            self.parentId = parentId
            self.groupDescribe = groupDescribe
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case parentId = "ParentId"
            case groupDescribe = "GroupDescribe"
        }
    }

    /// CreateDeviceGroup返回参数结构体
    public struct CreateDeviceGroupResponse: TCResponse {
        /// 响应结果，“OK”为成功，其他为失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 分组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建分组
    ///
    /// 本接口(CreateDeviceGroup) 用于创建设备管理分组。
    @inlinable
    public func createDeviceGroup(_ input: CreateDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceGroupResponse> {
        self.client.execute(action: "CreateDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建分组
    ///
    /// 本接口(CreateDeviceGroup) 用于创建设备管理分组。
    @inlinable
    public func createDeviceGroup(_ input: CreateDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceGroupResponse {
        try await self.client.execute(action: "CreateDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建分组
    ///
    /// 本接口(CreateDeviceGroup) 用于创建设备管理分组。
    @inlinable
    public func createDeviceGroup(groupName: String, parentId: String, groupDescribe: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceGroupResponse> {
        self.createDeviceGroup(.init(groupName: groupName, parentId: parentId, groupDescribe: groupDescribe), region: region, logger: logger, on: eventLoop)
    }

    /// 创建分组
    ///
    /// 本接口(CreateDeviceGroup) 用于创建设备管理分组。
    @inlinable
    public func createDeviceGroup(groupName: String, parentId: String, groupDescribe: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceGroupResponse {
        try await self.createDeviceGroup(.init(groupName: groupName, parentId: parentId, groupDescribe: groupDescribe), region: region, logger: logger, on: eventLoop)
    }
}
