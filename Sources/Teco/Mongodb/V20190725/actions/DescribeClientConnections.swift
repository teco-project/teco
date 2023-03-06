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

extension Mongodb {
    /// DescribeClientConnections请求参数结构体
    public struct DescribeClientConnectionsRequest: TCPaginatedRequest {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 单次请求返回的数量，最小值为1，最大值为1000，默认值为1000。
        public let limit: UInt64?

        /// 偏移量，默认值为0。
        public let offset: UInt64?

        public init(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeClientConnectionsResponse) -> DescribeClientConnectionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClientConnectionsRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeClientConnections返回参数结构体
    public struct DescribeClientConnectionsResponse: TCPaginatedResponse {
        /// 客户端连接信息，包括客户端IP和对应IP的连接数量。
        public let clients: [ClientConnection]

        /// 满足条件的记录总条数，可用于分页查询。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clients = "Clients"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClientConnection] {
            self.clients
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnections(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientConnectionsResponse> {
        self.client.execute(action: "DescribeClientConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnections(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientConnectionsResponse {
        try await self.client.execute(action: "DescribeClientConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnections(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientConnectionsResponse> {
        let input = DescribeClientConnectionsRequest(instanceId: instanceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeClientConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnections(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientConnectionsResponse {
        let input = DescribeClientConnectionsRequest(instanceId: instanceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeClientConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnectionsPaginated(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClientConnection])> {
        self.client.paginate(input: input, region: region, command: self.describeClientConnections, logger: logger, on: eventLoop)
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable @discardableResult
    public func describeClientConnectionsPaginated(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClientConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClientConnections, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。
    @inlinable
    public func describeClientConnectionsPaginator(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeClientConnectionsRequest, DescribeClientConnectionsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeClientConnectionsRequest, DescribeClientConnectionsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClientConnections, logger: logger, on: eventLoop)
    }
}
