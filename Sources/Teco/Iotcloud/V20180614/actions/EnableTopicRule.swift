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

extension Iotcloud {
    /// 启用规则
    ///
    /// 本接口（EnableTopicRule）用于启用规则 
    @inlinable
    public func enableTopicRule(_ input: EnableTopicRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableTopicRuleResponse > {
        self.client.execute(action: "EnableTopicRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启用规则
    ///
    /// 本接口（EnableTopicRule）用于启用规则 
    @inlinable
    public func enableTopicRule(_ input: EnableTopicRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableTopicRuleResponse {
        try await self.client.execute(action: "EnableTopicRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// EnableTopicRule请求参数结构体
    public struct EnableTopicRuleRequest: TCRequestModel {
        /// 规则名称
        public let ruleName: String
        
        public init (ruleName: String) {
            self.ruleName = ruleName
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
        }
    }
    
    /// EnableTopicRule返回参数结构体
    public struct EnableTopicRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}