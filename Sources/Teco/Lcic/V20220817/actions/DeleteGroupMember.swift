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

extension Lcic {
    /// DeleteGroupMember请求参数结构体
    public struct DeleteGroupMemberRequest: TCRequestModel {
        /// 群组ID，联合群组无法删除群组成员
        public let groupId: String

        /// 低代码平台应用ID
        public let sdkAppId: UInt64

        /// 成员列表，最大值200
        public let memberIds: [String]

        public init(groupId: String, sdkAppId: UInt64, memberIds: [String]) {
            self.groupId = groupId
            self.sdkAppId = sdkAppId
            self.memberIds = memberIds
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case sdkAppId = "SdkAppId"
            case memberIds = "MemberIds"
        }
    }

    /// DeleteGroupMember返回参数结构体
    public struct DeleteGroupMemberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除群组成员
    ///
    /// 此接口用于删除群组中指定成员
    @inlinable @discardableResult
    public func deleteGroupMember(_ input: DeleteGroupMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupMemberResponse> {
        self.client.execute(action: "DeleteGroupMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除群组成员
    ///
    /// 此接口用于删除群组中指定成员
    @inlinable @discardableResult
    public func deleteGroupMember(_ input: DeleteGroupMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupMemberResponse {
        try await self.client.execute(action: "DeleteGroupMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除群组成员
    ///
    /// 此接口用于删除群组中指定成员
    @inlinable @discardableResult
    public func deleteGroupMember(groupId: String, sdkAppId: UInt64, memberIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupMemberResponse> {
        self.deleteGroupMember(.init(groupId: groupId, sdkAppId: sdkAppId, memberIds: memberIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除群组成员
    ///
    /// 此接口用于删除群组中指定成员
    @inlinable @discardableResult
    public func deleteGroupMember(groupId: String, sdkAppId: UInt64, memberIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupMemberResponse {
        try await self.deleteGroupMember(.init(groupId: groupId, sdkAppId: sdkAppId, memberIds: memberIds), region: region, logger: logger, on: eventLoop)
    }
}
