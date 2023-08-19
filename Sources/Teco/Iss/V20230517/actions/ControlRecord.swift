//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// ControlRecord请求参数结构体
    public struct ControlRecordRequest: TCRequest {
        /// 通道ID（录像播放地址格式 https://${domain}/live/${ChannelId}@${Session}）
        public let channelId: String

        /// 录像会话 ID （ 录像播放地址格式 https://${domain}/live/${ChannelId}@${Session}）
        public let session: String

        /// 录像操作类型 （play:播放；pause:暂停 ；stop:关闭）
        public let controlAction: String

        /// 跳转进度 （ 参数应大于等于0，跳转到录像开始时间的相对时间（单位秒），例如0就是跳转到录像开始的时间,不可以和 Scale 参数同时出现）
        public let position: Int64?

        /// 速度 （ 范围（0.25,0.5,1,2,4,8），不可以和 Pos 参数同时出现）
        public let scale: Float?

        public init(channelId: String, session: String, controlAction: String, position: Int64? = nil, scale: Float? = nil) {
            self.channelId = channelId
            self.session = session
            self.controlAction = controlAction
            self.position = position
            self.scale = scale
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case session = "Session"
            case controlAction = "ControlAction"
            case position = "Position"
            case scale = "Scale"
        }
    }

    /// ControlRecord返回参数结构体
    public struct ControlRecordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 本地录像回放控制
    ///
    /// 用于录像回放过程中的倍速、跳转、播放/暂停/停止等控制。
    @inlinable @discardableResult
    public func controlRecord(_ input: ControlRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlRecordResponse> {
        self.client.execute(action: "ControlRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 本地录像回放控制
    ///
    /// 用于录像回放过程中的倍速、跳转、播放/暂停/停止等控制。
    @inlinable @discardableResult
    public func controlRecord(_ input: ControlRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlRecordResponse {
        try await self.client.execute(action: "ControlRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 本地录像回放控制
    ///
    /// 用于录像回放过程中的倍速、跳转、播放/暂停/停止等控制。
    @inlinable @discardableResult
    public func controlRecord(channelId: String, session: String, controlAction: String, position: Int64? = nil, scale: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlRecordResponse> {
        self.controlRecord(.init(channelId: channelId, session: session, controlAction: controlAction, position: position, scale: scale), region: region, logger: logger, on: eventLoop)
    }

    /// 本地录像回放控制
    ///
    /// 用于录像回放过程中的倍速、跳转、播放/暂停/停止等控制。
    @inlinable @discardableResult
    public func controlRecord(channelId: String, session: String, controlAction: String, position: Int64? = nil, scale: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlRecordResponse {
        try await self.controlRecord(.init(channelId: channelId, session: session, controlAction: controlAction, position: position, scale: scale), region: region, logger: logger, on: eventLoop)
    }
}
