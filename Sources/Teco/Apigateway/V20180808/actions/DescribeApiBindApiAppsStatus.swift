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
    /// DescribeApiBindApiAppsStatus请求参数结构体
    public struct DescribeApiBindApiAppsStatusRequest: TCPaginatedRequest {
        /// 服务ID
        public let serviceId: String

        /// Api的ID的数组
        public let apiIds: [String]

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。支持ApiAppId、Environment、KeyWord（ 可以匹配name或者ID）。
        public let filters: [Filter]?

        public init(serviceId: String, apiIds: [String], limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.serviceId = serviceId
            self.apiIds = apiIds
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case apiIds = "ApiIds"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeApiBindApiAppsStatusResponse) -> DescribeApiBindApiAppsStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApiBindApiAppsStatusRequest(serviceId: self.serviceId, apiIds: self.apiIds, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeApiBindApiAppsStatus返回参数结构体
    public struct DescribeApiBindApiAppsStatusResponse: TCPaginatedResponse {
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

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable
    public func describeApiBindApiAppsStatus(_ input: DescribeApiBindApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiBindApiAppsStatusResponse> {
        self.client.execute(action: "DescribeApiBindApiAppsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable
    public func describeApiBindApiAppsStatus(_ input: DescribeApiBindApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiBindApiAppsStatusResponse {
        try await self.client.execute(action: "DescribeApiBindApiAppsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable
    public func describeApiBindApiAppsStatus(serviceId: String, apiIds: [String], limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiBindApiAppsStatusResponse> {
        let input = DescribeApiBindApiAppsStatusRequest(serviceId: serviceId, apiIds: apiIds, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeApiBindApiAppsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable
    public func describeApiBindApiAppsStatus(serviceId: String, apiIds: [String], limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiBindApiAppsStatusResponse {
        let input = DescribeApiBindApiAppsStatusRequest(serviceId: serviceId, apiIds: apiIds, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeApiBindApiAppsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable
    public func describeApiBindApiAppsStatusPaginated(_ input: DescribeApiBindApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiAppApiInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeApiBindApiAppsStatus, logger: logger, on: eventLoop)
    }

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable @discardableResult
    public func describeApiBindApiAppsStatusPaginated(_ input: DescribeApiBindApiAppsStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApiBindApiAppsStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApiBindApiAppsStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Api绑定的应用列表
    ///
    /// 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。
    @inlinable
    public func describeApiBindApiAppsStatusPaginator(_ input: DescribeApiBindApiAppsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApiBindApiAppsStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApiBindApiAppsStatus, logger: logger, on: eventLoop)
    }
}
