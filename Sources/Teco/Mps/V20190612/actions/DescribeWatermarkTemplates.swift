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
    /// DescribeWatermarkTemplates请求参数结构体
    public struct DescribeWatermarkTemplatesRequest: TCPaginatedRequest {
        /// 水印模板唯一标识过滤条件，数组长度限制：100。
        public let definitions: [Int64]?

        /// 水印类型过滤条件，可选值：
        /// - image：图片水印；
        /// - text：文字水印。
        public let type: String?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数
        /// - 默认值：10；
        /// - 最大值：100。
        public let limit: UInt64?

        public init(definitions: [Int64]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.definitions = definitions
            self.type = type
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case definitions = "Definitions"
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWatermarkTemplatesResponse) -> DescribeWatermarkTemplatesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(definitions: self.definitions, type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeWatermarkTemplates返回参数结构体
    public struct DescribeWatermarkTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 水印模板详情列表。
        public let watermarkTemplateSet: [WatermarkTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case watermarkTemplateSet = "WatermarkTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``WatermarkTemplate`` list from the paginated response.
        public func getItems() -> [WatermarkTemplate] {
            self.watermarkTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    @inlinable
    public func describeWatermarkTemplates(_ input: DescribeWatermarkTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWatermarkTemplatesResponse> {
        self.client.execute(action: "DescribeWatermarkTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    @inlinable
    public func describeWatermarkTemplates(_ input: DescribeWatermarkTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWatermarkTemplatesResponse {
        try await self.client.execute(action: "DescribeWatermarkTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    @inlinable
    public func describeWatermarkTemplates(definitions: [Int64]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWatermarkTemplatesResponse> {
        self.describeWatermarkTemplates(.init(definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    @inlinable
    public func describeWatermarkTemplates(definitions: [Int64]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWatermarkTemplatesResponse {
        try await self.describeWatermarkTemplates(.init(definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    @inlinable
    public func describeWatermarkTemplatesPaginated(_ input: DescribeWatermarkTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [WatermarkTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeWatermarkTemplates, logger: logger, on: eventLoop)
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    @inlinable @discardableResult
    public func describeWatermarkTemplatesPaginated(_ input: DescribeWatermarkTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWatermarkTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWatermarkTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取水印模板列表
    ///
    /// 查询用户自定义水印模板，支持根据条件，分页查询。
    ///
    /// - Returns: `AsyncSequence`s of ``WatermarkTemplate`` and ``DescribeWatermarkTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWatermarkTemplatesPaginator(_ input: DescribeWatermarkTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWatermarkTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWatermarkTemplates, logger: logger, on: eventLoop)
    }
}
