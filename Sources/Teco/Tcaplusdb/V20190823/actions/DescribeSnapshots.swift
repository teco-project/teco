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

extension Tcaplusdb {
    /// DescribeSnapshots请求参数结构体
    public struct DescribeSnapshotsRequest: TCRequestModel {
        /// 表格所属集群id
        public let clusterId: String
        
        /// 所属表格组ID
        public let tableGroupId: String?
        
        /// 表名称
        public let tableName: String?
        
        /// 快照名称
        public let snapshotName: String?
        
        public init (clusterId: String, tableGroupId: String? = nil, tableName: String? = nil, snapshotName: String? = nil) {
            self.clusterId = clusterId
            self.tableGroupId = tableGroupId
            self.tableName = tableName
            self.snapshotName = snapshotName
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupId = "TableGroupId"
            case tableName = "TableName"
            case snapshotName = "SnapshotName"
        }
    }
    
    /// DescribeSnapshots返回参数结构体
    public struct DescribeSnapshotsResponse: TCResponseModel {
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
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSnapshotsResponse > {
        self.client.execute(action: "DescribeSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询快照列表
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.client.execute(action: "DescribeSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
