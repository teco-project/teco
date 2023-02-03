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

extension Bizlive {
    /// DescribeStreamPlayInfoList请求参数结构体
    public struct DescribeStreamPlayInfoListRequest: TCRequestModel {
        /// 结束时间，北京时间，格式：2019-04-28 10:36:00
        /// 结束时间 和 开始时间  必须在同一天内。
        public let endTime: String

        /// 播放域名。
        public let playDomain: String

        /// 开始时间，北京时间，格式：2019-04-28 10:36:00
        /// 当前时间 和 开始时间 间隔不超过30天。
        public let startTime: String

        /// 流名称，精确匹配。
        /// 若不填，则为查询总体播放数据。
        public let streamName: String?

        public init(endTime: String, playDomain: String, startTime: String, streamName: String? = nil) {
            self.endTime = endTime
            self.playDomain = playDomain
            self.startTime = startTime
            self.streamName = streamName
        }

        enum CodingKeys: String, CodingKey {
            case endTime = "EndTime"
            case playDomain = "PlayDomain"
            case startTime = "StartTime"
            case streamName = "StreamName"
        }
    }

    /// DescribeStreamPlayInfoList返回参数结构体
    public struct DescribeStreamPlayInfoListResponse: TCResponseModel {
        /// 统计信息列表。
        public let dataInfoList: [DayStreamPlayInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询流的播放信息列表
    ///
    /// 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据。
    @inlinable
    public func describeStreamPlayInfoList(_ input: DescribeStreamPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamPlayInfoListResponse> {
        self.client.execute(action: "DescribeStreamPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流的播放信息列表
    ///
    /// 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据。
    @inlinable
    public func describeStreamPlayInfoList(_ input: DescribeStreamPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamPlayInfoListResponse {
        try await self.client.execute(action: "DescribeStreamPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流的播放信息列表
    ///
    /// 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据。
    @inlinable
    public func describeStreamPlayInfoList(endTime: String, playDomain: String, startTime: String, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamPlayInfoListResponse> {
        let input = DescribeStreamPlayInfoListRequest(endTime: endTime, playDomain: playDomain, startTime: startTime, streamName: streamName)
        return self.client.execute(action: "DescribeStreamPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流的播放信息列表
    ///
    /// 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据。
    @inlinable
    public func describeStreamPlayInfoList(endTime: String, playDomain: String, startTime: String, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamPlayInfoListResponse {
        let input = DescribeStreamPlayInfoListRequest(endTime: endTime, playDomain: playDomain, startTime: startTime, streamName: streamName)
        return try await self.client.execute(action: "DescribeStreamPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
