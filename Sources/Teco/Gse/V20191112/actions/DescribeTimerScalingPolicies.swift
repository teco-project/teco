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

extension Gse {
    /// DescribeTimerScalingPolicies请求参数结构体
    public struct DescribeTimerScalingPoliciesRequest: TCRequestModel {
        /// 扩缩容配置服务器舰队ID
        public let fleetId: String?

        /// 定时器名称
        public let timerName: String?

        /// 定时器开始时间
        public let beginTime: String?

        /// 定时器结束时间
        public let endTime: String?

        /// 分页偏移量
        public let offset: Int64?

        /// 页大小
        public let limit: Int64?

        public init(fleetId: String? = nil, timerName: String? = nil, beginTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.fleetId = fleetId
            self.timerName = timerName
            self.beginTime = beginTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case timerName = "TimerName"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeTimerScalingPolicies返回参数结构体
    public struct DescribeTimerScalingPoliciesResponse: TCResponseModel {
        /// 定时器扩缩容策略配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timerScalingPolicies: [TimerScalingPolicy]?

        /// 定时器总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case timerScalingPolicies = "TimerScalingPolicies"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询定时器列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeTimerScalingPolicies）用于查询fleet下的定时器列表。可以通过fleetid，定时器名称分页查询。
    @inlinable
    public func describeTimerScalingPolicies(_ input: DescribeTimerScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimerScalingPoliciesResponse> {
        self.client.execute(action: "DescribeTimerScalingPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询定时器列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeTimerScalingPolicies）用于查询fleet下的定时器列表。可以通过fleetid，定时器名称分页查询。
    @inlinable
    public func describeTimerScalingPolicies(_ input: DescribeTimerScalingPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimerScalingPoliciesResponse {
        try await self.client.execute(action: "DescribeTimerScalingPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询定时器列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeTimerScalingPolicies）用于查询fleet下的定时器列表。可以通过fleetid，定时器名称分页查询。
    @inlinable
    public func describeTimerScalingPolicies(fleetId: String? = nil, timerName: String? = nil, beginTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimerScalingPoliciesResponse> {
        self.describeTimerScalingPolicies(DescribeTimerScalingPoliciesRequest(fleetId: fleetId, timerName: timerName, beginTime: beginTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询定时器列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeTimerScalingPolicies）用于查询fleet下的定时器列表。可以通过fleetid，定时器名称分页查询。
    @inlinable
    public func describeTimerScalingPolicies(fleetId: String? = nil, timerName: String? = nil, beginTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimerScalingPoliciesResponse {
        try await self.describeTimerScalingPolicies(DescribeTimerScalingPoliciesRequest(fleetId: fleetId, timerName: timerName, beginTime: beginTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
