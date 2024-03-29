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

extension Keewidb {
    /// DescribeTendisSlowLog请求参数结构体
    public struct DescribeTendisSlowLogRequest: TCPaginatedRequest {
        /// 实例 ID，如：kee-6ubh****。
        public let instanceId: String

        /// 开始时间。
        public let beginTime: String

        /// 结束时间。
        public let endTime: String

        /// 慢查询平均执行时间阈值。
        /// - 单位：毫秒。
        /// - 取值范围：10、20、30、40、50。
        public let minQueryTime: Int64?

        /// 每个页面大小，即每个页面输出慢日志的数量。取值范围为：10、20、30、40、50。默认为 20。
        public let limit: Int64?

        /// 页面偏移量，取Limit整数倍，计算公式：offset=limit*(页码-1)。
        public let offset: Int64?

        public init(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.instanceId = instanceId
            self.beginTime = beginTime
            self.endTime = endTime
            self.minQueryTime = minQueryTime
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case minQueryTime = "MinQueryTime"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTendisSlowLogResponse) -> DescribeTendisSlowLogRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, beginTime: self.beginTime, endTime: self.endTime, minQueryTime: self.minQueryTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeTendisSlowLog返回参数结构体
    public struct DescribeTendisSlowLogResponse: TCPaginatedResponse {
        /// 慢查询详情。
        public let tendisSlowLogDetail: [TendisSlowLogDetail]

        /// 慢查询总数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tendisSlowLogDetail = "TendisSlowLogDetail"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TendisSlowLogDetail`` list from the paginated response.
        public func getItems() -> [TendisSlowLogDetail] {
            self.tendisSlowLogDetail
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    @inlinable
    public func describeTendisSlowLog(_ input: DescribeTendisSlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTendisSlowLogResponse> {
        self.client.execute(action: "DescribeTendisSlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    @inlinable
    public func describeTendisSlowLog(_ input: DescribeTendisSlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTendisSlowLogResponse {
        try await self.client.execute(action: "DescribeTendisSlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    @inlinable
    public func describeTendisSlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTendisSlowLogResponse> {
        self.describeTendisSlowLog(.init(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    @inlinable
    public func describeTendisSlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTendisSlowLogResponse {
        try await self.describeTendisSlowLog(.init(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    @inlinable
    public func describeTendisSlowLogPaginated(_ input: DescribeTendisSlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TendisSlowLogDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeTendisSlowLog, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    @inlinable @discardableResult
    public func describeTendisSlowLogPaginated(_ input: DescribeTendisSlowLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTendisSlowLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTendisSlowLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询
    ///
    /// 本接口（DescribeTendisSlowLog）用于查询实例慢日志。
    ///
    /// - Returns: `AsyncSequence`s of ``TendisSlowLogDetail`` and ``DescribeTendisSlowLogResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTendisSlowLogPaginator(_ input: DescribeTendisSlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTendisSlowLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTendisSlowLog, logger: logger, on: eventLoop)
    }
}
