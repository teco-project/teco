//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension As {
    /// DescribeAutoScalingActivities请求参数结构体
    public struct DescribeAutoScalingActivitiesRequest: TCRequestModel {
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
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date?
        
        /// 伸缩活动最晚的结束时间，如果指定了ActivityIds，此参数将被忽略。取值为`UTC`时间，按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ssZ`。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date?
        
        public init (activityIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil) {
            self.activityIds = activityIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case activityIds = "ActivityIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeAutoScalingActivities返回参数结构体
    public struct DescribeAutoScalingActivitiesResponse: TCResponseModel {
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
    }
    
    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(_ input: DescribeAutoScalingActivitiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAutoScalingActivitiesResponse > {
        self.client.execute(action: "DescribeAutoScalingActivities", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(_ input: DescribeAutoScalingActivitiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingActivitiesResponse {
        try await self.client.execute(action: "DescribeAutoScalingActivities", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(activityIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAutoScalingActivitiesResponse > {
        self.describeAutoScalingActivities(DescribeAutoScalingActivitiesRequest(activityIds: activityIds, filters: filters, limit: limit, offset: offset, startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
    
    /// 查询伸缩活动
    ///
    /// 本接口（DescribeAutoScalingActivities）用于查询伸缩组的伸缩活动记录。
    @inlinable
    public func describeAutoScalingActivities(activityIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingActivitiesResponse {
        try await self.describeAutoScalingActivities(DescribeAutoScalingActivitiesRequest(activityIds: activityIds, filters: filters, limit: limit, offset: offset, startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
}
