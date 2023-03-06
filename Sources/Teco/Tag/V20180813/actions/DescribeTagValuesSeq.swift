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

extension Tag {
    /// DescribeTagValuesSeq请求参数结构体
    public struct DescribeTagValuesSeqRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: DescribeTagValuesSeqResponse) -> DescribeTagValuesSeqRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTagValuesSeqRequest(tagKeys: self.tagKeys, createUin: self.createUin, offset: (self.offset ?? 0) + response.limit, limit: self.limit)
        }
    }

    /// DescribeTagValuesSeq返回参数结构体
    public struct DescribeTagValuesSeqResponse: TCPaginatedResponse {
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

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValuesSeq(_ input: DescribeTagValuesSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagValuesSeqResponse> {
        self.client.execute(action: "DescribeTagValuesSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValuesSeq(_ input: DescribeTagValuesSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagValuesSeqResponse {
        try await self.client.execute(action: "DescribeTagValuesSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValuesSeq(tagKeys: [String], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagValuesSeqResponse> {
        let input = DescribeTagValuesSeqRequest(tagKeys: tagKeys, createUin: createUin, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeTagValuesSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValuesSeq(tagKeys: [String], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagValuesSeqResponse {
        let input = DescribeTagValuesSeqRequest(tagKeys: tagKeys, createUin: createUin, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeTagValuesSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValuesSeqPaginated(_ input: DescribeTagValuesSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Tag])> {
        self.client.paginate(input: input, region: region, command: self.describeTagValuesSeq, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable @discardableResult
    public func describeTagValuesSeqPaginated(_ input: DescribeTagValuesSeqRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTagValuesSeqResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTagValuesSeq, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    ///
    /// - Returns: `AsyncSequence`s of `Tag` and `DescribeTagValuesSeqResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTagValuesSeqPaginator(_ input: DescribeTagValuesSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTagValuesSeqRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTagValuesSeq, logger: logger, on: eventLoop)
    }
}
