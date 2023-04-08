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

extension Tcss {
    /// DescribeSearchTemplates请求参数结构体
    public struct DescribeSearchTemplatesRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSearchTemplatesResponse) -> DescribeSearchTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSearchTemplatesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSearchTemplates返回参数结构体
    public struct DescribeSearchTemplatesResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 模板列表
        public let list: [SearchTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SearchTemplate] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchTemplatesResponse> {
        self.client.execute(action: "DescribeSearchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchTemplatesResponse {
        try await self.client.execute(action: "DescribeSearchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSearchTemplatesResponse> {
        self.describeSearchTemplates(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplates(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSearchTemplatesResponse {
        try await self.describeSearchTemplates(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    @inlinable
    public func describeSearchTemplatesPaginated(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SearchTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeSearchTemplates, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    @inlinable @discardableResult
    public func describeSearchTemplatesPaginated(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSearchTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSearchTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取快速检索列表
    ///
    /// - Returns: `AsyncSequence`s of `SearchTemplate` and `DescribeSearchTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSearchTemplatesPaginator(_ input: DescribeSearchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSearchTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSearchTemplates, logger: logger, on: eventLoop)
    }
}
