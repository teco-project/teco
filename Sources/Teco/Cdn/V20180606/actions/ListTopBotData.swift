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

extension Cdn {
    /// ListTopBotData请求参数结构体
    public struct ListTopBotDataRequest: TCRequestModel {
        /// 获取Top量，取值范围[1-10]
        public let topCount: Int64

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// session表示查询BOT会话的Top信息
        /// ip表示查询BOT客户端IP的Top信息
        ///
        /// 不填代表获取会话信息
        public let metric: String?

        /// 域名，仅当Metric=ip时有效，不填写表示使用Domains参数
        public let domain: String?

        /// 域名，仅当Metric=ip，并且Domain为空时有效，不填写表示获取AppID信息
        public let domains: [String]?

        public init(topCount: Int64, startTime: Date, endTime: Date, metric: String? = nil, domain: String? = nil, domains: [String]? = nil) {
            self.topCount = topCount
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metric = metric
            self.domain = domain
            self.domains = domains
        }

        enum CodingKeys: String, CodingKey {
            case topCount = "TopCount"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metric = "Metric"
            case domain = "Domain"
            case domains = "Domains"
        }
    }

    /// ListTopBotData返回参数结构体
    public struct ListTopBotDataResponse: TCResponseModel {
        /// 域名BOT次数列表
        public let data: [DomainBotCount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取Bot攻击的Top信息
    @inlinable
    public func listTopBotData(_ input: ListTopBotDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopBotDataResponse> {
        self.client.execute(action: "ListTopBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Bot攻击的Top信息
    @inlinable
    public func listTopBotData(_ input: ListTopBotDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopBotDataResponse {
        try await self.client.execute(action: "ListTopBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Bot攻击的Top信息
    @inlinable
    public func listTopBotData(topCount: Int64, startTime: Date, endTime: Date, metric: String? = nil, domain: String? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopBotDataResponse> {
        let input = ListTopBotDataRequest(topCount: topCount, startTime: startTime, endTime: endTime, metric: metric, domain: domain, domains: domains)
        return self.client.execute(action: "ListTopBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Bot攻击的Top信息
    @inlinable
    public func listTopBotData(topCount: Int64, startTime: Date, endTime: Date, metric: String? = nil, domain: String? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopBotDataResponse {
        let input = ListTopBotDataRequest(topCount: topCount, startTime: startTime, endTime: endTime, metric: metric, domain: domain, domains: domains)
        return try await self.client.execute(action: "ListTopBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
