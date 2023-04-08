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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension As {
    /// DescribeAutoScalingActivities请求参数结构体
    public struct DescribeAutoScalingActivitiesRequest: TCPaginatedRequest {
        /// 按照一个或者多个伸缩活动ID查询。伸缩活动ID形如：`asa-5l2ejpfo`。每次请求的上限为100。参数不支持同时指定`ActivityIds`和`Filters`。
        public let activityIds: [String]?

        /// 过滤条件。
        /// <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        /// <li> activity-status-code - String - 是否必填：否 -（过滤条件）按照伸缩活动状态过滤。（INIT：初始化中|RUNNING：运行中|SUCCESSFUL：活动成功|PARTIALLY_SUCCESSFUL：活动部分成功|FAILED：活动失败|CANCELLED：活动取消）</li>
        /// <li> activity-type - String - 是否必填：否 -（过滤条件）按照伸缩活动类型过滤。（SCALE_OUT：扩容活动|SCALE_IN：缩容活动|ATTACH_INSTANCES：添加实例|REMOVE_INSTANCES：销毁实例|DETACH_INSTANCES：移出实例|TERMINATE_INSTANCES_UNEXPECTEDLY：实例在CVM控制台被销毁|REPLACE_UNHEALTHY_INSTANCE：替换不健康实例|UPDATE_LOAD_BALANCERS：更新负载均衡器）</li>
        /// <li> activity-id - String - 是否必填：否 -（过滤条件）按照伸缩活动ID过滤。</li>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`ActivityIds`和`Filters`。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        /// 伸缩活动最早的开始时间，如果指定了ActivityIds，此参数将被忽略。取值为`UTC`时间，按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ssZ`。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 伸缩活动最晚的结束时间，如果指定了ActivityIds，此参数将被忽略。取值为`UTC`时间，按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ssZ`。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        public init(activityIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil) {
            self.activityIds = activityIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case activityIds = "ActivityIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAutoScalingActivitiesResponse) -> DescribeAutoScalingActivitiesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAutoScalingActivitiesRequest(activityIds: self.activityIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeAutoScalingActivities返回参数结构体
    public struct DescribeAutoScalingActivitiesResponse: TCPaginatedResponse {
        /// 符合条件的伸缩活动数量。
        public let totalCount: UInt64

        /// 符合条件的伸缩活动信息集合。
        public let activitySet: [Activity]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case activitySet = "ActivitySet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Activity] {
            self.activitySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(_ input: DescribeAutoScalingActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingActivitiesResponse> {
        self.client.execute(action: "DescribeAutoScalingActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(_ input: DescribeAutoScalingActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingActivitiesResponse {
        try await self.client.execute(action: "DescribeAutoScalingActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(activityIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingActivitiesResponse> {
        self.describeAutoScalingActivities(.init(activityIds: activityIds, filters: filters, limit: limit, offset: offset, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(activityIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingActivitiesResponse {
        try await self.describeAutoScalingActivities(.init(activityIds: activityIds, filters: filters, limit: limit, offset: offset, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivitiesPaginated(_ input: DescribeAutoScalingActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Activity])> {
        self.client.paginate(input: input, region: region, command: self.describeAutoScalingActivities, logger: logger, on: eventLoop)
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable @discardableResult
    public func describeAutoScalingActivitiesPaginated(_ input: DescribeAutoScalingActivitiesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutoScalingActivitiesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutoScalingActivities, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    ///
    /// - Returns: `AsyncSequence`s of `Activity` and `DescribeAutoScalingActivitiesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutoScalingActivitiesPaginator(_ input: DescribeAutoScalingActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutoScalingActivitiesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutoScalingActivities, logger: logger, on: eventLoop)
    }
}
