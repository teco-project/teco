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

extension Tcaplusdb {
    /// ModifySnapshots请求参数结构体
    public struct ModifySnapshotsRequest: TCRequestModel {
        /// 表格所属集群id
        public let clusterId: String

        /// 快照列表
        public let selectedTables: [SnapshotInfoNew]

        public init(clusterId: String, selectedTables: [SnapshotInfoNew]) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
        }
    }

    /// ModifySnapshots返回参数结构体
    public struct ModifySnapshotsResponse: TCResponseModel {
        /// 批量修改的快照数量
        public let totalCount: UInt64

        /// 批量修改的快照结果列表
        public let tableResults: [SnapshotResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 修改表格快照
    ///
    /// 修改表格快照的过期时间
    @inlinable
    public func modifySnapshots(_ input: ModifySnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySnapshotsResponse> {
        self.client.execute(action: "ModifySnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改表格快照
    ///
    /// 修改表格快照的过期时间
    @inlinable
    public func modifySnapshots(_ input: ModifySnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotsResponse {
        try await self.client.execute(action: "ModifySnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改表格快照
    ///
    /// 修改表格快照的过期时间
    @inlinable
    public func modifySnapshots(clusterId: String, selectedTables: [SnapshotInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySnapshotsResponse> {
        self.modifySnapshots(.init(clusterId: clusterId, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }

    /// 修改表格快照
    ///
    /// 修改表格快照的过期时间
    @inlinable
    public func modifySnapshots(clusterId: String, selectedTables: [SnapshotInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotsResponse {
        try await self.modifySnapshots(.init(clusterId: clusterId, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }
}
