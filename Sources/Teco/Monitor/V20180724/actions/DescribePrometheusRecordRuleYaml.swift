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
    /// DescribePrometheusRecordRuleYaml请求参数结构体
    public struct DescribePrometheusRecordRuleYamlRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 分页
        public let offset: UInt64?

        /// 分页
        public let limit: UInt64?

        /// 过滤，当前支持
        /// Name = Name
        /// Values = 目标名称列表
        public let filters: [Filter]?

        public init(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribePrometheusRecordRuleYaml返回参数结构体
    public struct DescribePrometheusRecordRuleYamlResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 拉取Prometheus聚合规则yaml列表
    @inlinable @discardableResult
    public func describePrometheusRecordRuleYaml(_ input: DescribePrometheusRecordRuleYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusRecordRuleYamlResponse> {
        self.client.execute(action: "DescribePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取Prometheus聚合规则yaml列表
    @inlinable @discardableResult
    public func describePrometheusRecordRuleYaml(_ input: DescribePrometheusRecordRuleYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusRecordRuleYamlResponse {
        try await self.client.execute(action: "DescribePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取Prometheus聚合规则yaml列表
    @inlinable @discardableResult
    public func describePrometheusRecordRuleYaml(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusRecordRuleYamlResponse> {
        let input = DescribePrometheusRecordRuleYamlRequest(instanceId: instanceId, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取Prometheus聚合规则yaml列表
    @inlinable @discardableResult
    public func describePrometheusRecordRuleYaml(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusRecordRuleYamlResponse {
        let input = DescribePrometheusRecordRuleYamlRequest(instanceId: instanceId, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribePrometheusRecordRuleYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
