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

extension Cdn {
    /// EnableClsLogTopic请求参数结构体
    public struct EnableClsLogTopicRequest: TCRequestModel {
        /// 日志集ID
        public let logsetId: String
        
        /// 日志主题ID
        public let topicId: String
        
        /// 接入渠道，cdn或者ecdn，默认值为cdn
        public let channel: String?
        
        public init (logsetId: String, topicId: String, channel: String? = nil) {
            self.logsetId = logsetId
            self.topicId = topicId
            self.channel = channel
        }
        
        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case topicId = "TopicId"
            case channel = "Channel"
        }
    }
    
    /// EnableClsLogTopic返回参数结构体
    public struct EnableClsLogTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 启动日志主题投递
    ///
    /// EnableClsLogTopic 用于启动日志主题投递。注意：启动后，所有绑定该日志主题域名的日志将继续投递至该主题。生效时间约为 5~15 分钟。
    @inlinable
    public func enableClsLogTopic(_ input: EnableClsLogTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableClsLogTopicResponse > {
        self.client.execute(action: "EnableClsLogTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动日志主题投递
    ///
    /// EnableClsLogTopic 用于启动日志主题投递。注意：启动后，所有绑定该日志主题域名的日志将继续投递至该主题。生效时间约为 5~15 分钟。
    @inlinable
    public func enableClsLogTopic(_ input: EnableClsLogTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableClsLogTopicResponse {
        try await self.client.execute(action: "EnableClsLogTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
