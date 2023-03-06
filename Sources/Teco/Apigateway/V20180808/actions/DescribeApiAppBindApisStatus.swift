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

extension Apigateway {
    /// DescribeApiAppBindApisStatus请求参数结构体
    public struct DescribeApiAppBindApisStatusRequest: TCPaginatedRequest {
        /// 应用ID
        public let apiAppId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。支持ApiId、ApiName、ServiceId、Environment 、KeyWord（ 可以匹配name或者ID）。
        public let filters: [Filter]?

        public init(apiAppId: String, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.apiAppId = apiAppId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case apiAppId = "ApiAppId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApiAppBindApisStatusResponse) -> DescribeApiAppBindApisStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApiAppBindApisStatusRequest(apiAppId: self.apiAppId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeApiAppBindApisStatus返回参数结构体
    public struct DescribeApiAppBindApisStatusResponse: TCPaginatedResponse {
        /// 应用绑定的Api列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiAppApiInfos?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiAppApiInfo] {
            self.result?.apiAppApiSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatus(_ input: DescribeApiAppBindApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiAppBindApisStatusResponse> {
        self.client.execute(action: "DescribeApiAppBindApisStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatus(_ input: DescribeApiAppBindApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppBindApisStatusResponse {
        try await self.client.execute(action: "DescribeApiAppBindApisStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatus(apiAppId: String, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiAppBindApisStatusResponse> {
        let input = DescribeApiAppBindApisStatusRequest(apiAppId: apiAppId, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeApiAppBindApisStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatus(apiAppId: String, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppBindApisStatusResponse {
        let input = DescribeApiAppBindApisStatusRequest(apiAppId: apiAppId, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeApiAppBindApisStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatusPaginated(_ input: DescribeApiAppBindApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiAppApiInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeApiAppBindApisStatus, logger: logger, on: eventLoop)
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable @discardableResult
    public func describeApiAppBindApisStatusPaginated(_ input: DescribeApiAppBindApisStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApiAppBindApisStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApiAppBindApisStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    ///
    /// - Returns: `AsyncSequence`s of `ApiAppApiInfo` and `DescribeApiAppBindApisStatusResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApiAppBindApisStatusPaginator(_ input: DescribeApiAppBindApisStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApiAppBindApisStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApiAppBindApisStatus, logger: logger, on: eventLoop)
    }
}
