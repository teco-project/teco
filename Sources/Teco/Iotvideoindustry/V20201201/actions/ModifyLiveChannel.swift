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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotvideoindustry {
    /// ModifyLiveChannel请求参数结构体
    public struct ModifyLiveChannelRequest: TCRequestModel {
        /// 直播频道ID
        public let liveChannelId: String

        /// 直播频道名
        public let liveChannelName: String

        public init(liveChannelId: String, liveChannelName: String) {
            self.liveChannelId = liveChannelId
            self.liveChannelName = liveChannelName
        }

        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
            case liveChannelName = "LiveChannelName"
        }
    }

    /// ModifyLiveChannel返回参数结构体
    public struct ModifyLiveChannelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑直播接口
    @inlinable @discardableResult
    public func modifyLiveChannel(_ input: ModifyLiveChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveChannelResponse> {
        self.client.execute(action: "ModifyLiveChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑直播接口
    @inlinable @discardableResult
    public func modifyLiveChannel(_ input: ModifyLiveChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveChannelResponse {
        try await self.client.execute(action: "ModifyLiveChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑直播接口
    @inlinable @discardableResult
    public func modifyLiveChannel(liveChannelId: String, liveChannelName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveChannelResponse> {
        self.modifyLiveChannel(.init(liveChannelId: liveChannelId, liveChannelName: liveChannelName), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑直播接口
    @inlinable @discardableResult
    public func modifyLiveChannel(liveChannelId: String, liveChannelName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveChannelResponse {
        try await self.modifyLiveChannel(.init(liveChannelId: liveChannelId, liveChannelName: liveChannelName), region: region, logger: logger, on: eventLoop)
    }
}
