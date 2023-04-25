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

extension Apigateway {
    /// DescribeApiAppsStatus请求参数结构体
    public struct DescribeApiAppsStatusRequest: TCPaginatedRequest {
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。支持ApiAppId、ApiAppName、KeyWord（ 可以匹配name或者ID）。
        public let filters: [Filter]?

        public init(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApiAppsStatusResponse) -> DescribeApiAppsStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApiAppsStatusRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeApiAppsStatus返回参数结构体
    public struct DescribeApiAppsStatusResponse: TCPaginatedResponse {
        /// 应用列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiAppInfos?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiAppInfo] {
            self.result?.apiAppSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(_ input: DescribeApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiAppsStatusResponse> {
        self.client.execute(action: "DescribeApiAppsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(_ input: DescribeApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppsStatusResponse {
        try await self.client.execute(action: "DescribeApiAppsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiAppsStatusResponse> {
        self.describeApiAppsStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppsStatusResponse {
        try await self.describeApiAppsStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatusPaginated(_ input: DescribeApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiAppInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeApiAppsStatus, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable @discardableResult
    public func describeApiAppsStatusPaginated(_ input: DescribeApiAppsStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApiAppsStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApiAppsStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    ///
    /// - Returns: `AsyncSequence`s of `ApiAppInfo` and `DescribeApiAppsStatusResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApiAppsStatusPaginator(_ input: DescribeApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApiAppsStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApiAppsStatus, logger: logger, on: eventLoop)
    }
}
