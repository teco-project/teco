//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcaplusdb {
    /// 删除表格快照
    ///
    /// 删除表格的快照
    @inlinable
    public func deleteSnapshots(_ input: DeleteSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSnapshotsResponse > {
        self.client.execute(action: "DeleteSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除表格快照
    ///
    /// 删除表格的快照
    @inlinable
    public func deleteSnapshots(_ input: DeleteSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotsResponse {
        try await self.client.execute(action: "DeleteSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSnapshots请求参数结构体
    public struct DeleteSnapshotsRequest: TCRequestModel {
        /// 表格所属集群id
        public let clusterId: String
        
        /// 删除的快照列表
        public let selectedTables: [SnapshotInfoNew]
        
        public init (clusterId: String, selectedTables: [SnapshotInfoNew]) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
        }
    }
    
    /// DeleteSnapshots返回参数结构体
    public struct DeleteSnapshotsResponse: TCResponseModel {
        /// 批量删除的快照数量
        public let totalCount: UInt64
        
        /// 批量删除的快照结果
        public let tableResults: [SnapshotResult]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }
}