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

extension Lighthouse {
    /// DescribeDisksReturnable请求参数结构体
    public struct DescribeDisksReturnableRequest: TCPaginatedRequest {
        /// 云硬盘ID列表。
        public let diskIds: [String]?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 偏移量，默认为0。
        public let offset: Int64?

        public init(diskIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.diskIds = diskIds
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDisksReturnableResponse) -> DescribeDisksReturnableRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(diskIds: self.diskIds, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDisksReturnable返回参数结构体
    public struct DescribeDisksReturnableResponse: TCPaginatedResponse {
        /// 可退还云硬盘详细信息列表。
        public let diskReturnableSet: [DiskReturnable]

        /// 符合条件的云硬盘数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskReturnableSet = "DiskReturnableSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DiskReturnable`` list from the paginated response.
        public func getItems() -> [DiskReturnable] {
            self.diskReturnableSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    @inlinable
    public func describeDisksReturnable(_ input: DescribeDisksReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksReturnableResponse> {
        self.client.execute(action: "DescribeDisksReturnable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    @inlinable
    public func describeDisksReturnable(_ input: DescribeDisksReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksReturnableResponse {
        try await self.client.execute(action: "DescribeDisksReturnable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    @inlinable
    public func describeDisksReturnable(diskIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksReturnableResponse> {
        self.describeDisksReturnable(.init(diskIds: diskIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    @inlinable
    public func describeDisksReturnable(diskIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksReturnableResponse {
        try await self.describeDisksReturnable(.init(diskIds: diskIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    @inlinable
    public func describeDisksReturnablePaginated(_ input: DescribeDisksReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DiskReturnable])> {
        self.client.paginate(input: input, region: region, command: self.describeDisksReturnable, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    @inlinable @discardableResult
    public func describeDisksReturnablePaginated(_ input: DescribeDisksReturnableRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDisksReturnableResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDisksReturnable, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘是否可退还
    ///
    /// 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。
    ///
    /// - Returns: `AsyncSequence`s of ``DiskReturnable`` and ``DescribeDisksReturnableResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDisksReturnablePaginator(_ input: DescribeDisksReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDisksReturnableRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDisksReturnable, logger: logger, on: eventLoop)
    }
}
