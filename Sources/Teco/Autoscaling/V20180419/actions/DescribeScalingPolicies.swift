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

extension As {
    /// DescribeScalingPolicies请求参数结构体
    public struct DescribeScalingPoliciesRequest: TCPaginatedRequest {
        /// 按照一个或者多个告警策略ID查询。告警策略ID形如：asp-i9vkg894。每次请求的实例的上限为100。参数不支持同时指定`AutoScalingPolicyIds`和`Filters`。
        public let autoScalingPolicyIds: [String]?

        /// 过滤条件。
        /// <li> auto-scaling-policy-id - String - 是否必填：否 -（过滤条件）按照告警策略ID过滤。</li>
        /// <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        /// <li> scaling-policy-name - String - 是否必填：否 -（过滤条件）按照告警策略名称过滤。</li>
        /// <li> scaling-policy-type - String - 是否必填：否 -（过滤条件）按照告警策略类型过滤，取值范围为SIMPLE，TARGET_TRACKING。</li>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AutoScalingPolicyIds`和`Filters`。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(autoScalingPolicyIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.autoScalingPolicyIds = autoScalingPolicyIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingPolicyIds = "AutoScalingPolicyIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScalingPoliciesResponse) -> DescribeScalingPoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScalingPoliciesRequest(autoScalingPolicyIds: self.autoScalingPolicyIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeScalingPolicies返回参数结构体
    public struct DescribeScalingPoliciesResponse: TCPaginatedResponse {
        /// 弹性伸缩告警触发策略详细信息列表。
        public let scalingPolicySet: [ScalingPolicy]

        /// 符合条件的通知数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scalingPolicySet = "ScalingPolicySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScalingPolicy`` list from the paginated response.
        public func getItems() -> [ScalingPolicy] {
            self.scalingPolicySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    @inlinable
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPoliciesResponse> {
        self.client.execute(action: "DescribeScalingPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    @inlinable
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPoliciesResponse {
        try await self.client.execute(action: "DescribeScalingPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    @inlinable
    public func describeScalingPolicies(autoScalingPolicyIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPoliciesResponse> {
        self.describeScalingPolicies(.init(autoScalingPolicyIds: autoScalingPolicyIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    @inlinable
    public func describeScalingPolicies(autoScalingPolicyIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPoliciesResponse {
        try await self.describeScalingPolicies(.init(autoScalingPolicyIds: autoScalingPolicyIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    @inlinable
    public func describeScalingPoliciesPaginated(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ScalingPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeScalingPolicies, logger: logger, on: eventLoop)
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    @inlinable @discardableResult
    public func describeScalingPoliciesPaginated(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScalingPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScalingPolicies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询告警触发策略
    ///
    /// 本接口（DescribeScalingPolicies）用于查询告警触发策略。
    ///
    /// - Returns: `AsyncSequence`s of `ScalingPolicy` and `DescribeScalingPoliciesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScalingPoliciesPaginator(_ input: DescribeScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScalingPoliciesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScalingPolicies, logger: logger, on: eventLoop)
    }
}
