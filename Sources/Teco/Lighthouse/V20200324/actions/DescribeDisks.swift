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
import TecoPaginationHelpers

extension Lighthouse {
    /// DescribeDisks请求参数结构体
    public struct DescribeDisksRequest: TCPaginatedRequest {
        /// 云硬盘ID列表。
        public let diskIds: [String]?

        /// 过滤器列表。
        /// disk-id
        /// 按照【云硬盘 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// instance-id
        /// 按照【实例ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// disk-name
        /// 按照【云硬盘名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// zone
        /// 按照【可用区】进行过滤。
        /// 类型：String
        /// 必选：否
        /// disk-usage
        /// 按照【云硬盘类型】进行过滤。
        /// 类型：String
        /// 必选：否
        /// 取值：SYSTEM_DISK或DATA_DISK
        /// disk-state
        /// 按照【云硬盘状态】进行过滤。
        /// 类型：String
        /// 必选：否
        /// 取值：参考数据结构[Disk](https://cloud.tencent.com/document/api/1207/47576#Disk)中DiskState取值。
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 DiskIds 和 Filters。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 云硬盘列表排序的依据字段。取值范围："CREATED_TIME"：依据云硬盘的创建时间排序。 "EXPIRED_TIME"：依据云硬盘的到期时间排序。"DISK_SIZE"：依据云硬盘的大小排序。默认按云硬盘创建时间排序。
        public let orderField: String?

        /// 输出云硬盘列表的排列顺序。取值范围："ASC"：升序排列。 "DESC"：降序排列。默认按降序排列。
        public let order: String?

        public init(diskIds: [String]? = nil, filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderField: String? = nil, order: String? = nil) {
            self.diskIds = diskIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.orderField = orderField
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case orderField = "OrderField"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDisksResponse) -> DescribeDisksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDisksRequest(diskIds: self.diskIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderField: self.orderField, order: self.order)
        }
    }

    /// DescribeDisks返回参数结构体
    public struct DescribeDisksResponse: TCPaginatedResponse {
        /// 云硬盘信息列表。
        public let diskSet: [Disk]

        /// 符合条件的云硬盘信息数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskSet = "DiskSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Disk] {
            self.diskSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    @inlinable
    public func describeDisks(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksResponse> {
        self.client.execute(action: "DescribeDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    @inlinable
    public func describeDisks(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksResponse {
        try await self.client.execute(action: "DescribeDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    @inlinable
    public func describeDisks(diskIds: [String]? = nil, filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderField: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksResponse> {
        self.describeDisks(.init(diskIds: diskIds, filters: filters, limit: limit, offset: offset, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    @inlinable
    public func describeDisks(diskIds: [String]? = nil, filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderField: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksResponse {
        try await self.describeDisks(.init(diskIds: diskIds, filters: filters, limit: limit, offset: offset, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    @inlinable
    public func describeDisksPaginated(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Disk])> {
        self.client.paginate(input: input, region: region, command: self.describeDisks, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    @inlinable @discardableResult
    public func describeDisksPaginated(_ input: DescribeDisksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDisksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDisks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘信息。
    ///
    /// - Returns: `AsyncSequence`s of `Disk` and `DescribeDisksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDisksPaginator(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDisksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDisks, logger: logger, on: eventLoop)
    }
}
