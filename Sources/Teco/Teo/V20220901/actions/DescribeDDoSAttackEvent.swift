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

extension Teo {
    /// DescribeDDoSAttackEvent请求参数结构体
    public struct DescribeDDoSAttackEventRequest: TCRequestModel {
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

        /// 协议类型，取值有：
        /// <li>tcp：tcp协议；</li>
        /// <li>udp：udp协议；</li>
        /// <li>all：全部协议。</li>默认为: all，表示获取全部协议类型。
        public let protocolType: String?

        /// ddos策略组集合，不填默认选择全部策略。
        public let policyIds: [Int64]?

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 是否展示详细信息。
        public let showDetail: Bool?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, protocolType: String? = nil, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, showDetail: Bool? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.protocolType = protocolType
            self.policyIds = policyIds
            self.zoneIds = zoneIds
            self.limit = limit
            self.offset = offset
            self.showDetail = showDetail
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case protocolType = "ProtocolType"
            case policyIds = "PolicyIds"
            case zoneIds = "ZoneIds"
            case limit = "Limit"
            case offset = "Offset"
            case showDetail = "ShowDetail"
            case area = "Area"
        }
    }

    /// DescribeDDoSAttackEvent返回参数结构体
    public struct DescribeDDoSAttackEventResponse: TCResponseModel {
        /// DDOS攻击事件数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DDoSAttackEvent]?

        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询DDoS攻击事件列表
    ///
    /// 本接口（DescribeDDoSAttackEvent）用于查询DDoS攻击事件列表。
    @inlinable
    public func describeDDoSAttackEvent(_ input: DescribeDDoSAttackEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackEventResponse> {
        self.client.execute(action: "DescribeDDoSAttackEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击事件列表
    ///
    /// 本接口（DescribeDDoSAttackEvent）用于查询DDoS攻击事件列表。
    @inlinable
    public func describeDDoSAttackEvent(_ input: DescribeDDoSAttackEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackEventResponse {
        try await self.client.execute(action: "DescribeDDoSAttackEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDoS攻击事件列表
    ///
    /// 本接口（DescribeDDoSAttackEvent）用于查询DDoS攻击事件列表。
    @inlinable
    public func describeDDoSAttackEvent(startTime: Date, endTime: Date, protocolType: String? = nil, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, showDetail: Bool? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackEventResponse> {
        self.describeDDoSAttackEvent(DescribeDDoSAttackEventRequest(startTime: startTime, endTime: endTime, protocolType: protocolType, policyIds: policyIds, zoneIds: zoneIds, limit: limit, offset: offset, showDetail: showDetail, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击事件列表
    ///
    /// 本接口（DescribeDDoSAttackEvent）用于查询DDoS攻击事件列表。
    @inlinable
    public func describeDDoSAttackEvent(startTime: Date, endTime: Date, protocolType: String? = nil, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, showDetail: Bool? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackEventResponse {
        try await self.describeDDoSAttackEvent(DescribeDDoSAttackEventRequest(startTime: startTime, endTime: endTime, protocolType: protocolType, policyIds: policyIds, zoneIds: zoneIds, limit: limit, offset: offset, showDetail: showDetail, area: area), region: region, logger: logger, on: eventLoop)
    }
}
