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
    /// DescribeImageProcessingTemplates请求参数结构体
    public struct DescribeImageProcessingTemplatesRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 图片处理模板标识列表。长度限制：100。
        public let definitions: [UInt64]?

        /// 模板类型过滤条件，可选值：
        /// <li>Preset：系统预置模板；</li>
        /// <li>Custom：用户自定义模板。</li>
        public let type: String?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, definitions: [UInt64]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
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
        public func makeNextRequest(with response: DescribeImageProcessingTemplatesResponse) -> DescribeImageProcessingTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImageProcessingTemplatesRequest(subAppId: self.subAppId, definitions: self.definitions, type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeImageProcessingTemplates返回参数结构体
    public struct DescribeImageProcessingTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 图片处理模板详情列表。
        public let imageProcessingTemplateSet: [ImageProcessingTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imageProcessingTemplateSet = "ImageProcessingTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageProcessingTemplate] {
            self.imageProcessingTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    @inlinable
    public func describeImageProcessingTemplates(_ input: DescribeImageProcessingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageProcessingTemplatesResponse> {
        self.client.execute(action: "DescribeImageProcessingTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    @inlinable
    public func describeImageProcessingTemplates(_ input: DescribeImageProcessingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageProcessingTemplatesResponse {
        try await self.client.execute(action: "DescribeImageProcessingTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    @inlinable
    public func describeImageProcessingTemplates(subAppId: UInt64? = nil, definitions: [UInt64]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageProcessingTemplatesResponse> {
        self.describeImageProcessingTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    @inlinable
    public func describeImageProcessingTemplates(subAppId: UInt64? = nil, definitions: [UInt64]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageProcessingTemplatesResponse {
        try await self.describeImageProcessingTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    @inlinable
    public func describeImageProcessingTemplatesPaginated(_ input: DescribeImageProcessingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageProcessingTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeImageProcessingTemplates, logger: logger, on: eventLoop)
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    @inlinable @discardableResult
    public func describeImageProcessingTemplatesPaginated(_ input: DescribeImageProcessingTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageProcessingTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageProcessingTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取图片即时处理模板列表
    ///
    /// 获取图片处理模板列表，支持根据条件，分页查询。
    ///
    /// - Returns: `AsyncSequence`s of `ImageProcessingTemplate` and `DescribeImageProcessingTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageProcessingTemplatesPaginator(_ input: DescribeImageProcessingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageProcessingTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageProcessingTemplates, logger: logger, on: eventLoop)
    }
}
