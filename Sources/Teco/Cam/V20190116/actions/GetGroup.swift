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

extension Cam {
    /// GetGroup请求参数结构体
    public struct GetGroupRequest: TCRequestModel {
        /// 用户组 ID
        public let groupId: UInt64

        public init(groupId: UInt64) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// GetGroup返回参数结构体
    public struct GetGroupResponse: TCResponseModel {
        /// 用户组 ID
        public let groupId: UInt64

        /// 用户组名称
        public let groupName: String

        /// 用户组成员数量
        public let groupNum: UInt64

        /// 用户组描述
        public let remark: String

        /// 用户组创建时间
        public let createTime: String

        /// 用户组成员信息
        public let userInfo: [GroupMemberInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case groupNum = "GroupNum"
            case remark = "Remark"
            case createTime = "CreateTime"
            case userInfo = "UserInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询用户组详情
    @inlinable
    public func getGroup(_ input: GetGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupResponse> {
        self.client.execute(action: "GetGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户组详情
    @inlinable
    public func getGroup(_ input: GetGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupResponse {
        try await self.client.execute(action: "GetGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户组详情
    @inlinable
    public func getGroup(groupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupResponse> {
        self.getGroup(GetGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户组详情
    @inlinable
    public func getGroup(groupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupResponse {
        try await self.getGroup(GetGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
