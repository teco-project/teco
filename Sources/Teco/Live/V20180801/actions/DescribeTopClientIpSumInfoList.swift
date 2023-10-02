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
    /// DescribeTopClientIpSumInfoList请求参数结构体
    public struct DescribeTopClientIpSumInfoListRequest: TCPaginatedRequest {
        /// 起始时间点，
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/267/38543#:~:text=I-,ISO,-%E6%97%A5%E6%9C%9F%E6%A0%BC%E5%BC%8F)。
        public let startTime: String

        /// 结束时间点，
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/267/38543#:~:text=I-,ISO,-%E6%97%A5%E6%9C%9F%E6%A0%BC%E5%BC%8F)。
        /// 时间跨度在[0,4小时]，支持最近1天数据查询。
        public let endTime: String

        /// 播放域名，默认为不填，表示求总体数据。
        public let playDomains: [String]?

        /// 页号，范围是[1,1000]，默认值是1。
        public let pageNum: UInt64?

        /// 每页个数，范围是[1,1000]，默认值是20。
        public let pageSize: UInt64?

        /// 排序指标，可选值包括TotalRequest（默认值），FailedRequest,TotalFlux。
        public let orderParam: String?

        /// 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        public let mainlandOrOversea: String?

        /// 输出字段使用的语言，可选值：Chinese（默认值），English；目前国家，省份和运营商支持多语言。
        public let outLanguage: String?

        public init(startTime: String, endTime: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, orderParam: String? = nil, mainlandOrOversea: String? = nil, outLanguage: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.playDomains = playDomains
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.orderParam = orderParam
            self.mainlandOrOversea = mainlandOrOversea
            self.outLanguage = outLanguage
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case playDomains = "PlayDomains"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case orderParam = "OrderParam"
            case mainlandOrOversea = "MainlandOrOversea"
            case outLanguage = "OutLanguage"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTopClientIpSumInfoListResponse) -> DescribeTopClientIpSumInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, playDomains: self.playDomains, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, orderParam: self.orderParam, mainlandOrOversea: self.mainlandOrOversea, outLanguage: self.outLanguage)
        }
    }

    /// DescribeTopClientIpSumInfoList返回参数结构体
    public struct DescribeTopClientIpSumInfoListResponse: TCPaginatedResponse {
        /// 页号，范围是[1,1000]，默认值是1。
        public let pageNum: UInt64

        /// 每页个数，范围是[1,1000]，默认值是20。
        public let pageSize: UInt64

        /// 排序指标，可选值包括”TotalRequest”，”FailedRequest”,“TotalFlux”。
        public let orderParam: String

        /// 记录总数。
        public let totalNum: UInt64

        /// 记录总页数。
        public let totalPage: UInt64

        /// 数据内容。
        public let dataInfoList: [ClientIpPlaySumInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case orderParam = "OrderParam"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ClientIpPlaySumInfo`` list from the paginated response.
        public func getItems() -> [ClientIpPlaySumInfo] {
            self.dataInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoList(_ input: DescribeTopClientIpSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopClientIpSumInfoListResponse> {
        self.client.execute(action: "DescribeTopClientIpSumInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoList(_ input: DescribeTopClientIpSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopClientIpSumInfoListResponse {
        try await self.client.execute(action: "DescribeTopClientIpSumInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoList(startTime: String, endTime: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, orderParam: String? = nil, mainlandOrOversea: String? = nil, outLanguage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopClientIpSumInfoListResponse> {
        self.describeTopClientIpSumInfoList(.init(startTime: startTime, endTime: endTime, playDomains: playDomains, pageNum: pageNum, pageSize: pageSize, orderParam: orderParam, mainlandOrOversea: mainlandOrOversea, outLanguage: outLanguage), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoList(startTime: String, endTime: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, orderParam: String? = nil, mainlandOrOversea: String? = nil, outLanguage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopClientIpSumInfoListResponse {
        try await self.describeTopClientIpSumInfoList(.init(startTime: startTime, endTime: endTime, playDomains: playDomains, pageNum: pageNum, pageSize: pageSize, orderParam: orderParam, mainlandOrOversea: mainlandOrOversea, outLanguage: outLanguage), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoListPaginated(_ input: DescribeTopClientIpSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClientIpPlaySumInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTopClientIpSumInfoList, logger: logger, on: eventLoop)
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable @discardableResult
    public func describeTopClientIpSumInfoListPaginated(_ input: DescribeTopClientIpSumInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopClientIpSumInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopClientIpSumInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    ///
    /// - Returns: `AsyncSequence`s of ``ClientIpPlaySumInfo`` and ``DescribeTopClientIpSumInfoListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopClientIpSumInfoListPaginator(_ input: DescribeTopClientIpSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopClientIpSumInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopClientIpSumInfoList, logger: logger, on: eventLoop)
    }
}
