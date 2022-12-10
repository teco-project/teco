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

extension Cfw {
    /// 配置防火墙Dnat规则
    @inlinable
    public func setNatFwDnatRule(_ input: SetNatFwDnatRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetNatFwDnatRuleResponse > {
        self.client.execute(action: "SetNatFwDnatRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 配置防火墙Dnat规则
    @inlinable
    public func setNatFwDnatRule(_ input: SetNatFwDnatRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetNatFwDnatRuleResponse {
        try await self.client.execute(action: "SetNatFwDnatRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SetNatFwDnatRule请求参数结构体
    public struct SetNatFwDnatRuleRequest: TCRequestModel {
        /// 0：cfw新增模式，1：cfw接入模式。
        public let mode: UInt64
        
        /// 操作类型，可选值：add，del，modify。
        public let operationType: String
        
        /// 防火墙实例id，该字段必须传递。
        public let cfwInstance: String?
        
        /// 添加或删除操作的Dnat规则列表。
        public let addOrDelDnatRules: [CfwNatDnatRule]?
        
        /// 修改操作的原始Dnat规则
        public let originDnat: CfwNatDnatRule
        
        /// 修改操作的新的Dnat规则
        public let newDnat: CfwNatDnatRule
        
        public init (mode: UInt64, operationType: String, cfwInstance: String?, addOrDelDnatRules: [CfwNatDnatRule]?, originDnat: CfwNatDnatRule, newDnat: CfwNatDnatRule) {
            self.mode = mode
            self.operationType = operationType
            self.cfwInstance = cfwInstance
            self.addOrDelDnatRules = addOrDelDnatRules
            self.originDnat = originDnat
            self.newDnat = newDnat
        }
        
        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case operationType = "OperationType"
            case cfwInstance = "CfwInstance"
            case addOrDelDnatRules = "AddOrDelDnatRules"
            case originDnat = "OriginDnat"
            case newDnat = "NewDnat"
        }
    }
    
    /// SetNatFwDnatRule返回参数结构体
    public struct SetNatFwDnatRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
