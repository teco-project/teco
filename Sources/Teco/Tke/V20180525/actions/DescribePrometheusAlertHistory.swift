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

extension Tke {
    /// DescribePrometheusAlertHistory请求参数结构体
    public struct DescribePrometheusAlertHistoryRequest: TCPaginatedRequest {
        /// 实例id
        public let instanceId: String

        /// 告警名称
        public let ruleName: String?

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        /// label集合
        public let labels: String?

        /// 分片
        public let offset: UInt64?

        /// 分片
        public let limit: UInt64?

        public init(instanceId: String, ruleName: String? = nil, startTime: String? = nil, endTime: String? = nil, labels: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.ruleName = ruleName
            self.startTime = startTime
            self.endTime = endTime
            self.labels = labels
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ruleName = "RuleName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case labels = "Labels"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePrometheusAlertHistoryResponse) -> DescribePrometheusAlertHistoryRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusAlertHistoryRequest(instanceId: self.instanceId, ruleName: self.ruleName, startTime: self.startTime, endTime: self.endTime, labels: self.labels, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrometheusAlertHistory返回参数结构体
    public struct DescribePrometheusAlertHistoryResponse: TCPaginatedResponse {
        /// 告警历史
        public let items: [PrometheusAlertHistoryItem]

        /// 总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PrometheusAlertHistoryItem] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取告警历史
    @inlinable
    public func describePrometheusAlertHistory(_ input: DescribePrometheusAlertHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAlertHistoryResponse> {
        self.client.execute(action: "DescribePrometheusAlertHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    @inlinable
    public func describePrometheusAlertHistory(_ input: DescribePrometheusAlertHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAlertHistoryResponse {
        try await self.client.execute(action: "DescribePrometheusAlertHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警历史
    @inlinable
    public func describePrometheusAlertHistory(instanceId: String, ruleName: String? = nil, startTime: String? = nil, endTime: String? = nil, labels: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAlertHistoryResponse> {
        let input = DescribePrometheusAlertHistoryRequest(instanceId: instanceId, ruleName: ruleName, startTime: startTime, endTime: endTime, labels: labels, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePrometheusAlertHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    @inlinable
    public func describePrometheusAlertHistory(instanceId: String, ruleName: String? = nil, startTime: String? = nil, endTime: String? = nil, labels: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAlertHistoryResponse {
        let input = DescribePrometheusAlertHistoryRequest(instanceId: instanceId, ruleName: ruleName, startTime: startTime, endTime: endTime, labels: labels, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePrometheusAlertHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警历史
    @inlinable
    public func describePrometheusAlertHistoryPaginated(_ input: DescribePrometheusAlertHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusAlertHistoryItem])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAlertHistory, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    @inlinable @discardableResult
    public func describePrometheusAlertHistoryPaginated(_ input: DescribePrometheusAlertHistoryRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusAlertHistoryResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAlertHistory, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取告警历史
    ///
    /// - Returns: `AsyncSequence`s of `PrometheusAlertHistoryItem` and `DescribePrometheusAlertHistoryResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrometheusAlertHistoryPaginator(_ input: DescribePrometheusAlertHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusAlertHistoryRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusAlertHistory, logger: logger, on: eventLoop)
    }
}
