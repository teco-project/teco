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
import TecoPaginationHelpers

extension Lighthouse {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。
        public let instanceIds: [String]?

        /// 过滤器列表。
        /// - instance-name
        /// 按照【实例名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - private-ip-address
        /// 按照【实例主网卡的内网 IP】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - public-ip-address
        /// 按照【实例主网卡的公网 IP】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - zone
        /// 按照【可用区】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - instance-state
        /// 按照【实例状态】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - tag-key
        /// 按照【标签键】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - tag-value
        /// 按照【标签值】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - tag:tag-key
        /// 按照【标签键值对】进行过滤。 tag-key使用具体的标签键进行替换。
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 InstanceIds 和 Filters。
        public let filters: [Filter]?

        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?

        public init(instanceIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceIds = instanceIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(instanceIds: self.instanceIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: Int64

        /// 实例详细信息列表。
        public let instanceSet: [Instance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Instance`` list from the paginated response.
        public func getItems() -> [Instance] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    @inlinable
    public func describeInstances(instanceIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(.init(instanceIds: instanceIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    @inlinable
    public func describeInstances(instanceIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(.init(instanceIds: instanceIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Instance])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看实例列表
    ///
    /// 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。
    ///
    /// * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
    /// * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
    /// * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
    /// * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。
    ///
    /// - Returns: `AsyncSequence`s of ``Instance`` and ``DescribeInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
