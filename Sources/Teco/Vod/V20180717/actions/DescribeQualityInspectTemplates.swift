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
    /// DescribeQualityInspectTemplates请求参数结构体
    public struct DescribeQualityInspectTemplatesRequest: TCPaginatedRequest {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 音画质检测模板列表。长度限制：100。
        public let definitions: [Int64]?

        /// 模板类型过滤条件，可选值：
        /// - Preset：系统预置模板；
        /// - Custom：用户自定义模板。
        public let type: String?

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: Int64?

        public init(subAppId: UInt64? = nil, definitions: [Int64]? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.type = type
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeQualityInspectTemplatesResponse) -> DescribeQualityInspectTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeQualityInspectTemplatesRequest(subAppId: self.subAppId, definitions: self.definitions, type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeQualityInspectTemplates返回参数结构体
    public struct DescribeQualityInspectTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: Int64

        /// 音画质检测模板详情列表。
        public let qualityInspectTemplateSet: [QualityInspectTemplateItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case qualityInspectTemplateSet = "QualityInspectTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``QualityInspectTemplateItem`` list from the paginated response.
        public func getItems() -> [QualityInspectTemplateItem] {
            self.qualityInspectTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    @inlinable
    public func describeQualityInspectTemplates(_ input: DescribeQualityInspectTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQualityInspectTemplatesResponse> {
        self.client.execute(action: "DescribeQualityInspectTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    @inlinable
    public func describeQualityInspectTemplates(_ input: DescribeQualityInspectTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityInspectTemplatesResponse {
        try await self.client.execute(action: "DescribeQualityInspectTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    @inlinable
    public func describeQualityInspectTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQualityInspectTemplatesResponse> {
        self.describeQualityInspectTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    @inlinable
    public func describeQualityInspectTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityInspectTemplatesResponse {
        try await self.describeQualityInspectTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    @inlinable
    public func describeQualityInspectTemplatesPaginated(_ input: DescribeQualityInspectTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [QualityInspectTemplateItem])> {
        self.client.paginate(input: input, region: region, command: self.describeQualityInspectTemplates, logger: logger, on: eventLoop)
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    @inlinable @discardableResult
    public func describeQualityInspectTemplatesPaginated(_ input: DescribeQualityInspectTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeQualityInspectTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeQualityInspectTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取音画质检测模板列表
    ///
    /// 获取音画质检测模板列表。
    ///
    /// - Returns: `AsyncSequence`s of ``QualityInspectTemplateItem`` and ``DescribeQualityInspectTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeQualityInspectTemplatesPaginator(_ input: DescribeQualityInspectTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeQualityInspectTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeQualityInspectTemplates, logger: logger, on: eventLoop)
    }
}
