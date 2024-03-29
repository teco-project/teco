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
    /// DescribeLiveXP2PDetailInfoList请求参数结构体
    public struct DescribeLiveXP2PDetailInfoListRequest: TCRequest {
        /// utc分钟粒度查询时间，查询某一分钟的用量数据，格式为：yyyy-mm-ddTHH:MM:00Z，参考https://cloud.tencent.com/document/product/266/11732#I，
        /// 例如：北京时间2019-01-08 10:00:00，对应utc时间为：2019-01-08T10:00:00+08:00。
        ///
        /// 支持最近六个月的查询。
        public let queryTime: String?

        /// 类型数组，分直播live和点播vod，不传默认查全部。
        public let type: [String]?

        /// 查询流数组，不传默认查所有流。
        public let streamNames: [String]?

        /// 查询维度，不传该参数则默认查询流维度的数据，传递该参数则只查对应维度的数据，和返回值的字段相关，目前支持AppId维度查询。
        public let dimension: [String]?

        public init(queryTime: String? = nil, type: [String]? = nil, streamNames: [String]? = nil, dimension: [String]? = nil) {
            self.queryTime = queryTime
            self.type = type
            self.streamNames = streamNames
            self.dimension = dimension
        }

        enum CodingKeys: String, CodingKey {
            case queryTime = "QueryTime"
            case type = "Type"
            case streamNames = "StreamNames"
            case dimension = "Dimension"
        }
    }

    /// DescribeLiveXP2PDetailInfoList返回参数结构体
    public struct DescribeLiveXP2PDetailInfoListResponse: TCResponse {
        /// P2P流统计信息。
        public let dataInfoList: [XP2PDetailInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// P2P流数据查询
    ///
    /// P2P流数据查询接口，用来获取流量、卡播和起播信息。
    @inlinable
    public func describeLiveXP2PDetailInfoList(_ input: DescribeLiveXP2PDetailInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveXP2PDetailInfoListResponse> {
        self.client.execute(action: "DescribeLiveXP2PDetailInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// P2P流数据查询
    ///
    /// P2P流数据查询接口，用来获取流量、卡播和起播信息。
    @inlinable
    public func describeLiveXP2PDetailInfoList(_ input: DescribeLiveXP2PDetailInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveXP2PDetailInfoListResponse {
        try await self.client.execute(action: "DescribeLiveXP2PDetailInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// P2P流数据查询
    ///
    /// P2P流数据查询接口，用来获取流量、卡播和起播信息。
    @inlinable
    public func describeLiveXP2PDetailInfoList(queryTime: String? = nil, type: [String]? = nil, streamNames: [String]? = nil, dimension: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveXP2PDetailInfoListResponse> {
        self.describeLiveXP2PDetailInfoList(.init(queryTime: queryTime, type: type, streamNames: streamNames, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }

    /// P2P流数据查询
    ///
    /// P2P流数据查询接口，用来获取流量、卡播和起播信息。
    @inlinable
    public func describeLiveXP2PDetailInfoList(queryTime: String? = nil, type: [String]? = nil, streamNames: [String]? = nil, dimension: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveXP2PDetailInfoListResponse {
        try await self.describeLiveXP2PDetailInfoList(.init(queryTime: queryTime, type: type, streamNames: streamNames, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }
}
