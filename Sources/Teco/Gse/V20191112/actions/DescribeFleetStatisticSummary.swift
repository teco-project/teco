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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Gse {
    /// DescribeFleetStatisticSummary请求参数结构体
    public struct DescribeFleetStatisticSummaryRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String?

        /// 查询开始时间，时间格式: YYYY-MM-DD hh:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginTime: Date?

        /// 查询结束时间，时间格式: YYYY-MM-DD hh:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        public init(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil) {
            self.fleetId = fleetId
            self._beginTime = .init(wrappedValue: beginTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeFleetStatisticSummary返回参数结构体
    public struct DescribeFleetStatisticSummaryResponse: TCResponseModel {
        /// 总时长，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalUsedTimeSeconds: String?

        /// 总流量，单位MB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalUsedFlowMegaBytes: Float?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalUsedTimeSeconds = "TotalUsedTimeSeconds"
            case totalUsedFlowMegaBytes = "TotalUsedFlowMegaBytes"
            case requestId = "RequestId"
        }
    }

    /// 查询服务部署统计汇总信息
    ///
    /// 本接口（DescribeFleetStatisticSummary）用于查询服务部署统计汇总信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetStatisticSummary(_ input: DescribeFleetStatisticSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetStatisticSummaryResponse> {
        self.client.execute(action: "DescribeFleetStatisticSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务部署统计汇总信息
    ///
    /// 本接口（DescribeFleetStatisticSummary）用于查询服务部署统计汇总信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetStatisticSummary(_ input: DescribeFleetStatisticSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetStatisticSummaryResponse {
        try await self.client.execute(action: "DescribeFleetStatisticSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务部署统计汇总信息
    ///
    /// 本接口（DescribeFleetStatisticSummary）用于查询服务部署统计汇总信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetStatisticSummary(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetStatisticSummaryResponse> {
        let input = DescribeFleetStatisticSummaryRequest(fleetId: fleetId, beginTime: beginTime, endTime: endTime)
        return self.client.execute(action: "DescribeFleetStatisticSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务部署统计汇总信息
    ///
    /// 本接口（DescribeFleetStatisticSummary）用于查询服务部署统计汇总信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetStatisticSummary(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetStatisticSummaryResponse {
        let input = DescribeFleetStatisticSummaryRequest(fleetId: fleetId, beginTime: beginTime, endTime: endTime)
        return try await self.client.execute(action: "DescribeFleetStatisticSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
