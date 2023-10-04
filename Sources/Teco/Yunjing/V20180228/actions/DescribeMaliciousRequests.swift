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
    /// DescribeMaliciousRequests请求参数结构体
    public struct DescribeMaliciousRequestsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Status - String - 是否必填：否 - 状态筛选（UN_OPERATED: 待处理 | TRUSTED：已信任 | UN_TRUSTED：已取消信任）
        /// - Domain - String - 是否必填：否 - 恶意请求的域名
        /// - MachineIp - String - 是否必填：否 - 主机内网IP
        public let filters: [Filter]?

        /// 云镜客户端唯一UUID。
        public let uuid: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case uuid = "Uuid"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMaliciousRequestsResponse) -> DescribeMaliciousRequestsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, uuid: self.uuid)
        }
    }

    /// DescribeMaliciousRequests返回参数结构体
    public struct DescribeMaliciousRequestsResponse: TCPaginatedResponse {
        /// 记录总数。
        public let totalCount: UInt64

        /// 恶意请求记录数组。
        public let maliciousRequests: [MaliciousRequest]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case maliciousRequests = "MaliciousRequests"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MaliciousRequest`` list from the paginated response.
        public func getItems() -> [MaliciousRequest] {
            self.maliciousRequests
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaliciousRequestsResponse> {
        self.client.execute(action: "DescribeMaliciousRequests", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaliciousRequestsResponse {
        try await self.client.execute(action: "DescribeMaliciousRequests", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaliciousRequestsResponse> {
        self.describeMaliciousRequests(.init(limit: limit, offset: offset, filters: filters, uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaliciousRequestsResponse {
        try await self.describeMaliciousRequests(.init(limit: limit, offset: offset, filters: filters, uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequestsPaginated(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [MaliciousRequest])> {
        self.client.paginate(input: input, region: region, command: self.describeMaliciousRequests, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable @discardableResult
    public func describeMaliciousRequestsPaginated(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMaliciousRequestsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMaliciousRequests, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    ///
    /// - Returns: `AsyncSequence`s of ``MaliciousRequest`` and ``DescribeMaliciousRequestsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMaliciousRequestsPaginator(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMaliciousRequestsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMaliciousRequests, logger: logger, on: eventLoop)
    }
}
