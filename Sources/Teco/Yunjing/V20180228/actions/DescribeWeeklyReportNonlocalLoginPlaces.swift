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

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Yunjing {
    /// DescribeWeeklyReportNonlocalLoginPlaces请求参数结构体
    public struct DescribeWeeklyReportNonlocalLoginPlacesRequest: TCPaginatedRequest {
        /// 专业周报开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self._beginDate = .init(wrappedValue: beginDate)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWeeklyReportNonlocalLoginPlacesResponse) -> DescribeWeeklyReportNonlocalLoginPlacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWeeklyReportNonlocalLoginPlacesRequest(beginDate: self.beginDate, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeWeeklyReportNonlocalLoginPlaces返回参数结构体
    public struct DescribeWeeklyReportNonlocalLoginPlacesResponse: TCPaginatedResponse {
        /// 专业周报异地登录数据。
        public let weeklyReportNonlocalLoginPlaces: [WeeklyReportNonlocalLoginPlace]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case weeklyReportNonlocalLoginPlaces = "WeeklyReportNonlocalLoginPlaces"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WeeklyReportNonlocalLoginPlace] {
            self.weeklyReportNonlocalLoginPlaces
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    @inlinable
    public func describeWeeklyReportNonlocalLoginPlaces(_ input: DescribeWeeklyReportNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportNonlocalLoginPlacesResponse> {
        self.client.execute(action: "DescribeWeeklyReportNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    @inlinable
    public func describeWeeklyReportNonlocalLoginPlaces(_ input: DescribeWeeklyReportNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "DescribeWeeklyReportNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    @inlinable
    public func describeWeeklyReportNonlocalLoginPlaces(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportNonlocalLoginPlacesResponse> {
        self.describeWeeklyReportNonlocalLoginPlaces(.init(beginDate: beginDate, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    @inlinable
    public func describeWeeklyReportNonlocalLoginPlaces(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportNonlocalLoginPlacesResponse {
        try await self.describeWeeklyReportNonlocalLoginPlaces(.init(beginDate: beginDate, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    @inlinable
    public func describeWeeklyReportNonlocalLoginPlacesPaginated(_ input: DescribeWeeklyReportNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [WeeklyReportNonlocalLoginPlace])> {
        self.client.paginate(input: input, region: region, command: self.describeWeeklyReportNonlocalLoginPlaces, logger: logger, on: eventLoop)
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    @inlinable @discardableResult
    public func describeWeeklyReportNonlocalLoginPlacesPaginated(_ input: DescribeWeeklyReportNonlocalLoginPlacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWeeklyReportNonlocalLoginPlacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWeeklyReportNonlocalLoginPlaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取专业周报异地登录数据
    ///
    /// 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。
    ///
    /// - Returns: `AsyncSequence`s of `WeeklyReportNonlocalLoginPlace` and `DescribeWeeklyReportNonlocalLoginPlacesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWeeklyReportNonlocalLoginPlacesPaginator(_ input: DescribeWeeklyReportNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWeeklyReportNonlocalLoginPlacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWeeklyReportNonlocalLoginPlaces, logger: logger, on: eventLoop)
    }
}
