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

extension As {
    /// DescribeAutoScalingInstances请求参数结构体
    public struct DescribeAutoScalingInstancesRequest: TCPaginatedRequest {
        /// 待查询云服务器（CVM）的实例ID。每次请求的上限为100。参数不支持同时指定InstanceIds和Filters。
        public let instanceIds: [String]?

        /// 过滤条件。
        /// - instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。
        /// - auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。
        ///
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`InstanceIds`和`Filters`。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
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
        public func makeNextRequest(with response: DescribeAutoScalingInstancesResponse) -> DescribeAutoScalingInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceIds: self.instanceIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAutoScalingInstances返回参数结构体
    public struct DescribeAutoScalingInstancesResponse: TCPaginatedResponse {
        /// 实例详细信息列表。
        public let autoScalingInstanceSet: [Instance]

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoScalingInstanceSet = "AutoScalingInstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Instance`` list from the paginated response.
        public func getItems() -> [Instance] {
            self.autoScalingInstanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeAutoScalingInstances(_ input: DescribeAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingInstancesResponse> {
        self.client.execute(action: "DescribeAutoScalingInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeAutoScalingInstances(_ input: DescribeAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingInstancesResponse {
        try await self.client.execute(action: "DescribeAutoScalingInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeAutoScalingInstances(instanceIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingInstancesResponse> {
        self.describeAutoScalingInstances(.init(instanceIds: instanceIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeAutoScalingInstances(instanceIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingInstancesResponse {
        try await self.describeAutoScalingInstances(.init(instanceIds: instanceIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeAutoScalingInstancesPaginated(_ input: DescribeAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Instance])> {
        self.client.paginate(input: input, region: region, command: self.describeAutoScalingInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable @discardableResult
    public func describeAutoScalingInstancesPaginated(_ input: DescribeAutoScalingInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutoScalingInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutoScalingInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例
    ///
    /// 本接口（DescribeAutoScalingInstances）用于查询弹性伸缩关联实例的信息。
    ///
    /// * 可以根据实例ID、伸缩组ID等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    ///
    /// - Returns: `AsyncSequence`s of ``Instance`` and ``DescribeAutoScalingInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutoScalingInstancesPaginator(_ input: DescribeAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutoScalingInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutoScalingInstances, logger: logger, on: eventLoop)
    }
}
