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

extension Cmq {
    /// 创建主题
    ///
    /// 创建主题
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateTopicResponse > {
        self.client.execute(action: "CreateTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建主题
    ///
    /// 创建主题
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.client.execute(action: "CreateTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateTopic请求参数结构体
    public struct CreateTopicRequest: TCRequestModel {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        public let topicName: String
        
        /// 消息最大长度。取值范围 1024-65536 Byte（即1-64K），默认值 65536。
        public let maxMsgSize: UInt64?
        
        /// 用于指定主题的消息匹配策略。1：表示标签匹配策略；2：表示路由匹配策略，默认值为标签匹配策略。
        public let filterType: UInt64?
        
        /// 消息保存时间。取值范围60 - 86400 s（即1分钟 - 1天），默认值86400。
        public let msgRetentionSeconds: UInt64?
        
        /// 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        public let trace: Bool?
        
        public init (topicName: String, maxMsgSize: UInt64?, filterType: UInt64?, msgRetentionSeconds: UInt64?, trace: Bool?) {
            self.topicName = topicName
            self.maxMsgSize = maxMsgSize
            self.filterType = filterType
            self.msgRetentionSeconds = msgRetentionSeconds
            self.trace = trace
        }
        
        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case maxMsgSize = "MaxMsgSize"
            case filterType = "FilterType"
            case msgRetentionSeconds = "MsgRetentionSeconds"
            case trace = "Trace"
        }
    }
    
    /// CreateTopic返回参数结构体
    public struct CreateTopicResponse: TCResponseModel {
        /// TopicName
        public let topicId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case requestId = "RequestId"
        }
    }
}