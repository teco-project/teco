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

extension Cls {
    /// DeleteTopic请求参数结构体
    public struct DeleteTopicRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String
        
        public init (topicId: String) {
            self.topicId = topicId
        }
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
        }
    }
    
    /// DeleteTopic返回参数结构体
    public struct DeleteTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除日志主题
    ///
    /// 本接口用于删除日志主题。
    @inlinable
    public func deleteTopic(_ input: DeleteTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTopicResponse > {
        self.client.execute(action: "DeleteTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除日志主题
    ///
    /// 本接口用于删除日志主题。
    @inlinable
    public func deleteTopic(_ input: DeleteTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicResponse {
        try await self.client.execute(action: "DeleteTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
