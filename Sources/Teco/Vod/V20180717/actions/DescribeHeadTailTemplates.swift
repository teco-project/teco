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

extension Vod {
    /// DescribeHeadTailTemplates请求参数结构体
    public struct DescribeHeadTailTemplatesRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 片头片尾模板号，数组长度限制：100。
        public let definitions: [Int64]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHeadTailTemplatesResponse) -> DescribeHeadTailTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHeadTailTemplatesRequest(subAppId: self.subAppId, definitions: self.definitions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeHeadTailTemplates返回参数结构体
    public struct DescribeHeadTailTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 片头片尾模板详情列表。
        public let headTailTemplateSet: [HeadTailTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case headTailTemplateSet = "HeadTailTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HeadTailTemplate] {
            self.headTailTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    @inlinable
    public func describeHeadTailTemplates(_ input: DescribeHeadTailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHeadTailTemplatesResponse> {
        self.client.execute(action: "DescribeHeadTailTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    @inlinable
    public func describeHeadTailTemplates(_ input: DescribeHeadTailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHeadTailTemplatesResponse {
        try await self.client.execute(action: "DescribeHeadTailTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    @inlinable
    public func describeHeadTailTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHeadTailTemplatesResponse> {
        self.describeHeadTailTemplates(.init(subAppId: subAppId, definitions: definitions, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    @inlinable
    public func describeHeadTailTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHeadTailTemplatesResponse {
        try await self.describeHeadTailTemplates(.init(subAppId: subAppId, definitions: definitions, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    @inlinable
    public func describeHeadTailTemplatesPaginated(_ input: DescribeHeadTailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HeadTailTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeHeadTailTemplates, logger: logger, on: eventLoop)
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    @inlinable @discardableResult
    public func describeHeadTailTemplatesPaginated(_ input: DescribeHeadTailTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHeadTailTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHeadTailTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取片头片尾模板列表
    ///
    /// 获取片头片尾模板列表。
    ///
    /// - Returns: `AsyncSequence`s of `HeadTailTemplate` and `DescribeHeadTailTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHeadTailTemplatesPaginator(_ input: DescribeHeadTailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHeadTailTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHeadTailTemplates, logger: logger, on: eventLoop)
    }
}
