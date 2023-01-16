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

extension Teo {
    /// DescribeDDoSAttackSourceEvent请求参数结构体
    public struct DescribeDDoSAttackSourceEventRequest: TCRequestModel {
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
        /// <li>all：全部协议。</li>不填默认为: all，表示获取全部协议类型。
        public let protocolType: String?

        /// DDoS策略组集合，不填默认选择全部策略。
        public let policyIds: [Int64]?

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, protocolType: String? = nil, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.protocolType = protocolType
            self.policyIds = policyIds
            self.zoneIds = zoneIds
            self.limit = limit
            self.offset = offset
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
            case area = "Area"
        }
    }

    /// DescribeDDoSAttackSourceEvent返回参数结构体
    public struct DescribeDDoSAttackSourceEventResponse: TCResponseModel {
        /// DDoS攻击源数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DDoSAttackSourceEvent]?

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

    /// 查询DDoS攻击源列表
    ///
    /// 本接口（DescribeDDoSAttackSourceEvent）用于查询DDoS攻击源信息列表。
    @inlinable
    public func describeDDoSAttackSourceEvent(_ input: DescribeDDoSAttackSourceEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackSourceEventResponse> {
        self.client.execute(action: "DescribeDDoSAttackSourceEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击源列表
    ///
    /// 本接口（DescribeDDoSAttackSourceEvent）用于查询DDoS攻击源信息列表。
    @inlinable
    public func describeDDoSAttackSourceEvent(_ input: DescribeDDoSAttackSourceEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackSourceEventResponse {
        try await self.client.execute(action: "DescribeDDoSAttackSourceEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDoS攻击源列表
    ///
    /// 本接口（DescribeDDoSAttackSourceEvent）用于查询DDoS攻击源信息列表。
    @inlinable
    public func describeDDoSAttackSourceEvent(startTime: Date, endTime: Date, protocolType: String? = nil, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackSourceEventResponse> {
        self.describeDDoSAttackSourceEvent(DescribeDDoSAttackSourceEventRequest(startTime: startTime, endTime: endTime, protocolType: protocolType, policyIds: policyIds, zoneIds: zoneIds, limit: limit, offset: offset, area: area), logger: logger, on: eventLoop)
    }

    /// 查询DDoS攻击源列表
    ///
    /// 本接口（DescribeDDoSAttackSourceEvent）用于查询DDoS攻击源信息列表。
    @inlinable
    public func describeDDoSAttackSourceEvent(startTime: Date, endTime: Date, protocolType: String? = nil, policyIds: [Int64]? = nil, zoneIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackSourceEventResponse {
        try await self.describeDDoSAttackSourceEvent(DescribeDDoSAttackSourceEventRequest(startTime: startTime, endTime: endTime, protocolType: protocolType, policyIds: policyIds, zoneIds: zoneIds, limit: limit, offset: offset, area: area), logger: logger, on: eventLoop)
    }
}
