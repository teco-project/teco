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
    /// ControlChannelLocalRecord请求参数结构体
    public struct ControlChannelLocalRecordRequest: TCRequestModel {
        /// 设备唯一标识
        public let deviceId: String

        /// 通道唯一标识
        public let channelId: String

        /// 流Id，流的唯一标识
        public let streamId: String

        /// 控制参数，转义的json字符串
        /// 目前支持的command：
        /// "Command": "{"Action":"PAUSE"}" 暂停
        /// "Command": "{"Action":"PLAY"}" 暂停恢复
        /// "Command": "{"Action":"PLAY","Offset":"15"}" 基于文件起始时间点的位置偏移，单位秒
        public let command: String

        public init(deviceId: String, channelId: String, streamId: String, command: String) {
            self.deviceId = deviceId
            self.channelId = channelId
            self.streamId = streamId
            self.command = command
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
            case streamId = "StreamId"
            case command = "Command"
        }
    }

    /// ControlChannelLocalRecord返回参数结构体
    public struct ControlChannelLocalRecordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 控制通道本地回放流
    ///
    /// 本接口（ControlChannelLocalRecord）用于对通道本地回放流进行控制，包括暂停、播放、拉动、结束等
    @inlinable @discardableResult
    public func controlChannelLocalRecord(_ input: ControlChannelLocalRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlChannelLocalRecordResponse> {
        self.client.execute(action: "ControlChannelLocalRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 控制通道本地回放流
    ///
    /// 本接口（ControlChannelLocalRecord）用于对通道本地回放流进行控制，包括暂停、播放、拉动、结束等
    @inlinable @discardableResult
    public func controlChannelLocalRecord(_ input: ControlChannelLocalRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlChannelLocalRecordResponse {
        try await self.client.execute(action: "ControlChannelLocalRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 控制通道本地回放流
    ///
    /// 本接口（ControlChannelLocalRecord）用于对通道本地回放流进行控制，包括暂停、播放、拉动、结束等
    @inlinable @discardableResult
    public func controlChannelLocalRecord(deviceId: String, channelId: String, streamId: String, command: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlChannelLocalRecordResponse> {
        self.controlChannelLocalRecord(ControlChannelLocalRecordRequest(deviceId: deviceId, channelId: channelId, streamId: streamId, command: command), region: region, logger: logger, on: eventLoop)
    }

    /// 控制通道本地回放流
    ///
    /// 本接口（ControlChannelLocalRecord）用于对通道本地回放流进行控制，包括暂停、播放、拉动、结束等
    @inlinable @discardableResult
    public func controlChannelLocalRecord(deviceId: String, channelId: String, streamId: String, command: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlChannelLocalRecordResponse {
        try await self.controlChannelLocalRecord(ControlChannelLocalRecordRequest(deviceId: deviceId, channelId: channelId, streamId: streamId, command: command), region: region, logger: logger, on: eventLoop)
    }
}
