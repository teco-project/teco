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

extension Ame {
    /// DescribePkgOfflineMusic请求参数结构体
    public struct DescribePkgOfflineMusicRequest: TCPaginatedRequest {
        /// 订单id
        public let packageOrderId: String

        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条(注：单次上限为100)。
        public let limit: Int64?

        /// 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        public let offset: Int64?

        public init(packageOrderId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.packageOrderId = packageOrderId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case packageOrderId = "PackageOrderId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePkgOfflineMusicResponse) -> DescribePkgOfflineMusicRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(packageOrderId: self.packageOrderId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribePkgOfflineMusic返回参数结构体
    public struct DescribePkgOfflineMusicResponse: TCPaginatedResponse {
        /// 曲库包中不可用歌曲信息
        public let offlineMusicSet: [OfflineMusicDetail]

        /// 返回总量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case offlineMusicSet = "OfflineMusicSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OfflineMusicDetail`` list from the paginated response.
        public func getItems() -> [OfflineMusicDetail] {
            self.offlineMusicSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    @inlinable
    public func describePkgOfflineMusic(_ input: DescribePkgOfflineMusicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePkgOfflineMusicResponse> {
        self.client.execute(action: "DescribePkgOfflineMusic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    @inlinable
    public func describePkgOfflineMusic(_ input: DescribePkgOfflineMusicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePkgOfflineMusicResponse {
        try await self.client.execute(action: "DescribePkgOfflineMusic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    @inlinable
    public func describePkgOfflineMusic(packageOrderId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePkgOfflineMusicResponse> {
        self.describePkgOfflineMusic(.init(packageOrderId: packageOrderId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    @inlinable
    public func describePkgOfflineMusic(packageOrderId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePkgOfflineMusicResponse {
        try await self.describePkgOfflineMusic(.init(packageOrderId: packageOrderId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    @inlinable
    public func describePkgOfflineMusicPaginated(_ input: DescribePkgOfflineMusicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [OfflineMusicDetail])> {
        self.client.paginate(input: input, region: region, command: self.describePkgOfflineMusic, logger: logger, on: eventLoop)
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    @inlinable @discardableResult
    public func describePkgOfflineMusicPaginated(_ input: DescribePkgOfflineMusicRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePkgOfflineMusicResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePkgOfflineMusic, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 曲库包获取已核销歌曲回退数据
    ///
    /// 根据购买曲库包用户可查询已回退的歌曲信息
    ///
    /// - Returns: `AsyncSequence`s of ``OfflineMusicDetail`` and ``DescribePkgOfflineMusicResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePkgOfflineMusicPaginator(_ input: DescribePkgOfflineMusicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePkgOfflineMusicRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePkgOfflineMusic, logger: logger, on: eventLoop)
    }
}
