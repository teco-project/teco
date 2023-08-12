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
    /// DescribeLibSamples请求参数结构体
    public struct DescribeLibSamplesRequest: TCPaginatedRequest {
        /// 单页条数，最大为100条
        public let limit: Int64

        /// 条数偏移量
        public let offset: Int64

        /// 词库ID
        public let libID: String?

        /// 词内容过滤
        public let content: String?

        /// 违规类型列表过滤
        public let evilTypeList: [Int64]?

        /// 样本词ID列表过滤
        public let sampleIDs: [String]?

        public init(limit: Int64, offset: Int64, libID: String? = nil, content: String? = nil, evilTypeList: [Int64]? = nil, sampleIDs: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.libID = libID
            self.content = content
            self.evilTypeList = evilTypeList
            self.sampleIDs = sampleIDs
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case libID = "LibID"
            case content = "Content"
            case evilTypeList = "EvilTypeList"
            case sampleIDs = "SampleIDs"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLibSamplesResponse) -> DescribeLibSamplesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLibSamplesRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), libID: self.libID, content: self.content, evilTypeList: self.evilTypeList, sampleIDs: self.sampleIDs)
        }
    }

    /// DescribeLibSamples返回参数结构体
    public struct DescribeLibSamplesResponse: TCPaginatedResponse {
        /// 词记录数
        public let totalCount: Int64

        /// 词详情
        public let infos: [UserKeywordInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case infos = "Infos"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UserKeywordInfo`` list from the paginated response.
        public func getItems() -> [UserKeywordInfo] {
            self.infos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取关键词接口
    @inlinable
    public func describeLibSamples(_ input: DescribeLibSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLibSamplesResponse> {
        self.client.execute(action: "DescribeLibSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取关键词接口
    @inlinable
    public func describeLibSamples(_ input: DescribeLibSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibSamplesResponse {
        try await self.client.execute(action: "DescribeLibSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取关键词接口
    @inlinable
    public func describeLibSamples(limit: Int64, offset: Int64, libID: String? = nil, content: String? = nil, evilTypeList: [Int64]? = nil, sampleIDs: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLibSamplesResponse> {
        self.describeLibSamples(.init(limit: limit, offset: offset, libID: libID, content: content, evilTypeList: evilTypeList, sampleIDs: sampleIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关键词接口
    @inlinable
    public func describeLibSamples(limit: Int64, offset: Int64, libID: String? = nil, content: String? = nil, evilTypeList: [Int64]? = nil, sampleIDs: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibSamplesResponse {
        try await self.describeLibSamples(.init(limit: limit, offset: offset, libID: libID, content: content, evilTypeList: evilTypeList, sampleIDs: sampleIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关键词接口
    @inlinable
    public func describeLibSamplesPaginated(_ input: DescribeLibSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UserKeywordInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLibSamples, logger: logger, on: eventLoop)
    }

    /// 获取关键词接口
    @inlinable @discardableResult
    public func describeLibSamplesPaginated(_ input: DescribeLibSamplesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLibSamplesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLibSamples, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取关键词接口
    ///
    /// - Returns: `AsyncSequence`s of ``UserKeywordInfo`` and ``DescribeLibSamplesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLibSamplesPaginator(_ input: DescribeLibSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLibSamplesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLibSamples, logger: logger, on: eventLoop)
    }
}
