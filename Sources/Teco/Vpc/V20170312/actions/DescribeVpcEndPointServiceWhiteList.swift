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

extension Vpc {
    /// DescribeVpcEndPointServiceWhiteList请求参数结构体
    public struct DescribeVpcEndPointServiceWhiteListRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 单页返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 过滤条件。
        /// <li> user-uin String - （过滤条件）用户UIN。</li>
        /// <li> end-point-service-id String - （过滤条件）终端节点服务ID。</li>
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcEndPointServiceWhiteListResponse) -> DescribeVpcEndPointServiceWhiteListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpcEndPointServiceWhiteListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeVpcEndPointServiceWhiteList返回参数结构体
    public struct DescribeVpcEndPointServiceWhiteListResponse: TCPaginatedResponse {
        /// 白名单对象数组。
        public let vpcEndpointServiceUserSet: [VpcEndPointServiceUser]

        /// 符合条件的白名单个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcEndpointServiceUserSet = "VpcEndpointServiceUserSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VpcEndPointServiceUser] {
            self.vpcEndpointServiceUserSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(_ input: DescribeVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointServiceWhiteListResponse> {
        self.client.execute(action: "DescribeVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(_ input: DescribeVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceWhiteListResponse {
        try await self.client.execute(action: "DescribeVpcEndPointServiceWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointServiceWhiteListResponse> {
        self.describeVpcEndPointServiceWhiteList(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceWhiteListResponse {
        try await self.describeVpcEndPointServiceWhiteList(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteListPaginated(_ input: DescribeVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpcEndPointServiceUser])> {
        self.client.paginate(input: input, region: region, command: self.describeVpcEndPointServiceWhiteList, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    @inlinable @discardableResult
    public func describeVpcEndPointServiceWhiteListPaginated(_ input: DescribeVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcEndPointServiceWhiteListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpcEndPointServiceWhiteList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。
    ///
    /// - Returns: `AsyncSequence`s of `VpcEndPointServiceUser` and `DescribeVpcEndPointServiceWhiteListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcEndPointServiceWhiteListPaginator(_ input: DescribeVpcEndPointServiceWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcEndPointServiceWhiteListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcEndPointServiceWhiteList, logger: logger, on: eventLoop)
    }
}
