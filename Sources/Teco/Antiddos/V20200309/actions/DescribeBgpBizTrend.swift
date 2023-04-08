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
    /// DescribeBgpBizTrend请求参数结构体
    public struct DescribeBgpBizTrendRequest: TCRequestModel {
        /// 大禹子产品代号（bgp-multip表示高防包）
        public let business: String

        /// 统计开始时间。 例：“2020-09-22 00:00:00”
        public let startTime: String

        /// 统计结束时间。 例：“2020-09-22 00:00:00”
        public let endTime: String

        /// 统计纬度，可取值intraffic, outtraffic, inpkg, outpkg
        public let metricName: String

        /// 资源实例ID
        public let instanceId: String

        /// 0表示固定时间，1表示自定义时间
        public let flag: UInt64

        public init(business: String, startTime: String, endTime: String, metricName: String, instanceId: String, flag: UInt64) {
            self.business = business
            self.startTime = startTime
            self.endTime = endTime
            self.metricName = metricName
            self.instanceId = instanceId
            self.flag = flag
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case instanceId = "InstanceId"
            case flag = "Flag"
        }
    }

    /// DescribeBgpBizTrend返回参数结构体
    public struct DescribeBgpBizTrendResponse: TCResponseModel {
        /// 曲线图各个时间点的值
        public let dataList: [UInt64]

        /// 曲线图取值个数
        public let total: UInt64

        /// 统计纬度
        public let metricName: String

        /// 返回数组最大值
        public let maxData: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case total = "Total"
            case metricName = "MetricName"
            case maxData = "MaxData"
            case requestId = "RequestId"
        }
    }

    /// 获取高防包流量折线图
    @inlinable
    public func describeBgpBizTrend(_ input: DescribeBgpBizTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBgpBizTrendResponse> {
        self.client.execute(action: "DescribeBgpBizTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防包流量折线图
    @inlinable
    public func describeBgpBizTrend(_ input: DescribeBgpBizTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBgpBizTrendResponse {
        try await self.client.execute(action: "DescribeBgpBizTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防包流量折线图
    @inlinable
    public func describeBgpBizTrend(business: String, startTime: String, endTime: String, metricName: String, instanceId: String, flag: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBgpBizTrendResponse> {
        self.describeBgpBizTrend(.init(business: business, startTime: startTime, endTime: endTime, metricName: metricName, instanceId: instanceId, flag: flag), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防包流量折线图
    @inlinable
    public func describeBgpBizTrend(business: String, startTime: String, endTime: String, metricName: String, instanceId: String, flag: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBgpBizTrendResponse {
        try await self.describeBgpBizTrend(.init(business: business, startTime: startTime, endTime: endTime, metricName: metricName, instanceId: instanceId, flag: flag), region: region, logger: logger, on: eventLoop)
    }
}
