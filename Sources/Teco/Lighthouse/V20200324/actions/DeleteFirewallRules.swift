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

extension Lighthouse {
    /// DeleteFirewallRules请求参数结构体
    public struct DeleteFirewallRulesRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 防火墙规则列表。
        public let firewallRules: [FirewallRule]

        /// 防火墙当前版本。用户每次更新防火墙规则时版本会自动加1，防止规则已过期，不填不考虑冲突。
        public let firewallVersion: UInt64?

        public init(instanceId: String, firewallRules: [FirewallRule], firewallVersion: UInt64? = nil) {
            self.instanceId = instanceId
            self.firewallRules = firewallRules
            self.firewallVersion = firewallVersion
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case firewallRules = "FirewallRules"
            case firewallVersion = "FirewallVersion"
        }
    }

    /// DeleteFirewallRules返回参数结构体
    public struct DeleteFirewallRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除防火墙规则
    ///
    /// 本接口（DeleteFirewallRules）用于删除实例的防火墙规则。
    ///
    /// * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接删除指定的规则。
    ///
    /// 在 FirewallRules 参数中：
    /// * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
    /// * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
    /// * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
    /// * Action 字段只允许输入 ACCEPT 或 DROP。
    /// * FirewallRuleDescription 字段长度不得超过 64。
    @inlinable @discardableResult
    public func deleteFirewallRules(_ input: DeleteFirewallRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallRulesResponse> {
        self.client.execute(action: "DeleteFirewallRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除防火墙规则
    ///
    /// 本接口（DeleteFirewallRules）用于删除实例的防火墙规则。
    ///
    /// * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接删除指定的规则。
    ///
    /// 在 FirewallRules 参数中：
    /// * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
    /// * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
    /// * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
    /// * Action 字段只允许输入 ACCEPT 或 DROP。
    /// * FirewallRuleDescription 字段长度不得超过 64。
    @inlinable @discardableResult
    public func deleteFirewallRules(_ input: DeleteFirewallRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirewallRulesResponse {
        try await self.client.execute(action: "DeleteFirewallRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除防火墙规则
    ///
    /// 本接口（DeleteFirewallRules）用于删除实例的防火墙规则。
    ///
    /// * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接删除指定的规则。
    ///
    /// 在 FirewallRules 参数中：
    /// * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
    /// * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
    /// * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
    /// * Action 字段只允许输入 ACCEPT 或 DROP。
    /// * FirewallRuleDescription 字段长度不得超过 64。
    @inlinable @discardableResult
    public func deleteFirewallRules(instanceId: String, firewallRules: [FirewallRule], firewallVersion: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallRulesResponse> {
        self.deleteFirewallRules(.init(instanceId: instanceId, firewallRules: firewallRules, firewallVersion: firewallVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 删除防火墙规则
    ///
    /// 本接口（DeleteFirewallRules）用于删除实例的防火墙规则。
    ///
    /// * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接删除指定的规则。
    ///
    /// 在 FirewallRules 参数中：
    /// * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
    /// * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
    /// * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
    /// * Action 字段只允许输入 ACCEPT 或 DROP。
    /// * FirewallRuleDescription 字段长度不得超过 64。
    @inlinable @discardableResult
    public func deleteFirewallRules(instanceId: String, firewallRules: [FirewallRule], firewallVersion: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirewallRulesResponse {
        try await self.deleteFirewallRules(.init(instanceId: instanceId, firewallRules: firewallRules, firewallVersion: firewallVersion), region: region, logger: logger, on: eventLoop)
    }
}
