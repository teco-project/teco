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

extension Monitor {
    /// ModifyPrometheusRecordRuleYaml请求参数结构体
    public struct ModifyPrometheusRecordRuleYamlRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 聚合实例名称
        public let name: String

        /// 新的内容
        public let content: String

        public init(instanceId: String, name: String, content: String) {
            self.instanceId = instanceId
            self.name = name
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case name = "Name"
            case content = "Content"
        }
    }

    /// ModifyPrometheusRecordRuleYaml返回参数结构体
    public struct ModifyPrometheusRecordRuleYamlResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 通过yaml的方式修改Prometheus聚合实例
    @inlinable @discardableResult
    public func modifyPrometheusRecordRuleYaml(_ input: ModifyPrometheusRecordRuleYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusRecordRuleYamlResponse> {
        self.client.execute(action: "ModifyPrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过yaml的方式修改Prometheus聚合实例
    @inlinable @discardableResult
    public func modifyPrometheusRecordRuleYaml(_ input: ModifyPrometheusRecordRuleYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusRecordRuleYamlResponse {
        try await self.client.execute(action: "ModifyPrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过yaml的方式修改Prometheus聚合实例
    @inlinable @discardableResult
    public func modifyPrometheusRecordRuleYaml(instanceId: String, name: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusRecordRuleYamlResponse> {
        self.modifyPrometheusRecordRuleYaml(.init(instanceId: instanceId, name: name, content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 通过yaml的方式修改Prometheus聚合实例
    @inlinable @discardableResult
    public func modifyPrometheusRecordRuleYaml(instanceId: String, name: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusRecordRuleYamlResponse {
        try await self.modifyPrometheusRecordRuleYaml(.init(instanceId: instanceId, name: name, content: content), region: region, logger: logger, on: eventLoop)
    }
}
