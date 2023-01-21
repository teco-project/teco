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

extension Iotvideoindustry {
    /// CreateLiveChannel请求参数结构体
    public struct CreateLiveChannelRequest: TCRequestModel {
        /// 直播频道名称
        public let liveChannelName: String

        /// 直播频道类型 1：固定直播；2：移动直播
        public let liveChannelType: Int64

        public init(liveChannelName: String, liveChannelType: Int64) {
            self.liveChannelName = liveChannelName
            self.liveChannelType = liveChannelType
        }

        enum CodingKeys: String, CodingKey {
            case liveChannelName = "LiveChannelName"
            case liveChannelType = "LiveChannelType"
        }
    }

    /// CreateLiveChannel返回参数结构体
    public struct CreateLiveChannelResponse: TCResponseModel {
        /// 直播频道ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveChannelId: String?

        /// 直播频道推流地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pushStreamAddress: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
            case pushStreamAddress = "PushStreamAddress"
            case requestId = "RequestId"
        }
    }

    /// 创建直播频道
    @inlinable
    public func createLiveChannel(_ input: CreateLiveChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveChannelResponse> {
        self.client.execute(action: "CreateLiveChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建直播频道
    @inlinable
    public func createLiveChannel(_ input: CreateLiveChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveChannelResponse {
        try await self.client.execute(action: "CreateLiveChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建直播频道
    @inlinable
    public func createLiveChannel(liveChannelName: String, liveChannelType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveChannelResponse> {
        self.createLiveChannel(CreateLiveChannelRequest(liveChannelName: liveChannelName, liveChannelType: liveChannelType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建直播频道
    @inlinable
    public func createLiveChannel(liveChannelName: String, liveChannelType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveChannelResponse {
        try await self.createLiveChannel(CreateLiveChannelRequest(liveChannelName: liveChannelName, liveChannelType: liveChannelType), region: region, logger: logger, on: eventLoop)
    }
}
