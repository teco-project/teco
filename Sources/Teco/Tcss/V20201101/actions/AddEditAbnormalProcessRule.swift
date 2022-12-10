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

extension Tcss {
    /// 添加编辑异常进程策略
    ///
    /// 添加编辑运行时异常进程策略
    @inlinable
    public func addEditAbnormalProcessRule(_ input: AddEditAbnormalProcessRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddEditAbnormalProcessRuleResponse > {
        self.client.execute(action: "AddEditAbnormalProcessRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加编辑异常进程策略
    ///
    /// 添加编辑运行时异常进程策略
    @inlinable
    public func addEditAbnormalProcessRule(_ input: AddEditAbnormalProcessRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditAbnormalProcessRuleResponse {
        try await self.client.execute(action: "AddEditAbnormalProcessRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AddEditAbnormalProcessRule请求参数结构体
    public struct AddEditAbnormalProcessRuleRequest: TCRequestModel {
        /// 增加策略信息，策略id为空，编辑策略是id不能为空
        public let ruleInfo: AbnormalProcessRuleInfo
        
        /// 仅在加白的时候带上
        public let eventId: String?
        
        public init (ruleInfo: AbnormalProcessRuleInfo, eventId: String?) {
            self.ruleInfo = ruleInfo
            self.eventId = eventId
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleInfo = "RuleInfo"
            case eventId = "EventId"
        }
    }
    
    /// AddEditAbnormalProcessRule返回参数结构体
    public struct AddEditAbnormalProcessRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}