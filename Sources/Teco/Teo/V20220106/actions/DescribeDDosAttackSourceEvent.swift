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
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeDDosAttackSourceEvent请求参数结构体
    public struct DescribeDDosAttackSourceEventRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 分页拉取的最大返回结果数。最大值：1000。
        public let pageSize: Int64

        /// 分页拉取的起始页号。最小值：1。
        public let pageNo: Int64

        /// ddos策略组id 集合，不填默认选择全部策略id。
        public let policyIds: [Int64]?

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 协议类型，取值有：
        /// <li>tcp ；</li>
        /// <li>udp ；</li>
        /// <li>all 。</li>
        public let protocolType: String?

        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?

        public init(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, protocolType: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.pageSize = pageSize
            self.pageNo = pageNo
            self.policyIds = policyIds
            self.zoneIds = zoneIds
            self.protocolType = protocolType
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageSize = "PageSize"
            case pageNo = "PageNo"
            case policyIds = "PolicyIds"
            case zoneIds = "ZoneIds"
            case protocolType = "ProtocolType"
            case area = "Area"
        }
    }

    /// DescribeDDosAttackSourceEvent返回参数结构体
    public struct DescribeDDosAttackSourceEventResponse: TCResponseModel {
        /// DDos攻击源数据。
        public let data: DDosAttackSourceEventData

        /// 请求响应状态，取值有：
        /// <li>1 ：失败 ；</li>
        /// <li>0 ：成功 。</li>
        public let status: Int64

        /// 请求响应信息。
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case status = "Status"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 查询DDos攻击源信息
    @inlinable
    public func describeDDosAttackSourceEvent(_ input: DescribeDDosAttackSourceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDosAttackSourceEventResponse> {
        self.client.execute(action: "DescribeDDosAttackSourceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDos攻击源信息
    @inlinable
    public func describeDDosAttackSourceEvent(_ input: DescribeDDosAttackSourceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosAttackSourceEventResponse {
        try await self.client.execute(action: "DescribeDDosAttackSourceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDos攻击源信息
    @inlinable
    public func describeDDosAttackSourceEvent(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, protocolType: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDosAttackSourceEventResponse> {
        self.describeDDosAttackSourceEvent(.init(startTime: startTime, endTime: endTime, pageSize: pageSize, pageNo: pageNo, policyIds: policyIds, zoneIds: zoneIds, protocolType: protocolType, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDos攻击源信息
    @inlinable
    public func describeDDosAttackSourceEvent(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, protocolType: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosAttackSourceEventResponse {
        try await self.describeDDosAttackSourceEvent(.init(startTime: startTime, endTime: endTime, pageSize: pageSize, pageNo: pageNo, policyIds: policyIds, zoneIds: zoneIds, protocolType: protocolType, area: area), region: region, logger: logger, on: eventLoop)
    }
}
