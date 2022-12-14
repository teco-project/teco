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
    /// DescribeDnsData请求参数结构体
    public struct DescribeDnsDataRequest: TCRequestModel {
        /// 起始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
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
            self.startTime = startTime
            self.endTime = endTime
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
    public func describeDnsData(_ input: DescribeDnsDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDnsDataResponse > {
        self.client.execute(action: "DescribeDnsData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(_ input: DescribeDnsDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsDataResponse {
        try await self.client.execute(action: "DescribeDnsData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(startTime: Date, endTime: Date, filters: [DnsDataFilter]? = nil, interval: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDnsDataResponse > {
        self.describeDnsData(DescribeDnsDataRequest(startTime: startTime, endTime: endTime, filters: filters, interval: interval), logger: logger, on: eventLoop)
    }

    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(startTime: Date, endTime: Date, filters: [DnsDataFilter]? = nil, interval: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsDataResponse {
        try await self.describeDnsData(DescribeDnsDataRequest(startTime: startTime, endTime: endTime, filters: filters, interval: interval), logger: logger, on: eventLoop)
    }
}
