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

extension Pts {
    /// DescribeAlertChannels请求参数结构体
    public struct DescribeAlertChannelsRequest: TCPaginatedRequest {
        /// 项目 ID 列表
        public let projectIds: [String]

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20，最大为100
        public let limit: UInt64?

        /// Notice ID 列表
        public let noticeIds: [String]?

        /// 排序项
        public let orderBy: String?

        /// 是否正序
        public let ascend: Bool?

        public init(projectIds: [String], offset: UInt64? = nil, limit: UInt64? = nil, noticeIds: [String]? = nil, orderBy: String? = nil, ascend: Bool? = nil) {
            self.projectIds = projectIds
            self.offset = offset
            self.limit = limit
            self.noticeIds = noticeIds
            self.orderBy = orderBy
            self.ascend = ascend
        }

        enum CodingKeys: String, CodingKey {
            case projectIds = "ProjectIds"
            case offset = "Offset"
            case limit = "Limit"
            case noticeIds = "NoticeIds"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAlertChannelsResponse) -> DescribeAlertChannelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAlertChannelsRequest(projectIds: self.projectIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, noticeIds: self.noticeIds, orderBy: self.orderBy, ascend: self.ascend)
        }
    }

    /// DescribeAlertChannels返回参数结构体
    public struct DescribeAlertChannelsResponse: TCPaginatedResponse {
        /// 告警通知接收组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alertChannelSet: [AlertChannelRecord]?

        /// 告警通知接收组数目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alertChannelSet = "AlertChannelSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AlertChannelRecord] {
            self.alertChannelSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannels(_ input: DescribeAlertChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertChannelsResponse> {
        self.client.execute(action: "DescribeAlertChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannels(_ input: DescribeAlertChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertChannelsResponse {
        try await self.client.execute(action: "DescribeAlertChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannels(projectIds: [String], offset: UInt64? = nil, limit: UInt64? = nil, noticeIds: [String]? = nil, orderBy: String? = nil, ascend: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertChannelsResponse> {
        let input = DescribeAlertChannelsRequest(projectIds: projectIds, offset: offset, limit: limit, noticeIds: noticeIds, orderBy: orderBy, ascend: ascend)
        return self.client.execute(action: "DescribeAlertChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannels(projectIds: [String], offset: UInt64? = nil, limit: UInt64? = nil, noticeIds: [String]? = nil, orderBy: String? = nil, ascend: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertChannelsResponse {
        let input = DescribeAlertChannelsRequest(projectIds: projectIds, offset: offset, limit: limit, noticeIds: noticeIds, orderBy: orderBy, ascend: ascend)
        return try await self.client.execute(action: "DescribeAlertChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannelsPaginated(_ input: DescribeAlertChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AlertChannelRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeAlertChannels, logger: logger, on: eventLoop)
    }

    /// 查询告警通知接收组
    @inlinable @discardableResult
    public func describeAlertChannelsPaginated(_ input: DescribeAlertChannelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlertChannelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlertChannels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询告警通知接收组
    @inlinable
    public func describeAlertChannelsPaginator(_ input: DescribeAlertChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlertChannelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlertChannels, logger: logger, on: eventLoop)
    }
}
