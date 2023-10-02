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

extension Vod {
    /// DescribeAdaptiveDynamicStreamingTemplates请求参数结构体
    public struct DescribeAdaptiveDynamicStreamingTemplatesRequest: TCPaginatedRequest {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 转自适应码流模板唯一标识过滤条件，数组长度限制：100。
        public let definitions: [UInt64]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        /// 模板类型过滤条件，可选值：
        /// - Preset：系统预置模板；
        /// - Custom：用户自定义模板。
        public let type: String?

        public init(subAppId: UInt64? = nil, definitions: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.offset = offset
            self.limit = limit
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAdaptiveDynamicStreamingTemplatesResponse) -> DescribeAdaptiveDynamicStreamingTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(subAppId: self.subAppId, definitions: self.definitions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type)
        }
    }

    /// DescribeAdaptiveDynamicStreamingTemplates返回参数结构体
    public struct DescribeAdaptiveDynamicStreamingTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 转自适应码流模板详情列表。
        public let adaptiveDynamicStreamingTemplateSet: [AdaptiveDynamicStreamingTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case adaptiveDynamicStreamingTemplateSet = "AdaptiveDynamicStreamingTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AdaptiveDynamicStreamingTemplate`` list from the paginated response.
        public func getItems() -> [AdaptiveDynamicStreamingTemplate] {
            self.adaptiveDynamicStreamingTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    @inlinable
    public func describeAdaptiveDynamicStreamingTemplates(_ input: DescribeAdaptiveDynamicStreamingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAdaptiveDynamicStreamingTemplatesResponse> {
        self.client.execute(action: "DescribeAdaptiveDynamicStreamingTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    @inlinable
    public func describeAdaptiveDynamicStreamingTemplates(_ input: DescribeAdaptiveDynamicStreamingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAdaptiveDynamicStreamingTemplatesResponse {
        try await self.client.execute(action: "DescribeAdaptiveDynamicStreamingTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    @inlinable
    public func describeAdaptiveDynamicStreamingTemplates(subAppId: UInt64? = nil, definitions: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAdaptiveDynamicStreamingTemplatesResponse> {
        self.describeAdaptiveDynamicStreamingTemplates(.init(subAppId: subAppId, definitions: definitions, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    @inlinable
    public func describeAdaptiveDynamicStreamingTemplates(subAppId: UInt64? = nil, definitions: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAdaptiveDynamicStreamingTemplatesResponse {
        try await self.describeAdaptiveDynamicStreamingTemplates(.init(subAppId: subAppId, definitions: definitions, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    @inlinable
    public func describeAdaptiveDynamicStreamingTemplatesPaginated(_ input: DescribeAdaptiveDynamicStreamingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AdaptiveDynamicStreamingTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeAdaptiveDynamicStreamingTemplates, logger: logger, on: eventLoop)
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    @inlinable @discardableResult
    public func describeAdaptiveDynamicStreamingTemplatesPaginated(_ input: DescribeAdaptiveDynamicStreamingTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAdaptiveDynamicStreamingTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAdaptiveDynamicStreamingTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取转自适应码流模板列表
    ///
    /// 查询转自适应码流模板，支持根据条件，分页查询。
    ///
    /// - Returns: `AsyncSequence`s of ``AdaptiveDynamicStreamingTemplate`` and ``DescribeAdaptiveDynamicStreamingTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAdaptiveDynamicStreamingTemplatesPaginator(_ input: DescribeAdaptiveDynamicStreamingTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAdaptiveDynamicStreamingTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAdaptiveDynamicStreamingTemplates, logger: logger, on: eventLoop)
    }
}
