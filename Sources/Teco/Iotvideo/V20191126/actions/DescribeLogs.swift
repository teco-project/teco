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

extension Iotvideo {
    /// DescribeLogs请求参数结构体
    public struct DescribeLogsRequest: TCPaginatedRequest {
        /// 设备TID
        public let tid: String

        /// 当前分页的最大条数,0<取值范围<=100
        public let limit: UInt64

        /// 分页偏移量,取值范围>0
        public let offset: UInt64

        /// 日志类型 1.在线状态变更 2.ProConst变更 3.ProWritable变更 4.Action控制 5.ProReadonly变更 6.Event事件
        public let logType: UInt64?

        /// 查询的起始时间 UNIX时间戳，单位秒
        public let startTime: UInt64?

        /// 物模型对象索引，用于模糊查询，字符长度<=255，每层节点的字符长度<=16
        public let dataObject: String?

        /// 查询的结束时间 UNIX时间戳，单位秒
        public let endTime: UInt64?

        public init(tid: String, limit: UInt64, offset: UInt64, logType: UInt64? = nil, startTime: UInt64? = nil, dataObject: String? = nil, endTime: UInt64? = nil) {
            self.tid = tid
            self.limit = limit
            self.offset = offset
            self.logType = logType
            self.startTime = startTime
            self.dataObject = dataObject
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case limit = "Limit"
            case offset = "Offset"
            case logType = "LogType"
            case startTime = "StartTime"
            case dataObject = "DataObject"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLogsResponse) -> DescribeLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(tid: self.tid, limit: self.limit, offset: self.offset + .init(response.getItems().count), logType: self.logType, startTime: self.startTime, dataObject: self.dataObject, endTime: self.endTime)
        }
    }

    /// DescribeLogs返回参数结构体
    public struct DescribeLogsResponse: TCPaginatedResponse {
        /// 设备日志信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [LogData]?

        /// Data数组所包含的信息条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LogData`` list from the paginated response.
        public func getItems() -> [LogData] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    @inlinable
    public func describeLogs(_ input: DescribeLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogsResponse> {
        self.client.execute(action: "DescribeLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    @inlinable
    public func describeLogs(_ input: DescribeLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogsResponse {
        try await self.client.execute(action: "DescribeLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    @inlinable
    public func describeLogs(tid: String, limit: UInt64, offset: UInt64, logType: UInt64? = nil, startTime: UInt64? = nil, dataObject: String? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogsResponse> {
        self.describeLogs(.init(tid: tid, limit: limit, offset: offset, logType: logType, startTime: startTime, dataObject: dataObject, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    @inlinable
    public func describeLogs(tid: String, limit: UInt64, offset: UInt64, logType: UInt64? = nil, startTime: UInt64? = nil, dataObject: String? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogsResponse {
        try await self.describeLogs(.init(tid: tid, limit: limit, offset: offset, logType: logType, startTime: startTime, dataObject: dataObject, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    @inlinable
    public func describeLogsPaginated(_ input: DescribeLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LogData])> {
        self.client.paginate(input: input, region: region, command: self.describeLogs, logger: logger, on: eventLoop)
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    @inlinable @discardableResult
    public func describeLogsPaginated(_ input: DescribeLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询设备日志列表
    ///
    /// 本接口（DescribeLogs）用于查询设备日志列表。
    /// 设备日志最长保留时长为15天,超期自动清除。
    ///
    /// - Returns: `AsyncSequence`s of ``LogData`` and ``DescribeLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLogsPaginator(_ input: DescribeLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLogs, logger: logger, on: eventLoop)
    }
}
