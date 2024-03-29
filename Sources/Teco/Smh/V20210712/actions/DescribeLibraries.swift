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

extension Smh {
    /// DescribeLibraries请求参数结构体
    public struct DescribeLibrariesRequest: TCPaginatedRequest {
        /// 按照一个或者多个媒体库 ID 查询，每次请求的上限为 100 个。
        public let libraryIds: [String]?

        /// 页码，整型，配合 PageSize 使用，默认值为 1。
        public let pageNumber: UInt64?

        /// 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        public let pageSize: UInt64?

        public init(libraryIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil) {
            self.libraryIds = libraryIds
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case libraryIds = "LibraryIds"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLibrariesResponse) -> DescribeLibrariesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(libraryIds: self.libraryIds, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeLibraries返回参数结构体
    public struct DescribeLibrariesResponse: TCPaginatedResponse {
        /// 媒体库列表
        public let list: [Library]

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Library`` list from the paginated response.
        public func getItems() -> [Library] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLibrariesResponse> {
        self.client.execute(action: "DescribeLibraries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibrariesResponse {
        try await self.client.execute(action: "DescribeLibraries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(libraryIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLibrariesResponse> {
        self.describeLibraries(.init(libraryIds: libraryIds, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(libraryIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibrariesResponse {
        try await self.describeLibraries(.init(libraryIds: libraryIds, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibrariesPaginated(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Library])> {
        self.client.paginate(input: input, region: region, command: self.describeLibraries, logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable @discardableResult
    public func describeLibrariesPaginated(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLibrariesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLibraries, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    ///
    /// - Returns: `AsyncSequence`s of ``Library`` and ``DescribeLibrariesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLibrariesPaginator(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLibrariesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLibraries, logger: logger, on: eventLoop)
    }
}
