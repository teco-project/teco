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
import TecoPaginationHelpers

extension Domain {
    /// DescribeTemplateList请求参数结构体
    public struct DescribeTemplateListRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 用户注册类型，默认:all , 个人：I ,企业: E
        public let type: String?

        /// 认证状态：未实名审核:NotUpload, 实名审核中:InAudit，已实名审核:Approved，实名审核失败:Reject，更新手机邮箱:NotVerified。
        public let status: String?

        /// 关键字，用于域名所有者筛选
        public let keyword: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, status: String? = nil, keyword: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.type = type
            self.status = status
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
            case status = "Status"
            case keyword = "Keyword"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTemplateListResponse) -> DescribeTemplateListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTemplateListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type, status: self.status, keyword: self.keyword)
        }
    }

    /// DescribeTemplateList返回参数结构体
    public struct DescribeTemplateListResponse: TCPaginatedResponse {
        /// 模板数量。
        public let totalCount: UInt64

        /// 模板详细信息列表。
        public let templateSet: [TemplateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case templateSet = "TemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TemplateInfo`` list from the paginated response.
        public func getItems() -> [TemplateInfo] {
            self.templateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    @inlinable
    public func describeTemplateList(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateListResponse> {
        self.client.execute(action: "DescribeTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    @inlinable
    public func describeTemplateList(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateListResponse {
        try await self.client.execute(action: "DescribeTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    @inlinable
    public func describeTemplateList(offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, status: String? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateListResponse> {
        self.describeTemplateList(.init(offset: offset, limit: limit, type: type, status: status, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    @inlinable
    public func describeTemplateList(offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, status: String? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateListResponse {
        try await self.describeTemplateList(.init(offset: offset, limit: limit, type: type, status: status, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    @inlinable
    public func describeTemplateListPaginated(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TemplateInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTemplateList, logger: logger, on: eventLoop)
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    @inlinable @discardableResult
    public func describeTemplateListPaginated(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTemplateListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTemplateList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 信息模板列表
    ///
    /// 本接口 (DescribeTemplateList) 用于获取信息模板列表。
    ///
    /// - Returns: `AsyncSequence`s of `TemplateInfo` and `DescribeTemplateListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTemplateListPaginator(_ input: DescribeTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTemplateListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTemplateList, logger: logger, on: eventLoop)
    }
}
