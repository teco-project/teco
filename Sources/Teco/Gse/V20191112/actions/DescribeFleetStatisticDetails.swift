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
    /// DescribeFleetStatisticDetails请求参数结构体
    public struct DescribeFleetStatisticDetailsRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String?

        /// 查询开始时间，时间格式：YYYY-MM-DD hh:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginTime: Date?

        /// 查询结束时间，时间格式：YYYY-MM-DD hh:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 结果返回最大数量，最小值0，最大值100
        public let limit: UInt64?

        /// 返回结果偏移，最小值0
        public let offset: UInt64?

        public init(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.fleetId = fleetId
            self._beginTime = .init(wrappedValue: beginTime)
            self._endTime = .init(wrappedValue: endTime)
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

    /// DescribeFleetStatisticDetails返回参数结构体
    public struct DescribeFleetStatisticDetailsResponse: TCResponseModel {
        /// 服务部署统计详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailList: [FleetStatisticDetail]?

        /// 记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 统计时间类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detailList = "DetailList"
            case totalCount = "TotalCount"
            case timeType = "TimeType"
            case requestId = "RequestId"
        }
    }

    /// 查询服务部署统计详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticDetails）用于查询服务部署统计详情。
    @inlinable
    public func describeFleetStatisticDetails(_ input: DescribeFleetStatisticDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetStatisticDetailsResponse> {
        self.client.execute(action: "DescribeFleetStatisticDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务部署统计详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticDetails）用于查询服务部署统计详情。
    @inlinable
    public func describeFleetStatisticDetails(_ input: DescribeFleetStatisticDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetStatisticDetailsResponse {
        try await self.client.execute(action: "DescribeFleetStatisticDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务部署统计详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticDetails）用于查询服务部署统计详情。
    @inlinable
    public func describeFleetStatisticDetails(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetStatisticDetailsResponse> {
        self.describeFleetStatisticDetails(DescribeFleetStatisticDetailsRequest(fleetId: fleetId, beginTime: beginTime, endTime: endTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务部署统计详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetStatisticDetails）用于查询服务部署统计详情。
    @inlinable
    public func describeFleetStatisticDetails(fleetId: String? = nil, beginTime: Date? = nil, endTime: Date? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetStatisticDetailsResponse {
        try await self.describeFleetStatisticDetails(DescribeFleetStatisticDetailsRequest(fleetId: fleetId, beginTime: beginTime, endTime: endTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
