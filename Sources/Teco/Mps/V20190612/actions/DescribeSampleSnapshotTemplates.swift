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

extension Mps {
    /// DescribeSampleSnapshotTemplates请求参数结构体
    public struct DescribeSampleSnapshotTemplatesRequest: TCPaginatedRequest {
        /// 采样截图模板唯一标识过滤条件，数组长度限制：100。
        public let definitions: [UInt64]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        /// 模板类型过滤条件，可选值：
        /// - Preset：系统预置模板；
        /// - Custom：用户自定义模板。
        public let type: String?

        public init(definitions: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil) {
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
        public func makeNextRequest(with response: DescribeSampleSnapshotTemplatesResponse) -> DescribeSampleSnapshotTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSampleSnapshotTemplatesRequest(definitions: self.definitions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type)
        }
    }

    /// DescribeSampleSnapshotTemplates返回参数结构体
    public struct DescribeSampleSnapshotTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 采样截图模板详情列表。
        public let sampleSnapshotTemplateSet: [SampleSnapshotTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sampleSnapshotTemplateSet = "SampleSnapshotTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SampleSnapshotTemplate`` list from the paginated response.
        public func getItems() -> [SampleSnapshotTemplate] {
            self.sampleSnapshotTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    @inlinable
    public func describeSampleSnapshotTemplates(_ input: DescribeSampleSnapshotTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleSnapshotTemplatesResponse> {
        self.client.execute(action: "DescribeSampleSnapshotTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    @inlinable
    public func describeSampleSnapshotTemplates(_ input: DescribeSampleSnapshotTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleSnapshotTemplatesResponse {
        try await self.client.execute(action: "DescribeSampleSnapshotTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    @inlinable
    public func describeSampleSnapshotTemplates(definitions: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleSnapshotTemplatesResponse> {
        self.describeSampleSnapshotTemplates(.init(definitions: definitions, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    @inlinable
    public func describeSampleSnapshotTemplates(definitions: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleSnapshotTemplatesResponse {
        try await self.describeSampleSnapshotTemplates(.init(definitions: definitions, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    @inlinable
    public func describeSampleSnapshotTemplatesPaginated(_ input: DescribeSampleSnapshotTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SampleSnapshotTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeSampleSnapshotTemplates, logger: logger, on: eventLoop)
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    @inlinable @discardableResult
    public func describeSampleSnapshotTemplatesPaginated(_ input: DescribeSampleSnapshotTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSampleSnapshotTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSampleSnapshotTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取采样截图模板列表
    ///
    /// 查询采样截图模板，支持根据条件，分页查询。
    ///
    /// - Returns: `AsyncSequence`s of ``SampleSnapshotTemplate`` and ``DescribeSampleSnapshotTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSampleSnapshotTemplatesPaginator(_ input: DescribeSampleSnapshotTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSampleSnapshotTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSampleSnapshotTemplates, logger: logger, on: eventLoop)
    }
}
