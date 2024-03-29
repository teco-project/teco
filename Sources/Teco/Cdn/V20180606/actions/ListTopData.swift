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

extension Cdn {
    /// ListTopData请求参数结构体
    public struct ListTopDataRequest: TCRequest {
        /// 查询起始时间：yyyy-MM-dd HH:mm:ss
        /// 仅支持按分钟粒度的数据查询，按入参抹去秒位作为起始时间，如 StartTime为2018-09-04 10:40:23，返回数据的起始时间为2018-09-04 10:40:00
        /// 仅支持 90 天内数据查询
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间：yyyy-MM-dd HH:mm:ss
        /// 仅支持按天粒度的数据查询，取入参中的天信息作为结束日期 返回小于等于结束日期当天 23:59:59 产生的数据，如EndTime为2018-09-05 22:40:00，返回数据的结束时间为2018-09-05 23:59:59
        /// EndTime 需要大于等于 StartTime
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 排序对象，支持以下几种形式：
        /// url：访问 URL 排序（无参数的URL），支持的 Filter 为 flux、request
        /// district：省份、国家/地区排序，支持的 Filter 为 flux、request
        /// isp：运营商排序，支持的 Filter 为 flux、request
        /// host：域名访问数据排序，支持的 Filter 为：flux、request、bandwidth、fluxHitRate、2XX、3XX、4XX、5XX、statusCode
        /// originHost：域名回源数据排序，支持的 Filter 为 flux、request、bandwidth、origin_2XX、origin_3XX、origin_4XX、origin_5XX、OriginStatusCode
        public let metric: String

        /// 排序使用的指标名称：
        /// flux：Metric 为 host 时指代访问流量，originHost 时指代回源流量
        /// bandwidth：Metric 为 host 时指代访问带宽，originHost 时指代回源带宽
        /// request：Metric 为 host 时指代访问请求数，originHost 时指代回源请求数
        /// fluxHitRate：平均流量命中率
        /// 2XX：访问 2XX 状态码
        /// 3XX：访问 3XX 状态码
        /// 4XX：访问 4XX 状态码
        /// 5XX：访问 5XX 状态码
        /// origin_2XX：回源 2XX 状态码
        /// origin_3XX：回源 3XX 状态码
        /// origin_4XX：回源 4XX 状态码
        /// origin_5XX：回源 5XX 状态码
        /// statusCode：指定访问状态码统计，在 Code 参数中填充指定状态码
        /// OriginStatusCode：指定回源状态码统计，在 Code 参数中填充指定状态码
        public let filter: String

        /// 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        public let domains: [String]?

        /// 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        public let project: Int64?

        /// 多域名查询时，默认（false)返回所有域名汇总排序结果
        /// Metric 为 url、path、district、isp，Filter 为 flux、request 时，可设置为 true，返回每一个 Domain 的排序数据
        public let detail: Bool?

        /// Filter 为 statusCode、OriginStatusCode 时，填充指定状态码查询排序结果
        public let code: String?

        /// 指定服务地域查询，不填充表示查询中国境内 CDN 数据
        /// mainland：指定查询中国境内 CDN 数据
        /// overseas：指定查询中国境外 CDN 数据，支持的 Metric 为 url、district、host、originHost，当 Metric 为 originHost 时仅支持 flux、request、bandwidth Filter
        public let area: String?

        /// 查询中国境外CDN数据，且仅当 Metric 为 district 或 host 时，可指定地区类型查询，不填充表示查询服务地区数据（仅在 Area 为 overseas，且 Metric 是 district 或 host 时可用）
        /// server：指定查询服务地区（腾讯云 CDN 节点服务器所在地区）数据
        /// client：指定查询客户端地区（用户请求终端所在地区）数据，当 Metric 为 host 时仅支持 flux、request、bandwidth Filter
        public let areaType: String?

        /// 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        public let product: String?

        /// 只返回前N条数据，默认为最大值100，metric=url时默认为最大值1000
        public let limit: Int64?

        public init(startTime: Date, endTime: Date, metric: String, filter: String, domains: [String]? = nil, project: Int64? = nil, detail: Bool? = nil, code: String? = nil, area: String? = nil, areaType: String? = nil, product: String? = nil, limit: Int64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metric = metric
            self.filter = filter
            self.domains = domains
            self.project = project
            self.detail = detail
            self.code = code
            self.area = area
            self.areaType = areaType
            self.product = product
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metric = "Metric"
            case filter = "Filter"
            case domains = "Domains"
            case project = "Project"
            case detail = "Detail"
            case code = "Code"
            case area = "Area"
            case areaType = "AreaType"
            case product = "Product"
            case limit = "Limit"
        }
    }

    /// ListTopData返回参数结构体
    public struct ListTopDataResponse: TCResponse {
        /// 各个资源的Top 访问数据详情。
        public let data: [TopData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// TOP 数据查询
    ///
    /// ListTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 URL 排序，从大至小返回 TOP 1000 URL
    /// + 依据总流量、总请求数对客户端省份排序，从大至小返回省份列表
    /// + 依据总流量、总请求数对客户端运营商排序，从大至小返回运营商列表
    /// + 依据总流量、峰值带宽、总请求数、平均命中率、2XX/3XX/4XX/5XX 状态码对域名排序，从大至小返回域名列表
    /// + 依据总回源流量、回源峰值带宽、总回源请求数、平均回源失败率、2XX/3XX/4XX/5XX 回源状态码对域名排序，从大至小返回域名列表
    ///
    /// 注意：仅支持 90 天内数据查询
    @inlinable
    public func listTopData(_ input: ListTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopDataResponse> {
        self.client.execute(action: "ListTopData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// TOP 数据查询
    ///
    /// ListTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 URL 排序，从大至小返回 TOP 1000 URL
    /// + 依据总流量、总请求数对客户端省份排序，从大至小返回省份列表
    /// + 依据总流量、总请求数对客户端运营商排序，从大至小返回运营商列表
    /// + 依据总流量、峰值带宽、总请求数、平均命中率、2XX/3XX/4XX/5XX 状态码对域名排序，从大至小返回域名列表
    /// + 依据总回源流量、回源峰值带宽、总回源请求数、平均回源失败率、2XX/3XX/4XX/5XX 回源状态码对域名排序，从大至小返回域名列表
    ///
    /// 注意：仅支持 90 天内数据查询
    @inlinable
    public func listTopData(_ input: ListTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopDataResponse {
        try await self.client.execute(action: "ListTopData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// TOP 数据查询
    ///
    /// ListTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 URL 排序，从大至小返回 TOP 1000 URL
    /// + 依据总流量、总请求数对客户端省份排序，从大至小返回省份列表
    /// + 依据总流量、总请求数对客户端运营商排序，从大至小返回运营商列表
    /// + 依据总流量、峰值带宽、总请求数、平均命中率、2XX/3XX/4XX/5XX 状态码对域名排序，从大至小返回域名列表
    /// + 依据总回源流量、回源峰值带宽、总回源请求数、平均回源失败率、2XX/3XX/4XX/5XX 回源状态码对域名排序，从大至小返回域名列表
    ///
    /// 注意：仅支持 90 天内数据查询
    @inlinable
    public func listTopData(startTime: Date, endTime: Date, metric: String, filter: String, domains: [String]? = nil, project: Int64? = nil, detail: Bool? = nil, code: String? = nil, area: String? = nil, areaType: String? = nil, product: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTopDataResponse> {
        self.listTopData(.init(startTime: startTime, endTime: endTime, metric: metric, filter: filter, domains: domains, project: project, detail: detail, code: code, area: area, areaType: areaType, product: product, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// TOP 数据查询
    ///
    /// ListTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 URL 排序，从大至小返回 TOP 1000 URL
    /// + 依据总流量、总请求数对客户端省份排序，从大至小返回省份列表
    /// + 依据总流量、总请求数对客户端运营商排序，从大至小返回运营商列表
    /// + 依据总流量、峰值带宽、总请求数、平均命中率、2XX/3XX/4XX/5XX 状态码对域名排序，从大至小返回域名列表
    /// + 依据总回源流量、回源峰值带宽、总回源请求数、平均回源失败率、2XX/3XX/4XX/5XX 回源状态码对域名排序，从大至小返回域名列表
    ///
    /// 注意：仅支持 90 天内数据查询
    @inlinable
    public func listTopData(startTime: Date, endTime: Date, metric: String, filter: String, domains: [String]? = nil, project: Int64? = nil, detail: Bool? = nil, code: String? = nil, area: String? = nil, areaType: String? = nil, product: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTopDataResponse {
        try await self.listTopData(.init(startTime: startTime, endTime: endTime, metric: metric, filter: filter, domains: domains, project: project, detail: detail, code: code, area: area, areaType: areaType, product: product, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
