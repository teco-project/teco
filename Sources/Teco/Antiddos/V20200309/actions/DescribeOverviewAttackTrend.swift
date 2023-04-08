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

extension Antiddos {
    /// DescribeOverviewAttackTrend请求参数结构体
    public struct DescribeOverviewAttackTrendRequest: TCRequestModel {
        /// 攻击类型，取值ddos， cc
        public let type: String

        /// 纬度，当前仅支持attackcount
        public let dimension: String

        /// 周期，当前仅支持86400
        public let period: UInt64

        /// 防护概览攻击趋势开始时间
        public let startTime: String

        /// 防护概览攻击趋势结束时间
        public let endTime: String

        public init(type: String, dimension: String, period: UInt64, startTime: String, endTime: String) {
            self.type = type
            self.dimension = dimension
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case dimension = "Dimension"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeOverviewAttackTrend返回参数结构体
    public struct DescribeOverviewAttackTrendResponse: TCResponseModel {
        /// 攻击类型
        public let type: String

        /// 防护概览攻击趋势起始时间
        public let startTime: String

        /// 防护概览攻击趋势结束时间
        public let endTime: String

        /// 周期
        public let period: UInt64

        /// 每个周期点的攻击次数
        public let data: [UInt64]

        /// 包含的周期点数
        public let count: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
            case data = "Data"
            case count = "Count"
            case requestId = "RequestId"
        }
    }

    /// 拉取防护概览攻击趋势
    @inlinable
    public func describeOverviewAttackTrend(_ input: DescribeOverviewAttackTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewAttackTrendResponse> {
        self.client.execute(action: "DescribeOverviewAttackTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取防护概览攻击趋势
    @inlinable
    public func describeOverviewAttackTrend(_ input: DescribeOverviewAttackTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewAttackTrendResponse {
        try await self.client.execute(action: "DescribeOverviewAttackTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取防护概览攻击趋势
    @inlinable
    public func describeOverviewAttackTrend(type: String, dimension: String, period: UInt64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewAttackTrendResponse> {
        self.describeOverviewAttackTrend(.init(type: type, dimension: dimension, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取防护概览攻击趋势
    @inlinable
    public func describeOverviewAttackTrend(type: String, dimension: String, period: UInt64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewAttackTrendResponse {
        try await self.describeOverviewAttackTrend(.init(type: type, dimension: dimension, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
