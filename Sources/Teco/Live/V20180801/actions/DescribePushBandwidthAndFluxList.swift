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

extension Live {
    /// DescribePushBandwidthAndFluxList请求参数结构体
    public struct DescribePushBandwidthAndFluxListRequest: TCRequestModel {
        /// 起始时间点，格式为 yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间点，格式为 yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过31天。
        public let endTime: String

        /// 域名，可以填多个，若不填，表示总体数据。
        public let pushDomains: [String]?

        /// 可选值：
        /// Mainland：查询中国大陆（境内）数据，
        /// Oversea：则查询国际/港澳台（境外）数据，
        /// 不填则默认查询全球地区（境内+境外）的数据。
        public let mainlandOrOversea: String?

        /// 数据粒度，支持如下粒度：
        /// 5：5分钟粒度，（跨度不支持超过1天），
        /// 60：1小时粒度（跨度不支持超过一个月），
        /// 1440：天粒度（跨度不支持超过一个月）。
        /// 默认值：5。
        public let granularity: UInt64?

        /// 大区，映射表如下：
        /// China Mainland 中国大陆
        /// Asia Pacific I 亚太一区
        /// Asia Pacific II 亚太二区
        /// Asia Pacific III 亚太三区
        /// Europe 欧洲
        /// North America 北美
        /// South America 南美
        /// Middle East 中东
        /// Africa 非洲。
        public let regionNames: [String]?

        /// 国家，映射表参照如下文档：
        /// https://cloud.tencent.com/document/product/267/34019。
        public let countryNames: [String]?

        public init(startTime: String, endTime: String, pushDomains: [String]? = nil, mainlandOrOversea: String? = nil, granularity: UInt64? = nil, regionNames: [String]? = nil, countryNames: [String]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.pushDomains = pushDomains
            self.mainlandOrOversea = mainlandOrOversea
            self.granularity = granularity
            self.regionNames = regionNames
            self.countryNames = countryNames
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pushDomains = "PushDomains"
            case mainlandOrOversea = "MainlandOrOversea"
            case granularity = "Granularity"
            case regionNames = "RegionNames"
            case countryNames = "CountryNames"
        }
    }

    /// DescribePushBandwidthAndFluxList返回参数结构体
    public struct DescribePushBandwidthAndFluxListResponse: TCResponseModel {
        /// 峰值带宽所在时间点，格式为 yyyy-mm-dd HH:MM:SS。
        public let peakBandwidthTime: String

        /// 峰值带宽，单位是 Mbps。
        public let peakBandwidth: Float

        /// 95峰值带宽所在时间点，格式为 yyyy-mm-dd HH:MM:SS。
        public let p95PeakBandwidthTime: String

        /// 95峰值带宽，单位是 Mbps。
        public let p95PeakBandwidth: Float

        /// 总流量，单位是 MB。
        public let sumFlux: Float

        /// 明细数据信息。
        public let dataInfoList: [BillDataInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case peakBandwidthTime = "PeakBandwidthTime"
            case peakBandwidth = "PeakBandwidth"
            case p95PeakBandwidthTime = "P95PeakBandwidthTime"
            case p95PeakBandwidth = "P95PeakBandwidth"
            case sumFlux = "SumFlux"
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 直播推流带宽和流量数据查询
    ///
    /// 直播推流带宽和流量数据查询。
    /// 推流计费会先取全球推流用量和全球播放用量进行比较，满足计费条件后再按各地区用量出账。详情参见[计费文档](https://cloud.tencent.com/document/product/267/34175)。
    @inlinable
    public func describePushBandwidthAndFluxList(_ input: DescribePushBandwidthAndFluxListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePushBandwidthAndFluxListResponse> {
        self.client.execute(action: "DescribePushBandwidthAndFluxList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播推流带宽和流量数据查询
    ///
    /// 直播推流带宽和流量数据查询。
    /// 推流计费会先取全球推流用量和全球播放用量进行比较，满足计费条件后再按各地区用量出账。详情参见[计费文档](https://cloud.tencent.com/document/product/267/34175)。
    @inlinable
    public func describePushBandwidthAndFluxList(_ input: DescribePushBandwidthAndFluxListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePushBandwidthAndFluxListResponse {
        try await self.client.execute(action: "DescribePushBandwidthAndFluxList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播推流带宽和流量数据查询
    ///
    /// 直播推流带宽和流量数据查询。
    /// 推流计费会先取全球推流用量和全球播放用量进行比较，满足计费条件后再按各地区用量出账。详情参见[计费文档](https://cloud.tencent.com/document/product/267/34175)。
    @inlinable
    public func describePushBandwidthAndFluxList(startTime: String, endTime: String, pushDomains: [String]? = nil, mainlandOrOversea: String? = nil, granularity: UInt64? = nil, regionNames: [String]? = nil, countryNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePushBandwidthAndFluxListResponse> {
        self.describePushBandwidthAndFluxList(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains, mainlandOrOversea: mainlandOrOversea, granularity: granularity, regionNames: regionNames, countryNames: countryNames), region: region, logger: logger, on: eventLoop)
    }

    /// 直播推流带宽和流量数据查询
    ///
    /// 直播推流带宽和流量数据查询。
    /// 推流计费会先取全球推流用量和全球播放用量进行比较，满足计费条件后再按各地区用量出账。详情参见[计费文档](https://cloud.tencent.com/document/product/267/34175)。
    @inlinable
    public func describePushBandwidthAndFluxList(startTime: String, endTime: String, pushDomains: [String]? = nil, mainlandOrOversea: String? = nil, granularity: UInt64? = nil, regionNames: [String]? = nil, countryNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePushBandwidthAndFluxListResponse {
        try await self.describePushBandwidthAndFluxList(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains, mainlandOrOversea: mainlandOrOversea, granularity: granularity, regionNames: regionNames, countryNames: countryNames), region: region, logger: logger, on: eventLoop)
    }
}
