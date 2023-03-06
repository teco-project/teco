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

extension Tse {
    /// DescribeZookeeperServerInterfaces请求参数结构体
    public struct DescribeZookeeperServerInterfacesRequest: TCPaginatedRequest {
        /// 实例id
        public let instanceId: String?

        /// 返回的列表个数
        public let limit: UInt64?

        /// 返回的列表起始偏移量
        public let offset: UInt64?

        public init(instanceId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
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
        public func getNextPaginatedRequest(with response: DescribeZookeeperServerInterfacesResponse) -> DescribeZookeeperServerInterfacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeZookeeperServerInterfacesRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeZookeeperServerInterfaces返回参数结构体
    public struct DescribeZookeeperServerInterfacesResponse: TCPaginatedResponse {
        /// 接口总个数
        public let totalCount: UInt64

        /// 接口列表
        public let content: [ZookeeperServerInterface]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case content = "Content"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ZookeeperServerInterface] {
            self.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询zookeeper服务接口列表
    @inlinable
    public func describeZookeeperServerInterfaces(_ input: DescribeZookeeperServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZookeeperServerInterfacesResponse> {
        self.client.execute(action: "DescribeZookeeperServerInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询zookeeper服务接口列表
    @inlinable
    public func describeZookeeperServerInterfaces(_ input: DescribeZookeeperServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZookeeperServerInterfacesResponse {
        try await self.client.execute(action: "DescribeZookeeperServerInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询zookeeper服务接口列表
    @inlinable
    public func describeZookeeperServerInterfaces(instanceId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZookeeperServerInterfacesResponse> {
        let input = DescribeZookeeperServerInterfacesRequest(instanceId: instanceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeZookeeperServerInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询zookeeper服务接口列表
    @inlinable
    public func describeZookeeperServerInterfaces(instanceId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZookeeperServerInterfacesResponse {
        let input = DescribeZookeeperServerInterfacesRequest(instanceId: instanceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeZookeeperServerInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询zookeeper服务接口列表
    @inlinable
    public func describeZookeeperServerInterfacesPaginated(_ input: DescribeZookeeperServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ZookeeperServerInterface])> {
        self.client.paginate(input: input, region: region, command: self.describeZookeeperServerInterfaces, logger: logger, on: eventLoop)
    }

    /// 查询zookeeper服务接口列表
    @inlinable @discardableResult
    public func describeZookeeperServerInterfacesPaginated(_ input: DescribeZookeeperServerInterfacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeZookeeperServerInterfacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeZookeeperServerInterfaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询zookeeper服务接口列表
    ///
    /// - Returns: `AsyncSequence`s of `ZookeeperServerInterface` and `DescribeZookeeperServerInterfacesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeZookeeperServerInterfacesPaginator(_ input: DescribeZookeeperServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeZookeeperServerInterfacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeZookeeperServerInterfaces, logger: logger, on: eventLoop)
    }
}
