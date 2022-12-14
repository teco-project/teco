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

extension Gse {
    /// DescribeFleetStatisticFlows请求参数结构体
    public struct DescribeFleetStatisticFlowsRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String?

        /// 查询开始时间，时间格式：YYYY-MM-DD hh:mm:ss
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var beginTime: Date?

        /// 查询结束时间，时间格式：YYYY-MM-DD hh:mm:ss
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date?

        /// 结果返回最大数量，最小值0，最大值100
        public let limit: UInt64?

        /// 返回结果偏移，最小值0
        public let offset: UInt64?

        public init(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.fleetId = fleetId
            self.beginTime = beginTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeFleetStatisticFlows返回参数结构体
    public struct DescribeFleetStatisticFlowsResponse: TCResponseModel {
        /// 流量统计列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usedFlowList: [FleetStatisticFlows]?

        /// 时长统计列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usedTimeList: [FleetStatisticTimes]?

        /// 记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 统计时间类型，取值：小时和天
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case usedFlowList = "UsedFlowList"
            case usedTimeList = "UsedTimeList"
            case totalCount = "TotalCount"
            case timeType = "TimeType"
            case requestId = "RequestId"
        }
    }

    /// 查询服务部署统计用量
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticFlows）用于查询服务部署统计用量。
    @inlinable
    public func describeFleetStatisticFlows(_ input: DescribeFleetStatisticFlowsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFleetStatisticFlowsResponse > {
        self.client.execute(action: "DescribeFleetStatisticFlows", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务部署统计用量
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticFlows）用于查询服务部署统计用量。
    @inlinable
    public func describeFleetStatisticFlows(_ input: DescribeFleetStatisticFlowsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetStatisticFlowsResponse {
        try await self.client.execute(action: "DescribeFleetStatisticFlows", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务部署统计用量
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticFlows）用于查询服务部署统计用量。
    @inlinable
    public func describeFleetStatisticFlows(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFleetStatisticFlowsResponse > {
        self.describeFleetStatisticFlows(DescribeFleetStatisticFlowsRequest(fleetId: fleetId, beginTime: beginTime, endTime: endTime, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }

    /// 查询服务部署统计用量
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticFlows）用于查询服务部署统计用量。
    @inlinable
    public func describeFleetStatisticFlows(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetStatisticFlowsResponse {
        try await self.describeFleetStatisticFlows(DescribeFleetStatisticFlowsRequest(fleetId: fleetId, beginTime: beginTime, endTime: endTime, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
