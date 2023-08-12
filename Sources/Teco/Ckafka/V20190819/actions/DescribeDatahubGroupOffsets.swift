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

extension Ckafka {
    /// DescribeDatahubGroupOffsets请求参数结构体
    public struct DescribeDatahubGroupOffsetsRequest: TCPaginatedRequest {
        /// （过滤条件）按照实例 ID 过滤
        public let name: String

        /// Kafka 消费分组
        public let group: String

        /// 模糊匹配 topicName
        public let searchWord: String?

        /// 本次查询的偏移位置，默认为0
        public let offset: Int64?

        /// 本次返回结果的最大个数，默认为50，最大值为50
        public let limit: Int64?

        public init(name: String, group: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.name = name
            self.group = group
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case group = "Group"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDatahubGroupOffsetsResponse) -> DescribeDatahubGroupOffsetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDatahubGroupOffsetsRequest(name: self.name, group: self.group, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDatahubGroupOffsets返回参数结构体
    public struct DescribeDatahubGroupOffsetsResponse: TCPaginatedResponse {
        /// 返回的结果对象
        public let result: GroupOffsetResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GroupOffsetTopic`` list from the paginated response.
        public func getItems() -> [GroupOffsetTopic] {
            self.result.topicList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取Datahub消费分组offset
    @inlinable
    public func describeDatahubGroupOffsets(_ input: DescribeDatahubGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatahubGroupOffsetsResponse> {
        self.client.execute(action: "DescribeDatahubGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Datahub消费分组offset
    @inlinable
    public func describeDatahubGroupOffsets(_ input: DescribeDatahubGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubGroupOffsetsResponse {
        try await self.client.execute(action: "DescribeDatahubGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Datahub消费分组offset
    @inlinable
    public func describeDatahubGroupOffsets(name: String, group: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatahubGroupOffsetsResponse> {
        self.describeDatahubGroupOffsets(.init(name: name, group: group, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Datahub消费分组offset
    @inlinable
    public func describeDatahubGroupOffsets(name: String, group: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubGroupOffsetsResponse {
        try await self.describeDatahubGroupOffsets(.init(name: name, group: group, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Datahub消费分组offset
    @inlinable
    public func describeDatahubGroupOffsetsPaginated(_ input: DescribeDatahubGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GroupOffsetTopic])> {
        self.client.paginate(input: input, region: region, command: self.describeDatahubGroupOffsets, logger: logger, on: eventLoop)
    }

    /// 获取Datahub消费分组offset
    @inlinable @discardableResult
    public func describeDatahubGroupOffsetsPaginated(_ input: DescribeDatahubGroupOffsetsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDatahubGroupOffsetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDatahubGroupOffsets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Datahub消费分组offset
    ///
    /// - Returns: `AsyncSequence`s of `GroupOffsetTopic` and `DescribeDatahubGroupOffsetsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDatahubGroupOffsetsPaginator(_ input: DescribeDatahubGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDatahubGroupOffsetsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDatahubGroupOffsets, logger: logger, on: eventLoop)
    }
}
