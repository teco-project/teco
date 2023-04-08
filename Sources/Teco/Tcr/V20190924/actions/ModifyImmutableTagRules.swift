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

import Logging
import NIOCore
import TecoCore

extension Tcr {
    /// ModifyImmutableTagRules请求参数结构体
    public struct ModifyImmutableTagRulesRequest: TCRequestModel {
        /// 实例 Id
        public let registryId: String

        /// 命名空间
        public let namespaceName: String

        /// 规则 Id
        public let ruleId: Int64

        /// 规则
        public let rule: ImmutableTagRule

        public init(registryId: String, namespaceName: String, ruleId: Int64, rule: ImmutableTagRule) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.ruleId = ruleId
            self.rule = rule
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case ruleId = "RuleId"
            case rule = "Rule"
        }
    }

    /// ModifyImmutableTagRules返回参数结构体
    public struct ModifyImmutableTagRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新镜像不可变规则
    @inlinable @discardableResult
    public func modifyImmutableTagRules(_ input: ModifyImmutableTagRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImmutableTagRulesResponse> {
        self.client.execute(action: "ModifyImmutableTagRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新镜像不可变规则
    @inlinable @discardableResult
    public func modifyImmutableTagRules(_ input: ModifyImmutableTagRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImmutableTagRulesResponse {
        try await self.client.execute(action: "ModifyImmutableTagRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新镜像不可变规则
    @inlinable @discardableResult
    public func modifyImmutableTagRules(registryId: String, namespaceName: String, ruleId: Int64, rule: ImmutableTagRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImmutableTagRulesResponse> {
        self.modifyImmutableTagRules(.init(registryId: registryId, namespaceName: namespaceName, ruleId: ruleId, rule: rule), region: region, logger: logger, on: eventLoop)
    }

    /// 更新镜像不可变规则
    @inlinable @discardableResult
    public func modifyImmutableTagRules(registryId: String, namespaceName: String, ruleId: Int64, rule: ImmutableTagRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImmutableTagRulesResponse {
        try await self.modifyImmutableTagRules(.init(registryId: registryId, namespaceName: namespaceName, ruleId: ruleId, rule: rule), region: region, logger: logger, on: eventLoop)
    }
}
