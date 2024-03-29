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

extension Cdn {
    /// DescribeUrlViolations请求参数结构体
    public struct DescribeUrlViolationsRequest: TCPaginatedRequest {
        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 100
        public let limit: Int64?

        /// 指定的域名查询
        public let domains: [String]?

        public init(offset: Int64? = nil, limit: Int64? = nil, domains: [String]? = nil) {
            self.offset = offset
            self.limit = limit
            self.domains = domains
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case domains = "Domains"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUrlViolationsResponse) -> DescribeUrlViolationsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, domains: self.domains)
        }
    }

    /// DescribeUrlViolations返回参数结构体
    public struct DescribeUrlViolationsResponse: TCPaginatedResponse {
        /// 违规 URL 详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let urlRecordList: [ViolationUrl]?

        /// 记录总数，用于分页
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case urlRecordList = "UrlRecordList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ViolationUrl`` list from the paginated response.
        public func getItems() -> [ViolationUrl] {
            self.urlRecordList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    @inlinable
    public func describeUrlViolations(_ input: DescribeUrlViolationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUrlViolationsResponse> {
        self.client.execute(action: "DescribeUrlViolations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    @inlinable
    public func describeUrlViolations(_ input: DescribeUrlViolationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUrlViolationsResponse {
        try await self.client.execute(action: "DescribeUrlViolations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    @inlinable
    public func describeUrlViolations(offset: Int64? = nil, limit: Int64? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUrlViolationsResponse> {
        self.describeUrlViolations(.init(offset: offset, limit: limit, domains: domains), region: region, logger: logger, on: eventLoop)
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    @inlinable
    public func describeUrlViolations(offset: Int64? = nil, limit: Int64? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUrlViolationsResponse {
        try await self.describeUrlViolations(.init(offset: offset, limit: limit, domains: domains), region: region, logger: logger, on: eventLoop)
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    @inlinable
    public func describeUrlViolationsPaginated(_ input: DescribeUrlViolationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ViolationUrl])> {
        self.client.paginate(input: input, region: region, command: self.describeUrlViolations, logger: logger, on: eventLoop)
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    @inlinable @discardableResult
    public func describeUrlViolationsPaginated(_ input: DescribeUrlViolationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUrlViolationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUrlViolations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 违规历史查询
    ///
    /// DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
    /// 对应内容分发网络控制台【图片鉴黄】页面。
    ///
    /// - Returns: `AsyncSequence`s of ``ViolationUrl`` and ``DescribeUrlViolationsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUrlViolationsPaginator(_ input: DescribeUrlViolationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUrlViolationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUrlViolations, logger: logger, on: eventLoop)
    }
}
