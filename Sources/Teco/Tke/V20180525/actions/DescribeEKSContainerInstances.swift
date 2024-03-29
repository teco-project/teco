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

extension Tke {
    /// DescribeEKSContainerInstances请求参数结构体
    public struct DescribeEKSContainerInstancesRequest: TCPaginatedRequest {
        /// 限定此次返回资源的数量。如果不设定，默认返回20，最大不能超过100
        public let limit: UInt64?

        /// 偏移量,默认0
        public let offset: UInt64?

        /// 过滤条件，可条件：
        /// (1)实例名称
        /// KeyName: eks-ci-name
        /// 类型：String
        ///
        /// (2)实例状态
        /// KeyName: status
        /// 类型：String
        /// 可选值："Pending", "Running", "Succeeded", "Failed"
        ///
        /// (3)内网ip
        /// KeyName: private-ip
        /// 类型：String
        ///
        /// (4)EIP地址
        /// KeyName: eip-address
        /// 类型：String
        ///
        /// (5)VpcId
        /// KeyName: vpc-id
        /// 类型：String
        public let filters: [Filter]?

        /// 容器实例 ID 数组
        public let eksCiIds: [String]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, eksCiIds: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.eksCiIds = eksCiIds
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case eksCiIds = "EksCiIds"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEKSContainerInstancesResponse) -> DescribeEKSContainerInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, eksCiIds: self.eksCiIds)
        }
    }

    /// DescribeEKSContainerInstances返回参数结构体
    public struct DescribeEKSContainerInstancesResponse: TCPaginatedResponse {
        /// 容器组总数
        public let totalCount: UInt64

        /// 容器组列表
        public let eksCis: [EksCi]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eksCis = "EksCis"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EksCi`` list from the paginated response.
        public func getItems() -> [EksCi] {
            self.eksCis
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询容器实例
    @inlinable
    public func describeEKSContainerInstances(_ input: DescribeEKSContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSContainerInstancesResponse> {
        self.client.execute(action: "DescribeEKSContainerInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器实例
    @inlinable
    public func describeEKSContainerInstances(_ input: DescribeEKSContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstancesResponse {
        try await self.client.execute(action: "DescribeEKSContainerInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器实例
    @inlinable
    public func describeEKSContainerInstances(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, eksCiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSContainerInstancesResponse> {
        self.describeEKSContainerInstances(.init(limit: limit, offset: offset, filters: filters, eksCiIds: eksCiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例
    @inlinable
    public func describeEKSContainerInstances(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, eksCiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstancesResponse {
        try await self.describeEKSContainerInstances(.init(limit: limit, offset: offset, filters: filters, eksCiIds: eksCiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例
    @inlinable
    public func describeEKSContainerInstancesPaginated(_ input: DescribeEKSContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EksCi])> {
        self.client.paginate(input: input, region: region, command: self.describeEKSContainerInstances, logger: logger, on: eventLoop)
    }

    /// 查询容器实例
    @inlinable @discardableResult
    public func describeEKSContainerInstancesPaginated(_ input: DescribeEKSContainerInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEKSContainerInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEKSContainerInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询容器实例
    ///
    /// - Returns: `AsyncSequence`s of ``EksCi`` and ``DescribeEKSContainerInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEKSContainerInstancesPaginator(_ input: DescribeEKSContainerInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEKSContainerInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEKSContainerInstances, logger: logger, on: eventLoop)
    }
}
