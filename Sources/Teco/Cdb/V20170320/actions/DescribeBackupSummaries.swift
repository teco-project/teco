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
import TecoPaginationHelpers

extension Cdb {
    /// DescribeBackupSummaries请求参数结构体
    public struct DescribeBackupSummariesRequest: TCPaginatedRequest {
        /// 需要查询的云数据库产品类型，目前仅支持 "mysql"。
        public let product: String

        /// 分页查询数据的偏移量，默认为0。
        public let offset: Int64?

        /// 分页查询数据的条目限制，默认值为20。最小值为1，最大值为100。
        public let limit: Int64?

        /// 指定按某一项排序，可选值包括： BackupVolume: 备份容量， DataBackupVolume: 数据备份容量， BinlogBackupVolume: 日志备份容量， AutoBackupVolume: 自动备份容量， ManualBackupVolume: 手动备份容量。默认按照BackupVolume排序。
        public let orderBy: String?

        /// 指定排序方向，可选值包括： ASC: 正序， DESC: 逆序。默认值为 ASC。
        public let orderDirection: String?

        public init(product: String, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderDirection: String? = nil) {
            self.product = product
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupSummariesResponse) -> DescribeBackupSummariesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBackupSummariesRequest(product: self.product, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, orderDirection: self.orderDirection)
        }
    }

    /// DescribeBackupSummaries返回参数结构体
    public struct DescribeBackupSummariesResponse: TCPaginatedResponse {
        /// 实例备份统计条目。
        public let items: [BackupSummaryItem]

        /// 实例备份统计总条目数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BackupSummaryItem] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    @inlinable
    public func describeBackupSummaries(_ input: DescribeBackupSummariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupSummariesResponse> {
        self.client.execute(action: "DescribeBackupSummaries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    @inlinable
    public func describeBackupSummaries(_ input: DescribeBackupSummariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupSummariesResponse {
        try await self.client.execute(action: "DescribeBackupSummaries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    @inlinable
    public func describeBackupSummaries(product: String, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupSummariesResponse> {
        self.describeBackupSummaries(.init(product: product, offset: offset, limit: limit, orderBy: orderBy, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    @inlinable
    public func describeBackupSummaries(product: String, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupSummariesResponse {
        try await self.describeBackupSummaries(.init(product: product, offset: offset, limit: limit, orderBy: orderBy, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    @inlinable
    public func describeBackupSummariesPaginated(_ input: DescribeBackupSummariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BackupSummaryItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupSummaries, logger: logger, on: eventLoop)
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    @inlinable @discardableResult
    public func describeBackupSummariesPaginated(_ input: DescribeBackupSummariesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupSummariesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupSummaries, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询备份实时统计
    ///
    /// 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。
    ///
    /// - Returns: `AsyncSequence`s of `BackupSummaryItem` and `DescribeBackupSummariesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupSummariesPaginator(_ input: DescribeBackupSummariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupSummariesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupSummaries, logger: logger, on: eventLoop)
    }
}
