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

extension Dlc {
    /// DescribeDMSPartitions请求参数结构体
    public struct DescribeDMSPartitionsRequest: TCPaginatedRequest {
        /// 数据库名
        public let databaseName: String

        /// 表名称
        public let tableName: String

        /// schema名称
        public let schemaName: String?

        /// 名称
        public let name: String?

        /// 单个分区名称，精准匹配
        public let values: [String]?

        /// 多个分区名称，精准匹配
        public let partitionNames: [String]?

        /// 多个分区字段的匹配，模糊匹配
        public let partValues: [String]?

        /// 过滤SQL
        public let filter: String?

        /// 最大分区数量
        public let maxParts: Int64?

        /// 翻页跳过数量
        public let offset: Int64?

        /// 页面数量
        public let limit: Int64?

        /// 表达式
        public let expression: String?

        public init(databaseName: String, tableName: String, schemaName: String? = nil, name: String? = nil, values: [String]? = nil, partitionNames: [String]? = nil, partValues: [String]? = nil, filter: String? = nil, maxParts: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, expression: String? = nil) {
            self.databaseName = databaseName
            self.tableName = tableName
            self.schemaName = schemaName
            self.name = name
            self.values = values
            self.partitionNames = partitionNames
            self.partValues = partValues
            self.filter = filter
            self.maxParts = maxParts
            self.offset = offset
            self.limit = limit
            self.expression = expression
        }

        enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case tableName = "TableName"
            case schemaName = "SchemaName"
            case name = "Name"
            case values = "Values"
            case partitionNames = "PartitionNames"
            case partValues = "PartValues"
            case filter = "Filter"
            case maxParts = "MaxParts"
            case offset = "Offset"
            case limit = "Limit"
            case expression = "Expression"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDMSPartitionsResponse) -> DescribeDMSPartitionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(databaseName: self.databaseName, tableName: self.tableName, schemaName: self.schemaName, name: self.name, values: self.values, partitionNames: self.partitionNames, partValues: self.partValues, filter: self.filter, maxParts: self.maxParts, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, expression: self.expression)
        }
    }

    /// DescribeDMSPartitions返回参数结构体
    public struct DescribeDMSPartitionsResponse: TCPaginatedResponse {
        /// 分区信息
        public let partitions: [DMSPartition]

        /// 总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case partitions = "Partitions"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DMSPartition`` list from the paginated response.
        public func getItems() -> [DMSPartition] {
            self.partitions
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// DMS元数据获取分区
    @inlinable
    public func describeDMSPartitions(_ input: DescribeDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDMSPartitionsResponse> {
        self.client.execute(action: "DescribeDMSPartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取分区
    @inlinable
    public func describeDMSPartitions(_ input: DescribeDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSPartitionsResponse {
        try await self.client.execute(action: "DescribeDMSPartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据获取分区
    @inlinable
    public func describeDMSPartitions(databaseName: String, tableName: String, schemaName: String? = nil, name: String? = nil, values: [String]? = nil, partitionNames: [String]? = nil, partValues: [String]? = nil, filter: String? = nil, maxParts: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, expression: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDMSPartitionsResponse> {
        self.describeDMSPartitions(.init(databaseName: databaseName, tableName: tableName, schemaName: schemaName, name: name, values: values, partitionNames: partitionNames, partValues: partValues, filter: filter, maxParts: maxParts, offset: offset, limit: limit, expression: expression), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取分区
    @inlinable
    public func describeDMSPartitions(databaseName: String, tableName: String, schemaName: String? = nil, name: String? = nil, values: [String]? = nil, partitionNames: [String]? = nil, partValues: [String]? = nil, filter: String? = nil, maxParts: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, expression: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSPartitionsResponse {
        try await self.describeDMSPartitions(.init(databaseName: databaseName, tableName: tableName, schemaName: schemaName, name: name, values: values, partitionNames: partitionNames, partValues: partValues, filter: filter, maxParts: maxParts, offset: offset, limit: limit, expression: expression), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取分区
    @inlinable
    public func describeDMSPartitionsPaginated(_ input: DescribeDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DMSPartition])> {
        self.client.paginate(input: input, region: region, command: self.describeDMSPartitions, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取分区
    @inlinable @discardableResult
    public func describeDMSPartitionsPaginated(_ input: DescribeDMSPartitionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDMSPartitionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDMSPartitions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取分区
    ///
    /// - Returns: `AsyncSequence`s of ``DMSPartition`` and ``DescribeDMSPartitionsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDMSPartitionsPaginator(_ input: DescribeDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDMSPartitionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDMSPartitions, logger: logger, on: eventLoop)
    }
}
