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

extension Ckafka {
    /// DescribeTopicSubscribeGroup请求参数结构体
    public struct DescribeTopicSubscribeGroupRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        /// 主题名称
        public let topicName: String
        
        /// 分页时的起始位置
        public let offset: UInt64?
        
        /// 分页时的个数
        public let limit: UInt64?
        
        public init (instanceId: String, topicName: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeTopicSubscribeGroup返回参数结构体
    public struct DescribeTopicSubscribeGroupResponse: TCResponseModel {
        /// 返回结果
        public let result: TopicSubscribeGroup
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroup(_ input: DescribeTopicSubscribeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopicSubscribeGroupResponse > {
        self.client.execute(action: "DescribeTopicSubscribeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询订阅某主题消息分组信息
    @inlinable
    public func describeTopicSubscribeGroup(_ input: DescribeTopicSubscribeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicSubscribeGroupResponse {
        try await self.client.execute(action: "DescribeTopicSubscribeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
