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
    /// DescribeDirectConnectTunnels请求参数结构体
    public struct DescribeDirectConnectTunnelsRequest: TCPaginatedRequest {
        /// 过滤条件:
        /// 参数不支持同时指定DirectConnectTunnelIds和Filters。
        /// <li> direct-connect-tunnel-name, 专用通道名称。</li>
        /// <li> direct-connect-tunnel-id, 专用通道实例ID，如dcx-abcdefgh。</li>
        /// <li>direct-connect-id, 物理专线实例ID，如，dc-abcdefgh。</li>
        public let filters: [Filter]?

        /// 专用通道 ID数组
        public let directConnectTunnelIds: [String]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        public init(filters: [Filter]? = nil, directConnectTunnelIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.directConnectTunnelIds = directConnectTunnelIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case directConnectTunnelIds = "DirectConnectTunnelIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDirectConnectTunnelsResponse) -> DescribeDirectConnectTunnelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDirectConnectTunnelsRequest(filters: self.filters, directConnectTunnelIds: self.directConnectTunnelIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDirectConnectTunnels返回参数结构体
    public struct DescribeDirectConnectTunnelsResponse: TCPaginatedResponse {
        /// 专用通道列表
        public let directConnectTunnelSet: [DirectConnectTunnel]

        /// 符合专用通道数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelSet = "DirectConnectTunnelSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DirectConnectTunnel] {
            self.directConnectTunnelSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    @inlinable
    public func describeDirectConnectTunnels(_ input: DescribeDirectConnectTunnelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectTunnelsResponse> {
        self.client.execute(action: "DescribeDirectConnectTunnels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    @inlinable
    public func describeDirectConnectTunnels(_ input: DescribeDirectConnectTunnelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectTunnelsResponse {
        try await self.client.execute(action: "DescribeDirectConnectTunnels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    @inlinable
    public func describeDirectConnectTunnels(filters: [Filter]? = nil, directConnectTunnelIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectTunnelsResponse> {
        self.describeDirectConnectTunnels(.init(filters: filters, directConnectTunnelIds: directConnectTunnelIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    @inlinable
    public func describeDirectConnectTunnels(filters: [Filter]? = nil, directConnectTunnelIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectTunnelsResponse {
        try await self.describeDirectConnectTunnels(.init(filters: filters, directConnectTunnelIds: directConnectTunnelIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    @inlinable
    public func describeDirectConnectTunnelsPaginated(_ input: DescribeDirectConnectTunnelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DirectConnectTunnel])> {
        self.client.paginate(input: input, region: region, command: self.describeDirectConnectTunnels, logger: logger, on: eventLoop)
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    @inlinable @discardableResult
    public func describeDirectConnectTunnelsPaginated(_ input: DescribeDirectConnectTunnelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDirectConnectTunnelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDirectConnectTunnels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询专用通道列表
    ///
    /// 用于查询专用通道列表。
    ///
    /// - Returns: `AsyncSequence`s of `DirectConnectTunnel` and `DescribeDirectConnectTunnelsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDirectConnectTunnelsPaginator(_ input: DescribeDirectConnectTunnelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDirectConnectTunnelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDirectConnectTunnels, logger: logger, on: eventLoop)
    }
}
