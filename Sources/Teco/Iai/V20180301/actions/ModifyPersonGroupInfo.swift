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

extension Iai {
    /// ModifyPersonGroupInfo请求参数结构体
    public struct ModifyPersonGroupInfoRequest: TCRequestModel {
        /// 人员库ID
        public let groupId: String

        /// 人员ID
        public let personId: String

        /// 需要修改的人员描述字段内容，key-value
        public let personExDescriptionInfos: [PersonExDescriptionInfo]

        public init(groupId: String, personId: String, personExDescriptionInfos: [PersonExDescriptionInfo]) {
            self.groupId = groupId
            self.personId = personId
            self.personExDescriptionInfos = personExDescriptionInfos
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case personId = "PersonId"
            case personExDescriptionInfos = "PersonExDescriptionInfos"
        }
    }

    /// ModifyPersonGroupInfo返回参数结构体
    public struct ModifyPersonGroupInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改人员描述信息
    ///
    /// 修改指定人员库人员描述内容。
    @inlinable @discardableResult
    public func modifyPersonGroupInfo(_ input: ModifyPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonGroupInfoResponse> {
        self.client.execute(action: "ModifyPersonGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改人员描述信息
    ///
    /// 修改指定人员库人员描述内容。
    @inlinable @discardableResult
    public func modifyPersonGroupInfo(_ input: ModifyPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonGroupInfoResponse {
        try await self.client.execute(action: "ModifyPersonGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改人员描述信息
    ///
    /// 修改指定人员库人员描述内容。
    @inlinable @discardableResult
    public func modifyPersonGroupInfo(groupId: String, personId: String, personExDescriptionInfos: [PersonExDescriptionInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonGroupInfoResponse> {
        self.modifyPersonGroupInfo(ModifyPersonGroupInfoRequest(groupId: groupId, personId: personId, personExDescriptionInfos: personExDescriptionInfos), region: region, logger: logger, on: eventLoop)
    }

    /// 修改人员描述信息
    ///
    /// 修改指定人员库人员描述内容。
    @inlinable @discardableResult
    public func modifyPersonGroupInfo(groupId: String, personId: String, personExDescriptionInfos: [PersonExDescriptionInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonGroupInfoResponse {
        try await self.modifyPersonGroupInfo(ModifyPersonGroupInfoRequest(groupId: groupId, personId: personId, personExDescriptionInfos: personExDescriptionInfos), region: region, logger: logger, on: eventLoop)
    }
}
