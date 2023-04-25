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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tag {
    /// DescribeTagValues请求参数结构体
    public struct DescribeTagValuesRequest: TCPaginatedRequest {
        /// 标签键列表
        public let tagKeys: [String]

        /// 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        public let createUin: UInt64?

        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?

        /// 每页大小，默认为 15
        public let limit: UInt64?

        public init(tagKeys: [String], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.tagKeys = tagKeys
            self.createUin = createUin
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case tagKeys = "TagKeys"
            case createUin = "CreateUin"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTagValuesResponse) -> DescribeTagValuesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTagValuesRequest(tagKeys: self.tagKeys, createUin: self.createUin, offset: (self.offset ?? 0) + response.limit, limit: self.limit)
        }
    }

    /// DescribeTagValues返回参数结构体
    public struct DescribeTagValuesResponse: TCPaginatedResponse {
        /// 结果总数
        public let totalCount: UInt64

        /// 数据位移偏量
        public let offset: UInt64

        /// 每页大小
        public let limit: UInt64

        /// 标签列表
        public let tags: [Tag]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case offset = "Offset"
            case limit = "Limit"
            case tags = "Tags"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Tag] {
            self.tags
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValues(_ input: DescribeTagValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagValuesResponse> {
        self.client.execute(action: "DescribeTagValues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValues(_ input: DescribeTagValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagValuesResponse {
        try await self.client.execute(action: "DescribeTagValues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValues(tagKeys: [String], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagValuesResponse> {
        self.describeTagValues(.init(tagKeys: tagKeys, createUin: createUin, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValues(tagKeys: [String], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagValuesResponse {
        try await self.describeTagValues(.init(tagKeys: tagKeys, createUin: createUin, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValuesPaginated(_ input: DescribeTagValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Tag])> {
        self.client.paginate(input: input, region: region, command: self.describeTagValues, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable @discardableResult
    public func describeTagValuesPaginated(_ input: DescribeTagValuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTagValuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTagValues, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    ///
    /// - Returns: `AsyncSequence`s of `Tag` and `DescribeTagValuesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTagValuesPaginator(_ input: DescribeTagValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTagValuesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTagValues, logger: logger, on: eventLoop)
    }
}
