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

extension As {
    /// DescribeAutoScalingGroups请求参数结构体
    public struct DescribeAutoScalingGroupsRequest: TCPaginatedRequest {
        /// 按照一个或者多个伸缩组ID查询。伸缩组ID形如：`asg-nkdwoui0`。每次请求的上限为100。参数不支持同时指定`AutoScalingGroupIds`和`Filters`。
        public let autoScalingGroupIds: [String]?

        /// 过滤条件。
        /// <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        /// <li> auto-scaling-group-name - String - 是否必填：否 -（过滤条件）按照伸缩组名称过滤。</li>
        /// <li> vague-auto-scaling-group-name - String - 是否必填：否 -（过滤条件）按照伸缩组名称模糊搜索。</li>
        /// <li> launch-configuration-id - String - 是否必填：否 -（过滤条件）按照启动配置ID过滤。</li>
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2</li>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AutoScalingGroupIds`和`Filters`。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(autoScalingGroupIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.autoScalingGroupIds = autoScalingGroupIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupIds = "AutoScalingGroupIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAutoScalingGroupsResponse) -> DescribeAutoScalingGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAutoScalingGroupsRequest(autoScalingGroupIds: self.autoScalingGroupIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAutoScalingGroups返回参数结构体
    public struct DescribeAutoScalingGroupsResponse: TCPaginatedResponse {
        /// 伸缩组详细信息列表。
        public let autoScalingGroupSet: [AutoScalingGroup]

        /// 符合条件的伸缩组数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupSet = "AutoScalingGroupSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AutoScalingGroup] {
            self.autoScalingGroupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    @inlinable
    public func describeAutoScalingGroups(_ input: DescribeAutoScalingGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingGroupsResponse> {
        self.client.execute(action: "DescribeAutoScalingGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    @inlinable
    public func describeAutoScalingGroups(_ input: DescribeAutoScalingGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingGroupsResponse {
        try await self.client.execute(action: "DescribeAutoScalingGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    @inlinable
    public func describeAutoScalingGroups(autoScalingGroupIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingGroupsResponse> {
        self.describeAutoScalingGroups(.init(autoScalingGroupIds: autoScalingGroupIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    @inlinable
    public func describeAutoScalingGroups(autoScalingGroupIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingGroupsResponse {
        try await self.describeAutoScalingGroups(.init(autoScalingGroupIds: autoScalingGroupIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    @inlinable
    public func describeAutoScalingGroupsPaginated(_ input: DescribeAutoScalingGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutoScalingGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeAutoScalingGroups, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    @inlinable @discardableResult
    public func describeAutoScalingGroupsPaginated(_ input: DescribeAutoScalingGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutoScalingGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutoScalingGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组
    ///
    /// 本接口（DescribeAutoScalingGroups）用于查询伸缩组信息。
    ///
    /// * 可以根据伸缩组ID、伸缩组名称或者启动配置ID等信息来查询伸缩组的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的伸缩组。
    ///
    /// - Returns: `AsyncSequence`s of `AutoScalingGroup` and `DescribeAutoScalingGroupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutoScalingGroupsPaginator(_ input: DescribeAutoScalingGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutoScalingGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutoScalingGroups, logger: logger, on: eventLoop)
    }
}
