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

extension Tdmq {
    /// 回溯cmq队列
    @inlinable
    public func rewindCmqQueue(_ input: RewindCmqQueueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RewindCmqQueueResponse > {
        self.client.execute(action: "RewindCmqQueue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 回溯cmq队列
    @inlinable
    public func rewindCmqQueue(_ input: RewindCmqQueueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RewindCmqQueueResponse {
        try await self.client.execute(action: "RewindCmqQueue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RewindCmqQueue请求参数结构体
    public struct RewindCmqQueueRequest: TCRequestModel {
        /// 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let queueName: String
        
        /// 设定该时间，则（Batch）receiveMessage接口，会按照生产消息的先后顺序消费该时间戳以后的消息。
        public let startConsumeTime: UInt64
        
        public init (queueName: String, startConsumeTime: UInt64) {
            self.queueName = queueName
            self.startConsumeTime = startConsumeTime
        }
        
        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
            case startConsumeTime = "StartConsumeTime"
        }
    }
    
    /// RewindCmqQueue返回参数结构体
    public struct RewindCmqQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
