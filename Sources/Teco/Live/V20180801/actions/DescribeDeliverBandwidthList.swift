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

extension Live {
    /// DescribeDeliverBandwidthList请求参数结构体
    public struct DescribeDeliverBandwidthListRequest: TCRequestModel {
        /// 起始时间，格式为%Y-%m-%d %H:%M:%S。
        public let startTime: String

        /// 结束时间，格式为%Y-%m-%d %H:%M:%S，支持最近三个月的数据查询，时间跨度最大是1个月。
        public let endTime: String

        public init(startTime: String, endTime: String) {
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeDeliverBandwidthList返回参数结构体
    public struct DescribeDeliverBandwidthListResponse: TCResponseModel {
        /// 转推计费带宽数据
        public let dataInfoList: [BandwidthInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询直播转推计费带宽
    ///
    /// 查询直播转推计费带宽，查询时间范围最大支持3个月内的数据，时间跨度最长31天。
    @inlinable
    public func describeDeliverBandwidthList(_ input: DescribeDeliverBandwidthListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliverBandwidthListResponse> {
        self.client.execute(action: "DescribeDeliverBandwidthList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播转推计费带宽
    ///
    /// 查询直播转推计费带宽，查询时间范围最大支持3个月内的数据，时间跨度最长31天。
    @inlinable
    public func describeDeliverBandwidthList(_ input: DescribeDeliverBandwidthListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliverBandwidthListResponse {
        try await self.client.execute(action: "DescribeDeliverBandwidthList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播转推计费带宽
    ///
    /// 查询直播转推计费带宽，查询时间范围最大支持3个月内的数据，时间跨度最长31天。
    @inlinable
    public func describeDeliverBandwidthList(startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliverBandwidthListResponse> {
        self.describeDeliverBandwidthList(.init(startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播转推计费带宽
    ///
    /// 查询直播转推计费带宽，查询时间范围最大支持3个月内的数据，时间跨度最长31天。
    @inlinable
    public func describeDeliverBandwidthList(startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliverBandwidthListResponse {
        try await self.describeDeliverBandwidthList(.init(startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
