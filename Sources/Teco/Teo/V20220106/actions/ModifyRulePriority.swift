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

extension Teo {
    /// 修改规则引擎规则优先级
    @inlinable
    public func modifyRulePriority(_ input: ModifyRulePriorityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRulePriorityResponse > {
        self.client.execute(action: "ModifyRulePriority", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改规则引擎规则优先级
    @inlinable
    public func modifyRulePriority(_ input: ModifyRulePriorityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRulePriorityResponse {
        try await self.client.execute(action: "ModifyRulePriority", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyRulePriority请求参数结构体
    public struct ModifyRulePriorityRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String
        
        /// 规则 ID 的顺序，多条规则执行顺序依次往下。
        public let ruleIds: [String]
        
        public init (zoneId: String, ruleIds: [String]) {
            self.zoneId = zoneId
            self.ruleIds = ruleIds
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case ruleIds = "RuleIds"
        }
    }
    
    /// ModifyRulePriority返回参数结构体
    public struct ModifyRulePriorityResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
