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

extension Iot {
    /// 删除规则
    @inlinable
    public func deleteRule(_ input: DeleteRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRuleResponse > {
        self.client.execute(action: "DeleteRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除规则
    @inlinable
    public func deleteRule(_ input: DeleteRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.client.execute(action: "DeleteRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteRule请求参数结构体
    public struct DeleteRuleRequest: TCRequestModel {
        /// 规则Id
        public let ruleId: String
        
        public init (ruleId: String) {
            self.ruleId = ruleId
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
        }
    }
    
    /// DeleteRule返回参数结构体
    public struct DeleteRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
