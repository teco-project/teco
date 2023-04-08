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

extension Tcaplusdb {
    /// DescribeTableGroupTags请求参数结构体
    public struct DescribeTableGroupTagsRequest: TCRequestModel {
        /// 待查询标签表格组所属集群ID
        public let clusterId: String

        /// 待查询标签表格组ID列表
        public let tableGroupIds: [String]

        public init(clusterId: String, tableGroupIds: [String]) {
            self.clusterId = clusterId
            self.tableGroupIds = tableGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupIds = "TableGroupIds"
        }
    }

    /// DescribeTableGroupTags返回参数结构体
    public struct DescribeTableGroupTagsResponse: TCResponseModel {
        /// 表格组标签信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rows: [TagsInfoOfTableGroup]?

        /// 返回结果个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rows = "Rows"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取表格组关联的标签列表
    @inlinable
    public func describeTableGroupTags(_ input: DescribeTableGroupTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableGroupTagsResponse> {
        self.client.execute(action: "DescribeTableGroupTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取表格组关联的标签列表
    @inlinable
    public func describeTableGroupTags(_ input: DescribeTableGroupTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableGroupTagsResponse {
        try await self.client.execute(action: "DescribeTableGroupTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取表格组关联的标签列表
    @inlinable
    public func describeTableGroupTags(clusterId: String, tableGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableGroupTagsResponse> {
        self.describeTableGroupTags(.init(clusterId: clusterId, tableGroupIds: tableGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取表格组关联的标签列表
    @inlinable
    public func describeTableGroupTags(clusterId: String, tableGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableGroupTagsResponse {
        try await self.describeTableGroupTags(.init(clusterId: clusterId, tableGroupIds: tableGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
