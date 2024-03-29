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

extension Iotvideoindustry {
    /// DescribeStatisticSummary请求参数结构体
    public struct DescribeStatisticSummaryRequest: TCRequest {
        /// 指定日期。格式【YYYY-MM-DD】
        public let date: String

        public init(date: String) {
            self.date = date
        }

        enum CodingKeys: String, CodingKey {
            case date = "Date"
        }
    }

    /// DescribeStatisticSummary返回参数结构体
    public struct DescribeStatisticSummaryResponse: TCResponse {
        /// 录制设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordingDevice: UInt64?

        /// 非录制设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nonRecordingDevice: UInt64?

        /// 观看流量总数。为直播观看流量与点播观看流量之和。单位：GB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let watchFlux: Float?

        /// 累计有效存储容量总数。单位：GB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageUsage: Float?

        /// X-P2P分享流量。单位 Byte
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let p2pFluxTotal: Float?

        /// X-P2P峰值带宽。 单位bps
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let p2pPeakValue: Float?

        /// RTMP推流路数 ( 直播推流)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livePushTotal: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordingDevice = "RecordingDevice"
            case nonRecordingDevice = "NonRecordingDevice"
            case watchFlux = "WatchFlux"
            case storageUsage = "StorageUsage"
            case p2pFluxTotal = "P2PFluxTotal"
            case p2pPeakValue = "P2PPeakValue"
            case livePushTotal = "LivePushTotal"
            case requestId = "RequestId"
        }
    }

    /// 查询统计指标概览数据
    ///
    /// 本接口(DescribeStatisticSummary)用于查询用户昨日的概览数据。
    @inlinable
    public func describeStatisticSummary(_ input: DescribeStatisticSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatisticSummaryResponse> {
        self.client.execute(action: "DescribeStatisticSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询统计指标概览数据
    ///
    /// 本接口(DescribeStatisticSummary)用于查询用户昨日的概览数据。
    @inlinable
    public func describeStatisticSummary(_ input: DescribeStatisticSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticSummaryResponse {
        try await self.client.execute(action: "DescribeStatisticSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询统计指标概览数据
    ///
    /// 本接口(DescribeStatisticSummary)用于查询用户昨日的概览数据。
    @inlinable
    public func describeStatisticSummary(date: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatisticSummaryResponse> {
        self.describeStatisticSummary(.init(date: date), region: region, logger: logger, on: eventLoop)
    }

    /// 查询统计指标概览数据
    ///
    /// 本接口(DescribeStatisticSummary)用于查询用户昨日的概览数据。
    @inlinable
    public func describeStatisticSummary(date: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticSummaryResponse {
        try await self.describeStatisticSummary(.init(date: date), region: region, logger: logger, on: eventLoop)
    }
}
