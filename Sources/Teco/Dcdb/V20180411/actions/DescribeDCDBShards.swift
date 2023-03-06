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

extension Dcdb {
    /// DescribeDCDBShards请求参数结构体
    public struct DescribeDCDBShardsRequest: TCPaginatedRequest {
        /// 实例ID，形如：dcdbt-ow728lmc。
        public let instanceId: String

        /// 分片ID列表。
        public let shardInstanceIds: [String]?

        /// 偏移量，默认为 0
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 排序字段， 目前仅支持 createtime
        public let orderBy: String?

        /// 排序类型， desc 或者 asc
        public let orderByType: String?

        public init(instanceId: String, shardInstanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.instanceId = instanceId
            self.shardInstanceIds = shardInstanceIds
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case shardInstanceIds = "ShardInstanceIds"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDCDBShardsResponse) -> DescribeDCDBShardsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDCDBShardsRequest(instanceId: self.instanceId, shardInstanceIds: self.shardInstanceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeDCDBShards返回参数结构体
    public struct DescribeDCDBShardsResponse: TCPaginatedResponse {
        /// 符合条件的分片数量
        public let totalCount: Int64

        /// 分片信息列表
        public let shards: [DCDBShardInfo]

        /// 灾备标志，0-无，1-主实例，2-灾备实例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dcnFlag: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case shards = "Shards"
            case dcnFlag = "DcnFlag"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DCDBShardInfo] {
            self.shards
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShards(_ input: DescribeDCDBShardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBShardsResponse> {
        self.client.execute(action: "DescribeDCDBShards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShards(_ input: DescribeDCDBShardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBShardsResponse {
        try await self.client.execute(action: "DescribeDCDBShards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShards(instanceId: String, shardInstanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBShardsResponse> {
        let input = DescribeDCDBShardsRequest(instanceId: instanceId, shardInstanceIds: shardInstanceIds, offset: offset, limit: limit, orderBy: orderBy, orderByType: orderByType)
        return self.client.execute(action: "DescribeDCDBShards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShards(instanceId: String, shardInstanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBShardsResponse {
        let input = DescribeDCDBShardsRequest(instanceId: instanceId, shardInstanceIds: shardInstanceIds, offset: offset, limit: limit, orderBy: orderBy, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeDCDBShards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShardsPaginated(_ input: DescribeDCDBShardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DCDBShardInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDCDBShards, logger: logger, on: eventLoop)
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable @discardableResult
    public func describeDCDBShardsPaginated(_ input: DescribeDCDBShardsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDCDBShardsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDCDBShards, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询分片信息
    ///
    /// 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。
    @inlinable
    public func describeDCDBShardsPaginator(_ input: DescribeDCDBShardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDCDBShardsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDCDBShards, logger: logger, on: eventLoop)
    }
}
