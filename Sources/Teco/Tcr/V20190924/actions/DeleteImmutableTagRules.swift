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
    /// DeleteImmutableTagRules请求参数结构体
    public struct DeleteImmutableTagRulesRequest: TCRequest {
        /// 实例 Id
        public let registryId: String

        /// 命名空间
        public let namespaceName: String

        /// 规则 Id
        public let ruleId: Int64

        public init(registryId: String, namespaceName: String, ruleId: Int64) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case ruleId = "RuleId"
        }
    }

    /// DeleteImmutableTagRules返回参数结构体
    public struct DeleteImmutableTagRulesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除镜像不可变规则
    @inlinable @discardableResult
    public func deleteImmutableTagRules(_ input: DeleteImmutableTagRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImmutableTagRulesResponse> {
        self.client.execute(action: "DeleteImmutableTagRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除镜像不可变规则
    @inlinable @discardableResult
    public func deleteImmutableTagRules(_ input: DeleteImmutableTagRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImmutableTagRulesResponse {
        try await self.client.execute(action: "DeleteImmutableTagRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除镜像不可变规则
    @inlinable @discardableResult
    public func deleteImmutableTagRules(registryId: String, namespaceName: String, ruleId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImmutableTagRulesResponse> {
        self.deleteImmutableTagRules(.init(registryId: registryId, namespaceName: namespaceName, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除镜像不可变规则
    @inlinable @discardableResult
    public func deleteImmutableTagRules(registryId: String, namespaceName: String, ruleId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImmutableTagRulesResponse {
        try await self.deleteImmutableTagRules(.init(registryId: registryId, namespaceName: namespaceName, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
