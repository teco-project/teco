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

import TecoCore
import TecoPaginationHelpers

extension Monitor {
    /// DescribeAlarmNotices请求参数结构体
    public struct DescribeAlarmNoticesRequest: TCPaginatedRequest {
        /// 模块名，这里填“monitor”
        public let module: String

        /// 页码 最小为1
        public let pageNumber: Int64

        /// 分页大小 1～200
        public let pageSize: Int64

        /// 按更新时间排序方式 ASC=正序 DESC=倒序
        public let order: String

        /// 主账号 uid 用于创建预设通知
        public let ownerUid: Int64?

        /// 告警通知模板名称 用来模糊搜索
        public let name: String?

        /// 根据接收人过滤告警通知模板需要选定通知用户类型 USER=用户 GROUP=用户组 传空=不按接收人过滤
        public let receiverType: String?

        /// 接收对象列表
        public let userIds: [Int64]?

        /// 接收组列表
        public let groupIds: [Int64]?

        /// 根据通知模板 id 过滤，空数组/不传则不过滤
        public let noticeIds: [String]?

        /// 模板根据标签过滤
        public let tags: [Tag]?

        public init(module: String, pageNumber: Int64, pageSize: Int64, order: String, ownerUid: Int64? = nil, name: String? = nil, receiverType: String? = nil, userIds: [Int64]? = nil, groupIds: [Int64]? = nil, noticeIds: [String]? = nil, tags: [Tag]? = nil) {
            self.module = module
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.order = order
            self.ownerUid = ownerUid
            self.name = name
            self.receiverType = receiverType
            self.userIds = userIds
            self.groupIds = groupIds
            self.noticeIds = noticeIds
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case order = "Order"
            case ownerUid = "OwnerUid"
            case name = "Name"
            case receiverType = "ReceiverType"
            case userIds = "UserIds"
            case groupIds = "GroupIds"
            case noticeIds = "NoticeIds"
            case tags = "Tags"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAlarmNoticesResponse) -> DescribeAlarmNoticesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAlarmNoticesRequest(module: self.module, pageNumber: self.pageNumber + 1, pageSize: self.pageSize, order: self.order, ownerUid: self.ownerUid, name: self.name, receiverType: self.receiverType, userIds: self.userIds, groupIds: self.groupIds, noticeIds: self.noticeIds, tags: self.tags)
        }
    }

    /// DescribeAlarmNotices返回参数结构体
    public struct DescribeAlarmNoticesResponse: TCPaginatedResponse {
        /// 告警通知模板总数
        public let totalCount: Int64

        /// 告警通知模板列表
        public let notices: [AlarmNotice]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case notices = "Notices"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AlarmNotice] {
            self.notices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询通知模板列表
    @inlinable
    public func describeAlarmNotices(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmNoticesResponse> {
        self.client.execute(action: "DescribeAlarmNotices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询通知模板列表
    @inlinable
    public func describeAlarmNotices(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmNoticesResponse {
        try await self.client.execute(action: "DescribeAlarmNotices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询通知模板列表
    @inlinable
    public func describeAlarmNotices(module: String, pageNumber: Int64, pageSize: Int64, order: String, ownerUid: Int64? = nil, name: String? = nil, receiverType: String? = nil, userIds: [Int64]? = nil, groupIds: [Int64]? = nil, noticeIds: [String]? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmNoticesResponse> {
        self.describeAlarmNotices(.init(module: module, pageNumber: pageNumber, pageSize: pageSize, order: order, ownerUid: ownerUid, name: name, receiverType: receiverType, userIds: userIds, groupIds: groupIds, noticeIds: noticeIds, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通知模板列表
    @inlinable
    public func describeAlarmNotices(module: String, pageNumber: Int64, pageSize: Int64, order: String, ownerUid: Int64? = nil, name: String? = nil, receiverType: String? = nil, userIds: [Int64]? = nil, groupIds: [Int64]? = nil, noticeIds: [String]? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmNoticesResponse {
        try await self.describeAlarmNotices(.init(module: module, pageNumber: pageNumber, pageSize: pageSize, order: order, ownerUid: ownerUid, name: name, receiverType: receiverType, userIds: userIds, groupIds: groupIds, noticeIds: noticeIds, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通知模板列表
    @inlinable
    public func describeAlarmNoticesPaginated(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AlarmNotice])> {
        self.client.paginate(input: input, region: region, command: self.describeAlarmNotices, logger: logger, on: eventLoop)
    }

    /// 查询通知模板列表
    @inlinable @discardableResult
    public func describeAlarmNoticesPaginated(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlarmNoticesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlarmNotices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询通知模板列表
    ///
    /// - Returns: `AsyncSequence`s of `AlarmNotice` and `DescribeAlarmNoticesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAlarmNoticesPaginator(_ input: DescribeAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlarmNoticesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlarmNotices, logger: logger, on: eventLoop)
    }
}
