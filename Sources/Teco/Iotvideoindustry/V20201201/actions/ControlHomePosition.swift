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
    /// ControlHomePosition请求参数结构体
    public struct ControlHomePositionRequest: TCRequestModel {
        /// 通道ID
        public let channelId: String

        /// 设备Id
        public let deviceId: String

        /// 看守位使能 0-停用看守位 1-启用看守位
        public let enable: Int64?

        /// 预置位编码 范围1-8，启用看守位时必填
        public let presetId: Int64?

        /// 看守位自动归位时间， 启用看守位时必填
        public let resetTime: Int64?

        public init(channelId: String, deviceId: String, enable: Int64? = nil, presetId: Int64? = nil, resetTime: Int64? = nil) {
            self.channelId = channelId
            self.deviceId = deviceId
            self.enable = enable
            self.presetId = presetId
            self.resetTime = resetTime
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case deviceId = "DeviceId"
            case enable = "Enable"
            case presetId = "PresetId"
            case resetTime = "ResetTime"
        }
    }

    /// ControlHomePosition返回参数结构体
    public struct ControlHomePositionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 看守位控制
    @inlinable @discardableResult
    public func controlHomePosition(_ input: ControlHomePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlHomePositionResponse> {
        self.client.execute(action: "ControlHomePosition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 看守位控制
    @inlinable @discardableResult
    public func controlHomePosition(_ input: ControlHomePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlHomePositionResponse {
        try await self.client.execute(action: "ControlHomePosition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 看守位控制
    @inlinable @discardableResult
    public func controlHomePosition(channelId: String, deviceId: String, enable: Int64? = nil, presetId: Int64? = nil, resetTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlHomePositionResponse> {
        self.controlHomePosition(.init(channelId: channelId, deviceId: deviceId, enable: enable, presetId: presetId, resetTime: resetTime), region: region, logger: logger, on: eventLoop)
    }

    /// 看守位控制
    @inlinable @discardableResult
    public func controlHomePosition(channelId: String, deviceId: String, enable: Int64? = nil, presetId: Int64? = nil, resetTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlHomePositionResponse {
        try await self.controlHomePosition(.init(channelId: channelId, deviceId: deviceId, enable: enable, presetId: presetId, resetTime: resetTime), region: region, logger: logger, on: eventLoop)
    }
}
