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

extension Lcic {
    /// CreateGroupWithSubGroup请求参数结构体
    public struct CreateGroupWithSubGroupRequest: TCRequest {
        /// 待创建的新群组名
        public let groupName: String

        /// 低代码平台应用ID
        public let sdkAppId: UInt64

        /// 子群组ID列表，子群组ID不能重复，最多40个
        public let subGroupIds: [String]

        /// 群组默认主讲老师ID
        public let teacherId: String?

        public init(groupName: String, sdkAppId: UInt64, subGroupIds: [String], teacherId: String? = nil) {
            self.groupName = groupName
            self.sdkAppId = sdkAppId
            self.subGroupIds = subGroupIds
            self.teacherId = teacherId
        }

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case sdkAppId = "SdkAppId"
            case subGroupIds = "SubGroupIds"
            case teacherId = "TeacherId"
        }
    }

    /// CreateGroupWithSubGroup返回参数结构体
    public struct CreateGroupWithSubGroupResponse: TCResponse {
        /// 新创建群组ID
        public let groupId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建联合群组
    ///
    /// 此接口会聚合子群组创建联合群组
    @inlinable
    public func createGroupWithSubGroup(_ input: CreateGroupWithSubGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupWithSubGroupResponse> {
        self.client.execute(action: "CreateGroupWithSubGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建联合群组
    ///
    /// 此接口会聚合子群组创建联合群组
    @inlinable
    public func createGroupWithSubGroup(_ input: CreateGroupWithSubGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupWithSubGroupResponse {
        try await self.client.execute(action: "CreateGroupWithSubGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建联合群组
    ///
    /// 此接口会聚合子群组创建联合群组
    @inlinable
    public func createGroupWithSubGroup(groupName: String, sdkAppId: UInt64, subGroupIds: [String], teacherId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupWithSubGroupResponse> {
        self.createGroupWithSubGroup(.init(groupName: groupName, sdkAppId: sdkAppId, subGroupIds: subGroupIds, teacherId: teacherId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建联合群组
    ///
    /// 此接口会聚合子群组创建联合群组
    @inlinable
    public func createGroupWithSubGroup(groupName: String, sdkAppId: UInt64, subGroupIds: [String], teacherId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupWithSubGroupResponse {
        try await self.createGroupWithSubGroup(.init(groupName: groupName, sdkAppId: sdkAppId, subGroupIds: subGroupIds, teacherId: teacherId), region: region, logger: logger, on: eventLoop)
    }
}
