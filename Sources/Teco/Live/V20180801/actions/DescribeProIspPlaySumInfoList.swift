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
    /// DescribeProIspPlaySumInfoList请求参数结构体
    public struct DescribeProIspPlaySumInfoListRequest: TCPaginatedRequest {
        /// 起始时间，
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/267/38543#:~:text=I-,ISO,-%E6%97%A5%E6%9C%9F%E6%A0%BC%E5%BC%8F)。
        public let startTime: String

        /// 结束时间，
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/267/38543#:~:text=I-,ISO,-%E6%97%A5%E6%9C%9F%E6%A0%BC%E5%BC%8F)。
        /// 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        public let endTime: String

        /// 统计的类型，可选值：”Province”(省份)，”Isp”(运营商)，“CountryOrArea”(国家或地区)。
        public let statType: String

        /// 播放域名列表，不填则为全部。
        public let playDomains: [String]?

        /// 页号，范围是[1,1000]，默认值是1。
        public let pageNum: UInt64?

        /// 每页个数，范围是[1,1000]，默认值是20。
        public let pageSize: UInt64?

        /// 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        public let mainlandOrOversea: String?

        /// 输出字段使用的语言，可选值：Chinese（默认值），English；目前国家，省份和运营商支持多语言。
        public let outLanguage: String?

        public init(startTime: String, endTime: String, statType: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, mainlandOrOversea: String? = nil, outLanguage: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.statType = statType
            self.playDomains = playDomains
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.mainlandOrOversea = mainlandOrOversea
            self.outLanguage = outLanguage
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case statType = "StatType"
            case playDomains = "PlayDomains"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case mainlandOrOversea = "MainlandOrOversea"
            case outLanguage = "OutLanguage"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProIspPlaySumInfoListResponse) -> DescribeProIspPlaySumInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, statType: self.statType, playDomains: self.playDomains, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, mainlandOrOversea: self.mainlandOrOversea, outLanguage: self.outLanguage)
        }
    }

    /// DescribeProIspPlaySumInfoList返回参数结构体
    public struct DescribeProIspPlaySumInfoListResponse: TCPaginatedResponse {
        /// 总流量。
        public let totalFlux: Float

        /// 总请求数。
        public let totalRequest: UInt64

        /// 统计的类型。
        public let statType: String

        /// 每页的记录数。
        public let pageSize: UInt64

        /// 页号。
        public let pageNum: UInt64

        /// 总记录数。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 省份，运营商，国家或地区汇总数据列表。
        public let dataInfoList: [ProIspPlaySumInfo]

        /// 下载速度，单位：MB/s，计算方式：总流量/总时长。
        public let avgFluxPerSecond: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalFlux = "TotalFlux"
            case totalRequest = "TotalRequest"
            case statType = "StatType"
            case pageSize = "PageSize"
            case pageNum = "PageNum"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case dataInfoList = "DataInfoList"
            case avgFluxPerSecond = "AvgFluxPerSecond"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProIspPlaySumInfo`` list from the paginated response.
        public func getItems() -> [ProIspPlaySumInfo] {
            self.dataInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoList(_ input: DescribeProIspPlaySumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProIspPlaySumInfoListResponse> {
        self.client.execute(action: "DescribeProIspPlaySumInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoList(_ input: DescribeProIspPlaySumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProIspPlaySumInfoListResponse {
        try await self.client.execute(action: "DescribeProIspPlaySumInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoList(startTime: String, endTime: String, statType: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, mainlandOrOversea: String? = nil, outLanguage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProIspPlaySumInfoListResponse> {
        self.describeProIspPlaySumInfoList(.init(startTime: startTime, endTime: endTime, statType: statType, playDomains: playDomains, pageNum: pageNum, pageSize: pageSize, mainlandOrOversea: mainlandOrOversea, outLanguage: outLanguage), region: region, logger: logger, on: eventLoop)
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoList(startTime: String, endTime: String, statType: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, mainlandOrOversea: String? = nil, outLanguage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProIspPlaySumInfoListResponse {
        try await self.describeProIspPlaySumInfoList(.init(startTime: startTime, endTime: endTime, statType: statType, playDomains: playDomains, pageNum: pageNum, pageSize: pageSize, mainlandOrOversea: mainlandOrOversea, outLanguage: outLanguage), region: region, logger: logger, on: eventLoop)
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoListPaginated(_ input: DescribeProIspPlaySumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProIspPlaySumInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProIspPlaySumInfoList, logger: logger, on: eventLoop)
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable @discardableResult
    public func describeProIspPlaySumInfoListPaginated(_ input: DescribeProIspPlaySumInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProIspPlaySumInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProIspPlaySumInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询分省份分运营商播放汇总数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    ///
    /// - Returns: `AsyncSequence`s of ``ProIspPlaySumInfo`` and ``DescribeProIspPlaySumInfoListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProIspPlaySumInfoListPaginator(_ input: DescribeProIspPlaySumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProIspPlaySumInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProIspPlaySumInfoList, logger: logger, on: eventLoop)
    }
}
