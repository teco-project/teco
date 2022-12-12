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

extension Iotcloud {
    /// DeleteTopicRule请求参数结构体
    public struct DeleteTopicRuleRequest: TCRequestModel {
        /// 规则名
        public let ruleName: String
        
        public init (ruleName: String) {
            self.ruleName = ruleName
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
        }
    }
    
    /// DeleteTopicRule返回参数结构体
    public struct DeleteTopicRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除规则
    ///
    /// 本接口（DeleteTopicRule）用于删除规则
    @inlinable
    public func deleteTopicRule(_ input: DeleteTopicRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTopicRuleResponse > {
        self.client.execute(action: "DeleteTopicRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除规则
    ///
    /// 本接口（DeleteTopicRule）用于删除规则
    @inlinable
    public func deleteTopicRule(_ input: DeleteTopicRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicRuleResponse {
        try await self.client.execute(action: "DeleteTopicRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
