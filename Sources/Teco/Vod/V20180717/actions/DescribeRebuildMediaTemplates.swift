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

extension Vod {
    /// DescribeRebuildMediaTemplates请求参数结构体
    public struct DescribeRebuildMediaTemplatesRequest: TCPaginatedRequest {
        /// 视频重生模板列表。
        public let definitions: [Int64]?

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: Int64?

        /// 模板类型过滤条件，可选值：
        /// <li>Preset：系统预置模板；</li>
        /// <li>Custom：用户自定义模板。</li>
        public let type: String?

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: Int64?

        public init(definitions: [Int64]? = nil, subAppId: Int64? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.definitions = definitions
            self.subAppId = subAppId
            self.type = type
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case definitions = "Definitions"
            case subAppId = "SubAppId"
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRebuildMediaTemplatesResponse) -> DescribeRebuildMediaTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRebuildMediaTemplatesRequest(definitions: self.definitions, subAppId: self.subAppId, type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeRebuildMediaTemplates返回参数结构体
    public struct DescribeRebuildMediaTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: Int64

        /// 视频重生模板详情列表。
        public let rebuildMediaTemplateSet: [RebuildMediaTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case rebuildMediaTemplateSet = "RebuildMediaTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RebuildMediaTemplate] {
            self.rebuildMediaTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    @inlinable
    public func describeRebuildMediaTemplates(_ input: DescribeRebuildMediaTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRebuildMediaTemplatesResponse> {
        self.client.execute(action: "DescribeRebuildMediaTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    @inlinable
    public func describeRebuildMediaTemplates(_ input: DescribeRebuildMediaTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRebuildMediaTemplatesResponse {
        try await self.client.execute(action: "DescribeRebuildMediaTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    @inlinable
    public func describeRebuildMediaTemplates(definitions: [Int64]? = nil, subAppId: Int64? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRebuildMediaTemplatesResponse> {
        self.describeRebuildMediaTemplates(.init(definitions: definitions, subAppId: subAppId, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    @inlinable
    public func describeRebuildMediaTemplates(definitions: [Int64]? = nil, subAppId: Int64? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRebuildMediaTemplatesResponse {
        try await self.describeRebuildMediaTemplates(.init(definitions: definitions, subAppId: subAppId, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    @inlinable
    public func describeRebuildMediaTemplatesPaginated(_ input: DescribeRebuildMediaTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RebuildMediaTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeRebuildMediaTemplates, logger: logger, on: eventLoop)
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    @inlinable @discardableResult
    public func describeRebuildMediaTemplatesPaginated(_ input: DescribeRebuildMediaTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRebuildMediaTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRebuildMediaTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取视频重生模板列表
    ///
    /// 获取视频重生模板列表。
    ///
    /// - Returns: `AsyncSequence`s of `RebuildMediaTemplate` and `DescribeRebuildMediaTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRebuildMediaTemplatesPaginator(_ input: DescribeRebuildMediaTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRebuildMediaTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRebuildMediaTemplates, logger: logger, on: eventLoop)
    }
}
