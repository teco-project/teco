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

extension Vpc {
    /// DescribeCrossBorderFlowMonitor请求参数结构体
    public struct DescribeCrossBorderFlowMonitorRequest: TCRequest {
        /// 源地域。
        public let sourceRegion: String

        /// 目的地域。
        public let destinationRegion: String

        /// 云联网ID。
        public let ccnId: String

        /// 云联网所属账号。
        public let ccnUin: String

        /// 时间粒度。单位为:秒，如60为60s的时间粒度
        public let period: Int64

        /// 开始时间。
        public let startTime: String

        /// 结束时间。
        public let endTime: String

        public init(sourceRegion: String, destinationRegion: String, ccnId: String, ccnUin: String, period: Int64, startTime: String, endTime: String) {
            self.sourceRegion = sourceRegion
            self.destinationRegion = destinationRegion
            self.ccnId = ccnId
            self.ccnUin = ccnUin
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case sourceRegion = "SourceRegion"
            case destinationRegion = "DestinationRegion"
            case ccnId = "CcnId"
            case ccnUin = "CcnUin"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeCrossBorderFlowMonitor返回参数结构体
    public struct DescribeCrossBorderFlowMonitorResponse: TCResponse {
        /// 云联网跨境带宽监控数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let crossBorderFlowMonitorData: [CrossBorderFlowMonitorData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case crossBorderFlowMonitorData = "CrossBorderFlowMonitorData"
            case requestId = "RequestId"
        }
    }

    /// 查询跨境带宽监控数据
    ///
    /// 本接口（DescribeCrossBorderFlowMonitor）用于查询跨境带宽监控数据，该接口目前只提供给服务商联通使用。
    @inlinable
    public func describeCrossBorderFlowMonitor(_ input: DescribeCrossBorderFlowMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderFlowMonitorResponse> {
        self.client.execute(action: "DescribeCrossBorderFlowMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询跨境带宽监控数据
    ///
    /// 本接口（DescribeCrossBorderFlowMonitor）用于查询跨境带宽监控数据，该接口目前只提供给服务商联通使用。
    @inlinable
    public func describeCrossBorderFlowMonitor(_ input: DescribeCrossBorderFlowMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderFlowMonitorResponse {
        try await self.client.execute(action: "DescribeCrossBorderFlowMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询跨境带宽监控数据
    ///
    /// 本接口（DescribeCrossBorderFlowMonitor）用于查询跨境带宽监控数据，该接口目前只提供给服务商联通使用。
    @inlinable
    public func describeCrossBorderFlowMonitor(sourceRegion: String, destinationRegion: String, ccnId: String, ccnUin: String, period: Int64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderFlowMonitorResponse> {
        self.describeCrossBorderFlowMonitor(.init(sourceRegion: sourceRegion, destinationRegion: destinationRegion, ccnId: ccnId, ccnUin: ccnUin, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询跨境带宽监控数据
    ///
    /// 本接口（DescribeCrossBorderFlowMonitor）用于查询跨境带宽监控数据，该接口目前只提供给服务商联通使用。
    @inlinable
    public func describeCrossBorderFlowMonitor(sourceRegion: String, destinationRegion: String, ccnId: String, ccnUin: String, period: Int64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderFlowMonitorResponse {
        try await self.describeCrossBorderFlowMonitor(.init(sourceRegion: sourceRegion, destinationRegion: destinationRegion, ccnId: ccnId, ccnUin: ccnUin, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
