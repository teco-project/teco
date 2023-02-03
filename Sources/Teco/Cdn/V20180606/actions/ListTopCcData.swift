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
    /// ListTopCcData请求参数结构体
    public struct ListTopCcDataRequest: TCRequestModel {
        /// 查询Top数据的开始时间，格式为：2020-01-01 00:00:00
        public let startTime: String

        /// 查询Top数据的结束时间，格式为：2020-01-01 23:59:59
        /// 支持 90 天内数据查询，不传此参数，表示查当天数据
        /// 时间跨度要小于等于7天
        public let endTime: String

        /// 域名，不传此参数，表示查询账号级别数据
        public let domain: String?

        /// 统计指标：
        /// ip_url : Top IP+URL 默认值
        /// ua :  Top UA
        public let metric: String?

        /// cdn表示CDN数据，默认值
        /// ecdn表示ECDN数据
        public let source: String?

        /// 域名列表，不传此参数，表示查询账号级别数据
        public let domains: [String]?

        /// 执行动作，取值为：intercept/redirect/observe
        /// 分别表示：拦截/重定向/观察
        /// 为空表示查询所有执行动作数据
        public let actionName: String?

        /// 地域：mainland或overseas，表示国内或海外，不填写默认表示国内
        public let area: String?

        public init(startTime: String, endTime: String, domain: String? = nil, metric: String? = nil, source: String? = nil, domains: [String]? = nil, actionName: String? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.domain = domain
            self.metric = metric
            self.source = source
            self.domains = domains
            self.actionName = actionName
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case domain = "Domain"
            case metric = "Metric"
            case source = "Source"
            case domains = "Domains"
            case actionName = "ActionName"
            case area = "Area"
        }
    }

    /// ListTopCcData返回参数结构体
    public struct ListTopCcDataResponse: TCResponseModel {
        /// Top数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [CcTopData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取CC攻击Top数据
    @inlinable
    public func listTopCcData(_ input: ListTopCcDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopCcDataResponse> {
        self.client.execute(action: "ListTopCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC攻击Top数据
    @inlinable
    public func listTopCcData(_ input: ListTopCcDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopCcDataResponse {
        try await self.client.execute(action: "ListTopCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC攻击Top数据
    @inlinable
    public func listTopCcData(startTime: String, endTime: String, domain: String? = nil, metric: String? = nil, source: String? = nil, domains: [String]? = nil, actionName: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopCcDataResponse> {
        let input = ListTopCcDataRequest(startTime: startTime, endTime: endTime, domain: domain, metric: metric, source: source, domains: domains, actionName: actionName, area: area)
        return self.client.execute(action: "ListTopCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC攻击Top数据
    @inlinable
    public func listTopCcData(startTime: String, endTime: String, domain: String? = nil, metric: String? = nil, source: String? = nil, domains: [String]? = nil, actionName: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopCcDataResponse {
        let input = ListTopCcDataRequest(startTime: startTime, endTime: endTime, domain: domain, metric: metric, source: source, domains: domains, actionName: actionName, area: area)
        return try await self.client.execute(action: "ListTopCcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
