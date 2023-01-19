//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ForbidLiveStream请求参数结构体
    public struct ForbidLiveStreamRequest: TCRequestModel {
        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        public let appName: String

        /// 您的推流域名。
        public let domainName: String

        /// 流名称。
        public let streamName: String

        /// 恢复流的时间。UTC 格式，例如：2018-11-29T19:00:00Z。
        /// 注意：
        /// 1. 默认禁推7天，且最长支持禁推90天。
        /// 2. 北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let resumeTime: String?

        /// 禁推原因。
        /// 注明：请务必填写禁推原因，防止误操作。
        /// 长度限制：2048字节。
        public let reason: String?

        public init(appName: String, domainName: String, streamName: String, resumeTime: String? = nil, reason: String? = nil) {
            self.appName = appName
            self.domainName = domainName
            self.streamName = streamName
            self.resumeTime = resumeTime
            self.reason = reason
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case domainName = "DomainName"
            case streamName = "StreamName"
            case resumeTime = "ResumeTime"
            case reason = "Reason"
        }
    }

    /// ForbidLiveStream返回参数结构体
    public struct ForbidLiveStreamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁推直播流
    ///
    /// 禁止某条流的推送，可以预设某个时刻将流恢复。
    @inlinable
    public func forbidLiveStream(_ input: ForbidLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForbidLiveStreamResponse> {
        self.client.execute(action: "ForbidLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁推直播流
    ///
    /// 禁止某条流的推送，可以预设某个时刻将流恢复。
    @inlinable
    public func forbidLiveStream(_ input: ForbidLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForbidLiveStreamResponse {
        try await self.client.execute(action: "ForbidLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁推直播流
    ///
    /// 禁止某条流的推送，可以预设某个时刻将流恢复。
    @inlinable
    public func forbidLiveStream(appName: String, domainName: String, streamName: String, resumeTime: String? = nil, reason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForbidLiveStreamResponse> {
        self.forbidLiveStream(ForbidLiveStreamRequest(appName: appName, domainName: domainName, streamName: streamName, resumeTime: resumeTime, reason: reason), region: region, logger: logger, on: eventLoop)
    }

    /// 禁推直播流
    ///
    /// 禁止某条流的推送，可以预设某个时刻将流恢复。
    @inlinable
    public func forbidLiveStream(appName: String, domainName: String, streamName: String, resumeTime: String? = nil, reason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForbidLiveStreamResponse {
        try await self.forbidLiveStream(ForbidLiveStreamRequest(appName: appName, domainName: domainName, streamName: streamName, resumeTime: resumeTime, reason: reason), region: region, logger: logger, on: eventLoop)
    }
}
