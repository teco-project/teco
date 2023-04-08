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
    /// ImportSnapshots请求参数结构体
    public struct ImportSnapshotsRequest: TCRequestModel {
        /// 表格所属的集群id
        public let clusterId: String

        /// 用于导入的快照信息
        public let snapshots: SnapshotInfo

        /// 是否导入部分记录，TRUE表示导入部分记录，FALSE表示全表导入
        public let importSpecialKey: String

        /// 是否导入到当前表，TRUE表示导入到当前表，FALSE表示导入到新表
        public let importOriginTable: String

        /// 部分记录的key文件
        public let keyFile: KeyFile?

        /// 如果导入到新表，此为新表所属的表格组id
        public let newTableGroupId: String?

        /// 如果导入到新表，此为新表的表名，系统会以该名称自动创建一张结构相同的空表
        public let newTableName: String?

        public init(clusterId: String, snapshots: SnapshotInfo, importSpecialKey: String, importOriginTable: String, keyFile: KeyFile? = nil, newTableGroupId: String? = nil, newTableName: String? = nil) {
            self.clusterId = clusterId
            self.snapshots = snapshots
            self.importSpecialKey = importSpecialKey
            self.importOriginTable = importOriginTable
            self.keyFile = keyFile
            self.newTableGroupId = newTableGroupId
            self.newTableName = newTableName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case snapshots = "Snapshots"
            case importSpecialKey = "ImportSpecialKey"
            case importOriginTable = "ImportOriginTable"
            case keyFile = "KeyFile"
            case newTableGroupId = "NewTableGroupId"
            case newTableName = "NewTableName"
        }
    }

    /// ImportSnapshots返回参数结构体
    public struct ImportSnapshotsResponse: TCResponseModel {
        /// TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导入快照数据
    ///
    /// 将快照数据导入到新表或当前表
    @inlinable
    public func importSnapshots(_ input: ImportSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportSnapshotsResponse> {
        self.client.execute(action: "ImportSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入快照数据
    ///
    /// 将快照数据导入到新表或当前表
    @inlinable
    public func importSnapshots(_ input: ImportSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportSnapshotsResponse {
        try await self.client.execute(action: "ImportSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入快照数据
    ///
    /// 将快照数据导入到新表或当前表
    @inlinable
    public func importSnapshots(clusterId: String, snapshots: SnapshotInfo, importSpecialKey: String, importOriginTable: String, keyFile: KeyFile? = nil, newTableGroupId: String? = nil, newTableName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportSnapshotsResponse> {
        self.importSnapshots(.init(clusterId: clusterId, snapshots: snapshots, importSpecialKey: importSpecialKey, importOriginTable: importOriginTable, keyFile: keyFile, newTableGroupId: newTableGroupId, newTableName: newTableName), region: region, logger: logger, on: eventLoop)
    }

    /// 导入快照数据
    ///
    /// 将快照数据导入到新表或当前表
    @inlinable
    public func importSnapshots(clusterId: String, snapshots: SnapshotInfo, importSpecialKey: String, importOriginTable: String, keyFile: KeyFile? = nil, newTableGroupId: String? = nil, newTableName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportSnapshotsResponse {
        try await self.importSnapshots(.init(clusterId: clusterId, snapshots: snapshots, importSpecialKey: importSpecialKey, importOriginTable: importOriginTable, keyFile: keyFile, newTableGroupId: newTableGroupId, newTableName: newTableName), region: region, logger: logger, on: eventLoop)
    }
}
