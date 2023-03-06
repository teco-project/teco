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
    /// DescribeBashEvents请求参数结构体
    public struct DescribeBashEventsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 关键词(主机内网IP)</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
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
        public func getNextPaginatedRequest(with response: DescribeBashEventsResponse) -> DescribeBashEventsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBashEventsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeBashEvents返回参数结构体
    public struct DescribeBashEventsResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 高危命令事件列表
        public let list: [BashEvent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BashEvent] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEvents(_ input: DescribeBashEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBashEventsResponse> {
        self.client.execute(action: "DescribeBashEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEvents(_ input: DescribeBashEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashEventsResponse {
        try await self.client.execute(action: "DescribeBashEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBashEventsResponse> {
        let input = DescribeBashEventsRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeBashEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashEventsResponse {
        let input = DescribeBashEventsRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeBashEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEventsPaginated(_ input: DescribeBashEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BashEvent])> {
        self.client.paginate(input: input, region: region, command: self.describeBashEvents, logger: logger, on: eventLoop)
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEventsPaginated(_ input: DescribeBashEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBashEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBashEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取高危命令列表
    @inlinable
    public func describeBashEventsPaginator(_ input: DescribeBashEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeBashEventsRequest, DescribeBashEventsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeBashEventsRequest, DescribeBashEventsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeBashEventsRequest, DescribeBashEventsResponse>.ResultSequence(input: input, region: region, command: self.describeBashEvents, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeBashEventsRequest, DescribeBashEventsResponse>.ResponseSequence(input: input, region: region, command: self.describeBashEvents, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
