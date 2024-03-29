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

extension Yunjing {
    /// DescribeNonlocalLoginPlaces请求参数结构体
    public struct DescribeNonlocalLoginPlacesRequest: TCPaginatedRequest {
        /// 客户端唯一Uuid。
        public let uuid: String?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Keywords - String - 是否必填：否 -  查询关键字
        /// - Status - String - 是否必填：否 -  登录状态（NON_LOCAL_LOGIN: 异地登录 | NORMAL_LOGIN : 正常登录）
        public let filters: [Filter]?

        public init(uuid: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.uuid = uuid
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNonlocalLoginPlacesResponse) -> DescribeNonlocalLoginPlacesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(uuid: self.uuid, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeNonlocalLoginPlaces返回参数结构体
    public struct DescribeNonlocalLoginPlacesResponse: TCPaginatedResponse {
        /// 记录总数。
        public let totalCount: UInt64

        /// 异地登录信息数组。
        public let nonLocalLoginPlaces: [NonLocalLoginPlace]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nonLocalLoginPlaces = "NonLocalLoginPlaces"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NonLocalLoginPlace`` list from the paginated response.
        public func getItems() -> [NonLocalLoginPlace] {
            self.nonLocalLoginPlaces
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(_ input: DescribeNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNonlocalLoginPlacesResponse> {
        self.client.execute(action: "DescribeNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(_ input: DescribeNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "DescribeNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(uuid: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNonlocalLoginPlacesResponse> {
        self.describeNonlocalLoginPlaces(.init(uuid: uuid, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(uuid: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNonlocalLoginPlacesResponse {
        try await self.describeNonlocalLoginPlaces(.init(uuid: uuid, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlacesPaginated(_ input: DescribeNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NonLocalLoginPlace])> {
        self.client.paginate(input: input, region: region, command: self.describeNonlocalLoginPlaces, logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable @discardableResult
    public func describeNonlocalLoginPlacesPaginated(_ input: DescribeNonlocalLoginPlacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNonlocalLoginPlacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNonlocalLoginPlaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    ///
    /// - Returns: `AsyncSequence`s of ``NonLocalLoginPlace`` and ``DescribeNonlocalLoginPlacesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNonlocalLoginPlacesPaginator(_ input: DescribeNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNonlocalLoginPlacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNonlocalLoginPlaces, logger: logger, on: eventLoop)
    }
}
