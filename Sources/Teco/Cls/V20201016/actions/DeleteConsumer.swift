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

extension Cls {
    /// 删除投递配置
    ///
    /// 本接口用于删除投递配置
    @inlinable
    public func deleteConsumer(_ input: DeleteConsumerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteConsumerResponse > {
        self.client.execute(action: "DeleteConsumer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除投递配置
    ///
    /// 本接口用于删除投递配置
    @inlinable
    public func deleteConsumer(_ input: DeleteConsumerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConsumerResponse {
        try await self.client.execute(action: "DeleteConsumer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteConsumer请求参数结构体
    public struct DeleteConsumerRequest: TCRequestModel {
        /// 投递任务绑定的日志主题 ID
        public let topicId: String
        
        public init (topicId: String) {
            self.topicId = topicId
        }
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
        }
    }
    
    /// DeleteConsumer返回参数结构体
    public struct DeleteConsumerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}