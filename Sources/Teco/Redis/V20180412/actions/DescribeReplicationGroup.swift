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

extension Redis {
    /// DescribeReplicationGroup请求参数结构体
    public struct DescribeReplicationGroupRequest: TCRequestModel {
        /// 实例列表的大小，参数默认值20
        public let limit: Int64

        /// 偏移量，取Limit整数倍
        public let offset: Int64

        /// 复制组ID
        public let groupId: String?

        /// 实例ID和实例名称，支持模糊查询
        public let searchKey: String?

        public init(limit: Int64, offset: Int64, groupId: String? = nil, searchKey: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.groupId = groupId
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case groupId = "GroupId"
            case searchKey = "SearchKey"
        }
    }

    /// DescribeReplicationGroup返回参数结构体
    public struct DescribeReplicationGroupResponse: TCResponseModel {
        /// 复制组数
        public let totalCount: Int64

        /// 复制组信息
        public let groups: [Groups]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groups = "Groups"
            case requestId = "RequestId"
        }
    }

    /// 查询复制组
    @inlinable
    public func describeReplicationGroup(_ input: DescribeReplicationGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReplicationGroupResponse > {
        self.client.execute(action: "DescribeReplicationGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询复制组
    @inlinable
    public func describeReplicationGroup(_ input: DescribeReplicationGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationGroupResponse {
        try await self.client.execute(action: "DescribeReplicationGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询复制组
    @inlinable
    public func describeReplicationGroup(limit: Int64, offset: Int64, groupId: String? = nil, searchKey: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReplicationGroupResponse > {
        self.describeReplicationGroup(DescribeReplicationGroupRequest(limit: limit, offset: offset, groupId: groupId, searchKey: searchKey), logger: logger, on: eventLoop)
    }

    /// 查询复制组
    @inlinable
    public func describeReplicationGroup(limit: Int64, offset: Int64, groupId: String? = nil, searchKey: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationGroupResponse {
        try await self.describeReplicationGroup(DescribeReplicationGroupRequest(limit: limit, offset: offset, groupId: groupId, searchKey: searchKey), logger: logger, on: eventLoop)
    }
}
