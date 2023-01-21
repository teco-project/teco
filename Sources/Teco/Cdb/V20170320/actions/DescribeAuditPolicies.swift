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

extension Cdb {
    /// DescribeAuditPolicies请求参数结构体
    public struct DescribeAuditPoliciesRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String?

        /// 审计策略 ID。
        public let policyId: String?

        /// 审计策略名称。支持按审计策略名称进行模糊匹配查询。
        public let policyName: String?

        /// 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        public let limit: Int64?

        /// 分页偏移量。
        public let offset: Int64?

        /// 审计规则 ID。可使用该审计规则 ID 查询到其关联的审计策略。
        /// 注意，参数 RuleId，InstanceId，PolicyId，PolicyName 必须至少传一个。
        public let ruleId: String?

        /// 实例名称
        public let instanceName: String?

        public init(instanceId: String? = nil, policyId: String? = nil, policyName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, instanceName: String? = nil) {
            self.instanceId = instanceId
            self.policyId = policyId
            self.policyName = policyName
            self.limit = limit
            self.offset = offset
            self.ruleId = ruleId
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case limit = "Limit"
            case offset = "Offset"
            case ruleId = "RuleId"
            case instanceName = "InstanceName"
        }
    }

    /// DescribeAuditPolicies返回参数结构体
    public struct DescribeAuditPoliciesResponse: TCResponseModel {
        /// 符合条件的审计策略个数。
        public let totalCount: Int64

        /// 审计策略详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [AuditPolicy]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询审计策略
    ///
    /// 本接口(DescribeAuditPolicies)用于查询云数据库实例的审计策略。
    @inlinable
    public func describeAuditPolicies(_ input: DescribeAuditPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditPoliciesResponse> {
        self.client.execute(action: "DescribeAuditPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询审计策略
    ///
    /// 本接口(DescribeAuditPolicies)用于查询云数据库实例的审计策略。
    @inlinable
    public func describeAuditPolicies(_ input: DescribeAuditPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditPoliciesResponse {
        try await self.client.execute(action: "DescribeAuditPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询审计策略
    ///
    /// 本接口(DescribeAuditPolicies)用于查询云数据库实例的审计策略。
    @inlinable
    public func describeAuditPolicies(instanceId: String? = nil, policyId: String? = nil, policyName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditPoliciesResponse> {
        self.describeAuditPolicies(DescribeAuditPoliciesRequest(instanceId: instanceId, policyId: policyId, policyName: policyName, limit: limit, offset: offset, ruleId: ruleId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计策略
    ///
    /// 本接口(DescribeAuditPolicies)用于查询云数据库实例的审计策略。
    @inlinable
    public func describeAuditPolicies(instanceId: String? = nil, policyId: String? = nil, policyName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditPoliciesResponse {
        try await self.describeAuditPolicies(DescribeAuditPoliciesRequest(instanceId: instanceId, policyId: policyId, policyName: policyName, limit: limit, offset: offset, ruleId: ruleId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }
}
