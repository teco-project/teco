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

extension Tdmq {
    /// DescribeEnvironments请求参数结构体
    public struct DescribeEnvironmentsRequest: TCPaginatedRequest {
        /// 命名空间名称，模糊搜索。
        public let environmentId: String?

        /// 起始下标，不填默认为0。
        public let offset: UInt64?

        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: UInt64?

        /// Pulsar 集群的ID
        public let clusterId: String?

        /// * EnvironmentId
        /// 按照名称空间进行过滤，精确查询。
        /// 类型：String
        /// 必选：否
        public let filters: [Filter]?

        public init(environmentId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, clusterId: String? = nil, filters: [Filter]? = nil) {
            self.environmentId = environmentId
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeEnvironmentsResponse) -> DescribeEnvironmentsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEnvironmentsRequest(environmentId: self.environmentId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, clusterId: self.clusterId, filters: self.filters)
        }
    }

    /// DescribeEnvironments返回参数结构体
    public struct DescribeEnvironmentsResponse: TCPaginatedResponse {
        /// 命名空间记录数。
        public let totalCount: UInt64

        /// 命名空间集合数组。
        public let environmentSet: [Environment]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case environmentSet = "EnvironmentSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Environment] {
            self.environmentSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentsResponse> {
        self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironments(environmentId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, clusterId: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentsResponse> {
        let input = DescribeEnvironmentsRequest(environmentId: environmentId, offset: offset, limit: limit, clusterId: clusterId, filters: filters)
        return self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironments(environmentId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, clusterId: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        let input = DescribeEnvironmentsRequest(environmentId: environmentId, offset: offset, limit: limit, clusterId: clusterId, filters: filters)
        return try await self.client.execute(action: "DescribeEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironmentsPaginated(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Environment])> {
        self.client.paginate(input: input, region: region, command: self.describeEnvironments, logger: logger, on: eventLoop)
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable @discardableResult
    public func describeEnvironmentsPaginated(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEnvironmentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEnvironments, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironmentsPaginator(_ input: DescribeEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEnvironmentsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEnvironments, logger: logger, on: eventLoop)
    }
}
