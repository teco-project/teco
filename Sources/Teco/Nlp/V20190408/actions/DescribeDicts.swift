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

extension Nlp {
    /// DescribeDicts请求参数结构体
    public struct DescribeDictsRequest: TCPaginatedRequest {
        /// 每页数据量，范围为1~100，默认为10。
        public let limit: UInt64?

        /// 分页偏移量，从0开始，默认为0。
        public let offset: UInt64?

        public init(limit: UInt64? = nil, offset: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDictsResponse) -> DescribeDictsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDictsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDicts返回参数结构体
    public struct DescribeDictsResponse: TCPaginatedResponse {
        /// 记录总条数。
        public let totalCount: UInt64

        /// 自定义词库信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dicts: [DictInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dicts = "Dicts"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DictInfo] {
            self.dicts ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDicts(_ input: DescribeDictsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDictsResponse> {
        self.client.execute(action: "DescribeDicts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDicts(_ input: DescribeDictsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDictsResponse {
        try await self.client.execute(action: "DescribeDicts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDicts(limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDictsResponse> {
        let input = DescribeDictsRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeDicts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDicts(limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDictsResponse {
        let input = DescribeDictsRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeDicts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDictsPaginated(_ input: DescribeDictsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DictInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDicts, logger: logger, on: eventLoop)
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable @discardableResult
    public func describeDictsPaginated(_ input: DescribeDictsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDictsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDicts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    ///
    /// - Returns: `AsyncSequence`s of `DictInfo` and `DescribeDictsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDictsPaginator(_ input: DescribeDictsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDictsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDicts, logger: logger, on: eventLoop)
    }
}
