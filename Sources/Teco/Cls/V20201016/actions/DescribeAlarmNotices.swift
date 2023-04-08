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

extension Cls {
    /// DescribeAlarmNotices请求参数结构体
    public struct DescribeAlarmNoticesRequest: TCPaginatedRequest {
        /// <li> name
        /// 按照【通知渠道组名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li> alarmNoticeId
        /// 按照【通知渠道组ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li> uid
        /// 按照【接收用户ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li> groupId
        /// 按照【接收用户组ID】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAlarmNoticesResponse) -> DescribeAlarmNoticesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAlarmNoticesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAlarmNotices返回参数结构体
    public struct DescribeAlarmNoticesResponse: TCPaginatedResponse {
        /// 告警通知模板列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alarmNotices: [AlarmNotice]?

        /// 符合条件的告警通知模板总数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmNotices = "AlarmNotices"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AlarmNotice] {
            self.alarmNotices ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    @inlinable
    public func describeAlarmNotices(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmNoticesResponse> {
        self.client.execute(action: "DescribeAlarmNotices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    @inlinable
    public func describeAlarmNotices(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmNoticesResponse {
        try await self.client.execute(action: "DescribeAlarmNotices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    @inlinable
    public func describeAlarmNotices(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmNoticesResponse> {
        self.describeAlarmNotices(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    @inlinable
    public func describeAlarmNotices(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmNoticesResponse {
        try await self.describeAlarmNotices(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    @inlinable
    public func describeAlarmNoticesPaginated(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AlarmNotice])> {
        self.client.paginate(input: input, region: region, command: self.describeAlarmNotices, logger: logger, on: eventLoop)
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    @inlinable @discardableResult
    public func describeAlarmNoticesPaginated(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlarmNoticesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlarmNotices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取通知渠道组列表
    ///
    /// 该接口用于获取通知渠道组列表
    ///
    /// - Returns: `AsyncSequence`s of `AlarmNotice` and `DescribeAlarmNoticesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAlarmNoticesPaginator(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlarmNoticesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlarmNotices, logger: logger, on: eventLoop)
    }
}
