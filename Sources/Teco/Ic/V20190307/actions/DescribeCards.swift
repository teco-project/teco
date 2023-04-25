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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Ic {
    /// DescribeCards请求参数结构体
    public struct DescribeCardsRequest: TCPaginatedRequest {
        /// 应用ID
        public let sdkappid: String

        /// 偏移值
        public let offset: Int64

        /// 列表限制
        public let limit: Int64

        public init(sdkappid: String, offset: Int64, limit: Int64) {
            self.sdkappid = sdkappid
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCardsResponse) -> DescribeCardsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCardsRequest(sdkappid: self.sdkappid, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCards返回参数结构体
    public struct DescribeCardsResponse: TCPaginatedResponse {
        /// 卡片列表信息
        public let data: CardList

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CardInfo] {
            self.data.list ?? []
        }
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCards(_ input: DescribeCardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCardsResponse> {
        self.client.execute(action: "DescribeCards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCards(_ input: DescribeCardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCardsResponse {
        try await self.client.execute(action: "DescribeCards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCards(sdkappid: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCardsResponse> {
        self.describeCards(.init(sdkappid: sdkappid, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCards(sdkappid: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCardsResponse {
        try await self.describeCards(.init(sdkappid: sdkappid, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCardsPaginated(_ input: DescribeCardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [CardInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeCards, logger: logger, on: eventLoop)
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable @discardableResult
    public func describeCardsPaginated(_ input: DescribeCardsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCardsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCards, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    ///
    /// - Returns: `AsyncSequence`s of `CardInfo` and `DescribeCardsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCardsPaginator(_ input: DescribeCardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCardsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCards, logger: logger, on: eventLoop)
    }
}
