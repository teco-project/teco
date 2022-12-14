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

extension Cdn {
    /// DescribeCdnData请求参数结构体
    public struct DescribeCdnDataRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        /// 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的第一个数据对应时间点为 2018-09-04 10:00:00
        /// 起始时间与结束时间间隔小于等于 90 天
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date
        
        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        /// 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:00:00
        /// 起始时间与结束时间间隔小于等于 90 天
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date
        
        /// 指定查询指标，支持的类型有：
        /// flux：流量，单位为 byte
        /// fluxIn：上行流量，单位为 byte，该指标仅ecdn支持查询
        /// fluxOut：下行流量，单位为 byte，该指标仅ecdn支持查询
        /// bandwidth：带宽，单位为 bps
        /// bandwidthIn：上行带宽，单位为 bps，该指标仅ecdn支持查询
        /// bandwidthOut：下行带宽，单位为 bps，该指标仅ecdn支持查询
        /// request：请求数，单位为 次
        /// hitRequest：命中请求数，单位为 次
        /// requestHitRate：请求命中率，单位为 %，保留小数点后两位
        /// hitFlux：命中流量，单位为byte
        /// fluxHitRate：流量命中率，单位为 %，保留小数点后两位
        /// statusCode：状态码，返回 2xx、3xx、4xx、5xx 汇总数据，单位为 个
        /// 2xx：返回 2xx 状态码汇总及各 2 开头状态码数据，单位为 个
        /// 3xx：返回 3xx 状态码汇总及各 3 开头状态码数据，单位为 个
        /// 4xx：返回 4xx 状态码汇总及各 4 开头状态码数据，单位为 个
        /// 5xx：返回 5xx 状态码汇总及各 5 开头状态码数据，单位为 个
        /// 支持指定具体状态码查询，若未产生过，则返回为空
        public let metric: String
        
        /// 指定查询域名列表
        /// 查询单域名：指定单个域名
        /// 查询多个域名：指定多个域名，最多可一次性查询 30 个
        /// 查询账号下所有域名：不传参，默认查询账号维度
        public let domains: [String]?
        
        /// 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        public let project: Int64?
        
        /// 时间粒度，支持以下几种模式：
        /// min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据（指定查询服务地域为中国境外时不支持 1 分钟粒度）
        /// 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        /// hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        /// day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        public let interval: String?
        
        /// 多域名查询时，默认（false)返回多个域名的汇总数据
        /// 可按需指定为 true，返回每一个 Domain 的明细数据（statusCode 指标暂不支持）
        public let detail: Bool?
        
        /// 查询中国境内CDN数据时，指定运营商查询，不填充表示查询所有运营商
        /// 运营商编码可以查看 [运营商编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        /// 指定运营商查询时，不可同时指定省份、IP协议查询
        public let isp: Int64?
        
        /// 查询中国境内CDN数据时，指定省份查询，不填充表示查询所有省份
        /// 查询中国境外CDN数据时，指定国家/地区查询，不填充表示查询所有国家/地区
        /// 省份、国家/地区编码可以查看 [省份编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        /// 指定（中国境内）省份查询时，不可同时指定运营商、IP协议查询
        public let district: Int64?
        
        /// 指定协议查询，不填充表示查询所有协议
        /// all：所有协议
        /// http：指定查询 HTTP 对应指标
        /// https：指定查询 HTTPS 对应指标
        public let `protocol`: String?
        
        /// 指定数据源查询，白名单功能
        public let dataSource: String?
        
        /// 指定IP协议查询，不填充表示查询所有协议
        /// all：所有协议
        /// ipv4：指定查询 ipv4 对应指标
        /// ipv6：指定查询 ipv6 对应指标
        /// 指定IP协议查询时，不可同时指定省份、运营商查询
        /// 注意：非IPv6白名单用户不可指定ipv4、ipv6进行查询
        public let ipProtocol: String?
        
        /// 指定服务地域查询，不填充表示查询中国境内CDN数据
        /// mainland：指定查询中国境内 CDN 数据
        /// overseas：指定查询中国境外 CDN 数据
        public let area: String?
        
        /// 查询中国境外CDN数据时，可指定地区类型查询，不填充表示查询服务地区数据（仅在 Area 为 overseas 时可用）
        /// server：指定查询服务地区（腾讯云 CDN 节点服务器所在地区）数据
        /// client：指定查询客户端地区（用户请求终端所在地区）数据
        public let areaType: String?
        
        /// 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        public let product: String?
        
        /// 指定查询时间的时区，默认UTC+08:00
        public let timeZone: String?
        
        public init (startTime: Date, endTime: Date, metric: String, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, detail: Bool? = nil, isp: Int64? = nil, district: Int64? = nil, protocol: String? = nil, dataSource: String? = nil, ipProtocol: String? = nil, area: String? = nil, areaType: String? = nil, product: String? = nil, timeZone: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metric = metric
            self.domains = domains
            self.project = project
            self.interval = interval
            self.detail = detail
            self.isp = isp
            self.district = district
            self.`protocol` = `protocol`
            self.dataSource = dataSource
            self.ipProtocol = ipProtocol
            self.area = area
            self.areaType = areaType
            self.product = product
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
            case isp = "Isp"
            case district = "District"
            case `protocol` = "Protocol"
            case dataSource = "DataSource"
            case ipProtocol = "IpProtocol"
            case area = "Area"
            case areaType = "AreaType"
            case product = "Product"
            case timeZone = "TimeZone"
        }
    }
    
    /// DescribeCdnData返回参数结构体
    public struct DescribeCdnDataResponse: TCResponseModel {
        /// 返回数据的时间粒度，查询时指定：
        /// min：1 分钟粒度
        /// 5min：5 分钟粒度
        /// hour：1 小时粒度
        /// day：天粒度
        public let interval: String
        
        /// 指定条件查询得到的数据明细
        public let data: [ResourceData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case interval = "Interval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 访问数据查询
    ///
    /// DescribeCdnData 用于查询 CDN 实时访问监控数据，支持以下指标查询：
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 命中请求数（单位为 次）
    /// + 请求命中率（单位为 %）
    /// + 命中流量（单位为 byte）
    /// + 流量命中率（单位为 %）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeCdnData(_ input: DescribeCdnDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCdnDataResponse > {
        self.client.execute(action: "DescribeCdnData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 访问数据查询
    ///
    /// DescribeCdnData 用于查询 CDN 实时访问监控数据，支持以下指标查询：
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 命中请求数（单位为 次）
    /// + 请求命中率（单位为 %）
    /// + 命中流量（单位为 byte）
    /// + 流量命中率（单位为 %）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeCdnData(_ input: DescribeCdnDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdnDataResponse {
        try await self.client.execute(action: "DescribeCdnData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 访问数据查询
    ///
    /// DescribeCdnData 用于查询 CDN 实时访问监控数据，支持以下指标查询：
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 命中请求数（单位为 次）
    /// + 请求命中率（单位为 %）
    /// + 命中流量（单位为 byte）
    /// + 流量命中率（单位为 %）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeCdnData(startTime: Date, endTime: Date, metric: String, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, detail: Bool? = nil, isp: Int64? = nil, district: Int64? = nil, protocol: String? = nil, dataSource: String? = nil, ipProtocol: String? = nil, area: String? = nil, areaType: String? = nil, product: String? = nil, timeZone: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCdnDataResponse > {
        self.describeCdnData(DescribeCdnDataRequest(startTime: startTime, endTime: endTime, metric: metric, domains: domains, project: project, interval: interval, detail: detail, isp: isp, district: district, protocol: `protocol`, dataSource: dataSource, ipProtocol: ipProtocol, area: area, areaType: areaType, product: product, timeZone: timeZone), logger: logger, on: eventLoop)
    }
    
    /// 访问数据查询
    ///
    /// DescribeCdnData 用于查询 CDN 实时访问监控数据，支持以下指标查询：
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 命中请求数（单位为 次）
    /// + 请求命中率（单位为 %）
    /// + 命中流量（单位为 byte）
    /// + 流量命中率（单位为 %）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeCdnData(startTime: Date, endTime: Date, metric: String, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, detail: Bool? = nil, isp: Int64? = nil, district: Int64? = nil, protocol: String? = nil, dataSource: String? = nil, ipProtocol: String? = nil, area: String? = nil, areaType: String? = nil, product: String? = nil, timeZone: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdnDataResponse {
        try await self.describeCdnData(DescribeCdnDataRequest(startTime: startTime, endTime: endTime, metric: metric, domains: domains, project: project, interval: interval, detail: detail, isp: isp, district: district, protocol: `protocol`, dataSource: dataSource, ipProtocol: ipProtocol, area: area, areaType: areaType, product: product, timeZone: timeZone), logger: logger, on: eventLoop)
    }
}
