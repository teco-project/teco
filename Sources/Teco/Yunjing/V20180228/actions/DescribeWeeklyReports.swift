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

extension Yunjing {
    /// DescribeWeeklyReports请求参数结构体
    public struct DescribeWeeklyReportsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(limit: UInt64? = nil, offset: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeWeeklyReportsResponse) -> DescribeWeeklyReportsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWeeklyReportsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeWeeklyReports返回参数结构体
    public struct DescribeWeeklyReportsResponse: TCPaginatedResponse {
        /// 专业周报列表数组。
        public let weeklyReports: [WeeklyReport]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case weeklyReports = "WeeklyReports"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WeeklyReport] {
            self.weeklyReports
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReports(_ input: DescribeWeeklyReportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportsResponse> {
        self.client.execute(action: "DescribeWeeklyReports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReports(_ input: DescribeWeeklyReportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportsResponse {
        try await self.client.execute(action: "DescribeWeeklyReports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReports(limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportsResponse> {
        let input = DescribeWeeklyReportsRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeWeeklyReports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReports(limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportsResponse {
        let input = DescribeWeeklyReportsRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeWeeklyReports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReportsPaginated(_ input: DescribeWeeklyReportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [WeeklyReport])> {
        self.client.paginate(input: input, region: region, command: self.describeWeeklyReports, logger: logger, on: eventLoop)
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable @discardableResult
    public func describeWeeklyReportsPaginated(_ input: DescribeWeeklyReportsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWeeklyReportsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWeeklyReports, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReportsPaginator(_ input: DescribeWeeklyReportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeWeeklyReportsRequest, DescribeWeeklyReportsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeWeeklyReportsRequest, DescribeWeeklyReportsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWeeklyReports, logger: logger, on: eventLoop)
    }
}
