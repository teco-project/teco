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
    /// DescribeStreamPushInfoList请求参数结构体
    public struct DescribeStreamPushInfoListRequest: TCRequestModel {
        /// 流名称。
        public let streamName: String

        /// 起始时间点，北京时间，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间点，北京时间，格式为yyyy-mm-dd HH:MM:SS，支持查询最近7天数据，建议查询时间跨度在3小时之内。
        public let endTime: String

        /// 推流域名。
        public let pushDomain: String?

        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        public let appName: String?

        public init(streamName: String, startTime: String, endTime: String, pushDomain: String? = nil, appName: String? = nil) {
            self.streamName = streamName
            self.startTime = startTime
            self.endTime = endTime
            self.pushDomain = pushDomain
            self.appName = appName
        }

        enum CodingKeys: String, CodingKey {
            case streamName = "StreamName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pushDomain = "PushDomain"
            case appName = "AppName"
        }
    }

    /// DescribeStreamPushInfoList返回参数结构体
    public struct DescribeStreamPushInfoListResponse: TCResponseModel {
        /// 返回的数据列表。
        public let dataInfoList: [PushQualityData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询某条流上行推流质量数据
    ///
    /// 查询流id的上行推流质量数据，包括音视频的帧率，码率，流逝时间，编码格式等。
    @inlinable
    public func describeStreamPushInfoList(_ input: DescribeStreamPushInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamPushInfoListResponse> {
        self.client.execute(action: "DescribeStreamPushInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某条流上行推流质量数据
    ///
    /// 查询流id的上行推流质量数据，包括音视频的帧率，码率，流逝时间，编码格式等。
    @inlinable
    public func describeStreamPushInfoList(_ input: DescribeStreamPushInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamPushInfoListResponse {
        try await self.client.execute(action: "DescribeStreamPushInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某条流上行推流质量数据
    ///
    /// 查询流id的上行推流质量数据，包括音视频的帧率，码率，流逝时间，编码格式等。
    @inlinable
    public func describeStreamPushInfoList(streamName: String, startTime: String, endTime: String, pushDomain: String? = nil, appName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamPushInfoListResponse> {
        self.describeStreamPushInfoList(.init(streamName: streamName, startTime: startTime, endTime: endTime, pushDomain: pushDomain, appName: appName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某条流上行推流质量数据
    ///
    /// 查询流id的上行推流质量数据，包括音视频的帧率，码率，流逝时间，编码格式等。
    @inlinable
    public func describeStreamPushInfoList(streamName: String, startTime: String, endTime: String, pushDomain: String? = nil, appName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamPushInfoListResponse {
        try await self.describeStreamPushInfoList(.init(streamName: streamName, startTime: startTime, endTime: endTime, pushDomain: pushDomain, appName: appName), region: region, logger: logger, on: eventLoop)
    }
}
