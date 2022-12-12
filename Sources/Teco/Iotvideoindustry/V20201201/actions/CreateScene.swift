//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreateScene请求参数结构体
    public struct CreateSceneRequest: TCRequestModel {
        /// 场景名称
        public let sceneName: String
        
        /// 场景触发规则
        public let sceneTrigger: String
        
        /// 录制时长 (秒)
        public let recordDuration: Int64
        
        /// 录像存储时长(天)
        public let storeDuration: Int64
        
        /// 设备列表(不推荐使用)
        public let devices: [DeviceItem]?
        
        /// 通道列表
        public let channels: [ChannelItem]?
        
        public init (sceneName: String, sceneTrigger: String, recordDuration: Int64, storeDuration: Int64, devices: [DeviceItem]? = nil, channels: [ChannelItem]? = nil) {
            self.sceneName = sceneName
            self.sceneTrigger = sceneTrigger
            self.recordDuration = recordDuration
            self.storeDuration = storeDuration
            self.devices = devices
            self.channels = channels
        }
        
        enum CodingKeys: String, CodingKey {
            case sceneName = "SceneName"
            case sceneTrigger = "SceneTrigger"
            case recordDuration = "RecordDuration"
            case storeDuration = "StoreDuration"
            case devices = "Devices"
            case channels = "Channels"
        }
    }
    
    /// CreateScene返回参数结构体
    public struct CreateSceneResponse: TCResponseModel {
        /// 场景ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intId: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case intId = "IntId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建场景
    @inlinable
    public func createScene(_ input: CreateSceneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSceneResponse > {
        self.client.execute(action: "CreateScene", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建场景
    @inlinable
    public func createScene(_ input: CreateSceneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSceneResponse {
        try await self.client.execute(action: "CreateScene", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
