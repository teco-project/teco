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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dayu {
    /// DescribeCCEvList请求参数结构体
    public struct DescribeCCEvListRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 资源实例ID
        public let id: String?

        /// 资源实例的IP，当business不为basic时，如果IpList不为空则Id也必须不能为空；
        public let ipList: [String]?

        /// 一页条数，填0表示不分页
        public let limit: UInt64?

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?

        public init(business: String, startTime: Date, endTime: Date, id: String? = nil, ipList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.business = business
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.id = id
            self.ipList = ipList
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case id = "Id"
            case ipList = "IpList"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeCCEvList返回参数结构体
    public struct DescribeCCEvListResponse: TCResponse {
        /// 大禹子产品代号（shield表示棋牌盾；bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String

        /// 资源实例ID
        public let id: String

        /// 资源实例的IP列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipList: [String]?

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// CC攻击事件列表
        public let data: [CCEventRecord]

        /// 总记录数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ipList = "IpList"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取CC攻击事件列表
    @inlinable
    public func describeCCEvList(_ input: DescribeCCEvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCEvListResponse> {
        self.client.execute(action: "DescribeCCEvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC攻击事件列表
    @inlinable
    public func describeCCEvList(_ input: DescribeCCEvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCEvListResponse {
        try await self.client.execute(action: "DescribeCCEvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC攻击事件列表
    @inlinable
    public func describeCCEvList(business: String, startTime: Date, endTime: Date, id: String? = nil, ipList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCEvListResponse> {
        self.describeCCEvList(.init(business: business, startTime: startTime, endTime: endTime, id: id, ipList: ipList, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC攻击事件列表
    @inlinable
    public func describeCCEvList(business: String, startTime: Date, endTime: Date, id: String? = nil, ipList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCEvListResponse {
        try await self.describeCCEvList(.init(business: business, startTime: startTime, endTime: endTime, id: id, ipList: ipList, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
