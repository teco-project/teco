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

extension Cynosdb {
    /// DescribeAuditRuleWithInstanceIds请求参数结构体
    public struct DescribeAuditRuleWithInstanceIdsRequest: TCRequest {
        /// 实例ID。目前仅支持单个实例的查询。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeAuditRuleWithInstanceIds返回参数结构体
    public struct DescribeAuditRuleWithInstanceIdsResponse: TCResponse {
        public let totalCount: Int64

        /// 实例审计规则信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [InstanceAuditRule]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 获取实例的审计规则
    @inlinable
    public func describeAuditRuleWithInstanceIds(_ input: DescribeAuditRuleWithInstanceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditRuleWithInstanceIdsResponse> {
        self.client.execute(action: "DescribeAuditRuleWithInstanceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例的审计规则
    @inlinable
    public func describeAuditRuleWithInstanceIds(_ input: DescribeAuditRuleWithInstanceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditRuleWithInstanceIdsResponse {
        try await self.client.execute(action: "DescribeAuditRuleWithInstanceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例的审计规则
    @inlinable
    public func describeAuditRuleWithInstanceIds(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditRuleWithInstanceIdsResponse> {
        self.describeAuditRuleWithInstanceIds(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例的审计规则
    @inlinable
    public func describeAuditRuleWithInstanceIds(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditRuleWithInstanceIdsResponse {
        try await self.describeAuditRuleWithInstanceIds(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
