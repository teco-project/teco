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

extension Cynosdb {
    /// DescribeInstanceErrorLogs请求参数结构体
    public struct DescribeInstanceErrorLogsRequest: TCPaginatedRequest {
        /// 实例Id
        public let instanceId: String

        /// 日志条数限制
        public let limit: Int64?

        /// 日志条数偏移量
        public let offset: Int64?

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        /// 排序字段，有Timestamp枚举值
        public let orderBy: String?

        /// 排序类型，有ASC,DESC枚举值
        public let orderByType: String?

        /// 日志等级，有error、warning、note三种，支持多个等级同时搜索
        public let logLevels: [String]?

        /// 关键字，支持模糊搜索
        public let keyWords: [String]?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, startTime: String? = nil, endTime: String? = nil, orderBy: String? = nil, orderByType: String? = nil, logLevels: [String]? = nil, keyWords: [String]? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.startTime = startTime
            self.endTime = endTime
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.logLevels = logLevels
            self.keyWords = keyWords
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case logLevels = "LogLevels"
            case keyWords = "KeyWords"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstanceErrorLogsResponse) -> DescribeInstanceErrorLogsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), startTime: self.startTime, endTime: self.endTime, orderBy: self.orderBy, orderByType: self.orderByType, logLevels: self.logLevels, keyWords: self.keyWords)
        }
    }

    /// DescribeInstanceErrorLogs返回参数结构体
    public struct DescribeInstanceErrorLogsResponse: TCPaginatedResponse {
        /// 日志条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 错误日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorLogs: [CynosdbErrorLogItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case errorLogs = "ErrorLogs"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CynosdbErrorLogItem`` list from the paginated response.
        public func getItems() -> [CynosdbErrorLogItem] {
            self.errorLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    @inlinable
    public func describeInstanceErrorLogs(_ input: DescribeInstanceErrorLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceErrorLogsResponse> {
        self.client.execute(action: "DescribeInstanceErrorLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    @inlinable
    public func describeInstanceErrorLogs(_ input: DescribeInstanceErrorLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceErrorLogsResponse {
        try await self.client.execute(action: "DescribeInstanceErrorLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    @inlinable
    public func describeInstanceErrorLogs(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, startTime: String? = nil, endTime: String? = nil, orderBy: String? = nil, orderByType: String? = nil, logLevels: [String]? = nil, keyWords: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceErrorLogsResponse> {
        self.describeInstanceErrorLogs(.init(instanceId: instanceId, limit: limit, offset: offset, startTime: startTime, endTime: endTime, orderBy: orderBy, orderByType: orderByType, logLevels: logLevels, keyWords: keyWords), region: region, logger: logger, on: eventLoop)
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    @inlinable
    public func describeInstanceErrorLogs(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, startTime: String? = nil, endTime: String? = nil, orderBy: String? = nil, orderByType: String? = nil, logLevels: [String]? = nil, keyWords: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceErrorLogsResponse {
        try await self.describeInstanceErrorLogs(.init(instanceId: instanceId, limit: limit, offset: offset, startTime: startTime, endTime: endTime, orderBy: orderBy, orderByType: orderByType, logLevels: logLevels, keyWords: keyWords), region: region, logger: logger, on: eventLoop)
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    @inlinable
    public func describeInstanceErrorLogsPaginated(_ input: DescribeInstanceErrorLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CynosdbErrorLogItem])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceErrorLogs, logger: logger, on: eventLoop)
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    @inlinable @discardableResult
    public func describeInstanceErrorLogsPaginated(_ input: DescribeInstanceErrorLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceErrorLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceErrorLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询错误日志列表
    ///
    /// 查询实例错误日志列表
    ///
    /// - Returns: `AsyncSequence`s of ``CynosdbErrorLogItem`` and ``DescribeInstanceErrorLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceErrorLogsPaginator(_ input: DescribeInstanceErrorLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceErrorLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceErrorLogs, logger: logger, on: eventLoop)
    }
}
