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

extension Iotvideoindustry {
    /// ControlChannelPTZ请求参数结构体
    public struct ControlChannelPTZRequest: TCRequestModel {
        /// 设备唯一标识
        public let deviceId: String

        /// 通道唯一标识
        public let channelId: String

        /// PTZ控制命令类型：
        /// stop - 停止当前PTZ信令
        /// left - 向左移动
        /// right - 向右移动
        /// up - 向上移动
        /// down - 向下移动
        /// leftUp - 左上移动
        /// leftDown - 左下移动
        /// rightUp - 右上移动
        /// rightDown - 右下移动
        /// zoomOut - 镜头缩小
        /// zoomIn - 镜头放大
        /// irisIn - 光圈缩小
        /// irisOut - 光圈放大
        /// focusIn - 焦距变近
        /// focusOut - 焦距变远
        public let command: String

        public init(deviceId: String, channelId: String, command: String) {
            self.deviceId = deviceId
            self.channelId = channelId
            self.command = command
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
            case command = "Command"
        }
    }

    /// ControlChannelPTZ返回参数结构体
    public struct ControlChannelPTZResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 远程PTZ控制设备通道
    ///
    /// 本接口(ControlChannelPTZ) 用于对支持GB28181 PTZ信令的设备进行指定通道的远程控制。
    @inlinable @discardableResult
    public func controlChannelPTZ(_ input: ControlChannelPTZRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlChannelPTZResponse> {
        self.client.execute(action: "ControlChannelPTZ", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 远程PTZ控制设备通道
    ///
    /// 本接口(ControlChannelPTZ) 用于对支持GB28181 PTZ信令的设备进行指定通道的远程控制。
    @inlinable @discardableResult
    public func controlChannelPTZ(_ input: ControlChannelPTZRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlChannelPTZResponse {
        try await self.client.execute(action: "ControlChannelPTZ", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 远程PTZ控制设备通道
    ///
    /// 本接口(ControlChannelPTZ) 用于对支持GB28181 PTZ信令的设备进行指定通道的远程控制。
    @inlinable @discardableResult
    public func controlChannelPTZ(deviceId: String, channelId: String, command: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlChannelPTZResponse> {
        self.controlChannelPTZ(ControlChannelPTZRequest(deviceId: deviceId, channelId: channelId, command: command), region: region, logger: logger, on: eventLoop)
    }

    /// 远程PTZ控制设备通道
    ///
    /// 本接口(ControlChannelPTZ) 用于对支持GB28181 PTZ信令的设备进行指定通道的远程控制。
    @inlinable @discardableResult
    public func controlChannelPTZ(deviceId: String, channelId: String, command: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlChannelPTZResponse {
        try await self.controlChannelPTZ(ControlChannelPTZRequest(deviceId: deviceId, channelId: channelId, command: command), region: region, logger: logger, on: eventLoop)
    }
}
