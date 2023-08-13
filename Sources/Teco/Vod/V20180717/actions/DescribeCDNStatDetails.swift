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

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// DescribeCDNStatDetails请求参数结构体
    public struct DescribeCDNStatDetailsRequest: TCRequestModel {
        /// 查询指标，取值有：
        /// - Traffic：流量，单位为 Byte。
        /// - Bandwidth：带宽，单位为 Bps。
        /// - Requests：请求数。
        /// - QUICRequests：QUIC 请求数。
        /// - IpVisit：IP 访问数。
        public let metric: String

        /// 起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String

        /// 结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 域名列表。一次最多查询20个域名的数据。默认返回所有域名叠加的用量数据。
        public let domainNames: [String]?

        /// 服务区域，取值有：
        /// - Chinese Mainland：中国大陆。
        /// - Asia Pacific Region 1：亚太一区，包括中国香港、中国澳门、新加坡、越南、泰国。
        /// - Asia Pacific Region 2：亚太二区，包括中国台湾、日本、马来西亚、印度尼西亚、韩国。
        /// - Asia Pacific Region 3：亚太三区，包括菲律宾、印度、澳大利亚和亚太其它国家和地区。
        /// - Middle East：中东。
        /// - Europe：欧洲。
        /// - North America：北美。
        /// - South America：南美。
        /// - Africa：非洲。
        /// 默认为中国大陆。
        public let area: String?

        /// 用户所在地区，Area 为 Chinese Mainland 时，取值为以下地区信息，当 Area 为其它值时， 忽略 Districts 参数。
        /// - Beijing：北京。
        /// - Inner Mongolia：内蒙古。
        /// - Shanxi：山西。
        /// - Hebei：河北。
        /// - Tianjin：天津。
        /// - Ningxia：宁夏。
        /// - Shaanxi：陕西。
        /// - Gansu：甘肃。
        /// - Qinghai：青海。
        /// - Xinjiang：新疆。
        /// - Heilongjiang：黑龙江。
        /// - Jilin：吉林。
        /// - Liaoning：辽宁。
        /// - Fujian：福建。
        /// - Jiangsu：江苏。
        /// - Anhui：安徽。
        /// - Shandong：山东。
        /// - Shanghai：上海。
        /// - Zhejiang：浙江。
        /// - Henan：河南。
        /// - Hubei：湖北。
        /// - Jiangxi：江西。
        /// - Hunan：湖南。
        /// - Guizhou：贵州。
        /// - Yunnan：云南。
        /// - Chongqing：重庆。
        /// - Sichuan：四川。
        /// - Tibet：西藏。
        /// - Guangdong：广东。
        /// - Guangxi：广西。
        /// - Hainan：海南。
        /// - Hong Kong, Macao and Taiwan：港澳台。
        /// - Outside Chinese Mainland：海外。
        /// - Other：其他 。
        public let districts: [String]?

        /// 用户所属运营商信息，Area 为 Chinese Mainland 时，取值为以下运营商信息。当 Area 为其它值时忽略 Isps 参数。
        /// - China Telecom：中国电信。
        /// - China Unicom：中国联通。
        /// - CERNET：教育网。
        /// - Great Wall Broadband Network：长城宽带。
        /// - China Mobile：中国移动。
        /// - China Mobile Tietong：中国铁通。
        /// - ISPs outside Chinese Mainland：海外运营商。
        /// - Other ISPs：其他运营商。
        public let isps: [String]?

        /// 每条数据的时间粒度，单位：分钟，取值有：
        /// - 5：5 分钟粒度，返回指定查询时间内5分钟粒度的明细数据。
        /// - 1440：天粒度，返回指定查询时间内1天粒度的数据。起始时间和结束时间跨度大于24小时，只支持天粒度的数据。
        /// 当 StartTime 和 EndTime 时间跨度大于24小时时，DataInterval 默认为 1440。
        public let dataInterval: UInt64?

        public init(metric: String, startTime: String, endTime: String, subAppId: UInt64? = nil, domainNames: [String]? = nil, area: String? = nil, districts: [String]? = nil, isps: [String]? = nil, dataInterval: UInt64? = nil) {
            self.metric = metric
            self.startTime = startTime
            self.endTime = endTime
            self.subAppId = subAppId
            self.domainNames = domainNames
            self.area = area
            self.districts = districts
            self.isps = isps
            self.dataInterval = dataInterval
        }

        enum CodingKeys: String, CodingKey {
            case metric = "Metric"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subAppId = "SubAppId"
            case domainNames = "DomainNames"
            case area = "Area"
            case districts = "Districts"
            case isps = "Isps"
            case dataInterval = "DataInterval"
        }
    }

    /// DescribeCDNStatDetails返回参数结构体
    public struct DescribeCDNStatDetailsResponse: TCResponseModel {
        /// 每条数据的时间粒度，单位：分钟。
        public let dataInterval: UInt64

        /// CDN 用量数据。
        public let data: [StatDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInterval = "DataInterval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询点播域名的 CDN 统计数据
    ///
    /// 该接口用于查询点播域名的 CDN 带宽、流量等统计数据。
    /// * 查询的起始时间和结束时间跨度不超过90天。
    /// * 可以查询不同服务区域的数据。
    /// * 中国境内的数据支持查询指定地区、运营商的统计数据。
    @inlinable
    public func describeCDNStatDetails(_ input: DescribeCDNStatDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCDNStatDetailsResponse> {
        self.client.execute(action: "DescribeCDNStatDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询点播域名的 CDN 统计数据
    ///
    /// 该接口用于查询点播域名的 CDN 带宽、流量等统计数据。
    /// * 查询的起始时间和结束时间跨度不超过90天。
    /// * 可以查询不同服务区域的数据。
    /// * 中国境内的数据支持查询指定地区、运营商的统计数据。
    @inlinable
    public func describeCDNStatDetails(_ input: DescribeCDNStatDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCDNStatDetailsResponse {
        try await self.client.execute(action: "DescribeCDNStatDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询点播域名的 CDN 统计数据
    ///
    /// 该接口用于查询点播域名的 CDN 带宽、流量等统计数据。
    /// * 查询的起始时间和结束时间跨度不超过90天。
    /// * 可以查询不同服务区域的数据。
    /// * 中国境内的数据支持查询指定地区、运营商的统计数据。
    @inlinable
    public func describeCDNStatDetails(metric: String, startTime: String, endTime: String, subAppId: UInt64? = nil, domainNames: [String]? = nil, area: String? = nil, districts: [String]? = nil, isps: [String]? = nil, dataInterval: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCDNStatDetailsResponse> {
        self.describeCDNStatDetails(.init(metric: metric, startTime: startTime, endTime: endTime, subAppId: subAppId, domainNames: domainNames, area: area, districts: districts, isps: isps, dataInterval: dataInterval), region: region, logger: logger, on: eventLoop)
    }

    /// 查询点播域名的 CDN 统计数据
    ///
    /// 该接口用于查询点播域名的 CDN 带宽、流量等统计数据。
    /// * 查询的起始时间和结束时间跨度不超过90天。
    /// * 可以查询不同服务区域的数据。
    /// * 中国境内的数据支持查询指定地区、运营商的统计数据。
    @inlinable
    public func describeCDNStatDetails(metric: String, startTime: String, endTime: String, subAppId: UInt64? = nil, domainNames: [String]? = nil, area: String? = nil, districts: [String]? = nil, isps: [String]? = nil, dataInterval: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCDNStatDetailsResponse {
        try await self.describeCDNStatDetails(.init(metric: metric, startTime: startTime, endTime: endTime, subAppId: subAppId, domainNames: domainNames, area: area, districts: districts, isps: isps, dataInterval: dataInterval), region: region, logger: logger, on: eventLoop)
    }
}
