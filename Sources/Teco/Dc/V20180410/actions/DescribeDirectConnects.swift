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

extension Dc {
    /// DescribeDirectConnects请求参数结构体
    public struct DescribeDirectConnectsRequest: TCPaginatedRequest {
        /// 过滤条件:
        public let filters: [Filter]?

        /// 物理专线 ID数组
        public let directConnectIds: [String]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        public init(filters: [Filter]? = nil, directConnectIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.directConnectIds = directConnectIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case directConnectIds = "DirectConnectIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDirectConnectsResponse) -> DescribeDirectConnectsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(filters: self.filters, directConnectIds: self.directConnectIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDirectConnects返回参数结构体
    public struct DescribeDirectConnectsResponse: TCPaginatedResponse {
        /// 物理专线列表。
        public let directConnectSet: [DirectConnect]

        /// 符合物理专线列表数量。
        public let totalCount: Int64

        /// 用户名下物理专线是否都签署了用户协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allSignLaw: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case directConnectSet = "DirectConnectSet"
            case totalCount = "TotalCount"
            case allSignLaw = "AllSignLaw"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DirectConnect`` list from the paginated response.
        public func getItems() -> [DirectConnect] {
            self.directConnectSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    @inlinable
    public func describeDirectConnects(_ input: DescribeDirectConnectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectsResponse> {
        self.client.execute(action: "DescribeDirectConnects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    @inlinable
    public func describeDirectConnects(_ input: DescribeDirectConnectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectsResponse {
        try await self.client.execute(action: "DescribeDirectConnects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    @inlinable
    public func describeDirectConnects(filters: [Filter]? = nil, directConnectIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectsResponse> {
        self.describeDirectConnects(.init(filters: filters, directConnectIds: directConnectIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    @inlinable
    public func describeDirectConnects(filters: [Filter]? = nil, directConnectIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectsResponse {
        try await self.describeDirectConnects(.init(filters: filters, directConnectIds: directConnectIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    @inlinable
    public func describeDirectConnectsPaginated(_ input: DescribeDirectConnectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DirectConnect])> {
        self.client.paginate(input: input, region: region, command: self.describeDirectConnects, logger: logger, on: eventLoop)
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    @inlinable @discardableResult
    public func describeDirectConnectsPaginated(_ input: DescribeDirectConnectsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDirectConnectsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDirectConnects, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询物理专线列表
    ///
    /// 查询物理专线列表。
    ///
    /// - Returns: `AsyncSequence`s of ``DirectConnect`` and ``DescribeDirectConnectsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDirectConnectsPaginator(_ input: DescribeDirectConnectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDirectConnectsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDirectConnects, logger: logger, on: eventLoop)
    }
}
