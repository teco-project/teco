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

extension Monitor {
    /// DeletePrometheusRecordRuleYaml请求参数结构体
    public struct DeletePrometheusRecordRuleYamlRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 聚合规则列表
        public let names: [String]

        public init(instanceId: String, names: [String]) {
            self.instanceId = instanceId
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case names = "Names"
        }
    }

    /// DeletePrometheusRecordRuleYaml返回参数结构体
    public struct DeletePrometheusRecordRuleYamlResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除聚合实例
    @inlinable @discardableResult
    public func deletePrometheusRecordRuleYaml(_ input: DeletePrometheusRecordRuleYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusRecordRuleYamlResponse> {
        self.client.execute(action: "DeletePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除聚合实例
    @inlinable @discardableResult
    public func deletePrometheusRecordRuleYaml(_ input: DeletePrometheusRecordRuleYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusRecordRuleYamlResponse {
        try await self.client.execute(action: "DeletePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除聚合实例
    @inlinable @discardableResult
    public func deletePrometheusRecordRuleYaml(instanceId: String, names: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusRecordRuleYamlResponse> {
        let input = DeletePrometheusRecordRuleYamlRequest(instanceId: instanceId, names: names)
        return self.client.execute(action: "DeletePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除聚合实例
    @inlinable @discardableResult
    public func deletePrometheusRecordRuleYaml(instanceId: String, names: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusRecordRuleYamlResponse {
        let input = DeletePrometheusRecordRuleYamlRequest(instanceId: instanceId, names: names)
        return try await self.client.execute(action: "DeletePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
