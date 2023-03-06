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

extension Dc {
    /// DescribeAccessPoints请求参数结构体
    public struct DescribeAccessPointsRequest: TCPaginatedRequest {
        /// 接入点所在的地域。使用DescribeRegions查询
        ///
        /// 您可以通过调用 DescribeRegions接口获取地域ID。
        public let regionId: String?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        public init(regionId: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.regionId = regionId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAccessPointsResponse) -> DescribeAccessPointsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccessPointsRequest(regionId: self.regionId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAccessPoints返回参数结构体
    public struct DescribeAccessPointsResponse: TCPaginatedResponse {
        /// 接入点信息。
        public let accessPointSet: [AccessPoint]

        /// 符合接入点数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessPointSet = "AccessPointSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AccessPoint] {
            self.accessPointSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询物理专线接入点
    @inlinable
    public func describeAccessPoints(_ input: DescribeAccessPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessPointsResponse> {
        self.client.execute(action: "DescribeAccessPoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询物理专线接入点
    @inlinable
    public func describeAccessPoints(_ input: DescribeAccessPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessPointsResponse {
        try await self.client.execute(action: "DescribeAccessPoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询物理专线接入点
    @inlinable
    public func describeAccessPoints(regionId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessPointsResponse> {
        let input = DescribeAccessPointsRequest(regionId: regionId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeAccessPoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询物理专线接入点
    @inlinable
    public func describeAccessPoints(regionId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessPointsResponse {
        let input = DescribeAccessPointsRequest(regionId: regionId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeAccessPoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询物理专线接入点
    @inlinable
    public func describeAccessPointsPaginated(_ input: DescribeAccessPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AccessPoint])> {
        self.client.paginate(input: input, region: region, command: self.describeAccessPoints, logger: logger, on: eventLoop)
    }

    /// 查询物理专线接入点
    @inlinable @discardableResult
    public func describeAccessPointsPaginated(_ input: DescribeAccessPointsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccessPointsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccessPoints, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询物理专线接入点
    ///
    /// - Returns: `AsyncSequence`s of `AccessPoint` and `DescribeAccessPointsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAccessPointsPaginator(_ input: DescribeAccessPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccessPointsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccessPoints, logger: logger, on: eventLoop)
    }
}
