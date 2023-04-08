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

extension Iotvideoindustry {
    /// DescribeStatisticDetails请求参数结构体
    public struct DescribeStatisticDetailsRequest: TCRequestModel {
        /// 开始日期，格式【YYYY-MM-DD】
        public let startDate: String

        /// 结束日期，格式【YYYY-MM-DD】
        public let endDate: String

        /// 统计项。取值范围：
        /// 1.录制设备数：RecordingDevice
        /// 2.非录制设备数：NonRecordingDevice
        /// 3.观看流量总数：WatchFlux
        /// 4.已用存储容量总数：StorageUsage
        /// 5. X-P2P分享流量: P2PFluxTotal
        /// 6. X-P2P峰值带宽: P2PPeakValue
        /// 7. RTMP推流路数(直播推流): LivePushTotal
        public let statisticField: String

        public init(startDate: String, endDate: String, statisticField: String) {
            self.startDate = startDate
            self.endDate = endDate
            self.statisticField = statisticField
        }

        enum CodingKeys: String, CodingKey {
            case startDate = "StartDate"
            case endDate = "EndDate"
            case statisticField = "StatisticField"
        }
    }

    /// DescribeStatisticDetails返回参数结构体
    public struct DescribeStatisticDetailsResponse: TCResponseModel {
        /// 统计详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [StatisticItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询指定统计项详情
    ///
    /// 本接口(DescribeStatisticDetails)用于查询指定统计项详情，返回结果按天为单位聚合，支持的最大时间查询范围为31天。
    @inlinable
    public func describeStatisticDetails(_ input: DescribeStatisticDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatisticDetailsResponse> {
        self.client.execute(action: "DescribeStatisticDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定统计项详情
    ///
    /// 本接口(DescribeStatisticDetails)用于查询指定统计项详情，返回结果按天为单位聚合，支持的最大时间查询范围为31天。
    @inlinable
    public func describeStatisticDetails(_ input: DescribeStatisticDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticDetailsResponse {
        try await self.client.execute(action: "DescribeStatisticDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定统计项详情
    ///
    /// 本接口(DescribeStatisticDetails)用于查询指定统计项详情，返回结果按天为单位聚合，支持的最大时间查询范围为31天。
    @inlinable
    public func describeStatisticDetails(startDate: String, endDate: String, statisticField: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatisticDetailsResponse> {
        self.describeStatisticDetails(.init(startDate: startDate, endDate: endDate, statisticField: statisticField), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定统计项详情
    ///
    /// 本接口(DescribeStatisticDetails)用于查询指定统计项详情，返回结果按天为单位聚合，支持的最大时间查询范围为31天。
    @inlinable
    public func describeStatisticDetails(startDate: String, endDate: String, statisticField: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticDetailsResponse {
        try await self.describeStatisticDetails(.init(startDate: startDate, endDate: endDate, statisticField: statisticField), region: region, logger: logger, on: eventLoop)
    }
}
