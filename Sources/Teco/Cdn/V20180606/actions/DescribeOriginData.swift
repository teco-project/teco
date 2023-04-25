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

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cdn {
    /// DescribeOriginData请求参数结构体
    public struct DescribeOriginDataRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        /// 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的第一个数据对应时间点为 2018-09-04 10:00:00
        /// 起始时间与结束时间间隔小于等于 90 天
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        /// 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:00:00
        /// 起始时间与结束时间间隔小于等于 90 天
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指定查询指标，支持的类型有：
        /// flux：回源流量，单位为 byte
        /// bandwidth：回源带宽，单位为 bps
        /// request：回源请求数，单位为 次
        /// failRequest：回源失败请求数，单位为 次
        /// failRate：回源失败率，单位为 %
        /// statusCode：回源状态码，返回 2xx、3xx、4xx、5xx 汇总数据，单位为 个
        /// 2xx：返回 2xx 回源状态码汇总及各 2 开头回源状态码数据，单位为 个
        /// 3xx：返回 3xx 回源状态码汇总及各 3 开头回源状态码数据，单位为 个
        /// 4xx：返回 4xx 回源状态码汇总及各 4 开头回源状态码数据，单位为 个
        /// 5xx：返回 5xx 回源状态码汇总及各 5 开头回源状态码数据，单位为 个
        /// 支持指定具体状态码查询，若未产生过，则返回为空
        public let metric: String

        /// 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        public let domains: [String]?

        /// 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 未填充域名情况下，指定项目查询，最多可一次性查询 30 个加速域名明细
        /// 若填充了具体域名信息，以域名为主
        public let project: Int64?

        /// 时间粒度，支持以下几种模式：
        /// min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据（指定查询服务地域为中国境外时不支持 1 分钟粒度）
        /// 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        /// hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        /// day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        public let interval: String?

        /// Domains 传入多个时，默认（false)返回多个域名的汇总数据
        /// 可按需指定为 true，返回每一个 Domain 的明细数据（statusCode 指标暂不支持）
        public let detail: Bool?

        /// 指定服务地域查询，不填充表示查询中国境内 CDN 数据
        /// mainland：指定查询中国境内 CDN 数据
        /// overseas：指定查询中国境外 CDN 数据
        public let area: String?

        /// 指定查询时间的时区，默认UTC+08:00
        public let timeZone: String?

        public init(startTime: Date, endTime: Date, metric: String, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, detail: Bool? = nil, area: String? = nil, timeZone: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metric = metric
            self.domains = domains
            self.project = project
            self.interval = interval
            self.detail = detail
            self.area = area
            self.timeZone = timeZone
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metric = "Metric"
            case domains = "Domains"
            case project = "Project"
            case interval = "Interval"
            case detail = "Detail"
            case area = "Area"
            case timeZone = "TimeZone"
        }
    }

    /// DescribeOriginData返回参数结构体
    public struct DescribeOriginDataResponse: TCResponseModel {
        /// 数据统计的时间粒度，支持min, 5min, hour, day，分别表示1分钟，5分钟，1小时和1天的时间粒度。
        public let interval: String

        /// 各个资源的回源数据详情。
        public let data: [ResourceOriginData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case interval = "Interval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 回源数据查询
    ///
    /// DescribeOriginData 用于查询 CDN 实时回源监控数据，支持以下指标查询：
    ///
    /// + 回源流量（单位为 byte）
    /// + 回源带宽（单位为 bps）
    /// + 回源请求数（单位为 次）
    /// + 回源失败请求数（单位为 次）
    /// + 回源失败率（单位为 %，小数点后保留两位）
    /// + 回源状态码 2xx 汇总及各 2 开头回源状态码明细（单位为 个）
    /// + 回源状态码 3xx 汇总及各 3 开头回源状态码明细（单位为 个）
    /// + 回源状态码 4xx 汇总及各 4 开头回源状态码明细（单位为 个）
    /// + 回源状态码 5xx 汇总及各 5 开头回源状态码明细（单位为 个）
    @inlinable
    public func describeOriginData(_ input: DescribeOriginDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginDataResponse> {
        self.client.execute(action: "DescribeOriginData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回源数据查询
    ///
    /// DescribeOriginData 用于查询 CDN 实时回源监控数据，支持以下指标查询：
    ///
    /// + 回源流量（单位为 byte）
    /// + 回源带宽（单位为 bps）
    /// + 回源请求数（单位为 次）
    /// + 回源失败请求数（单位为 次）
    /// + 回源失败率（单位为 %，小数点后保留两位）
    /// + 回源状态码 2xx 汇总及各 2 开头回源状态码明细（单位为 个）
    /// + 回源状态码 3xx 汇总及各 3 开头回源状态码明细（单位为 个）
    /// + 回源状态码 4xx 汇总及各 4 开头回源状态码明细（单位为 个）
    /// + 回源状态码 5xx 汇总及各 5 开头回源状态码明细（单位为 个）
    @inlinable
    public func describeOriginData(_ input: DescribeOriginDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginDataResponse {
        try await self.client.execute(action: "DescribeOriginData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回源数据查询
    ///
    /// DescribeOriginData 用于查询 CDN 实时回源监控数据，支持以下指标查询：
    ///
    /// + 回源流量（单位为 byte）
    /// + 回源带宽（单位为 bps）
    /// + 回源请求数（单位为 次）
    /// + 回源失败请求数（单位为 次）
    /// + 回源失败率（单位为 %，小数点后保留两位）
    /// + 回源状态码 2xx 汇总及各 2 开头回源状态码明细（单位为 个）
    /// + 回源状态码 3xx 汇总及各 3 开头回源状态码明细（单位为 个）
    /// + 回源状态码 4xx 汇总及各 4 开头回源状态码明细（单位为 个）
    /// + 回源状态码 5xx 汇总及各 5 开头回源状态码明细（单位为 个）
    @inlinable
    public func describeOriginData(startTime: Date, endTime: Date, metric: String, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, detail: Bool? = nil, area: String? = nil, timeZone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginDataResponse> {
        self.describeOriginData(.init(startTime: startTime, endTime: endTime, metric: metric, domains: domains, project: project, interval: interval, detail: detail, area: area, timeZone: timeZone), region: region, logger: logger, on: eventLoop)
    }

    /// 回源数据查询
    ///
    /// DescribeOriginData 用于查询 CDN 实时回源监控数据，支持以下指标查询：
    ///
    /// + 回源流量（单位为 byte）
    /// + 回源带宽（单位为 bps）
    /// + 回源请求数（单位为 次）
    /// + 回源失败请求数（单位为 次）
    /// + 回源失败率（单位为 %，小数点后保留两位）
    /// + 回源状态码 2xx 汇总及各 2 开头回源状态码明细（单位为 个）
    /// + 回源状态码 3xx 汇总及各 3 开头回源状态码明细（单位为 个）
    /// + 回源状态码 4xx 汇总及各 4 开头回源状态码明细（单位为 个）
    /// + 回源状态码 5xx 汇总及各 5 开头回源状态码明细（单位为 个）
    @inlinable
    public func describeOriginData(startTime: Date, endTime: Date, metric: String, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, detail: Bool? = nil, area: String? = nil, timeZone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginDataResponse {
        try await self.describeOriginData(.init(startTime: startTime, endTime: endTime, metric: metric, domains: domains, project: project, interval: interval, detail: detail, area: area, timeZone: timeZone), region: region, logger: logger, on: eventLoop)
    }
}
