//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideoindustry {
    /// 预置位控制
    ///
    /// 预置位控制
    @inlinable
    public func controlPreset(_ input: ControlPresetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ControlPresetResponse > {
        self.client.execute(action: "ControlPreset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 预置位控制
    ///
    /// 预置位控制
    @inlinable
    public func controlPreset(_ input: ControlPresetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlPresetResponse {
        try await self.client.execute(action: "ControlPreset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ControlPreset请求参数结构体
    public struct ControlPresetRequest: TCRequestModel {
        /// 通道ID
        public let channelId: String
        
        /// 控制命令：
        /// Set-设置当前位置为预置位
        /// Del-删除指定的预置位
        /// Call-调用指定的预置位
        public let command: String
        
        /// 预置位编码 范围1-8
        public let presetId: Int64
        
        /// 设备Id
        public let deviceId: String
        
        public init (channelId: String, command: String, presetId: Int64, deviceId: String) {
            self.channelId = channelId
            self.command = command
            self.presetId = presetId
            self.deviceId = deviceId
        }
        
        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case command = "Command"
            case presetId = "PresetId"
            case deviceId = "DeviceId"
        }
    }
    
    /// ControlPreset返回参数结构体
    public struct ControlPresetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}