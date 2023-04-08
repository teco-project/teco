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

extension Cms {
    /// DescribeTextSample请求参数结构体
    public struct DescribeTextSampleRequest: TCPaginatedRequest {
        /// 支持通过标签值进行筛选
        public let filters: [Filter]?

        /// 数量限制，默认为20，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 升序（asc）还是降序（desc），默认：desc
        public let orderDirection: String?

        /// 按某个字段排序，目前仅支持CreatedAt排序
        public let orderField: String?

        public init(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderDirection: String? = nil, orderField: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.orderDirection = orderDirection
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case orderDirection = "OrderDirection"
            case orderField = "OrderField"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTextSampleResponse) -> DescribeTextSampleRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTextSampleRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderDirection: self.orderDirection, orderField: self.orderField)
        }
    }

    /// DescribeTextSample返回参数结构体
    public struct DescribeTextSampleResponse: TCPaginatedResponse {
        /// 符合要求的样本的信息
        public let textSampleSet: [TextSample]

        /// 符合要求的样本的数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case textSampleSet = "TextSampleSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TextSample] {
            self.textSampleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    @inlinable
    public func describeTextSample(_ input: DescribeTextSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTextSampleResponse> {
        self.client.execute(action: "DescribeTextSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    @inlinable
    public func describeTextSample(_ input: DescribeTextSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTextSampleResponse {
        try await self.client.execute(action: "DescribeTextSample", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    @inlinable
    public func describeTextSample(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderDirection: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTextSampleResponse> {
        self.describeTextSample(.init(filters: filters, limit: limit, offset: offset, orderDirection: orderDirection, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    @inlinable
    public func describeTextSample(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderDirection: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTextSampleResponse {
        try await self.describeTextSample(.init(filters: filters, limit: limit, offset: offset, orderDirection: orderDirection, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    @inlinable
    public func describeTextSamplePaginated(_ input: DescribeTextSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TextSample])> {
        self.client.paginate(input: input, region: region, command: self.describeTextSample, logger: logger, on: eventLoop)
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    @inlinable @discardableResult
    public func describeTextSamplePaginated(_ input: DescribeTextSampleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTextSampleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTextSample, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 支持批量查询文本样本库。
    ///
    /// - Returns: `AsyncSequence`s of `TextSample` and `DescribeTextSampleResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTextSamplePaginator(_ input: DescribeTextSampleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTextSampleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTextSample, logger: logger, on: eventLoop)
    }
}
