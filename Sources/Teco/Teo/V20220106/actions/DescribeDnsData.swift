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
    /// DescribeDnsData请求参数结构体
    public struct DescribeDnsDataRequest: TCRequestModel {
        /// 起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 过滤参数
        public let filters: [DnsDataFilter]?

        /// 时间粒度，默认为1分钟粒度，服务端根据时间范围自适应。
        /// 支持指定以下几种粒度：
        /// min：1分钟粒度
        /// 5min：5分钟粒度
        /// hour：1小时粒度
        /// day：天粒度
        public let interval: String?

        public init(startTime: Date, endTime: Date, filters: [DnsDataFilter]? = nil, interval: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.filters = filters
            self.interval = interval
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
            case interval = "Interval"
        }
    }

    /// DescribeDnsData返回参数结构体
    public struct DescribeDnsDataResponse: TCResponseModel {
        /// 统计曲线数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DataItem]?

        /// 时间粒度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let interval: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case interval = "Interval"
            case requestId = "RequestId"
        }
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(_ input: DescribeDnsDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnsDataResponse> {
        self.client.execute(action: "DescribeDnsData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(_ input: DescribeDnsDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsDataResponse {
        try await self.client.execute(action: "DescribeDnsData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(startTime: Date, endTime: Date, filters: [DnsDataFilter]? = nil, interval: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnsDataResponse> {
        self.describeDnsData(.init(startTime: startTime, endTime: endTime, filters: filters, interval: interval), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(startTime: Date, endTime: Date, filters: [DnsDataFilter]? = nil, interval: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsDataResponse {
        try await self.describeDnsData(.init(startTime: startTime, endTime: endTime, filters: filters, interval: interval), region: region, logger: logger, on: eventLoop)
    }
}
