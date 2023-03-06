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

import TecoPaginationHelpers

extension Tke {
    /// DescribeClusterLevelChangeRecords请求参数结构体
    public struct DescribeClusterLevelChangeRecordsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterID: String

        /// 开始时间
        public let startAt: String?

        /// 结束时间
        public let endAt: String?

        /// 偏移量,默认0
        public let offset: UInt64?

        /// 最大输出条数，默认20
        public let limit: UInt64?

        public init(clusterID: String, startAt: String? = nil, endAt: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.clusterID = clusterID
            self.startAt = startAt
            self.endAt = endAt
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case startAt = "StartAt"
            case endAt = "EndAt"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeClusterLevelChangeRecordsResponse) -> DescribeClusterLevelChangeRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterLevelChangeRecordsRequest(clusterID: self.clusterID, startAt: self.startAt, endAt: self.endAt, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeClusterLevelChangeRecords返回参数结构体
    public struct DescribeClusterLevelChangeRecordsResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: Int64

        /// 集群规模
        public let items: [ClusterLevelChangeRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClusterLevelChangeRecord] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群变配记录
    @inlinable
    public func describeClusterLevelChangeRecords(_ input: DescribeClusterLevelChangeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterLevelChangeRecordsResponse> {
        self.client.execute(action: "DescribeClusterLevelChangeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群变配记录
    @inlinable
    public func describeClusterLevelChangeRecords(_ input: DescribeClusterLevelChangeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterLevelChangeRecordsResponse {
        try await self.client.execute(action: "DescribeClusterLevelChangeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群变配记录
    @inlinable
    public func describeClusterLevelChangeRecords(clusterID: String, startAt: String? = nil, endAt: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterLevelChangeRecordsResponse> {
        let input = DescribeClusterLevelChangeRecordsRequest(clusterID: clusterID, startAt: startAt, endAt: endAt, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeClusterLevelChangeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群变配记录
    @inlinable
    public func describeClusterLevelChangeRecords(clusterID: String, startAt: String? = nil, endAt: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterLevelChangeRecordsResponse {
        let input = DescribeClusterLevelChangeRecordsRequest(clusterID: clusterID, startAt: startAt, endAt: endAt, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeClusterLevelChangeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群变配记录
    @inlinable
    public func describeClusterLevelChangeRecordsPaginated(_ input: DescribeClusterLevelChangeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ClusterLevelChangeRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterLevelChangeRecords, logger: logger, on: eventLoop)
    }

    /// 查询集群变配记录
    @inlinable @discardableResult
    public func describeClusterLevelChangeRecordsPaginated(_ input: DescribeClusterLevelChangeRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterLevelChangeRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterLevelChangeRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群变配记录
    @inlinable
    public func describeClusterLevelChangeRecordsPaginator(_ input: DescribeClusterLevelChangeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterLevelChangeRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterLevelChangeRecords, logger: logger, on: eventLoop)
    }
}
