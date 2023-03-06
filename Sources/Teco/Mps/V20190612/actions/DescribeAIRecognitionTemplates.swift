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

extension Mps {
    /// DescribeAIRecognitionTemplates请求参数结构体
    public struct DescribeAIRecognitionTemplatesRequest: TCPaginatedRequest {
        /// 视频内容识别模板唯一标识过滤条件，数组长度限制：10。
        public let definitions: [Int64]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：50。
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
        public func makeNextRequest(with response: DescribeAIRecognitionTemplatesResponse) -> DescribeAIRecognitionTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAIRecognitionTemplatesRequest(definitions: self.definitions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type)
        }
    }

    /// DescribeAIRecognitionTemplates返回参数结构体
    public struct DescribeAIRecognitionTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 视频内容识别模板详情列表。
        public let aiRecognitionTemplateSet: [AIRecognitionTemplateItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case aiRecognitionTemplateSet = "AIRecognitionTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AIRecognitionTemplateItem] {
            self.aiRecognitionTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    @inlinable
    public func describeAIRecognitionTemplates(_ input: DescribeAIRecognitionTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIRecognitionTemplatesResponse> {
        self.client.execute(action: "DescribeAIRecognitionTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    @inlinable
    public func describeAIRecognitionTemplates(_ input: DescribeAIRecognitionTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIRecognitionTemplatesResponse {
        try await self.client.execute(action: "DescribeAIRecognitionTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    @inlinable
    public func describeAIRecognitionTemplates(definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIRecognitionTemplatesResponse> {
        let input = DescribeAIRecognitionTemplatesRequest(definitions: definitions, offset: offset, limit: limit, type: type)
        return self.client.execute(action: "DescribeAIRecognitionTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    @inlinable
    public func describeAIRecognitionTemplates(definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIRecognitionTemplatesResponse {
        let input = DescribeAIRecognitionTemplatesRequest(definitions: definitions, offset: offset, limit: limit, type: type)
        return try await self.client.execute(action: "DescribeAIRecognitionTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    @inlinable
    public func describeAIRecognitionTemplatesPaginated(_ input: DescribeAIRecognitionTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AIRecognitionTemplateItem])> {
        self.client.paginate(input: input, region: region, command: self.describeAIRecognitionTemplates, logger: logger, on: eventLoop)
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    @inlinable @discardableResult
    public func describeAIRecognitionTemplatesPaginated(_ input: DescribeAIRecognitionTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAIRecognitionTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAIRecognitionTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取内容识别模板列表
    ///
    /// 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板
    ///
    /// - Returns: `AsyncSequence`s of `AIRecognitionTemplateItem` and `DescribeAIRecognitionTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAIRecognitionTemplatesPaginator(_ input: DescribeAIRecognitionTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAIRecognitionTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAIRecognitionTemplates, logger: logger, on: eventLoop)
    }
}
