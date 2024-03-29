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

extension Tcaplusdb {
    /// DescribeSnapshots请求参数结构体
    public struct DescribeSnapshotsRequest: TCRequest {
        /// 表格所属集群id
        public let clusterId: String

        /// 所属表格组ID
        public let tableGroupId: String?

        /// 表名称
        public let tableName: String?

        /// 快照名称
        public let snapshotName: String?

        /// 批量拉取快照的表格列表
        public let selectedTables: [SelectedTableInfoNew]?

        public init(clusterId: String, tableGroupId: String? = nil, tableName: String? = nil, snapshotName: String? = nil, selectedTables: [SelectedTableInfoNew]? = nil) {
            self.clusterId = clusterId
            self.tableGroupId = tableGroupId
            self.tableName = tableName
            self.snapshotName = snapshotName
            self.selectedTables = selectedTables
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupId = "TableGroupId"
            case tableName = "TableName"
            case snapshotName = "SnapshotName"
            case selectedTables = "SelectedTables"
        }
    }

    /// DescribeSnapshots返回参数结构体
    public struct DescribeSnapshotsResponse: TCResponse {
        /// 快照数量
        public let totalCount: UInt64

        /// 快照结果列表
        public let tableResults: [SnapshotResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 查询快照列表
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResponse> {
        self.client.execute(action: "DescribeSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.client.execute(action: "DescribeSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询快照列表
    @inlinable
    public func describeSnapshots(clusterId: String, tableGroupId: String? = nil, tableName: String? = nil, snapshotName: String? = nil, selectedTables: [SelectedTableInfoNew]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResponse> {
        self.describeSnapshots(.init(clusterId: clusterId, tableGroupId: tableGroupId, tableName: tableName, snapshotName: snapshotName, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    @inlinable
    public func describeSnapshots(clusterId: String, tableGroupId: String? = nil, tableName: String? = nil, snapshotName: String? = nil, selectedTables: [SelectedTableInfoNew]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.describeSnapshots(.init(clusterId: clusterId, tableGroupId: tableGroupId, tableName: tableName, snapshotName: snapshotName, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }
}
