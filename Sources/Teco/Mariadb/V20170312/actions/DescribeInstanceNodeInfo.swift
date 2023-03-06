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

extension Mariadb {
    /// DescribeInstanceNodeInfo请求参数结构体
    public struct DescribeInstanceNodeInfoRequest: TCPaginatedRequest {
        /// 实例ID，形如tdsql-6ltok4u9
        public let instanceId: String

        /// 一次最多返回多少条数据。默认为无穷大，返回符合要求的所有数据
        public let limit: UInt64?

        /// 返回数据的偏移量，默认为0
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
        public func makeNextRequest(with response: DescribeInstanceNodeInfoResponse) -> DescribeInstanceNodeInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstanceNodeInfoRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeInstanceNodeInfo返回参数结构体
    public struct DescribeInstanceNodeInfoResponse: TCPaginatedResponse {
        /// 节点总个数
        public let totalCount: UInt64

        /// 节点信息
        public let nodesInfo: [NodeInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodesInfo = "NodesInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NodeInfo] {
            self.nodesInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    @inlinable
    public func describeInstanceNodeInfo(_ input: DescribeInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceNodeInfoResponse> {
        self.client.execute(action: "DescribeInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    @inlinable
    public func describeInstanceNodeInfo(_ input: DescribeInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceNodeInfoResponse {
        try await self.client.execute(action: "DescribeInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    @inlinable
    public func describeInstanceNodeInfo(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceNodeInfoResponse> {
        let input = DescribeInstanceNodeInfoRequest(instanceId: instanceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    @inlinable
    public func describeInstanceNodeInfo(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceNodeInfoResponse {
        let input = DescribeInstanceNodeInfoRequest(instanceId: instanceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    @inlinable
    public func describeInstanceNodeInfoPaginated(_ input: DescribeInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NodeInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceNodeInfo, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    @inlinable @discardableResult
    public func describeInstanceNodeInfoPaginated(_ input: DescribeInstanceNodeInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceNodeInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceNodeInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息
    ///
    /// - Returns: `AsyncSequence`s of `NodeInfo` and `DescribeInstanceNodeInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceNodeInfoPaginator(_ input: DescribeInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceNodeInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceNodeInfo, logger: logger, on: eventLoop)
    }
}
