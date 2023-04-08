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

extension Iai {
    /// ModifyGroup请求参数结构体
    public struct ModifyGroupRequest: TCRequestModel {
        /// 人员库ID
        public let groupId: String

        /// 人员库名称
        public let groupName: String?

        /// 需要修改的人员库自定义描述字段，key-value
        public let groupExDescriptionInfos: [GroupExDescriptionInfo]?

        /// 人员库信息备注
        public let tag: String?

        public init(groupId: String, groupName: String? = nil, groupExDescriptionInfos: [GroupExDescriptionInfo]? = nil, tag: String? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.groupExDescriptionInfos = groupExDescriptionInfos
            self.tag = tag
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case groupExDescriptionInfos = "GroupExDescriptionInfos"
            case tag = "Tag"
        }
    }

    /// ModifyGroup返回参数结构体
    public struct ModifyGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改人员库
    ///
    /// 修改人员库名称、备注、自定义描述字段名称。
    @inlinable @discardableResult
    public func modifyGroup(_ input: ModifyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupResponse> {
        self.client.execute(action: "ModifyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改人员库
    ///
    /// 修改人员库名称、备注、自定义描述字段名称。
    @inlinable @discardableResult
    public func modifyGroup(_ input: ModifyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupResponse {
        try await self.client.execute(action: "ModifyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改人员库
    ///
    /// 修改人员库名称、备注、自定义描述字段名称。
    @inlinable @discardableResult
    public func modifyGroup(groupId: String, groupName: String? = nil, groupExDescriptionInfos: [GroupExDescriptionInfo]? = nil, tag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupResponse> {
        self.modifyGroup(.init(groupId: groupId, groupName: groupName, groupExDescriptionInfos: groupExDescriptionInfos, tag: tag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改人员库
    ///
    /// 修改人员库名称、备注、自定义描述字段名称。
    @inlinable @discardableResult
    public func modifyGroup(groupId: String, groupName: String? = nil, groupExDescriptionInfos: [GroupExDescriptionInfo]? = nil, tag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupResponse {
        try await self.modifyGroup(.init(groupId: groupId, groupName: groupName, groupExDescriptionInfos: groupExDescriptionInfos, tag: tag), region: region, logger: logger, on: eventLoop)
    }
}
