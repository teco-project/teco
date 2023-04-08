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
    /// CreateTagRetentionRule请求参数结构体
    public struct CreateTagRetentionRuleRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String

        /// 命名空间的Id
        public let namespaceId: Int64

        /// 保留策略
        public let retentionRule: RetentionRule

        /// 执行周期，当前只能选择： manual;daily;weekly;monthly
        public let cronSetting: String

        /// 是否禁用规则，默认值为false
        public let disabled: Bool?

        public init(registryId: String, namespaceId: Int64, retentionRule: RetentionRule, cronSetting: String, disabled: Bool? = nil) {
            self.registryId = registryId
            self.namespaceId = namespaceId
            self.retentionRule = retentionRule
            self.cronSetting = cronSetting
            self.disabled = disabled
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceId = "NamespaceId"
            case retentionRule = "RetentionRule"
            case cronSetting = "CronSetting"
            case disabled = "Disabled"
        }
    }

    /// CreateTagRetentionRule返回参数结构体
    public struct CreateTagRetentionRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建版本保留规则
    @inlinable @discardableResult
    public func createTagRetentionRule(_ input: CreateTagRetentionRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagRetentionRuleResponse> {
        self.client.execute(action: "CreateTagRetentionRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建版本保留规则
    @inlinable @discardableResult
    public func createTagRetentionRule(_ input: CreateTagRetentionRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagRetentionRuleResponse {
        try await self.client.execute(action: "CreateTagRetentionRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建版本保留规则
    @inlinable @discardableResult
    public func createTagRetentionRule(registryId: String, namespaceId: Int64, retentionRule: RetentionRule, cronSetting: String, disabled: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagRetentionRuleResponse> {
        self.createTagRetentionRule(.init(registryId: registryId, namespaceId: namespaceId, retentionRule: retentionRule, cronSetting: cronSetting, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }

    /// 创建版本保留规则
    @inlinable @discardableResult
    public func createTagRetentionRule(registryId: String, namespaceId: Int64, retentionRule: RetentionRule, cronSetting: String, disabled: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagRetentionRuleResponse {
        try await self.createTagRetentionRule(.init(registryId: registryId, namespaceId: namespaceId, retentionRule: retentionRule, cronSetting: cronSetting, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }
}
