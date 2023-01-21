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

extension Gaap {
    /// ModifyProxyGroupAttribute请求参数结构体
    public struct ModifyProxyGroupAttributeRequest: TCRequestModel {
        /// 需要修改的通道组ID。
        public let groupId: String

        /// 修改后的通道组名称：不超过30个字符，超过部分会被截断。
        public let groupName: String?

        /// 项目ID
        public let projectId: UInt64?

        public init(groupId: String, groupName: String? = nil, projectId: UInt64? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case projectId = "ProjectId"
        }
    }

    /// ModifyProxyGroupAttribute返回参数结构体
    public struct ModifyProxyGroupAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改通道组属性
    ///
    /// 本接口（ModifyProxyGroupAttribute）用于修改通道组属性，目前仅支持修改通道组名称。
    @inlinable @discardableResult
    public func modifyProxyGroupAttribute(_ input: ModifyProxyGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProxyGroupAttributeResponse> {
        self.client.execute(action: "ModifyProxyGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改通道组属性
    ///
    /// 本接口（ModifyProxyGroupAttribute）用于修改通道组属性，目前仅支持修改通道组名称。
    @inlinable @discardableResult
    public func modifyProxyGroupAttribute(_ input: ModifyProxyGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProxyGroupAttributeResponse {
        try await self.client.execute(action: "ModifyProxyGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改通道组属性
    ///
    /// 本接口（ModifyProxyGroupAttribute）用于修改通道组属性，目前仅支持修改通道组名称。
    @inlinable @discardableResult
    public func modifyProxyGroupAttribute(groupId: String, groupName: String? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProxyGroupAttributeResponse> {
        self.modifyProxyGroupAttribute(ModifyProxyGroupAttributeRequest(groupId: groupId, groupName: groupName, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改通道组属性
    ///
    /// 本接口（ModifyProxyGroupAttribute）用于修改通道组属性，目前仅支持修改通道组名称。
    @inlinable @discardableResult
    public func modifyProxyGroupAttribute(groupId: String, groupName: String? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProxyGroupAttributeResponse {
        try await self.modifyProxyGroupAttribute(ModifyProxyGroupAttributeRequest(groupId: groupId, groupName: groupName, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
