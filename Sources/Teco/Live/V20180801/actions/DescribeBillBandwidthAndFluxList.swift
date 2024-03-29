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

extension Live {
    /// DescribeBillBandwidthAndFluxList请求参数结构体
    public struct DescribeBillBandwidthAndFluxListRequest: TCRequest {
        /// 起始时间点，接口查询支持两种时间格式：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        public let startTime: String

        /// 结束时间点，接口查询支持两种时间格式：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        /// 起始和结束时间跨度不支持超过31天。支持最近3年的数据查询
        public let endTime: String

        /// 直播播放域名，若不填，表示总体数据。
        public let playDomains: [String]?

        /// 可选值：
        /// Mainland：查询国内数据，
        /// Oversea：则查询国外数据，
        /// 默认：查询国内+国外的数据。
        /// 注：LEB（快直播）只支持国内+国外数据查询。
        public let mainlandOrOversea: String?

        /// 数据粒度，支持如下粒度：
        /// 5：5分钟粒度，（跨度不支持超过1天），
        /// 60：1小时粒度（跨度不支持超过一个月），
        /// 1440：天粒度（跨度不支持超过一个月）。
        /// 默认值：5。
        public let granularity: UInt64?

        /// 服务名称，可选值包括LVB(标准直播)，LEB(快直播)，不填则查LVB+LEB总值。
        public let serviceName: String?

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

        public init(startTime: String, endTime: String, playDomains: [String]? = nil, mainlandOrOversea: String? = nil, granularity: UInt64? = nil, serviceName: String? = nil, regionNames: [String]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.playDomains = playDomains
            self.mainlandOrOversea = mainlandOrOversea
            self.granularity = granularity
            self.serviceName = serviceName
            self.regionNames = regionNames
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case playDomains = "PlayDomains"
            case mainlandOrOversea = "MainlandOrOversea"
            case granularity = "Granularity"
            case serviceName = "ServiceName"
            case regionNames = "RegionNames"
        }
    }

    /// DescribeBillBandwidthAndFluxList返回参数结构体
    public struct DescribeBillBandwidthAndFluxListResponse: TCResponse {
        /// 峰值带宽所在时间点，接口返回支持两种时间格式(与接口请求传递的时间格式一致)：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        public let peakBandwidthTime: String

        /// 峰值带宽，单位是Mbps。
        public let peakBandwidth: Float

        /// 95峰值带宽所在时间点，接口返回支持两种时间格式(与接口请求传递的时间格式一致)：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        public let p95PeakBandwidthTime: String

        /// 95峰值带宽，单位是Mbps。
        public let p95PeakBandwidth: Float

        /// 总流量，单位是MB。
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

    /// 直播播放带宽和流量数据查询
    ///
    /// 直播播放带宽和流量数据查询。
    @inlinable
    public func describeBillBandwidthAndFluxList(_ input: DescribeBillBandwidthAndFluxListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillBandwidthAndFluxListResponse> {
        self.client.execute(action: "DescribeBillBandwidthAndFluxList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播播放带宽和流量数据查询
    ///
    /// 直播播放带宽和流量数据查询。
    @inlinable
    public func describeBillBandwidthAndFluxList(_ input: DescribeBillBandwidthAndFluxListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillBandwidthAndFluxListResponse {
        try await self.client.execute(action: "DescribeBillBandwidthAndFluxList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播播放带宽和流量数据查询
    ///
    /// 直播播放带宽和流量数据查询。
    @inlinable
    public func describeBillBandwidthAndFluxList(startTime: String, endTime: String, playDomains: [String]? = nil, mainlandOrOversea: String? = nil, granularity: UInt64? = nil, serviceName: String? = nil, regionNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillBandwidthAndFluxListResponse> {
        self.describeBillBandwidthAndFluxList(.init(startTime: startTime, endTime: endTime, playDomains: playDomains, mainlandOrOversea: mainlandOrOversea, granularity: granularity, serviceName: serviceName, regionNames: regionNames), region: region, logger: logger, on: eventLoop)
    }

    /// 直播播放带宽和流量数据查询
    ///
    /// 直播播放带宽和流量数据查询。
    @inlinable
    public func describeBillBandwidthAndFluxList(startTime: String, endTime: String, playDomains: [String]? = nil, mainlandOrOversea: String? = nil, granularity: UInt64? = nil, serviceName: String? = nil, regionNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillBandwidthAndFluxListResponse {
        try await self.describeBillBandwidthAndFluxList(.init(startTime: startTime, endTime: endTime, playDomains: playDomains, mainlandOrOversea: mainlandOrOversea, granularity: granularity, serviceName: serviceName, regionNames: regionNames), region: region, logger: logger, on: eventLoop)
    }
}
