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

@_exported import struct Foundation.Date

extension Eb {
    /// GetEventBus请求参数结构体
    public struct GetEventBusRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String
        
        public init (eventBusId: String) {
            self.eventBusId = eventBusId
        }
        
        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
        }
    }
    
    /// GetEventBus返回参数结构体
    public struct GetEventBusResponse: TCResponseModel {
        /// 更新时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let modTime: Date
        
        /// 事件集描述
        public let description: String
        
        /// 日志主题ID
        public let clsTopicId: String
        
        /// 创建时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let addTime: Date
        
        /// 日志集ID
        public let clsLogsetId: String
        
        /// 事件集名称
        public let eventBusName: String
        
        /// 事件集ID
        public let eventBusId: String
        
        /// （已废弃）事件集类型
        public let type: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case modTime = "ModTime"
            case description = "Description"
            case clsTopicId = "ClsTopicId"
            case addTime = "AddTime"
            case clsLogsetId = "ClsLogsetId"
            case eventBusName = "EventBusName"
            case eventBusId = "EventBusId"
            case type = "Type"
            case requestId = "RequestId"
        }
    }
    
    /// 获取事件集详情
    @inlinable
    public func getEventBus(_ input: GetEventBusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetEventBusResponse > {
        self.client.execute(action: "GetEventBus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取事件集详情
    @inlinable
    public func getEventBus(_ input: GetEventBusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEventBusResponse {
        try await self.client.execute(action: "GetEventBus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
