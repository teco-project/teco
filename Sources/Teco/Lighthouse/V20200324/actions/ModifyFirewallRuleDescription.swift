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

extension Lighthouse {
    /// 修改防火墙规则描述
    ///
    /// 本接口（ModifyFirewallRuleDescription）用于修改单条防火墙规则描述。
    /// * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接修改防火墙规则备注。
    /// 在 FirewallRule 参数中：
    /// * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
    /// * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
    /// * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
    /// * Action 字段只允许输入 ACCEPT 或 DROP。
    /// * FirewallRuleDescription 字段长度不得超过 64。
    @inlinable
    public func modifyFirewallRuleDescription(_ input: ModifyFirewallRuleDescriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyFirewallRuleDescriptionResponse > {
        self.client.execute(action: "ModifyFirewallRuleDescription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改防火墙规则描述
    ///
    /// 本接口（ModifyFirewallRuleDescription）用于修改单条防火墙规则描述。
    /// * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接修改防火墙规则备注。
    /// 在 FirewallRule 参数中：
    /// * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
    /// * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
    /// * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
    /// * Action 字段只允许输入 ACCEPT 或 DROP。
    /// * FirewallRuleDescription 字段长度不得超过 64。
    @inlinable
    public func modifyFirewallRuleDescription(_ input: ModifyFirewallRuleDescriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFirewallRuleDescriptionResponse {
        try await self.client.execute(action: "ModifyFirewallRuleDescription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyFirewallRuleDescription请求参数结构体
    public struct ModifyFirewallRuleDescriptionRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String
        
        /// 防火墙规则。
        public let firewallRule: FirewallRule
        
        /// 防火墙当前版本。用户每次更新防火墙规则时版本会自动加1，防止规则已过期，不填不考虑冲突。
        public let firewallVersion: UInt64?
        
        public init (instanceId: String, firewallRule: FirewallRule, firewallVersion: UInt64?) {
            self.instanceId = instanceId
            self.firewallRule = firewallRule
            self.firewallVersion = firewallVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case firewallRule = "FirewallRule"
            case firewallVersion = "FirewallVersion"
        }
    }
    
    /// ModifyFirewallRuleDescription返回参数结构体
    public struct ModifyFirewallRuleDescriptionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}