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

extension Tci {
    /// DescribePersons请求参数结构体
    public struct DescribePersonsRequest: TCPaginatedRequest {
        /// 人员库唯一标识符
        public let libraryId: String

        /// 限制数目
        public let limit: UInt64?

        /// 偏移量
        public let offset: UInt64?

        public init(libraryId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.libraryId = libraryId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePersonsResponse) -> DescribePersonsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(libraryId: self.libraryId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribePersons返回参数结构体
    public struct DescribePersonsResponse: TCPaginatedResponse {
        /// 人员列表
        public let personSet: [Person]

        /// 人员总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personSet = "PersonSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Person`` list from the paginated response.
        public func getItems() -> [Person] {
            self.personSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 拉取人员列表
    @inlinable
    public func describePersons(_ input: DescribePersonsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonsResponse> {
        self.client.execute(action: "DescribePersons", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取人员列表
    @inlinable
    public func describePersons(_ input: DescribePersonsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonsResponse {
        try await self.client.execute(action: "DescribePersons", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取人员列表
    @inlinable
    public func describePersons(libraryId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonsResponse> {
        self.describePersons(.init(libraryId: libraryId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取人员列表
    @inlinable
    public func describePersons(libraryId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonsResponse {
        try await self.describePersons(.init(libraryId: libraryId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取人员列表
    @inlinable
    public func describePersonsPaginated(_ input: DescribePersonsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Person])> {
        self.client.paginate(input: input, region: region, command: self.describePersons, logger: logger, on: eventLoop)
    }

    /// 拉取人员列表
    @inlinable @discardableResult
    public func describePersonsPaginated(_ input: DescribePersonsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePersonsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePersons, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取人员列表
    ///
    /// - Returns: `AsyncSequence`s of ``Person`` and ``DescribePersonsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePersonsPaginator(_ input: DescribePersonsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePersonsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePersons, logger: logger, on: eventLoop)
    }
}
