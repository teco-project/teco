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
    /// DescribeWordSamples请求参数结构体
    public struct DescribeWordSamplesRequest: TCPaginatedRequest {
        /// 关键词过滤条件，数组长度限制：100 个词。
        public let keywords: [String]?

        /// **关键词应用场景过滤条件，可选值：**
        /// 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        /// 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        /// 3. Review.Ocr：通过光学字符识别技术，进行不适宜内容的识别；
        /// 4. Review.Asr：通过音频识别技术，进行不适宜内容的识别；
        /// **可合并简写为：**
        /// 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        /// 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜内容的识别，等价于 3+4；
        /// 可多选，元素间关系为 or，即关键词的应用场景包含该字段集合中任意元素的记录，均符合该条件。
        public let usages: [String]?

        /// 标签过滤条件，数组长度限制：20 个词。
        public let tags: [String]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：100，最大值：100。
        public let limit: UInt64?

        public init(keywords: [String]? = nil, usages: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.keywords = keywords
            self.usages = usages
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case keywords = "Keywords"
            case usages = "Usages"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWordSamplesResponse) -> DescribeWordSamplesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(keywords: self.keywords, usages: self.usages, tags: self.tags, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeWordSamples返回参数结构体
    public struct DescribeWordSamplesResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 关键词信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wordSet: [AiSampleWord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case wordSet = "WordSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AiSampleWord`` list from the paginated response.
        public func getItems() -> [AiSampleWord] {
            self.wordSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWordSamplesResponse> {
        self.client.execute(action: "DescribeWordSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordSamplesResponse {
        try await self.client.execute(action: "DescribeWordSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(keywords: [String]? = nil, usages: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWordSamplesResponse> {
        self.describeWordSamples(.init(keywords: keywords, usages: usages, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(keywords: [String]? = nil, usages: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordSamplesResponse {
        try await self.describeWordSamples(.init(keywords: keywords, usages: usages, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamplesPaginated(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AiSampleWord])> {
        self.client.paginate(input: input, region: region, command: self.describeWordSamples, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable @discardableResult
    public func describeWordSamplesPaginated(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWordSamplesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWordSamples, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    ///
    /// - Returns: `AsyncSequence`s of ``AiSampleWord`` and ``DescribeWordSamplesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWordSamplesPaginator(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWordSamplesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWordSamples, logger: logger, on: eventLoop)
    }
}
