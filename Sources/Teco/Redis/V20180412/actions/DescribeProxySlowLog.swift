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

extension Redis {
    /// DescribeProxySlowLog请求参数结构体
    public struct DescribeProxySlowLogRequest: TCPaginatedRequest {
        /// 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        public let instanceId: String

        /// 慢查询的开始时间。
        public let beginTime: String

        /// 慢查询的结束时间。
        public let endTime: String

        /// 慢查询阈值，单位：毫秒。
        public let minQueryTime: Int64?

        /// 分页大小。默认为 20，取值范围[20,1000]。
        public let limit: Int64?

        /// 偏移量，取Limit整数倍。
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
        public func makeNextRequest(with response: DescribeProxySlowLogResponse) -> DescribeProxySlowLogRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, beginTime: self.beginTime, endTime: self.endTime, minQueryTime: self.minQueryTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeProxySlowLog返回参数结构体
    public struct DescribeProxySlowLogResponse: TCPaginatedResponse {
        /// 慢查询总数。
        public let totalCount: Int64

        /// 慢查询详情。
        public let instanceProxySlowLogDetail: [InstanceProxySlowlogDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceProxySlowLogDetail = "InstanceProxySlowLogDetail"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceProxySlowlogDetail`` list from the paginated response.
        public func getItems() -> [InstanceProxySlowlogDetail] {
            self.instanceProxySlowLogDetail
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySlowLogResponse> {
        self.client.execute(action: "DescribeProxySlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySlowLogResponse {
        try await self.client.execute(action: "DescribeProxySlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySlowLogResponse> {
        self.describeProxySlowLog(.init(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySlowLogResponse {
        try await self.describeProxySlowLog(.init(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLogPaginated(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceProxySlowlogDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeProxySlowLog, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable @discardableResult
    public func describeProxySlowLogPaginated(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProxySlowLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProxySlowLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceProxySlowlogDetail`` and ``DescribeProxySlowLogResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProxySlowLogPaginator(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProxySlowLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProxySlowLog, logger: logger, on: eventLoop)
    }
}
