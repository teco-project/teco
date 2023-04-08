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

import TecoCore

extension Iotvideoindustry {
    /// ModifyPreset请求参数结构体
    public struct ModifyPresetRequest: TCRequestModel {
        /// 通道ID
        public let channelId: String

        /// 预置位编码 范围1-8
        public let presetId: Int64

        /// 预制位名称
        public let presetName: String

        /// 设备Id
        public let deviceId: String

        public init(channelId: String, presetId: Int64, presetName: String, deviceId: String) {
            self.channelId = channelId
            self.presetId = presetId
            self.presetName = presetName
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case presetId = "PresetId"
            case presetName = "PresetName"
            case deviceId = "DeviceId"
        }
    }

    /// ModifyPreset返回参数结构体
    public struct ModifyPresetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑预置位信息
    @inlinable @discardableResult
    public func modifyPreset(_ input: ModifyPresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPresetResponse> {
        self.client.execute(action: "ModifyPreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑预置位信息
    @inlinable @discardableResult
    public func modifyPreset(_ input: ModifyPresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPresetResponse {
        try await self.client.execute(action: "ModifyPreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑预置位信息
    @inlinable @discardableResult
    public func modifyPreset(channelId: String, presetId: Int64, presetName: String, deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPresetResponse> {
        self.modifyPreset(.init(channelId: channelId, presetId: presetId, presetName: presetName, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑预置位信息
    @inlinable @discardableResult
    public func modifyPreset(channelId: String, presetId: Int64, presetName: String, deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPresetResponse {
        try await self.modifyPreset(.init(channelId: channelId, presetId: presetId, presetName: presetName, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
