//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideoindustry {
    /// DescribeSubGroups请求参数结构体
    public struct DescribeSubGroupsRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String?

        /// 分组名称，根据名称模糊匹配子分组时为必填
        public let groupName: String?

        /// 偏移量，默认0
        public let offset: UInt64?

        /// 限制数，默认200
        public let limit: UInt64?

        /// 是否统计子分组下的设备数，0：统计，1：不统计
        public let onlyGroup: Int64?

        public init(groupId: String? = nil, groupName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, onlyGroup: Int64? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.offset = offset
            self.limit = limit
            self.onlyGroup = onlyGroup
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case offset = "Offset"
            case limit = "Limit"
            case onlyGroup = "OnlyGroup"
        }
    }

    /// DescribeSubGroups返回参数结构体
    public struct DescribeSubGroupsResponse: TCResponseModel {
        /// 子分组详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupList: [GroupItem]?

        /// 子分组总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupList = "GroupList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询子分组列表
    ///
    /// 本接口(DescribeSubGroups)用于查询分组下的子分组列表。
    @inlinable
    public func describeSubGroups(_ input: DescribeSubGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSubGroupsResponse > {
        self.client.execute(action: "DescribeSubGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子分组列表
    ///
    /// 本接口(DescribeSubGroups)用于查询分组下的子分组列表。
    @inlinable
    public func describeSubGroups(_ input: DescribeSubGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubGroupsResponse {
        try await self.client.execute(action: "DescribeSubGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子分组列表
    ///
    /// 本接口(DescribeSubGroups)用于查询分组下的子分组列表。
    @inlinable
    public func describeSubGroups(groupId: String? = nil, groupName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, onlyGroup: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSubGroupsResponse > {
        self.describeSubGroups(DescribeSubGroupsRequest(groupId: groupId, groupName: groupName, offset: offset, limit: limit, onlyGroup: onlyGroup), logger: logger, on: eventLoop)
    }

    /// 查询子分组列表
    ///
    /// 本接口(DescribeSubGroups)用于查询分组下的子分组列表。
    @inlinable
    public func describeSubGroups(groupId: String? = nil, groupName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, onlyGroup: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubGroupsResponse {
        try await self.describeSubGroups(DescribeSubGroupsRequest(groupId: groupId, groupName: groupName, offset: offset, limit: limit, onlyGroup: onlyGroup), logger: logger, on: eventLoop)
    }
}
