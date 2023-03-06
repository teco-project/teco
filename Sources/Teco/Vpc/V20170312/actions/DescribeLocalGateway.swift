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
    /// DescribeLocalGateway请求参数结构体
    public struct DescribeLocalGatewayRequest: TCPaginatedRequest {
        /// 查询条件：
        /// vpc-id：按照VPCID过滤，local-gateway-name：按照本地网关名称过滤，名称支持模糊搜索，local-gateway-id：按照本地网关实例ID过滤，cdc-id：按照cdc实例ID过滤查询。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLocalGatewayResponse) -> DescribeLocalGatewayRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLocalGatewayRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeLocalGateway返回参数结构体
    public struct DescribeLocalGatewayResponse: TCPaginatedResponse {
        /// 本地网关信息集合
        public let localGatewaySet: [LocalGateway]

        /// 本地网关总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case localGatewaySet = "LocalGatewaySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LocalGateway] {
            self.localGatewaySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    @inlinable
    public func describeLocalGateway(_ input: DescribeLocalGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocalGatewayResponse> {
        self.client.execute(action: "DescribeLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    @inlinable
    public func describeLocalGateway(_ input: DescribeLocalGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocalGatewayResponse {
        try await self.client.execute(action: "DescribeLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    @inlinable
    public func describeLocalGateway(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocalGatewayResponse> {
        let input = DescribeLocalGatewayRequest(filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    @inlinable
    public func describeLocalGateway(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocalGatewayResponse {
        let input = DescribeLocalGatewayRequest(filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    @inlinable
    public func describeLocalGatewayPaginated(_ input: DescribeLocalGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LocalGateway])> {
        self.client.paginate(input: input, region: region, command: self.describeLocalGateway, logger: logger, on: eventLoop)
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    @inlinable @discardableResult
    public func describeLocalGatewayPaginated(_ input: DescribeLocalGatewayRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLocalGatewayResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLocalGateway, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询本地网关
    ///
    /// 该接口用于查询CDC的本地网关。
    ///
    /// - Returns: `AsyncSequence`s of `LocalGateway` and `DescribeLocalGatewayResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLocalGatewayPaginator(_ input: DescribeLocalGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLocalGatewayRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLocalGateway, logger: logger, on: eventLoop)
    }
}
