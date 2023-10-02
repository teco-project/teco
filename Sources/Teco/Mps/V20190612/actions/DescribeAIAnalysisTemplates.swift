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

extension Mps {
    /// DescribeAIAnalysisTemplates请求参数结构体
    public struct DescribeAIAnalysisTemplatesRequest: TCPaginatedRequest {
        /// 视频内容分析模板唯一标识过滤条件，数组长度限制：10。
        public let definitions: [Int64]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        /// 模板类型过滤条件，不填则返回所有，可选值：
        /// * Preset：系统预置模板；
        /// * Custom：用户自定义模板。
        public let type: String?

        public init(definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil) {
            self.definitions = definitions
            self.offset = offset
            self.limit = limit
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case definitions = "Definitions"
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAIAnalysisTemplatesResponse) -> DescribeAIAnalysisTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(definitions: self.definitions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type)
        }
    }

    /// DescribeAIAnalysisTemplates返回参数结构体
    public struct DescribeAIAnalysisTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 视频内容分析模板详情列表。
        public let aiAnalysisTemplateSet: [AIAnalysisTemplateItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case aiAnalysisTemplateSet = "AIAnalysisTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AIAnalysisTemplateItem`` list from the paginated response.
        public func getItems() -> [AIAnalysisTemplateItem] {
            self.aiAnalysisTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    @inlinable
    public func describeAIAnalysisTemplates(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIAnalysisTemplatesResponse> {
        self.client.execute(action: "DescribeAIAnalysisTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    @inlinable
    public func describeAIAnalysisTemplates(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIAnalysisTemplatesResponse {
        try await self.client.execute(action: "DescribeAIAnalysisTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    @inlinable
    public func describeAIAnalysisTemplates(definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIAnalysisTemplatesResponse> {
        self.describeAIAnalysisTemplates(.init(definitions: definitions, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    @inlinable
    public func describeAIAnalysisTemplates(definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIAnalysisTemplatesResponse {
        try await self.describeAIAnalysisTemplates(.init(definitions: definitions, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    @inlinable
    public func describeAIAnalysisTemplatesPaginated(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AIAnalysisTemplateItem])> {
        self.client.paginate(input: input, region: region, command: self.describeAIAnalysisTemplates, logger: logger, on: eventLoop)
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    @inlinable @discardableResult
    public func describeAIAnalysisTemplatesPaginated(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAIAnalysisTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAIAnalysisTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取内容分析模板列表
    ///
    /// 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板
    ///
    /// - Returns: `AsyncSequence`s of ``AIAnalysisTemplateItem`` and ``DescribeAIAnalysisTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAIAnalysisTemplatesPaginator(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAIAnalysisTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAIAnalysisTemplates, logger: logger, on: eventLoop)
    }
}
