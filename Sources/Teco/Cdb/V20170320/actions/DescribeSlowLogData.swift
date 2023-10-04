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

extension Cdb {
    /// DescribeSlowLogData请求参数结构体
    public struct DescribeSlowLogDataRequest: TCPaginatedRequest {
        /// 实例 ID。
        public let instanceId: String

        /// 开始时间戳。例如 1585142640 。
        public let startTime: UInt64

        /// 结束时间戳。例如 1585142640 。
        public let endTime: UInt64

        /// 客户端 Host 列表。
        public let userHosts: [String]?

        /// 客户端 用户名 列表。
        public let userNames: [String]?

        /// 访问的 数据库 列表。
        public let dataBases: [String]?

        /// 排序字段。当前支持：Timestamp,QueryTime,LockTime,RowsExamined,RowsSent 。
        public let sortBy: String?

        /// 升序还是降序排列。当前支持：ASC,DESC 。
        public let orderBy: String?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 一次性返回的记录数量，默认为100，最大为400。
        public let limit: Int64?

        /// 仅在实例为主实例或者灾备实例时生效，可选值：slave，代表拉取从机的日志。
        public let instType: String?

        public init(instanceId: String, startTime: UInt64, endTime: UInt64, userHosts: [String]? = nil, userNames: [String]? = nil, dataBases: [String]? = nil, sortBy: String? = nil, orderBy: String? = nil, offset: Int64? = nil, limit: Int64? = nil, instType: String? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.userHosts = userHosts
            self.userNames = userNames
            self.dataBases = dataBases
            self.sortBy = sortBy
            self.orderBy = orderBy
            self.offset = offset
            self.limit = limit
            self.instType = instType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case userHosts = "UserHosts"
            case userNames = "UserNames"
            case dataBases = "DataBases"
            case sortBy = "SortBy"
            case orderBy = "OrderBy"
            case offset = "Offset"
            case limit = "Limit"
            case instType = "InstType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSlowLogDataResponse) -> DescribeSlowLogDataRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, userHosts: self.userHosts, userNames: self.userNames, dataBases: self.dataBases, sortBy: self.sortBy, orderBy: self.orderBy, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, instType: self.instType)
        }
    }

    /// DescribeSlowLogData返回参数结构体
    public struct DescribeSlowLogDataResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: Int64

        /// 查询到的记录。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [SlowLogItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SlowLogItem`` list from the paginated response.
        public func getItems() -> [SlowLogItem] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    @inlinable
    public func describeSlowLogData(_ input: DescribeSlowLogDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogDataResponse> {
        self.client.execute(action: "DescribeSlowLogData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    @inlinable
    public func describeSlowLogData(_ input: DescribeSlowLogDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogDataResponse {
        try await self.client.execute(action: "DescribeSlowLogData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    @inlinable
    public func describeSlowLogData(instanceId: String, startTime: UInt64, endTime: UInt64, userHosts: [String]? = nil, userNames: [String]? = nil, dataBases: [String]? = nil, sortBy: String? = nil, orderBy: String? = nil, offset: Int64? = nil, limit: Int64? = nil, instType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogDataResponse> {
        self.describeSlowLogData(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, userHosts: userHosts, userNames: userNames, dataBases: dataBases, sortBy: sortBy, orderBy: orderBy, offset: offset, limit: limit, instType: instType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    @inlinable
    public func describeSlowLogData(instanceId: String, startTime: UInt64, endTime: UInt64, userHosts: [String]? = nil, userNames: [String]? = nil, dataBases: [String]? = nil, sortBy: String? = nil, orderBy: String? = nil, offset: Int64? = nil, limit: Int64? = nil, instType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogDataResponse {
        try await self.describeSlowLogData(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, userHosts: userHosts, userNames: userNames, dataBases: dataBases, sortBy: sortBy, orderBy: orderBy, offset: offset, limit: limit, instType: instType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    @inlinable
    public func describeSlowLogDataPaginated(_ input: DescribeSlowLogDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SlowLogItem])> {
        self.client.paginate(input: input, region: region, command: self.describeSlowLogData, logger: logger, on: eventLoop)
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    @inlinable @discardableResult
    public func describeSlowLogDataPaginated(_ input: DescribeSlowLogDataRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSlowLogDataResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSlowLogData, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例慢日志
    ///
    /// 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
    /// 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。
    ///
    /// - Returns: `AsyncSequence`s of ``SlowLogItem`` and ``DescribeSlowLogDataResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSlowLogDataPaginator(_ input: DescribeSlowLogDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSlowLogDataRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSlowLogData, logger: logger, on: eventLoop)
    }
}
