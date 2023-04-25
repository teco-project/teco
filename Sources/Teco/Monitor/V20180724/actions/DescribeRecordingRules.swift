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
import TecoPaginationHelpers

extension Monitor {
    /// DescribeRecordingRules请求参数结构体
    public struct DescribeRecordingRulesRequest: TCPaginatedRequest {
        /// Prometheus 实例 ID
        public let instanceId: String

        /// 返回数量，默认为 20，最大值为 100
        public let limit: Int64?

        /// 偏移量，默认为 0
        public let offset: Int64?

        /// 规则 ID
        public let ruleId: String?

        /// 规则状态码，取值如下：
        /// <li>1=RuleDeleted</li>
        /// <li>2=RuleEnabled</li>
        /// <li>3=RuleDisabled</li>
        public let ruleState: Int64?

        /// 规则名称
        public let name: String?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, ruleState: Int64? = nil, name: String? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.ruleId = ruleId
            self.ruleState = ruleState
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case ruleId = "RuleId"
            case ruleState = "RuleState"
            case name = "Name"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRecordingRulesResponse) -> DescribeRecordingRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRecordingRulesRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), ruleId: self.ruleId, ruleState: self.ruleState, name: self.name)
        }
    }

    /// DescribeRecordingRules返回参数结构体
    public struct DescribeRecordingRulesResponse: TCPaginatedResponse {
        /// 规则组数量
        public let totalCount: Int64

        /// 规则组详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordingRuleSet: [RecordingRuleSet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case recordingRuleSet = "RecordingRuleSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RecordingRuleSet] {
            self.recordingRuleSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    @inlinable
    public func describeRecordingRules(_ input: DescribeRecordingRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordingRulesResponse> {
        self.client.execute(action: "DescribeRecordingRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    @inlinable
    public func describeRecordingRules(_ input: DescribeRecordingRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordingRulesResponse {
        try await self.client.execute(action: "DescribeRecordingRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    @inlinable
    public func describeRecordingRules(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, ruleState: Int64? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordingRulesResponse> {
        self.describeRecordingRules(.init(instanceId: instanceId, limit: limit, offset: offset, ruleId: ruleId, ruleState: ruleState, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    @inlinable
    public func describeRecordingRules(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, ruleState: Int64? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordingRulesResponse {
        try await self.describeRecordingRules(.init(instanceId: instanceId, limit: limit, offset: offset, ruleId: ruleId, ruleState: ruleState, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    @inlinable
    public func describeRecordingRulesPaginated(_ input: DescribeRecordingRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RecordingRuleSet])> {
        self.client.paginate(input: input, region: region, command: self.describeRecordingRules, logger: logger, on: eventLoop)
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    @inlinable @discardableResult
    public func describeRecordingRulesPaginated(_ input: DescribeRecordingRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecordingRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecordingRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询预聚合规则
    ///
    /// 根据条件查询 Prometheus 预聚合规则
    ///
    /// - Returns: `AsyncSequence`s of `RecordingRuleSet` and `DescribeRecordingRulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRecordingRulesPaginator(_ input: DescribeRecordingRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRecordingRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRecordingRules, logger: logger, on: eventLoop)
    }
}
