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

extension Cynosdb {
    /// SearchClusterDatabases请求参数结构体
    public struct SearchClusterDatabasesRequest: TCRequest {
        /// 集群id
        public let clusterId: String

        /// 数据库名
        public let database: String?

        /// 是否精确搜索。
        /// 0: 模糊搜索 1:精确搜索
        /// 默认为0
        public let matchType: Int64?

        public init(clusterId: String, database: String? = nil, matchType: Int64? = nil) {
            self.clusterId = clusterId
            self.database = database
            self.matchType = matchType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case database = "Database"
            case matchType = "MatchType"
        }
    }

    /// SearchClusterDatabases返回参数结构体
    public struct SearchClusterDatabasesResponse: TCResponse {
        /// 数据库列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let databases: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case databases = "Databases"
            case requestId = "RequestId"
        }
    }

    /// 搜索集群database列表
    ///
    /// 本接口(SearchClusterDatabases)搜索集群database列表
    @inlinable
    public func searchClusterDatabases(_ input: SearchClusterDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClusterDatabasesResponse> {
        self.client.execute(action: "SearchClusterDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索集群database列表
    ///
    /// 本接口(SearchClusterDatabases)搜索集群database列表
    @inlinable
    public func searchClusterDatabases(_ input: SearchClusterDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClusterDatabasesResponse {
        try await self.client.execute(action: "SearchClusterDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索集群database列表
    ///
    /// 本接口(SearchClusterDatabases)搜索集群database列表
    @inlinable
    public func searchClusterDatabases(clusterId: String, database: String? = nil, matchType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClusterDatabasesResponse> {
        self.searchClusterDatabases(.init(clusterId: clusterId, database: database, matchType: matchType), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索集群database列表
    ///
    /// 本接口(SearchClusterDatabases)搜索集群database列表
    @inlinable
    public func searchClusterDatabases(clusterId: String, database: String? = nil, matchType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClusterDatabasesResponse {
        try await self.searchClusterDatabases(.init(clusterId: clusterId, database: database, matchType: matchType), region: region, logger: logger, on: eventLoop)
    }
}
