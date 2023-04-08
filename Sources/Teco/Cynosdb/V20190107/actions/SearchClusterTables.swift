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

extension Cynosdb {
    /// SearchClusterTables请求参数结构体
    public struct SearchClusterTablesRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 数据库名
        public let database: String?

        /// 数据表名
        public let table: String?

        /// 数据表类型：
        /// view：只返回 view，
        /// base_table： 只返回基本表，
        /// all：返回 view 和表
        public let tableType: String?

        public init(clusterId: String, database: String? = nil, table: String? = nil, tableType: String? = nil) {
            self.clusterId = clusterId
            self.database = database
            self.table = table
            self.tableType = tableType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case database = "Database"
            case table = "Table"
            case tableType = "TableType"
        }
    }

    /// SearchClusterTables返回参数结构体
    public struct SearchClusterTablesResponse: TCResponseModel {
        /// 数据表列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tables: [DatabaseTables]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tables = "Tables"
            case requestId = "RequestId"
        }
    }

    /// 搜索集群数据表列表
    ///
    /// 本接口(SearchClusterTables)搜索集群数据表列表
    @inlinable
    public func searchClusterTables(_ input: SearchClusterTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClusterTablesResponse> {
        self.client.execute(action: "SearchClusterTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索集群数据表列表
    ///
    /// 本接口(SearchClusterTables)搜索集群数据表列表
    @inlinable
    public func searchClusterTables(_ input: SearchClusterTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClusterTablesResponse {
        try await self.client.execute(action: "SearchClusterTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索集群数据表列表
    ///
    /// 本接口(SearchClusterTables)搜索集群数据表列表
    @inlinable
    public func searchClusterTables(clusterId: String, database: String? = nil, table: String? = nil, tableType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClusterTablesResponse> {
        self.searchClusterTables(.init(clusterId: clusterId, database: database, table: table, tableType: tableType), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索集群数据表列表
    ///
    /// 本接口(SearchClusterTables)搜索集群数据表列表
    @inlinable
    public func searchClusterTables(clusterId: String, database: String? = nil, table: String? = nil, tableType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClusterTablesResponse {
        try await self.searchClusterTables(.init(clusterId: clusterId, database: database, table: table, tableType: tableType), region: region, logger: logger, on: eventLoop)
    }
}
