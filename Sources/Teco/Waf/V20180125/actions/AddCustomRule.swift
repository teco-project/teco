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

extension Waf {
    /// 增加自定义策略
    ///
    /// 增加自定义策略
    @inlinable
    public func addCustomRule(_ input: AddCustomRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddCustomRuleResponse > {
        self.client.execute(action: "AddCustomRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增加自定义策略
    ///
    /// 增加自定义策略
    @inlinable
    public func addCustomRule(_ input: AddCustomRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCustomRuleResponse {
        try await self.client.execute(action: "AddCustomRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AddCustomRule请求参数结构体
    public struct AddCustomRuleRequest: TCRequestModel {
        /// 规则名称
        public let name: String
        
        /// 优先级
        public let sortId: String
        
        /// 过期时间
        public let expireTime: String
        
        /// 策略详情
        public let strategies: [Strategy]
        
        /// 需要添加策略的域名
        public let domain: String
        
        /// 动作类型
        public let actionType: String
        
        /// 如果动作是重定向，则表示重定向的地址；其他情况可以为空
        public let redirect: String?
        
        /// "clb-waf"或者"sparta-waf"
        public let edition: String?
        
        /// 放行的详情
        public let bypass: String?
        
        public init (name: String, sortId: String, expireTime: String, strategies: [Strategy], domain: String, actionType: String, redirect: String?, edition: String?, bypass: String?) {
            self.name = name
            self.sortId = sortId
            self.expireTime = expireTime
            self.strategies = strategies
            self.domain = domain
            self.actionType = actionType
            self.redirect = redirect
            self.edition = edition
            self.bypass = bypass
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case sortId = "SortId"
            case expireTime = "ExpireTime"
            case strategies = "Strategies"
            case domain = "Domain"
            case actionType = "ActionType"
            case redirect = "Redirect"
            case edition = "Edition"
            case bypass = "Bypass"
        }
    }
    
    /// AddCustomRule返回参数结构体
    public struct AddCustomRuleResponse: TCResponseModel {
        /// 操作的状态码，如果所有的资源操作成功则返回的是成功的状态码，如果有资源操作失败则需要解析Message的内容来查看哪个资源失败
        public let success: ResponseCode
        
        /// 添加成功的规则ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }
}