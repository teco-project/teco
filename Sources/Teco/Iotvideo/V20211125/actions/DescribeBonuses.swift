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

extension Iotvideo {
    /// DescribeBonuses请求参数结构体
    public struct DescribeBonusesRequest: TCPaginatedRequest {
        /// 分页拉取偏移
        public let offset: UInt64

        /// 分页拉取数量
        public let limit: UInt64

        public init(offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBonusesResponse) -> DescribeBonusesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBonusesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBonuses返回参数结构体
    public struct DescribeBonusesResponse: TCPaginatedResponse {
        /// 资源包总数
        public let totalCount: UInt64

        /// 资源包信息
        public let bonuses: [BonusInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bonuses = "Bonuses"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BonusInfo] {
            self.bonuses
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonuses(_ input: DescribeBonusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBonusesResponse> {
        self.client.execute(action: "DescribeBonuses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonuses(_ input: DescribeBonusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBonusesResponse {
        try await self.client.execute(action: "DescribeBonuses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonuses(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBonusesResponse> {
        self.describeBonuses(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonuses(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBonusesResponse {
        try await self.describeBonuses(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonusesPaginated(_ input: DescribeBonusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BonusInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBonuses, logger: logger, on: eventLoop)
    }

    /// 查看运营活动资源包列表
    @inlinable @discardableResult
    public func describeBonusesPaginated(_ input: DescribeBonusesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBonusesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBonuses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看运营活动资源包列表
    ///
    /// - Returns: `AsyncSequence`s of `BonusInfo` and `DescribeBonusesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBonusesPaginator(_ input: DescribeBonusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBonusesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBonuses, logger: logger, on: eventLoop)
    }
}
