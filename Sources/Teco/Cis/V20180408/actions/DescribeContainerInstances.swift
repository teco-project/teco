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

extension Cis {
    /// DescribeContainerInstances请求参数结构体
    public struct DescribeContainerInstancesRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为10
        public let limit: UInt64?

        /// 过滤条件。
        /// - Zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。
        /// - VpcId - String - 是否必填：否 -（过滤条件）按照VpcId过滤。
        /// - InstanceName - String - 是否必填：否 -（过滤条件）按照容器实例名称做模糊查询。
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
        public func makeNextRequest(with response: DescribeContainerInstancesResponse) -> DescribeContainerInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeContainerInstances返回参数结构体
    public struct DescribeContainerInstancesResponse: TCPaginatedResponse {
        /// 容器实例列表
        public let containerInstanceList: [ContainerInstance]

        /// 容器实例总数
        public let totalCount: UInt64

        /// 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerInstanceList = "ContainerInstanceList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ContainerInstance`` list from the paginated response.
        public func getItems() -> [ContainerInstance] {
            self.containerInstanceList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    @inlinable
    public func describeContainerInstances(_ input: DescribeContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerInstancesResponse> {
        self.client.execute(action: "DescribeContainerInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    @inlinable
    public func describeContainerInstances(_ input: DescribeContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerInstancesResponse {
        try await self.client.execute(action: "DescribeContainerInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    @inlinable
    public func describeContainerInstances(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerInstancesResponse> {
        self.describeContainerInstances(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    @inlinable
    public func describeContainerInstances(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerInstancesResponse {
        try await self.describeContainerInstances(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    @inlinable
    public func describeContainerInstancesPaginated(_ input: DescribeContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ContainerInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeContainerInstances, logger: logger, on: eventLoop)
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    @inlinable @discardableResult
    public func describeContainerInstancesPaginated(_ input: DescribeContainerInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeContainerInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeContainerInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询容器实例列表
    ///
    /// 此接口（DescribeContainerInstances）查询容器实例列表
    ///
    /// - Returns: `AsyncSequence`s of ``ContainerInstance`` and ``DescribeContainerInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeContainerInstancesPaginator(_ input: DescribeContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeContainerInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeContainerInstances, logger: logger, on: eventLoop)
    }
}
