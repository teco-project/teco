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
    /// BatchAddGroupMember请求参数结构体
    public struct BatchAddGroupMemberRequest: TCRequestModel {
        /// 待添加群组ID列表，最大值100
        public let groupIds: [String]

        /// 低代码平台应用ID
        public let sdkAppId: UInt64

        /// 待添加成员列表，最大值200
        public let memberIds: [String]

        public init(groupIds: [String], sdkAppId: UInt64, memberIds: [String]) {
            self.groupIds = groupIds
            self.sdkAppId = sdkAppId
            self.memberIds = memberIds
        }

        enum CodingKeys: String, CodingKey {
            case groupIds = "GroupIds"
            case sdkAppId = "SdkAppId"
            case memberIds = "MemberIds"
        }
    }

    /// BatchAddGroupMember返回参数结构体
    public struct BatchAddGroupMemberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量新增成员到群组
    ///
    /// 此接口用于批量添加成员列表到指定群组
    @inlinable @discardableResult
    public func batchAddGroupMember(_ input: BatchAddGroupMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAddGroupMemberResponse> {
        self.client.execute(action: "BatchAddGroupMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量新增成员到群组
    ///
    /// 此接口用于批量添加成员列表到指定群组
    @inlinable @discardableResult
    public func batchAddGroupMember(_ input: BatchAddGroupMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAddGroupMemberResponse {
        try await self.client.execute(action: "BatchAddGroupMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量新增成员到群组
    ///
    /// 此接口用于批量添加成员列表到指定群组
    @inlinable @discardableResult
    public func batchAddGroupMember(groupIds: [String], sdkAppId: UInt64, memberIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAddGroupMemberResponse> {
        self.batchAddGroupMember(.init(groupIds: groupIds, sdkAppId: sdkAppId, memberIds: memberIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量新增成员到群组
    ///
    /// 此接口用于批量添加成员列表到指定群组
    @inlinable @discardableResult
    public func batchAddGroupMember(groupIds: [String], sdkAppId: UInt64, memberIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAddGroupMemberResponse {
        try await self.batchAddGroupMember(.init(groupIds: groupIds, sdkAppId: sdkAppId, memberIds: memberIds), region: region, logger: logger, on: eventLoop)
    }
}