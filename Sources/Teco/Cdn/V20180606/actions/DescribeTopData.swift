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
    /// DescribeTopData请求参数结构体
    public struct DescribeTopDataRequest: TCRequestModel {
        /// 查询起始日期：yyyy-MM-dd HH:mm:ss
        /// 仅支持按天粒度的数据查询，取入参中的天信息作为起始日期
        /// 返回大于等于起始日期当天 00:00:00 点产生的数据，如 StartTime为2018-09-04 10:40:00，返回数据的起始时间为2018-09-04 00:00:00
        /// 仅支持 90 天内数据查询
        public let startTime: String

        /// 查询结束日期：yyyy-MM-dd HH:mm:ss
        /// 仅支持按天粒度的数据查询，取入参中的天信息作为结束日期
        /// 返回小于等于结束日期当天 23:59:59 产生的数据，如EndTime为2018-09-05 22:40:00，返回数据的结束时间为2018-09-05 23:59:59
        /// EndTime 需要大于等于 StartTime
        public let endTime: String

        /// 排序对象，支持以下几种形式：
        /// ip、ua_device、ua_browser、ua_os、referer
        public let metric: String

        /// 排序使用的指标名称：
        /// flux：Metric 为 host 时指代访问流量
        /// request：Metric 为 host 时指代访问请求数
        public let filter: String

        /// 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        public let domains: [String]?

        /// 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        public let project: Int64?

        /// 是否详细显示每个域名的的具体数值
        public let detail: Bool?

        /// 指定服务地域查询，不填充表示查询中国境内 CDN 数据
        /// mainland：指定查询中国境内 CDN 数据
        /// overseas：指定查询中国境外 CDN 数据
        public let area: String?

        /// 指定查询的产品数据，目前仅可使用cdn
        public let product: String?

        public init(startTime: String, endTime: String, metric: String, filter: String, domains: [String]? = nil, project: Int64? = nil, detail: Bool? = nil, area: String? = nil, product: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metric = metric
            self.filter = filter
            self.domains = domains
            self.project = project
            self.detail = detail
            self.area = area
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metric = "Metric"
            case filter = "Filter"
            case domains = "Domains"
            case project = "Project"
            case detail = "Detail"
            case area = "Area"
            case product = "Product"
        }
    }

    /// DescribeTopData返回参数结构体
    public struct DescribeTopDataResponse: TCResponseModel {
        /// 各个资源的Top 访问数据详情。
        public let data: [TopDataMore]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// TOP 新版数据查询（beta版）
    ///
    /// DescribeTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 IP 排序，从大至小返回 TOP 100 IP
    /// + 依据总流量、总请求数对访问 Refer 排序，从大至小返回 TOP 100 Refer
    /// + 依据总流量、总请求数对访问 设备 排序，从大至小返回 设备类型
    /// + 依据总流量、总请求数对访问 操作系统 排序，从大至小返回 操作系统
    /// + 依据总流量、总请求数对访问 浏览器 排序，从大至小返回 浏览器
    ///
    /// 注意：
    /// + 仅支持 90 天内数据查询，且从2021年09月20日开始有数据
    /// + 本接口为beta版，尚未正式全量发布
    @inlinable
    public func describeTopData(_ input: DescribeTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopDataResponse> {
        self.client.execute(action: "DescribeTopData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// TOP 新版数据查询（beta版）
    ///
    /// DescribeTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 IP 排序，从大至小返回 TOP 100 IP
    /// + 依据总流量、总请求数对访问 Refer 排序，从大至小返回 TOP 100 Refer
    /// + 依据总流量、总请求数对访问 设备 排序，从大至小返回 设备类型
    /// + 依据总流量、总请求数对访问 操作系统 排序，从大至小返回 操作系统
    /// + 依据总流量、总请求数对访问 浏览器 排序，从大至小返回 浏览器
    ///
    /// 注意：
    /// + 仅支持 90 天内数据查询，且从2021年09月20日开始有数据
    /// + 本接口为beta版，尚未正式全量发布
    @inlinable
    public func describeTopData(_ input: DescribeTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopDataResponse {
        try await self.client.execute(action: "DescribeTopData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// TOP 新版数据查询（beta版）
    ///
    /// DescribeTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 IP 排序，从大至小返回 TOP 100 IP
    /// + 依据总流量、总请求数对访问 Refer 排序，从大至小返回 TOP 100 Refer
    /// + 依据总流量、总请求数对访问 设备 排序，从大至小返回 设备类型
    /// + 依据总流量、总请求数对访问 操作系统 排序，从大至小返回 操作系统
    /// + 依据总流量、总请求数对访问 浏览器 排序，从大至小返回 浏览器
    ///
    /// 注意：
    /// + 仅支持 90 天内数据查询，且从2021年09月20日开始有数据
    /// + 本接口为beta版，尚未正式全量发布
    @inlinable
    public func describeTopData(startTime: String, endTime: String, metric: String, filter: String, domains: [String]? = nil, project: Int64? = nil, detail: Bool? = nil, area: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopDataResponse> {
        self.describeTopData(.init(startTime: startTime, endTime: endTime, metric: metric, filter: filter, domains: domains, project: project, detail: detail, area: area, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// TOP 新版数据查询（beta版）
    ///
    /// DescribeTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：
    ///
    /// + 依据总流量、总请求数对访问 IP 排序，从大至小返回 TOP 100 IP
    /// + 依据总流量、总请求数对访问 Refer 排序，从大至小返回 TOP 100 Refer
    /// + 依据总流量、总请求数对访问 设备 排序，从大至小返回 设备类型
    /// + 依据总流量、总请求数对访问 操作系统 排序，从大至小返回 操作系统
    /// + 依据总流量、总请求数对访问 浏览器 排序，从大至小返回 浏览器
    ///
    /// 注意：
    /// + 仅支持 90 天内数据查询，且从2021年09月20日开始有数据
    /// + 本接口为beta版，尚未正式全量发布
    @inlinable
    public func describeTopData(startTime: String, endTime: String, metric: String, filter: String, domains: [String]? = nil, project: Int64? = nil, detail: Bool? = nil, area: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopDataResponse {
        try await self.describeTopData(.init(startTime: startTime, endTime: endTime, metric: metric, filter: filter, domains: domains, project: project, detail: detail, area: area, product: product), region: region, logger: logger, on: eventLoop)
    }
}
