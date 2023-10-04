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

extension Youmall {
    /// DescribePerson请求参数结构体
    public struct DescribePersonRequest: TCPaginatedRequest {
        /// 卖场编码
        public let mallId: String

        /// 查询偏移
        public let offset: UInt64?

        /// 查询数量，默认20，最大查询数量100
        public let limit: UInt64?

        public init(mallId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.mallId = mallId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePersonResponse) -> DescribePersonRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(mallId: self.mallId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePerson返回参数结构体
    public struct DescribePersonResponse: TCPaginatedResponse {
        /// 总计客户数量
        public let totalCount: UInt64

        /// 客户信息
        public let personSet: [PersonProfile]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case personSet = "PersonSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PersonProfile`` list from the paginated response.
        public func getItems() -> [PersonProfile] {
            self.personSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    @inlinable
    public func describePerson(_ input: DescribePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonResponse> {
        self.client.execute(action: "DescribePerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    @inlinable
    public func describePerson(_ input: DescribePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonResponse {
        try await self.client.execute(action: "DescribePerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    @inlinable
    public func describePerson(mallId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonResponse> {
        self.describePerson(.init(mallId: mallId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    @inlinable
    public func describePerson(mallId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonResponse {
        try await self.describePerson(.init(mallId: mallId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    @inlinable
    public func describePersonPaginated(_ input: DescribePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PersonProfile])> {
        self.client.paginate(input: input, region: region, command: self.describePerson, logger: logger, on: eventLoop)
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    @inlinable @discardableResult
    public func describePersonPaginated(_ input: DescribePersonRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePersonResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePerson, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询客户信息
    ///
    /// 查询指定某一卖场的用户信息
    ///
    /// - Returns: `AsyncSequence`s of ``PersonProfile`` and ``DescribePersonResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePersonPaginator(_ input: DescribePersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePersonRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePerson, logger: logger, on: eventLoop)
    }
}
