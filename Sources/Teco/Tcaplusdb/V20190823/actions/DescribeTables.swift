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
    /// DescribeTables请求参数结构体
    public struct DescribeTablesRequest: TCRequestModel {
        /// 待查询表格所属集群ID
        public let clusterId: String?

        /// 待查询表格所属表格组ID列表
        public let tableGroupIds: [String]?

        /// 待查询表格信息列表
        public let selectedTables: [SelectedTableInfoNew]?

        /// 过滤条件，本接口支持：TableName，TableInstanceId
        public let filters: [Filter]?

        /// 查询结果偏移量
        public let offset: Int64?

        /// 查询结果返回记录数量
        public let limit: Int64?

        public init(clusterId: String? = nil, tableGroupIds: [String]? = nil, selectedTables: [SelectedTableInfoNew]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.tableGroupIds = tableGroupIds
            self.selectedTables = selectedTables
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupIds = "TableGroupIds"
            case selectedTables = "SelectedTables"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeTables返回参数结构体
    public struct DescribeTablesResponse: TCResponseModel {
        /// 表格数量
        public let totalCount: UInt64

        /// 表格详情结果列表
        public let tableInfos: [TableInfoNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableInfos = "TableInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询表详情
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表详情
    @inlinable
    public func describeTables(clusterId: String? = nil, tableGroupIds: [String]? = nil, selectedTables: [SelectedTableInfoNew]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        let input = DescribeTablesRequest(clusterId: clusterId, tableGroupIds: tableGroupIds, selectedTables: selectedTables, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    @inlinable
    public func describeTables(clusterId: String? = nil, tableGroupIds: [String]? = nil, selectedTables: [SelectedTableInfoNew]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        let input = DescribeTablesRequest(clusterId: clusterId, tableGroupIds: tableGroupIds, selectedTables: selectedTables, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
