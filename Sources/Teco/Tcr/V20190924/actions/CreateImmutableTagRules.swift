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

extension Tcr {
    /// CreateImmutableTagRules请求参数结构体
    public struct CreateImmutableTagRulesRequest: TCRequestModel {
        /// 实例 Id
        public let registryId: String

        /// 命名空间
        public let namespaceName: String

        /// 规则
        public let rule: ImmutableTagRule

        public init(registryId: String, namespaceName: String, rule: ImmutableTagRule) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.rule = rule
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case rule = "Rule"
        }
    }

    /// CreateImmutableTagRules返回参数结构体
    public struct CreateImmutableTagRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建镜像不可变规则
    @inlinable
    public func createImmutableTagRules(_ input: CreateImmutableTagRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateImmutableTagRulesResponse > {
        self.client.execute(action: "CreateImmutableTagRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像不可变规则
    @inlinable
    public func createImmutableTagRules(_ input: CreateImmutableTagRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImmutableTagRulesResponse {
        try await self.client.execute(action: "CreateImmutableTagRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建镜像不可变规则
    @inlinable
    public func createImmutableTagRules(registryId: String, namespaceName: String, rule: ImmutableTagRule, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateImmutableTagRulesResponse > {
        self.createImmutableTagRules(CreateImmutableTagRulesRequest(registryId: registryId, namespaceName: namespaceName, rule: rule), logger: logger, on: eventLoop)
    }

    /// 创建镜像不可变规则
    @inlinable
    public func createImmutableTagRules(registryId: String, namespaceName: String, rule: ImmutableTagRule, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImmutableTagRulesResponse {
        try await self.createImmutableTagRules(CreateImmutableTagRulesRequest(registryId: registryId, namespaceName: namespaceName, rule: rule), logger: logger, on: eventLoop)
    }
}
