//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeDDoSNetIpLog请求参数结构体
    public struct DescribeDDoSNetIpLogRequest: TCRequestModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 攻击开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 攻击结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        public init(business: String, id: String, startTime: Date, endTime: Date) {
            self.business = business
            self.id = id
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeDDoSNetIpLog返回参数结构体
    public struct DescribeDDoSNetIpLogResponse: TCResponseModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 攻击开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 攻击结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// IP攻击日志，KeyValue数组，Key-Value取值说明：
        /// Key为"LogTime"时，Value值为IP日志时间
        /// Key为"LogMessage"时，Value值为Ip日志内容
        public let data: [KeyValueRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP专业版资源的DDoSIP攻击日志
    @inlinable
    public func describeDDoSNetIpLog(_ input: DescribeDDoSNetIpLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetIpLogResponse> {
        self.client.execute(action: "DescribeDDoSNetIpLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoSIP攻击日志
    @inlinable
    public func describeDDoSNetIpLog(_ input: DescribeDDoSNetIpLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetIpLogResponse {
        try await self.client.execute(action: "DescribeDDoSNetIpLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP专业版资源的DDoSIP攻击日志
    @inlinable
    public func describeDDoSNetIpLog(business: String, id: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetIpLogResponse> {
        self.describeDDoSNetIpLog(DescribeDDoSNetIpLogRequest(business: business, id: id, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoSIP攻击日志
    @inlinable
    public func describeDDoSNetIpLog(business: String, id: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetIpLogResponse {
        try await self.describeDDoSNetIpLog(DescribeDDoSNetIpLogRequest(business: business, id: id, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
