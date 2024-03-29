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

extension Tsf {
    /// DescribeMsApiList请求参数结构体
    public struct DescribeMsApiListRequest: TCPaginatedRequest {
        /// 微服务ID
        public let microserviceId: String

        /// 搜索关键字
        public let searchWord: String?

        /// 每页的数量
        public let limit: Int64?

        /// 翻页偏移量
        public let offset: Int64?

        public init(microserviceId: String, searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.microserviceId = microserviceId
            self.searchWord = searchWord
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case microserviceId = "MicroserviceId"
            case searchWord = "SearchWord"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMsApiListResponse) -> DescribeMsApiListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(microserviceId: self.microserviceId, searchWord: self.searchWord, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeMsApiList返回参数结构体
    public struct DescribeMsApiListResponse: TCPaginatedResponse {
        /// 相应结果
        public let result: TsfApiListResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MsApiArray`` list from the paginated response.
        public func getItems() -> [MsApiArray] {
            self.result.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询服务API列表
    @inlinable
    public func describeMsApiList(_ input: DescribeMsApiListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMsApiListResponse> {
        self.client.execute(action: "DescribeMsApiList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务API列表
    @inlinable
    public func describeMsApiList(_ input: DescribeMsApiListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMsApiListResponse {
        try await self.client.execute(action: "DescribeMsApiList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务API列表
    @inlinable
    public func describeMsApiList(microserviceId: String, searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMsApiListResponse> {
        self.describeMsApiList(.init(microserviceId: microserviceId, searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务API列表
    @inlinable
    public func describeMsApiList(microserviceId: String, searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMsApiListResponse {
        try await self.describeMsApiList(.init(microserviceId: microserviceId, searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务API列表
    @inlinable
    public func describeMsApiListPaginated(_ input: DescribeMsApiListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MsApiArray])> {
        self.client.paginate(input: input, region: region, command: self.describeMsApiList, logger: logger, on: eventLoop)
    }

    /// 查询服务API列表
    @inlinable @discardableResult
    public func describeMsApiListPaginated(_ input: DescribeMsApiListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMsApiListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMsApiList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询服务API列表
    ///
    /// - Returns: `AsyncSequence`s of ``MsApiArray`` and ``DescribeMsApiListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMsApiListPaginator(_ input: DescribeMsApiListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMsApiListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMsApiList, logger: logger, on: eventLoop)
    }
}
