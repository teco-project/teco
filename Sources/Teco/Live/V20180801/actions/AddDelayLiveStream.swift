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
    /// AddDelayLiveStream请求参数结构体
    public struct AddDelayLiveStreamRequest: TCRequestModel {
        /// 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        public let appName: String

        /// 推流域名。
        public let domainName: String

        /// 流名称。
        public let streamName: String

        /// 延播时间，单位：秒，上限：600秒。
        public let delayTime: UInt64

        /// 延播设置的过期时间。UTC 格式，例如：2018-11-29T19:00:00Z。
        /// 注意：
        /// 1. 默认7天后过期，且最长支持7天内生效。
        /// 2. 北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let expireTime: String?

        public init(appName: String, domainName: String, streamName: String, delayTime: UInt64, expireTime: String? = nil) {
            self.appName = appName
            self.domainName = domainName
            self.streamName = streamName
            self.delayTime = delayTime
            self.expireTime = expireTime
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case domainName = "DomainName"
            case streamName = "StreamName"
            case delayTime = "DelayTime"
            case expireTime = "ExpireTime"
        }
    }

    /// AddDelayLiveStream返回参数结构体
    public struct AddDelayLiveStreamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置延时直播
    ///
    /// 针对大型活动直播，通过对直播流设置延时来控制现场与观众播放画面的时间间隔，避免突发状况造成影响。
    ///
    /// 注意：如果在推流前设置延播，需要提前5分钟设置，目前该接口只支持流粒度。
    @inlinable @discardableResult
    public func addDelayLiveStream(_ input: AddDelayLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDelayLiveStreamResponse> {
        self.client.execute(action: "AddDelayLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置延时直播
    ///
    /// 针对大型活动直播，通过对直播流设置延时来控制现场与观众播放画面的时间间隔，避免突发状况造成影响。
    ///
    /// 注意：如果在推流前设置延播，需要提前5分钟设置，目前该接口只支持流粒度。
    @inlinable @discardableResult
    public func addDelayLiveStream(_ input: AddDelayLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDelayLiveStreamResponse {
        try await self.client.execute(action: "AddDelayLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置延时直播
    ///
    /// 针对大型活动直播，通过对直播流设置延时来控制现场与观众播放画面的时间间隔，避免突发状况造成影响。
    ///
    /// 注意：如果在推流前设置延播，需要提前5分钟设置，目前该接口只支持流粒度。
    @inlinable @discardableResult
    public func addDelayLiveStream(appName: String, domainName: String, streamName: String, delayTime: UInt64, expireTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDelayLiveStreamResponse> {
        self.addDelayLiveStream(.init(appName: appName, domainName: domainName, streamName: streamName, delayTime: delayTime, expireTime: expireTime), region: region, logger: logger, on: eventLoop)
    }

    /// 设置延时直播
    ///
    /// 针对大型活动直播，通过对直播流设置延时来控制现场与观众播放画面的时间间隔，避免突发状况造成影响。
    ///
    /// 注意：如果在推流前设置延播，需要提前5分钟设置，目前该接口只支持流粒度。
    @inlinable @discardableResult
    public func addDelayLiveStream(appName: String, domainName: String, streamName: String, delayTime: UInt64, expireTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDelayLiveStreamResponse {
        try await self.addDelayLiveStream(.init(appName: appName, domainName: domainName, streamName: streamName, delayTime: delayTime, expireTime: expireTime), region: region, logger: logger, on: eventLoop)
    }
}
