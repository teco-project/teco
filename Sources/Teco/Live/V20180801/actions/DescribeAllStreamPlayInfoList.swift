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
    /// DescribeAllStreamPlayInfoList请求参数结构体
    public struct DescribeAllStreamPlayInfoListRequest: TCRequestModel {
        /// 查询时间点，精确到分钟粒度，支持最近1个月的数据查询，数据延迟为5分钟左右，如果要查询实时的数据，建议传递5分钟前的时间点，格式为yyyy-mm-dd HH:MM:00。（只精确至分钟，秒数填00）。
        public let queryTime: String

        /// 播放域名列表，若不填，表示总体数据。
        public let playDomains: [String]?

        public init(queryTime: String, playDomains: [String]? = nil) {
            self.queryTime = queryTime
            self.playDomains = playDomains
        }

        enum CodingKeys: String, CodingKey {
            case queryTime = "QueryTime"
            case playDomains = "PlayDomains"
        }
    }

    /// DescribeAllStreamPlayInfoList返回参数结构体
    public struct DescribeAllStreamPlayInfoListResponse: TCResponseModel {
        /// 查询时间点，回传的输入参数中的查询时间。
        public let queryTime: String

        /// 数据信息列表。
        public let dataInfoList: [MonitorStreamPlayInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case queryTime = "QueryTime"
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询某个时间点所有流的下行播放数据
    ///
    /// 输入某个时间点（1分钟维度），查询该时间点所有流的下行信息。
    @inlinable
    public func describeAllStreamPlayInfoList(_ input: DescribeAllStreamPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllStreamPlayInfoListResponse> {
        self.client.execute(action: "DescribeAllStreamPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个时间点所有流的下行播放数据
    ///
    /// 输入某个时间点（1分钟维度），查询该时间点所有流的下行信息。
    @inlinable
    public func describeAllStreamPlayInfoList(_ input: DescribeAllStreamPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllStreamPlayInfoListResponse {
        try await self.client.execute(action: "DescribeAllStreamPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个时间点所有流的下行播放数据
    ///
    /// 输入某个时间点（1分钟维度），查询该时间点所有流的下行信息。
    @inlinable
    public func describeAllStreamPlayInfoList(queryTime: String, playDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllStreamPlayInfoListResponse> {
        self.describeAllStreamPlayInfoList(DescribeAllStreamPlayInfoListRequest(queryTime: queryTime, playDomains: playDomains), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个时间点所有流的下行播放数据
    ///
    /// 输入某个时间点（1分钟维度），查询该时间点所有流的下行信息。
    @inlinable
    public func describeAllStreamPlayInfoList(queryTime: String, playDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllStreamPlayInfoListResponse {
        try await self.describeAllStreamPlayInfoList(DescribeAllStreamPlayInfoListRequest(queryTime: queryTime, playDomains: playDomains), region: region, logger: logger, on: eventLoop)
    }
}
