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
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeTopL7AnalysisData请求参数结构体
    public struct DescribeTopL7AnalysisDataRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 查询的指标，取值有：
        /// <li> l7Flow_outFlux_country：按国家维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_statusCode：按状态码维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_domain：按域名维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_url：按URL维度统计流量指标; </li>
        /// <li> l7Flow_outFlux_resourceType：按资源类型维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_sip：按客户端的源IP维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_referers：按refer信息维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_ua_device：按设备类型维度统计流量指标; </li>
        /// <li> l7Flow_outFlux_ua_browser：按浏览器类型维度统计流量指标；</li>
        /// <li> l7Flow_outFlux_us_os：按操作系统类型维度统计流量指标；</li>
        /// <li> l7Flow_request_country：按国家维度统计请求数指标；</li>
        /// <li> l7Flow_request_statusCode：按状态码维度统计请求数指标；</li>
        /// <li> l7Flow_request_domain：按域名维度统计请求数指标；</li>
        /// <li> l7Flow_request_url：按URL维度统计请求数指标; </li>
        /// <li> l7Flow_request_resourceType：按资源类型维度统计请求数指标；</li>
        /// <li> l7Flow_request_sip：按客户端的源IP维度统计请求数指标；</li>
        /// <li> l7Flow_request_refere请求的rs：按refer信息维度统计请求数指标；</li>
        /// <li> l7Flow_request_ua_device：按设备类型维度统计请求数指标; </li>
        /// <li> l7Flow_request_ua_browser：按浏览器类型维度统计请求数指标；</li>
        /// <li> l7Flow_request_us_os：按操作系统类型维度统计请求数指标。</li>
        public let metricName: String

        /// 站点集合，此参数必填，不填默认查询为空。
        public let zoneIds: [String]?

        /// 查询前多少个数据，最大值为1000，不填默认默认为: 10， 表示查询前top10的数据。
        public let limit: Int64?

        /// 过滤条件，详细的过滤条件Key值如下：
        /// <li>country<br>   按照【<strong>国家/地区</strong>】进行过滤，国家/地区遵循<a href="https://zh.wikipedia.org/wiki/ISO_3166-1">ISO 3166</a>规范。</li>
        /// <li>province<br>   按照【<strong>省份</strong>】进行过滤，此参数只支持服务区域为中国大陆。</li>
        /// <li>isp<br>   按照【<strong>运营商</strong>】进行过滤，此参数只支持服务区域为中国大陆。<br>   对应的Value可选项如下：<br>   2：中国电信；<br>   26：中国联通；<br>   1046：中国移动；<br>   3947：中国铁通；<br>   38：教育网；<br>   43：长城宽带；<br>   0：其他运营商。</li>
        /// <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。</li>
        /// <li>url<br>   按照【<strong>URL Path</strong>】进行过滤，URL Path形如：/content或/content/test.jpg。<br>   若只填写url参数，则最多可查询近30天的数据；<br>   若同时填写url+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        /// <li>referer<br>   按照【<strong>Referer头信息</strong>】进行过滤, Referer形如：example.com。<br>   若只填写referer参数，则最多可查询近30天的数据；<br>   若同时填写referer+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        /// <li>resourceType<br>   按照【<strong>资源类型</strong>】进行过滤，资源类型一般是文件后缀，形如: .jpg, .css。<br>   若只填写resourceType参数，则最多可查询近30天的数据；<br>   若同时填写resourceType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        /// <li>protocol<br>   按照【<strong>HTTP协议版本</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP/1.0：HTTP 1.0；<br>   HTTP/1.1：HTTP 1.1；<br>   HTTP/2.0：HTTP 2.0；<br>   HTTP/3.0：HTTP 3.0；<br>   WebSocket：WebSocket。</li>
        /// <li>socket<br>   按照【<strong>HTTP协议类型</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP：HTTP 协议；<br>   HTTPS：HTTPS协议；<br>   QUIC：QUIC协议。</li>
        /// <li>statusCode<br>   按照【<strong>状态码</strong>】进行过滤。<br>   若只填写statusCode参数，则最多可查询近30天的数据；<br>   若同时填写statusCode+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应的Value可选项如下：<br>   1XX：1xx类型的状态码；<br>   100：100状态码；<br>   101：101状态码；<br>   102：102状态码；<br>   2XX：2xx类型的状态码；<br>   200：200状态码；<br>   201：201状态码；<br>   202：202状态码；<br>   203：203状态码；<br>   204：204状态码；<br>   205：205状态码；<br>   206：206状态码；<br>   207：207状态码；<br>   3XX：3xx类型的状态码；<br>   300：300状态码；<br>   301：301状态码；<br>   302：302状态码；<br>   303：303状态码；<br>   304：304状态码；<br>   305：305状态码；<br>   307：307状态码；<br>   4XX：4xx类型的状态码；<br>   400：400状态码；<br>   401：401状态码；<br>   402：402状态码；<br>   403：403状态码；<br>   404：404状态码；<br>   405：405状态码；<br>   406：406状态码；<br>   407：407状态码；<br>   408：408状态码；<br>   409：409状态码；<br>   410：410状态码；<br>   411：411状态码；<br>   412：412状态码；<br>   412：413状态码；<br>   414：414状态码；<br>   415：415状态码；<br>   416：416状态码；<br>   417：417状态码；<br>   422：422状态码；<br>   423：423状态码；<br>   424：424状态码；<br>   426：426状态码；<br>   451：451状态码；<br>   5XX：5xx类型的状态码；<br>   500：500状态码；<br>   501：501状态码；<br>   502：502状态码；<br>   503：503状态码；<br>   504：504状态码；<br>   505：505状态码；<br>   506：506状态码；<br>   507：507状态码；<br>   510：510状态码；<br>   514：514状态码；<br>   544：544状态码。</li>
        /// <li>browserType<br>   按照【<strong>浏览器类型</strong>】进行过滤。<br>   若只填写browserType参数，则最多可查询近30天的数据；<br>   若同时填写browserType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   Firefox：Firefox浏览器；<br>   Chrome：Chrome浏览器；<br>   Safari：Safari浏览器；<br>   Other：其他浏览器类型；<br>   Empty：浏览器类型为空；<br>   Bot：搜索引擎爬虫；<br>   MicrosoftEdge：MicrosoftEdge浏览器；<br>   IE：IE浏览器；<br>   Opera：Opera浏览器；<br>   QQBrowser：QQ浏览器；<br>   LBBrowser：LB浏览器；<br>   MaxthonBrowser：Maxthon浏览器；<br>   SouGouBrowser：搜狗浏览器；<br>   BIDUBrowser：百度浏览器；<br>   TaoBrowser：淘浏览器；<br>   UBrowser：UC浏览器。</li>
        /// <li>deviceType<br>   按照【<strong>设备类型</strong>】进行过滤。<br>   若只填写deviceType参数，则最多可查询近30天的数据；<br>   若同时填写deviceType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   TV：TV设备；<br>   Tablet：Tablet设备；<br>   Mobile：Mobile设备；<br>   Desktop：Desktop设备；<br>   Other：其他设备类型；<br>   Empty：设备类型为空。</li>
        /// <li>operatingSystemType<br>   按照【<strong>操作系统类型</strong>】进行过滤。<br>   若只填写operatingSystemType参数，则最多可查询近30天的数据；<br>   若同时填写operatingSystemType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   Linux：Linux操作系统；<br>   MacOS：MacOs操作系统；<br>   Android：Android操作系统；<br>   IOS：IOS操作系统；<br>   Windows：Windows操作系统；<br>   NetBSD：NetBSD；<br>   ChromiumOS：ChromiumOS；<br>   Bot：搜索引擎爬虫；<br>   Other：其他类型的操作系统；<br>   Empty：操作系统为空。</li>
        /// <li>tlsVersion<br>   按照【<strong>TLS版本</strong>】进行过滤。<br>   若只填写tlsVersion参数，则最多可查询近30天的数据；<br>   若同时填写tlsVersion+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   TLS1.0：TLS 1.0；<br>   TLS1.1：TLS 1.1；<br>   TLS1.2：TLS 1.2；<br>   TLS1.3：TLS 1.3。</li>
        /// <li>ipVersion<br>   按照【<strong>IP版本</strong>】进行过滤。<br>   对应Value的可选项如下：<br>   4：Ipv4；<br>   6：Ipv6。</li>
        /// <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。</li>
        /// <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。</li>
        public let filters: [QueryCondition]?

        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据；</li>
        /// <li>global：全球数据。</li>不填默认取值为global。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, limit: Int64? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
            self.zoneIds = zoneIds
            self.limit = limit
            self.filters = filters
            self.interval = interval
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case zoneIds = "ZoneIds"
            case limit = "Limit"
            case filters = "Filters"
            case interval = "Interval"
            case area = "Area"
        }
    }

    /// DescribeTopL7AnalysisData返回参数结构体
    public struct DescribeTopL7AnalysisDataResponse: TCResponseModel {
        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 七层流量前topN数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TopDataRecord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询流量分析Top数据
    ///
    /// 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。
    @inlinable
    public func describeTopL7AnalysisData(_ input: DescribeTopL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopL7AnalysisDataResponse> {
        self.client.execute(action: "DescribeTopL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流量分析Top数据
    ///
    /// 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。
    @inlinable
    public func describeTopL7AnalysisData(_ input: DescribeTopL7AnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopL7AnalysisDataResponse {
        try await self.client.execute(action: "DescribeTopL7AnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流量分析Top数据
    ///
    /// 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。
    @inlinable
    public func describeTopL7AnalysisData(startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, limit: Int64? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopL7AnalysisDataResponse> {
        self.describeTopL7AnalysisData(.init(startTime: startTime, endTime: endTime, metricName: metricName, zoneIds: zoneIds, limit: limit, filters: filters, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流量分析Top数据
    ///
    /// 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。
    @inlinable
    public func describeTopL7AnalysisData(startTime: Date, endTime: Date, metricName: String, zoneIds: [String]? = nil, limit: Int64? = nil, filters: [QueryCondition]? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopL7AnalysisDataResponse {
        try await self.describeTopL7AnalysisData(.init(startTime: startTime, endTime: endTime, metricName: metricName, zoneIds: zoneIds, limit: limit, filters: filters, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }
}
