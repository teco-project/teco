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
    /// DescribeApiKeysStatus请求参数结构体
    public struct DescribeApiKeysStatusRequest: TCPaginatedRequest {
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。支持AccessKeyId、AccessKeySecret、SecretName、NotUsagePlanId、Status、KeyWord（ 可以匹配name或者path）。
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
        public func makeNextRequest(with response: DescribeApiKeysStatusResponse) -> DescribeApiKeysStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApiKeysStatusRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeApiKeysStatus返回参数结构体
    public struct DescribeApiKeysStatusResponse: TCPaginatedResponse {
        /// 密钥列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiKeysStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiKey] {
            self.result?.apiKeySet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    @inlinable
    public func describeApiKeysStatus(_ input: DescribeApiKeysStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiKeysStatusResponse> {
        self.client.execute(action: "DescribeApiKeysStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    @inlinable
    public func describeApiKeysStatus(_ input: DescribeApiKeysStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiKeysStatusResponse {
        try await self.client.execute(action: "DescribeApiKeysStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    @inlinable
    public func describeApiKeysStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiKeysStatusResponse> {
        self.describeApiKeysStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    @inlinable
    public func describeApiKeysStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiKeysStatusResponse {
        try await self.describeApiKeysStatus(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    @inlinable
    public func describeApiKeysStatusPaginated(_ input: DescribeApiKeysStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiKey])> {
        self.client.paginate(input: input, region: region, command: self.describeApiKeysStatus, logger: logger, on: eventLoop)
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    @inlinable @discardableResult
    public func describeApiKeysStatusPaginated(_ input: DescribeApiKeysStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApiKeysStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApiKeysStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询密钥列表
    ///
    /// 本接口（DescribeApiKeysStatus）用于查询密钥列表。
    /// 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。
    ///
    /// - Returns: `AsyncSequence`s of `ApiKey` and `DescribeApiKeysStatusResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApiKeysStatusPaginator(_ input: DescribeApiKeysStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApiKeysStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApiKeysStatus, logger: logger, on: eventLoop)
    }
}
