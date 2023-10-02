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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cdn {
    /// GetDisableRecords请求参数结构体
    public struct GetDisableRecordsRequest: TCPaginatedRequest {
        /// 指定 URL 查询
        public let url: String?

        /// 开始时间，如：2018-12-12 10:24:00。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 结束时间，如：2018-12-14 10:24:00。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// URL 当前状态
        /// disable：当前仍为禁用状态，访问返回 403
        /// enable：当前为可用状态，已解禁，可正常访问
        public let status: String?

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为20。
        public let limit: Int64?

        /// 任务ID，任务ID和起始时间需要至少填写一项。
        public let taskId: String?

        public init(url: String? = nil, startTime: Date? = nil, endTime: Date? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, taskId: String? = nil) {
            self.url = url
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.status = status
            self.offset = offset
            self.limit = limit
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case taskId = "TaskId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetDisableRecordsResponse) -> GetDisableRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(url: self.url, startTime: self.startTime, endTime: self.endTime, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, taskId: self.taskId)
        }
    }

    /// GetDisableRecords返回参数结构体
    public struct GetDisableRecordsResponse: TCPaginatedResponse {
        /// 封禁历史记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let urlRecordList: [UrlRecord]?

        /// 任务总数，用于分页
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case urlRecordList = "UrlRecordList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UrlRecord`` list from the paginated response.
        public func getItems() -> [UrlRecord] {
            self.urlRecordList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(_ input: GetDisableRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDisableRecordsResponse> {
        self.client.execute(action: "GetDisableRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(_ input: GetDisableRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDisableRecordsResponse {
        try await self.client.execute(action: "GetDisableRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(url: String? = nil, startTime: Date? = nil, endTime: Date? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, taskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDisableRecordsResponse> {
        self.getDisableRecords(.init(url: url, startTime: startTime, endTime: endTime, status: status, offset: offset, limit: limit, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecords(url: String? = nil, startTime: Date? = nil, endTime: Date? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, taskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDisableRecordsResponse {
        try await self.getDisableRecords(.init(url: url, startTime: startTime, endTime: endTime, status: status, offset: offset, limit: limit, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable
    public func getDisableRecordsPaginated(_ input: GetDisableRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UrlRecord])> {
        self.client.paginate(input: input, region: region, command: self.getDisableRecords, logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    @inlinable @discardableResult
    public func getDisableRecordsPaginated(_ input: GetDisableRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (GetDisableRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getDisableRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 禁用历史查询
    ///
    /// GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）
    ///
    /// - Returns: `AsyncSequence`s of ``UrlRecord`` and ``GetDisableRecordsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getDisableRecordsPaginator(_ input: GetDisableRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetDisableRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getDisableRecords, logger: logger, on: eventLoop)
    }
}
