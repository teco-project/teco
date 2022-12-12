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
    /// DeleteDatahubTopic请求参数结构体
    public struct DeleteDatahubTopicRequest: TCRequestModel {
        /// Topic名称
        public let name: String
        
        public init (name: String) {
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }
    
    /// DeleteDatahubTopic返回参数结构体
    public struct DeleteDatahubTopicResponse: TCResponseModel {
        /// 返回的结果集
        public let result: JgwOperateResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 删除Datahub主题
    @inlinable
    public func deleteDatahubTopic(_ input: DeleteDatahubTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDatahubTopicResponse > {
        self.client.execute(action: "DeleteDatahubTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除Datahub主题
    @inlinable
    public func deleteDatahubTopic(_ input: DeleteDatahubTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatahubTopicResponse {
        try await self.client.execute(action: "DeleteDatahubTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
