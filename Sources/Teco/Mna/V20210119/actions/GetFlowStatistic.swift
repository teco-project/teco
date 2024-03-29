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

extension Mna {
    /// GetFlowStatistic请求参数结构体
    public struct GetFlowStatisticRequest: TCRequest {
        /// 设备ID
        public let deviceId: String

        /// 开始查找时间
        public let beginTime: Int64

        /// 截止时间
        public let endTime: Int64

        /// 流量种类（1：上行流量，2：下行流量）
        public let type: Int64

        /// 时间粒度（1：按小时统计，2：按天统计）
        public let timeGranularity: Int64

        public init(deviceId: String, beginTime: Int64, endTime: Int64, type: Int64, timeGranularity: Int64) {
            self.deviceId = deviceId
            self.beginTime = beginTime
            self.endTime = endTime
            self.type = type
            self.timeGranularity = timeGranularity
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case type = "Type"
            case timeGranularity = "TimeGranularity"
        }
    }

    /// GetFlowStatistic返回参数结构体
    public struct GetFlowStatisticResponse: TCResponse {
        /// 流量详细信息
        public let netDetails: [NetDetails]

        /// 查找时间段流量使用最大值（单位：byte）
        public let maxValue: Float

        /// 查找时间段流量使用平均值（单位：byte）
        public let avgValue: Float

        /// 查找时间段流量使用总量（单位：byte）
        public let totalValue: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case netDetails = "NetDetails"
            case maxValue = "MaxValue"
            case avgValue = "AvgValue"
            case totalValue = "TotalValue"
            case requestId = "RequestId"
        }
    }

    /// 获取数据流量统计数据
    ///
    /// 获取指定设备Id，指定时间点数据流量使用情况
    @inlinable
    public func getFlowStatistic(_ input: GetFlowStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFlowStatisticResponse> {
        self.client.execute(action: "GetFlowStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据流量统计数据
    ///
    /// 获取指定设备Id，指定时间点数据流量使用情况
    @inlinable
    public func getFlowStatistic(_ input: GetFlowStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFlowStatisticResponse {
        try await self.client.execute(action: "GetFlowStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据流量统计数据
    ///
    /// 获取指定设备Id，指定时间点数据流量使用情况
    @inlinable
    public func getFlowStatistic(deviceId: String, beginTime: Int64, endTime: Int64, type: Int64, timeGranularity: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFlowStatisticResponse> {
        self.getFlowStatistic(.init(deviceId: deviceId, beginTime: beginTime, endTime: endTime, type: type, timeGranularity: timeGranularity), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据流量统计数据
    ///
    /// 获取指定设备Id，指定时间点数据流量使用情况
    @inlinable
    public func getFlowStatistic(deviceId: String, beginTime: Int64, endTime: Int64, type: Int64, timeGranularity: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFlowStatisticResponse {
        try await self.getFlowStatistic(.init(deviceId: deviceId, beginTime: beginTime, endTime: endTime, type: type, timeGranularity: timeGranularity), region: region, logger: logger, on: eventLoop)
    }
}
