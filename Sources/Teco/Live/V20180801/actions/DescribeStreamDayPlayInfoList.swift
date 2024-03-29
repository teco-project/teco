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
    /// DescribeStreamDayPlayInfoList请求参数结构体
    public struct DescribeStreamDayPlayInfoListRequest: TCPaginatedRequest {
        /// 日期，格式：YYYY-mm-dd。
        /// 第二天凌晨3点出昨天的数据，建议在这个时间点之后查询最新数据。支持最近3个月的数据查询。
        public let dayTime: String

        /// 播放域名。
        public let playDomain: String?

        /// 页号，范围[1,1000]，默认值是1。
        public let pageNum: UInt64?

        /// 每页个数，范围[100,1000]，默认值是1000。
        public let pageSize: UInt64?

        /// 可选值：
        /// Mainland：查询国内数据，
        /// Oversea：则查询国外数据，
        /// 默认：查询国内+国外的数据。
        public let mainlandOrOversea: String?

        /// 服务名称，可选值包括LVB(标准直播)，LEB(快直播)，不填则查LVB+LEB总值。
        public let serviceName: String?

        public init(dayTime: String, playDomain: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, mainlandOrOversea: String? = nil, serviceName: String? = nil) {
            self.dayTime = dayTime
            self.playDomain = playDomain
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.mainlandOrOversea = mainlandOrOversea
            self.serviceName = serviceName
        }

        enum CodingKeys: String, CodingKey {
            case dayTime = "DayTime"
            case playDomain = "PlayDomain"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case mainlandOrOversea = "MainlandOrOversea"
            case serviceName = "ServiceName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeStreamDayPlayInfoListResponse) -> DescribeStreamDayPlayInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(dayTime: self.dayTime, playDomain: self.playDomain, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, mainlandOrOversea: self.mainlandOrOversea, serviceName: self.serviceName)
        }
    }

    /// DescribeStreamDayPlayInfoList返回参数结构体
    public struct DescribeStreamDayPlayInfoListResponse: TCPaginatedResponse {
        /// 播放数据信息列表。
        public let dataInfoList: [PlayDataInfoByStream]

        /// 总数量。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 当前数据所处页码。
        public let pageNum: UInt64

        /// 每页个数。
        public let pageSize: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PlayDataInfoByStream`` list from the paginated response.
        public func getItems() -> [PlayDataInfoByStream] {
            self.dataInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    @inlinable
    public func describeStreamDayPlayInfoList(_ input: DescribeStreamDayPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamDayPlayInfoListResponse> {
        self.client.execute(action: "DescribeStreamDayPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    @inlinable
    public func describeStreamDayPlayInfoList(_ input: DescribeStreamDayPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamDayPlayInfoListResponse {
        try await self.client.execute(action: "DescribeStreamDayPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    @inlinable
    public func describeStreamDayPlayInfoList(dayTime: String, playDomain: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, mainlandOrOversea: String? = nil, serviceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamDayPlayInfoListResponse> {
        self.describeStreamDayPlayInfoList(.init(dayTime: dayTime, playDomain: playDomain, pageNum: pageNum, pageSize: pageSize, mainlandOrOversea: mainlandOrOversea, serviceName: serviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    @inlinable
    public func describeStreamDayPlayInfoList(dayTime: String, playDomain: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, mainlandOrOversea: String? = nil, serviceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamDayPlayInfoListResponse {
        try await self.describeStreamDayPlayInfoList(.init(dayTime: dayTime, playDomain: playDomain, pageNum: pageNum, pageSize: pageSize, mainlandOrOversea: mainlandOrOversea, serviceName: serviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    @inlinable
    public func describeStreamDayPlayInfoListPaginated(_ input: DescribeStreamDayPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PlayDataInfoByStream])> {
        self.client.paginate(input: input, region: region, command: self.describeStreamDayPlayInfoList, logger: logger, on: eventLoop)
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    @inlinable @discardableResult
    public func describeStreamDayPlayInfoListPaginated(_ input: DescribeStreamDayPlayInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStreamDayPlayInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStreamDayPlayInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询所有流的流量数据
    ///
    /// 该接口为监控数据接口，数据采集及统计方式与计费数据不同，仅供运营分析使用，不能用于计费对账参考。
    /// 查询天维度每条流的播放数据，包括总流量等。
    ///
    /// - Returns: `AsyncSequence`s of ``PlayDataInfoByStream`` and ``DescribeStreamDayPlayInfoListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeStreamDayPlayInfoListPaginator(_ input: DescribeStreamDayPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeStreamDayPlayInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStreamDayPlayInfoList, logger: logger, on: eventLoop)
    }
}
