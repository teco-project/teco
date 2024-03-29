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
    /// DescribeGroup请求参数结构体
    public struct DescribeGroupRequest: TCRequest {
        /// 群组ID
        public let groupId: String

        /// 低代码平台应用ID
        public let sdkAppId: UInt64

        public init(groupId: String, sdkAppId: UInt64) {
            self.groupId = groupId
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeGroup返回参数结构体
    public struct DescribeGroupResponse: TCResponse {
        /// 群组ID
        public let groupId: String

        /// 群组名称
        public let groupName: String

        /// 群主主讲人ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let teacherId: String?

        /// 群组类型
        /// 0-基础群组
        /// 1-组合群组，若为1时会返回子群组ID
        public let groupType: UInt64

        /// 子群组ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subGroupIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case teacherId = "TeacherId"
            case groupType = "GroupType"
            case subGroupIds = "SubGroupIds"
            case requestId = "RequestId"
        }
    }

    /// 获取群组详情
    ///
    /// 此接口用于获取群组详情
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupResponse> {
        self.client.execute(action: "DescribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取群组详情
    ///
    /// 此接口用于获取群组详情
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        try await self.client.execute(action: "DescribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取群组详情
    ///
    /// 此接口用于获取群组详情
    @inlinable
    public func describeGroup(groupId: String, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupResponse> {
        self.describeGroup(.init(groupId: groupId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取群组详情
    ///
    /// 此接口用于获取群组详情
    @inlinable
    public func describeGroup(groupId: String, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        try await self.describeGroup(.init(groupId: groupId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
