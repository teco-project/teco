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

extension Vod {
    /// DescribeCDNUsageData请求参数结构体
    public struct DescribeCDNUsageDataRequest: TCRequestModel {
        /// 起始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String

        /// 结束日期，需大于开始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String

        /// CDN 统计数据类型，有效值：
        /// <li>Flux：流量，单位为 byte。</li>
        /// <li>Bandwidth：带宽，单位为 bps。</li>
        public let dataType: String

        /// <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        /// 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计，此时时间粒度只支持天粒度。</b>
        public let subAppId: UInt64?

        /// 用量数据的时间粒度，单位：分钟，取值有：
        /// <li>5：5 分钟粒度，返回指定查询时间内5分钟粒度的明细数据。</li>
        /// <li>60：小时粒度，返回指定查询时间内1小时粒度的数据。</li>
        /// <li>1440：天粒度，返回指定查询时间内1天粒度的数据。</li>
        /// 默认值为1440，返回天粒度的数据。
        public let dataInterval: UInt64?

        /// 域名列表。一次最多查询20个域名的用量数据。可以指定多个域名，查询这些域名叠加的用量数据。默认返回所有域名叠加的用量数据。
        public let domainNames: [String]?

        public init(startTime: String, endTime: String, dataType: String, subAppId: UInt64? = nil, dataInterval: UInt64? = nil, domainNames: [String]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.dataType = dataType
            self.subAppId = subAppId
            self.dataInterval = dataInterval
            self.domainNames = domainNames
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case dataType = "DataType"
            case subAppId = "SubAppId"
            case dataInterval = "DataInterval"
            case domainNames = "DomainNames"
        }
    }

    /// DescribeCDNUsageData返回参数结构体
    public struct DescribeCDNUsageDataResponse: TCResponseModel {
        /// 时间粒度，单位：分钟。
        public let dataInterval: Int64

        /// CDN 统计数据。
        public let data: [StatDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInterval = "DataInterval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询点播 CDN 用量数据
    ///
    /// 该接口用于查询点播 CDN 的流量、带宽等统计数据。
    ///    1. 可以查询最近365天内的 CDN 用量数据。
    ///    2.  查询时间跨度不超过90天。
    ///    3. 可以指定用量数据的时间粒度，支持5分钟、1小时、1天的时间粒度。
    ///    4.  流量为查询时间粒度内的总流量，带宽为查询时间粒度内的峰值带宽。
    @inlinable
    public func describeCDNUsageData(_ input: DescribeCDNUsageDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCDNUsageDataResponse> {
        self.client.execute(action: "DescribeCDNUsageData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询点播 CDN 用量数据
    ///
    /// 该接口用于查询点播 CDN 的流量、带宽等统计数据。
    ///    1. 可以查询最近365天内的 CDN 用量数据。
    ///    2.  查询时间跨度不超过90天。
    ///    3. 可以指定用量数据的时间粒度，支持5分钟、1小时、1天的时间粒度。
    ///    4.  流量为查询时间粒度内的总流量，带宽为查询时间粒度内的峰值带宽。
    @inlinable
    public func describeCDNUsageData(_ input: DescribeCDNUsageDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCDNUsageDataResponse {
        try await self.client.execute(action: "DescribeCDNUsageData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询点播 CDN 用量数据
    ///
    /// 该接口用于查询点播 CDN 的流量、带宽等统计数据。
    ///    1. 可以查询最近365天内的 CDN 用量数据。
    ///    2.  查询时间跨度不超过90天。
    ///    3. 可以指定用量数据的时间粒度，支持5分钟、1小时、1天的时间粒度。
    ///    4.  流量为查询时间粒度内的总流量，带宽为查询时间粒度内的峰值带宽。
    @inlinable
    public func describeCDNUsageData(startTime: String, endTime: String, dataType: String, subAppId: UInt64? = nil, dataInterval: UInt64? = nil, domainNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCDNUsageDataResponse> {
        self.describeCDNUsageData(DescribeCDNUsageDataRequest(startTime: startTime, endTime: endTime, dataType: dataType, subAppId: subAppId, dataInterval: dataInterval, domainNames: domainNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询点播 CDN 用量数据
    ///
    /// 该接口用于查询点播 CDN 的流量、带宽等统计数据。
    ///    1. 可以查询最近365天内的 CDN 用量数据。
    ///    2.  查询时间跨度不超过90天。
    ///    3. 可以指定用量数据的时间粒度，支持5分钟、1小时、1天的时间粒度。
    ///    4.  流量为查询时间粒度内的总流量，带宽为查询时间粒度内的峰值带宽。
    @inlinable
    public func describeCDNUsageData(startTime: String, endTime: String, dataType: String, subAppId: UInt64? = nil, dataInterval: UInt64? = nil, domainNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCDNUsageDataResponse {
        try await self.describeCDNUsageData(DescribeCDNUsageDataRequest(startTime: startTime, endTime: endTime, dataType: dataType, subAppId: subAppId, dataInterval: dataInterval, domainNames: domainNames), region: region, logger: logger, on: eventLoop)
    }
}
