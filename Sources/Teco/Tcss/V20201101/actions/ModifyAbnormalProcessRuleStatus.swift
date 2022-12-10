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

extension Tcss {
    /// 修改运行时异常进程策略状态
    ///
    /// 修改运行时异常进程策略的开启关闭状态
    @inlinable
    public func modifyAbnormalProcessRuleStatus(_ input: ModifyAbnormalProcessRuleStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAbnormalProcessRuleStatusResponse > {
        self.client.execute(action: "ModifyAbnormalProcessRuleStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改运行时异常进程策略状态
    ///
    /// 修改运行时异常进程策略的开启关闭状态
    @inlinable
    public func modifyAbnormalProcessRuleStatus(_ input: ModifyAbnormalProcessRuleStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAbnormalProcessRuleStatusResponse {
        try await self.client.execute(action: "ModifyAbnormalProcessRuleStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAbnormalProcessRuleStatus请求参数结构体
    public struct ModifyAbnormalProcessRuleStatusRequest: TCRequestModel {
        /// 策略的ids
        public let ruleIdSet: [String]
        
        /// 策略开关，true开启，false关闭
        public let isEnable: Bool
        
        public init (ruleIdSet: [String], isEnable: Bool) {
            self.ruleIdSet = ruleIdSet
            self.isEnable = isEnable
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleIdSet = "RuleIdSet"
            case isEnable = "IsEnable"
        }
    }
    
    /// ModifyAbnormalProcessRuleStatus返回参数结构体
    public struct ModifyAbnormalProcessRuleStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
