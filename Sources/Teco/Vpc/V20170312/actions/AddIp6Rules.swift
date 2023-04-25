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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// AddIp6Rules请求参数结构体
    public struct AddIp6RulesRequest: TCRequestModel {
        /// IPV6转换实例唯一ID，形如ip6-xxxxxxxx
        public let ip6TranslatorId: String

        /// IPV6转换规则信息
        public let ip6RuleInfos: [Ip6RuleInfo]

        /// IPV6转换规则名称
        public let ip6RuleName: String?

        public init(ip6TranslatorId: String, ip6RuleInfos: [Ip6RuleInfo], ip6RuleName: String? = nil) {
            self.ip6TranslatorId = ip6TranslatorId
            self.ip6RuleInfos = ip6RuleInfos
            self.ip6RuleName = ip6RuleName
        }

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorId = "Ip6TranslatorId"
            case ip6RuleInfos = "Ip6RuleInfos"
            case ip6RuleName = "Ip6RuleName"
        }
    }

    /// AddIp6Rules返回参数结构体
    public struct AddIp6RulesResponse: TCResponseModel {
        /// IPV6转换规则唯一ID数组，形如rule6-xxxxxxxx
        public let ip6RuleSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ip6RuleSet = "Ip6RuleSet"
            case requestId = "RequestId"
        }
    }

    /// 添加IPV6转换规则
    ///
    /// 1. 该接口用于在转换实例下添加IPV6转换规则。
    /// 2. 支持在同一个转换实例下批量添加转换规则，一个账户在一个地域最多50个。
    /// 3. 一个完整的转换规则包括vip6:vport6:protocol:vip:vport，其中vip6:vport6:protocol必须是唯一。
    @inlinable
    public func addIp6Rules(_ input: AddIp6RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddIp6RulesResponse> {
        self.client.execute(action: "AddIp6Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加IPV6转换规则
    ///
    /// 1. 该接口用于在转换实例下添加IPV6转换规则。
    /// 2. 支持在同一个转换实例下批量添加转换规则，一个账户在一个地域最多50个。
    /// 3. 一个完整的转换规则包括vip6:vport6:protocol:vip:vport，其中vip6:vport6:protocol必须是唯一。
    @inlinable
    public func addIp6Rules(_ input: AddIp6RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddIp6RulesResponse {
        try await self.client.execute(action: "AddIp6Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加IPV6转换规则
    ///
    /// 1. 该接口用于在转换实例下添加IPV6转换规则。
    /// 2. 支持在同一个转换实例下批量添加转换规则，一个账户在一个地域最多50个。
    /// 3. 一个完整的转换规则包括vip6:vport6:protocol:vip:vport，其中vip6:vport6:protocol必须是唯一。
    @inlinable
    public func addIp6Rules(ip6TranslatorId: String, ip6RuleInfos: [Ip6RuleInfo], ip6RuleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddIp6RulesResponse> {
        self.addIp6Rules(.init(ip6TranslatorId: ip6TranslatorId, ip6RuleInfos: ip6RuleInfos, ip6RuleName: ip6RuleName), region: region, logger: logger, on: eventLoop)
    }

    /// 添加IPV6转换规则
    ///
    /// 1. 该接口用于在转换实例下添加IPV6转换规则。
    /// 2. 支持在同一个转换实例下批量添加转换规则，一个账户在一个地域最多50个。
    /// 3. 一个完整的转换规则包括vip6:vport6:protocol:vip:vport，其中vip6:vport6:protocol必须是唯一。
    @inlinable
    public func addIp6Rules(ip6TranslatorId: String, ip6RuleInfos: [Ip6RuleInfo], ip6RuleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddIp6RulesResponse {
        try await self.addIp6Rules(.init(ip6TranslatorId: ip6TranslatorId, ip6RuleInfos: ip6RuleInfos, ip6RuleName: ip6RuleName), region: region, logger: logger, on: eventLoop)
    }
}
