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

extension Yunjing {
    /// DescribeBruteAttacks请求参数结构体
    public struct DescribeBruteAttacksRequest: TCPaginatedRequest {
        /// 客户端唯一Uuid。
        public let uuid: String?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Keywords - String - 是否必填：否 -  查询关键字
        /// - Status - String - 是否必填：否 -  查询状态（FAILED：破解失败 |SUCCESS：破解成功）
        public let filters: [Filter]?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        public init(uuid: String? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, limit: UInt64? = nil) {
            self.uuid = uuid
            self.offset = offset
            self.filters = filters
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case offset = "Offset"
            case filters = "Filters"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBruteAttacksResponse) -> DescribeBruteAttacksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(uuid: self.uuid, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, limit: self.limit)
        }
    }

    /// DescribeBruteAttacks返回参数结构体
    public struct DescribeBruteAttacksResponse: TCPaginatedResponse {
        /// 事件数量
        public let totalCount: UInt64

        /// 暴力破解事件列表
        public let bruteAttacks: [BruteAttack]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bruteAttacks = "BruteAttacks"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BruteAttack`` list from the paginated response.
        public func getItems() -> [BruteAttack] {
            self.bruteAttacks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    @inlinable
    public func describeBruteAttacks(_ input: DescribeBruteAttacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBruteAttacksResponse> {
        self.client.execute(action: "DescribeBruteAttacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    @inlinable
    public func describeBruteAttacks(_ input: DescribeBruteAttacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBruteAttacksResponse {
        try await self.client.execute(action: "DescribeBruteAttacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    @inlinable
    public func describeBruteAttacks(uuid: String? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBruteAttacksResponse> {
        self.describeBruteAttacks(.init(uuid: uuid, offset: offset, filters: filters, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    @inlinable
    public func describeBruteAttacks(uuid: String? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBruteAttacksResponse {
        try await self.describeBruteAttacks(.init(uuid: uuid, offset: offset, filters: filters, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    @inlinable
    public func describeBruteAttacksPaginated(_ input: DescribeBruteAttacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BruteAttack])> {
        self.client.paginate(input: input, region: region, command: self.describeBruteAttacks, logger: logger, on: eventLoop)
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    @inlinable @discardableResult
    public func describeBruteAttacksPaginated(_ input: DescribeBruteAttacksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBruteAttacksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBruteAttacks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取云镜破解事件列表
    ///
    /// 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。
    ///
    /// - Returns: `AsyncSequence`s of ``BruteAttack`` and ``DescribeBruteAttacksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBruteAttacksPaginator(_ input: DescribeBruteAttacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBruteAttacksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBruteAttacks, logger: logger, on: eventLoop)
    }
}
