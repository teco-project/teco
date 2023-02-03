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

extension Tsf {
    /// ModifyGroup请求参数结构体
    public struct ModifyGroupRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String

        /// 部署组名称
        public let groupName: String?

        /// 部署组描述
        public let groupDesc: String?

        /// 部署组备注
        public let alias: String?

        public init(groupId: String, groupName: String? = nil, groupDesc: String? = nil, alias: String? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.groupDesc = groupDesc
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case groupDesc = "GroupDesc"
            case alias = "Alias"
        }
    }

    /// ModifyGroup返回参数结构体
    public struct ModifyGroupResponse: TCResponseModel {
        /// 更新部署组详情是否成功。
        /// true：操作成功。
        /// false：操作失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新分组信息
    ///
    /// 更新部署组信息
    @inlinable
    public func modifyGroup(_ input: ModifyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupResponse> {
        self.client.execute(action: "ModifyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新分组信息
    ///
    /// 更新部署组信息
    @inlinable
    public func modifyGroup(_ input: ModifyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupResponse {
        try await self.client.execute(action: "ModifyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新分组信息
    ///
    /// 更新部署组信息
    @inlinable
    public func modifyGroup(groupId: String, groupName: String? = nil, groupDesc: String? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupResponse> {
        let input = ModifyGroupRequest(groupId: groupId, groupName: groupName, groupDesc: groupDesc, alias: alias)
        return self.client.execute(action: "ModifyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新分组信息
    ///
    /// 更新部署组信息
    @inlinable
    public func modifyGroup(groupId: String, groupName: String? = nil, groupDesc: String? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupResponse {
        let input = ModifyGroupRequest(groupId: groupId, groupName: groupName, groupDesc: groupDesc, alias: alias)
        return try await self.client.execute(action: "ModifyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
