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

extension Teo {
    /// DescribeLoadBalancing请求参数结构体
    public struct DescribeLoadBalancingRequest: TCPaginatedRequest {
        /// 站点ID
        public let zoneId: String

        /// 分页参数Offset
        public let offset: UInt64

        /// 分页参数Limit
        public let limit: UInt64

        /// 过滤参数Host
        public let host: String?

        /// 过滤参数Host是否支持模糊匹配
        public let fuzzy: Bool?

        public init(zoneId: String, offset: UInt64, limit: UInt64, host: String? = nil, fuzzy: Bool? = nil) {
            self.zoneId = zoneId
            self.offset = offset
            self.limit = limit
            self.host = host
            self.fuzzy = fuzzy
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case offset = "Offset"
            case limit = "Limit"
            case host = "Host"
            case fuzzy = "Fuzzy"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLoadBalancingResponse) -> DescribeLoadBalancingRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLoadBalancingRequest(zoneId: self.zoneId, offset: self.offset + .init(response.getItems().count), limit: self.limit, host: self.host, fuzzy: self.fuzzy)
        }
    }

    /// DescribeLoadBalancing返回参数结构体
    public struct DescribeLoadBalancingResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: UInt64

        /// 负载均衡信息
        public let data: [LoadBalancing]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LoadBalancing] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取负载均衡列表
    @inlinable
    public func describeLoadBalancing(_ input: DescribeLoadBalancingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancingResponse> {
        self.client.execute(action: "DescribeLoadBalancing", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡列表
    @inlinable
    public func describeLoadBalancing(_ input: DescribeLoadBalancingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancingResponse {
        try await self.client.execute(action: "DescribeLoadBalancing", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取负载均衡列表
    @inlinable
    public func describeLoadBalancing(zoneId: String, offset: UInt64, limit: UInt64, host: String? = nil, fuzzy: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancingResponse> {
        let input = DescribeLoadBalancingRequest(zoneId: zoneId, offset: offset, limit: limit, host: host, fuzzy: fuzzy)
        return self.client.execute(action: "DescribeLoadBalancing", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡列表
    @inlinable
    public func describeLoadBalancing(zoneId: String, offset: UInt64, limit: UInt64, host: String? = nil, fuzzy: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancingResponse {
        let input = DescribeLoadBalancingRequest(zoneId: zoneId, offset: offset, limit: limit, host: host, fuzzy: fuzzy)
        return try await self.client.execute(action: "DescribeLoadBalancing", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取负载均衡列表
    @inlinable
    public func describeLoadBalancingPaginated(_ input: DescribeLoadBalancingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LoadBalancing])> {
        self.client.paginate(input: input, region: region, command: self.describeLoadBalancing, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡列表
    @inlinable @discardableResult
    public func describeLoadBalancingPaginated(_ input: DescribeLoadBalancingRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLoadBalancingResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLoadBalancing, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡列表
    @inlinable
    public func describeLoadBalancingPaginator(_ input: DescribeLoadBalancingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLoadBalancingRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLoadBalancing, logger: logger, on: eventLoop)
    }
}
