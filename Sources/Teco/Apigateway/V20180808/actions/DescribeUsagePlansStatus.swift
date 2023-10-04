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

extension Apigateway {
    /// DescribeUsagePlansStatus请求参数结构体
    public struct DescribeUsagePlansStatusRequest: TCPaginatedRequest {
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 使用计划过滤条件。支持UsagePlanId、UsagePlanName、NotServiceId、NotApiId、Environment。
        public let filters: [Filter]?

        public init(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUsagePlansStatusResponse) -> DescribeUsagePlansStatusRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeUsagePlansStatus返回参数结构体
    public struct DescribeUsagePlansStatusResponse: TCPaginatedResponse {
        /// 使用计划列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UsagePlansStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UsagePlanStatusInfo`` list from the paginated response.
        public func getItems() -> [UsagePlanStatusInfo] {
            self.result?.usagePlanStatusSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    @inlinable
    public func describeUsagePlansStatus(_ input: DescribeUsagePlansStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsagePlansStatusResponse> {
        self.client.execute(action: "DescribeUsagePlansStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    @inlinable
    public func describeUsagePlansStatus(_ input: DescribeUsagePlansStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlansStatusResponse {
        try await self.client.execute(action: "DescribeUsagePlansStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    @inlinable
    public func describeUsagePlansStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsagePlansStatusResponse> {
        self.describeUsagePlansStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    @inlinable
    public func describeUsagePlansStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlansStatusResponse {
        try await self.describeUsagePlansStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    @inlinable
    public func describeUsagePlansStatusPaginated(_ input: DescribeUsagePlansStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UsagePlanStatusInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUsagePlansStatus, logger: logger, on: eventLoop)
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    @inlinable @discardableResult
    public func describeUsagePlansStatusPaginated(_ input: DescribeUsagePlansStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsagePlansStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsagePlansStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询使用计划列表
    ///
    /// 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。
    ///
    /// - Returns: `AsyncSequence`s of ``UsagePlanStatusInfo`` and ``DescribeUsagePlansStatusResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUsagePlansStatusPaginator(_ input: DescribeUsagePlansStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUsagePlansStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUsagePlansStatus, logger: logger, on: eventLoop)
    }
}
