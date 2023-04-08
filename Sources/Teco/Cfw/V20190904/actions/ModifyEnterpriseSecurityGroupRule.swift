//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Cfw {
    /// ModifyEnterpriseSecurityGroupRule请求参数结构体
    public struct ModifyEnterpriseSecurityGroupRuleRequest: TCRequestModel {
        /// 规则的uuid，可通过查询规则列表获取
        public let ruleUuid: UInt64

        /// 修改类型，0：修改规则内容；1：修改单条规则开关状态；2：修改所有规则开关状态
        public let modifyType: UInt64

        /// 编辑后的企业安全组规则数据；修改规则状态不用填该字段
        public let data: SecurityGroupRule?

        /// 0是关闭,1是开启
        public let enable: UInt64?

        public init(ruleUuid: UInt64, modifyType: UInt64, data: SecurityGroupRule? = nil, enable: UInt64? = nil) {
            self.ruleUuid = ruleUuid
            self.modifyType = modifyType
            self.data = data
            self.enable = enable
        }

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
            case modifyType = "ModifyType"
            case data = "Data"
            case enable = "Enable"
        }
    }

    /// ModifyEnterpriseSecurityGroupRule返回参数结构体
    public struct ModifyEnterpriseSecurityGroupRuleResponse: TCResponseModel {
        /// 状态值，0：编辑成功，非0：编辑失败
        public let status: UInt64

        /// 编辑后新生成规则的Id
        public let newRuleUuid: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case newRuleUuid = "NewRuleUuid"
            case requestId = "RequestId"
        }
    }

    /// 编辑新企业安全组规则
    @inlinable
    public func modifyEnterpriseSecurityGroupRule(_ input: ModifyEnterpriseSecurityGroupRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEnterpriseSecurityGroupRuleResponse> {
        self.client.execute(action: "ModifyEnterpriseSecurityGroupRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑新企业安全组规则
    @inlinable
    public func modifyEnterpriseSecurityGroupRule(_ input: ModifyEnterpriseSecurityGroupRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEnterpriseSecurityGroupRuleResponse {
        try await self.client.execute(action: "ModifyEnterpriseSecurityGroupRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑新企业安全组规则
    @inlinable
    public func modifyEnterpriseSecurityGroupRule(ruleUuid: UInt64, modifyType: UInt64, data: SecurityGroupRule? = nil, enable: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEnterpriseSecurityGroupRuleResponse> {
        self.modifyEnterpriseSecurityGroupRule(.init(ruleUuid: ruleUuid, modifyType: modifyType, data: data, enable: enable), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑新企业安全组规则
    @inlinable
    public func modifyEnterpriseSecurityGroupRule(ruleUuid: UInt64, modifyType: UInt64, data: SecurityGroupRule? = nil, enable: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEnterpriseSecurityGroupRuleResponse {
        try await self.modifyEnterpriseSecurityGroupRule(.init(ruleUuid: ruleUuid, modifyType: modifyType, data: data, enable: enable), region: region, logger: logger, on: eventLoop)
    }
}
