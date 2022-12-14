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

extension Tke {
    /// CreatePrometheusRecordRuleYaml请求参数结构体
    public struct CreatePrometheusRecordRuleYamlRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// yaml的内容
        public let content: String

        public init(instanceId: String, content: String) {
            self.instanceId = instanceId
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case content = "Content"
        }
    }

    /// CreatePrometheusRecordRuleYaml返回参数结构体
    public struct CreatePrometheusRecordRuleYamlResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 以Yaml的方式创建聚合规则
    @inlinable
    public func createPrometheusRecordRuleYaml(_ input: CreatePrometheusRecordRuleYamlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrometheusRecordRuleYamlResponse > {
        self.client.execute(action: "CreatePrometheusRecordRuleYaml", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 以Yaml的方式创建聚合规则
    @inlinable
    public func createPrometheusRecordRuleYaml(_ input: CreatePrometheusRecordRuleYamlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusRecordRuleYamlResponse {
        try await self.client.execute(action: "CreatePrometheusRecordRuleYaml", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 以Yaml的方式创建聚合规则
    @inlinable
    public func createPrometheusRecordRuleYaml(instanceId: String, content: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrometheusRecordRuleYamlResponse > {
        self.createPrometheusRecordRuleYaml(CreatePrometheusRecordRuleYamlRequest(instanceId: instanceId, content: content), logger: logger, on: eventLoop)
    }

    /// 以Yaml的方式创建聚合规则
    @inlinable
    public func createPrometheusRecordRuleYaml(instanceId: String, content: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusRecordRuleYamlResponse {
        try await self.createPrometheusRecordRuleYaml(CreatePrometheusRecordRuleYamlRequest(instanceId: instanceId, content: content), logger: logger, on: eventLoop)
    }
}
