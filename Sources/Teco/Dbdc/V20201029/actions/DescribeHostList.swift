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

import TecoCore
import TecoPaginationHelpers

extension Dbdc {
    /// DescribeHostList请求参数结构体
    public struct DescribeHostListRequest: TCPaginatedRequest {
        /// 独享集群实例Id
        public let instanceId: String

        /// 分页返回数量
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        /// 分配状态过滤，0-可分配，1-禁止分配
        public let assignStatus: [Int64]?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, assignStatus: [Int64]? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.assignStatus = assignStatus
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case assignStatus = "AssignStatus"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHostListResponse) -> DescribeHostListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHostListRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), assignStatus: self.assignStatus)
        }
    }

    /// DescribeHostList返回参数结构体
    public struct DescribeHostListResponse: TCPaginatedResponse {
        /// 主机总数
        public let totalCount: Int64

        /// 主机详情
        public let hosts: [HostDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case hosts = "Hosts"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HostDetail] {
            self.hosts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(_ input: DescribeHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostListResponse> {
        self.client.execute(action: "DescribeHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(_ input: DescribeHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostListResponse {
        try await self.client.execute(action: "DescribeHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, assignStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostListResponse> {
        self.describeHostList(.init(instanceId: instanceId, limit: limit, offset: offset, assignStatus: assignStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, assignStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostListResponse {
        try await self.describeHostList(.init(instanceId: instanceId, limit: limit, offset: offset, assignStatus: assignStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostListPaginated(_ input: DescribeHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [HostDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeHostList, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable @discardableResult
    public func describeHostListPaginated(_ input: DescribeHostListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHostListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHostList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    ///
    /// - Returns: `AsyncSequence`s of `HostDetail` and `DescribeHostListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHostListPaginator(_ input: DescribeHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHostListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHostList, logger: logger, on: eventLoop)
    }
}
