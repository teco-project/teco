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

extension Cdn {
    /// DescribeCcData请求参数结构体
    public struct DescribeCcDataRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        public let startTime: String

        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        public let endTime: String

        /// 时间粒度，支持以下几种模式：
        /// min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据
        /// 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        /// hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        /// day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        public let interval: String?

        /// 指定域名查询，为空时，表示查询账号级别数据
        public let domain: String?

        /// 执行动作，取值为：intercept/redirect/observe
        /// 分别表示：拦截/重定向/观察
        /// 为空时，表示所有执行动作
        public let actionName: String?

        /// 指定域名列表查询，为空时，表示查询账号级别数据
        public let domains: [String]?

        /// cdn表示CDN数据，默认值
        /// ecdn表示ECDN数据
        public let source: String?

        /// 地域：mainland或overseas，表示国内或海外，不填写默认表示国内
        public let area: String?

        public init(startTime: String, endTime: String, interval: String? = nil, domain: String? = nil, actionName: String? = nil, domains: [String]? = nil, source: String? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.interval = interval
            self.domain = domain
            self.actionName = actionName
            self.domains = domains
            self.source = source
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case interval = "Interval"
            case domain = "Domain"
            case actionName = "ActionName"
            case domains = "Domains"
            case source = "Source"
            case area = "Area"
        }
    }

    /// DescribeCcData返回参数结构体
    public struct DescribeCcDataResponse: TCResponseModel {
        /// 指定执行动作的请求数数据，如果指定类型为空，表示所有类型的请求总数
        public let data: [TimestampData]

        /// 粒度
        public let interval: String

        /// 执行动作为拦截类型QPS统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let interceptQpsData: [TimestampData]?

        /// 执行动作为重定向类型QPS统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let redirectQpsData: [TimestampData]?

        /// 执行动作为观察类型QPS统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let observeQpsData: [TimestampData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case interval = "Interval"
            case interceptQpsData = "InterceptQpsData"
            case redirectQpsData = "RedirectQpsData"
            case observeQpsData = "ObserveQpsData"
            case requestId = "RequestId"
        }
    }

    /// CC统计数据查询
    @inlinable
    public func describeCcData(_ input: DescribeCcDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcDataResponse> {
        self.client.execute(action: "DescribeCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// CC统计数据查询
    @inlinable
    public func describeCcData(_ input: DescribeCcDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcDataResponse {
        try await self.client.execute(action: "DescribeCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// CC统计数据查询
    @inlinable
    public func describeCcData(startTime: String, endTime: String, interval: String? = nil, domain: String? = nil, actionName: String? = nil, domains: [String]? = nil, source: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcDataResponse> {
        let input = DescribeCcDataRequest(startTime: startTime, endTime: endTime, interval: interval, domain: domain, actionName: actionName, domains: domains, source: source, area: area)
        return self.client.execute(action: "DescribeCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// CC统计数据查询
    @inlinable
    public func describeCcData(startTime: String, endTime: String, interval: String? = nil, domain: String? = nil, actionName: String? = nil, domains: [String]? = nil, source: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcDataResponse {
        let input = DescribeCcDataRequest(startTime: startTime, endTime: endTime, interval: interval, domain: domain, actionName: actionName, domains: domains, source: source, area: area)
        return try await self.client.execute(action: "DescribeCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
