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

extension Dayu {
    /// DescribeDDoSAttackSource请求参数结构体
    public struct DescribeDDoSAttackSourceRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 一页条数，填0表示不分页
        public let limit: UInt64

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 获取指定资源的特定ip的攻击源，可选
        public let ipList: [String]?

        public init(business: String, id: String, startTime: Date, endTime: Date, limit: UInt64, offset: UInt64, ipList: [String]? = nil) {
            self.business = business
            self.id = id
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.limit = limit
            self.offset = offset
            self.ipList = ipList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case ipList = "IpList"
        }
    }

    /// DescribeDDoSAttackSource返回参数结构体
    public struct DescribeDDoSAttackSourceResponse: TCResponseModel {
        /// 总攻击源条数
        public let total: UInt64

        /// 攻击源列表
        public let attackSourceList: [DDoSAttackSourceRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case attackSourceList = "AttackSourceList"
            case requestId = "RequestId"
        }
    }

    /// 获取DDoS攻击源列表
    @inlinable
    public func describeDDoSAttackSource(_ input: DescribeDDoSAttackSourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackSourceResponse> {
        self.client.execute(action: "DescribeDDoSAttackSource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS攻击源列表
    @inlinable
    public func describeDDoSAttackSource(_ input: DescribeDDoSAttackSourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackSourceResponse {
        try await self.client.execute(action: "DescribeDDoSAttackSource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS攻击源列表
    @inlinable
    public func describeDDoSAttackSource(business: String, id: String, startTime: Date, endTime: Date, limit: UInt64, offset: UInt64, ipList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSAttackSourceResponse> {
        self.describeDDoSAttackSource(DescribeDDoSAttackSourceRequest(business: business, id: id, startTime: startTime, endTime: endTime, limit: limit, offset: offset, ipList: ipList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS攻击源列表
    @inlinable
    public func describeDDoSAttackSource(business: String, id: String, startTime: Date, endTime: Date, limit: UInt64, offset: UInt64, ipList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAttackSourceResponse {
        try await self.describeDDoSAttackSource(DescribeDDoSAttackSourceRequest(business: business, id: id, startTime: startTime, endTime: endTime, limit: limit, offset: offset, ipList: ipList), region: region, logger: logger, on: eventLoop)
    }
}
