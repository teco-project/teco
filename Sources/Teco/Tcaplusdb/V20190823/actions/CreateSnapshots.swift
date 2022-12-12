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
    /// CreateSnapshots请求参数结构体
    public struct CreateSnapshotsRequest: TCRequestModel {
        /// 表格所属集群id
        public let clusterId: String
        
        /// 快照列表
        public let selectedTables: [SnapshotInfo]
        
        public init (clusterId: String, selectedTables: [SnapshotInfo]) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
        }
    }
    
    /// CreateSnapshots返回参数结构体
    public struct CreateSnapshotsResponse: TCResponseModel {
        /// 批量创建的快照数量
        public let totalCount: UInt64
        
        /// 批量创建的快照结果列表
        public let tableResults: [SnapshotResult]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }
    
    /// 创建表格快照
    ///
    /// 构造表格过去时间点的快照
    @inlinable
    public func createSnapshots(_ input: CreateSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSnapshotsResponse > {
        self.client.execute(action: "CreateSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建表格快照
    ///
    /// 构造表格过去时间点的快照
    @inlinable
    public func createSnapshots(_ input: CreateSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotsResponse {
        try await self.client.execute(action: "CreateSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
