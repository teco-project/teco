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

extension Tcss {
    /// DescribeImageSimpleList请求参数结构体
    public struct DescribeImageSimpleListRequest: TCPaginatedRequest {
        /// IsAuthorized 是否已经授权, 0:否 1:是 无:全部
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImageSimpleListResponse) -> DescribeImageSimpleListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImageSimpleListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeImageSimpleList返回参数结构体
    public struct DescribeImageSimpleListResponse: TCPaginatedResponse {
        /// 镜像列表
        public let imageList: [ImageSimpleInfo]

        /// 镜像数
        public let imageCnt: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageList = "ImageList"
            case imageCnt = "ImageCnt"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageSimpleInfo] {
            self.imageList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.imageCnt
        }
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleList(_ input: DescribeImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageSimpleListResponse> {
        self.client.execute(action: "DescribeImageSimpleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleList(_ input: DescribeImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageSimpleListResponse {
        try await self.client.execute(action: "DescribeImageSimpleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleList(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageSimpleListResponse> {
        self.describeImageSimpleList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleList(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageSimpleListResponse {
        try await self.describeImageSimpleList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleListPaginated(_ input: DescribeImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageSimpleInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeImageSimpleList, logger: logger, on: eventLoop)
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable @discardableResult
    public func describeImageSimpleListPaginated(_ input: DescribeImageSimpleListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageSimpleListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageSimpleList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    ///
    /// - Returns: `AsyncSequence`s of `ImageSimpleInfo` and `DescribeImageSimpleListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageSimpleListPaginator(_ input: DescribeImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageSimpleListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageSimpleList, logger: logger, on: eventLoop)
    }
}
