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

extension Wedata {
    /// ModifyRuleGroupSubscription请求参数结构体
    public struct ModifyRuleGroupSubscriptionRequest: TCRequestModel {
        /// 规则组ID
        public let ruleGroupId: UInt64?
        
        /// 订阅人信息
        public let receivers: [SubscribeReceiver]?
        
        /// 订阅类型
        public let subscribeType: [UInt64]?
        
        /// 项目ID
        public let projectId: String?
        
        /// 数据库Id
        public let databaseId: String?
        
        /// 数据源Id
        public let datasourceId: String?
        
        /// 数据表Id
        public let tableId: String?
        
        /// 群机器人webhook信息
        public let webHooks: [SubscribeWebHook]?
        
        public init (ruleGroupId: UInt64? = nil, receivers: [SubscribeReceiver]? = nil, subscribeType: [UInt64]? = nil, projectId: String? = nil, databaseId: String? = nil, datasourceId: String? = nil, tableId: String? = nil, webHooks: [SubscribeWebHook]? = nil) {
            self.ruleGroupId = ruleGroupId
            self.receivers = receivers
            self.subscribeType = subscribeType
            self.projectId = projectId
            self.databaseId = databaseId
            self.datasourceId = datasourceId
            self.tableId = tableId
            self.webHooks = webHooks
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleGroupId = "RuleGroupId"
            case receivers = "Receivers"
            case subscribeType = "SubscribeType"
            case projectId = "ProjectId"
            case databaseId = "DatabaseId"
            case datasourceId = "DatasourceId"
            case tableId = "TableId"
            case webHooks = "WebHooks"
        }
    }
    
    /// ModifyRuleGroupSubscription返回参数结构体
    public struct ModifyRuleGroupSubscriptionResponse: TCResponseModel {
        /// 规则组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 更新规则组订阅信息
    @inlinable
    public func modifyRuleGroupSubscription(_ input: ModifyRuleGroupSubscriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRuleGroupSubscriptionResponse > {
        self.client.execute(action: "ModifyRuleGroupSubscription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新规则组订阅信息
    @inlinable
    public func modifyRuleGroupSubscription(_ input: ModifyRuleGroupSubscriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleGroupSubscriptionResponse {
        try await self.client.execute(action: "ModifyRuleGroupSubscription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
