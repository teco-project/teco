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
    /// DescribeWebProtectionAttackEvents请求参数结构体
    public struct DescribeWebProtectionAttackEventsRequest: TCRequestModel {
        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 条数
        public let pageSize: Int64

        /// 当前页
        public let pageNo: Int64

        /// 域名
        public let domains: [String]?

        /// 站点集合
        public let zoneIds: [String]?

        public init(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, domains: [String]? = nil, zoneIds: [String]? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.pageSize = pageSize
            self.pageNo = pageNo
            self.domains = domains
            self.zoneIds = zoneIds
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageSize = "PageSize"
            case pageNo = "PageNo"
            case domains = "Domains"
            case zoneIds = "ZoneIds"
        }
    }

    /// DescribeWebProtectionAttackEvents返回参数结构体
    public struct DescribeWebProtectionAttackEventsResponse: TCResponseModel {
        /// DDos攻击事件数据
        public let data: CCInterceptEventData

        /// 状态，1:失败，0:成功
        public let status: Int64

        /// 返回消息
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

    /// 查询web防护攻击事件
    @inlinable
    public func describeWebProtectionAttackEvents(_ input: DescribeWebProtectionAttackEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebProtectionAttackEventsResponse> {
        self.client.execute(action: "DescribeWebProtectionAttackEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询web防护攻击事件
    @inlinable
    public func describeWebProtectionAttackEvents(_ input: DescribeWebProtectionAttackEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebProtectionAttackEventsResponse {
        try await self.client.execute(action: "DescribeWebProtectionAttackEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询web防护攻击事件
    @inlinable
    public func describeWebProtectionAttackEvents(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, domains: [String]? = nil, zoneIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebProtectionAttackEventsResponse> {
        self.describeWebProtectionAttackEvents(.init(startTime: startTime, endTime: endTime, pageSize: pageSize, pageNo: pageNo, domains: domains, zoneIds: zoneIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询web防护攻击事件
    @inlinable
    public func describeWebProtectionAttackEvents(startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, domains: [String]? = nil, zoneIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebProtectionAttackEventsResponse {
        try await self.describeWebProtectionAttackEvents(.init(startTime: startTime, endTime: endTime, pageSize: pageSize, pageNo: pageNo, domains: domains, zoneIds: zoneIds), region: region, logger: logger, on: eventLoop)
    }
}
