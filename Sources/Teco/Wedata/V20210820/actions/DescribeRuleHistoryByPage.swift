//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Wedata {
    /// DescribeRuleHistoryByPage请求参数结构体
    public struct DescribeRuleHistoryByPageRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String?

        /// 分页序号
        public let pageNumber: UInt64?

        /// 分页大小
        public let pageSize: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        public init(projectId: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
        }
    }

    /// DescribeRuleHistoryByPage返回参数结构体
    public struct DescribeRuleHistoryByPageResponse: TCResponseModel {
        /// 规则组操作历史列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleHistoryPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleHistoryByPageResponse> {
        self.client.execute(action: "DescribeRuleHistoryByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleHistoryByPageResponse {
        try await self.client.execute(action: "DescribeRuleHistoryByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(projectId: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleHistoryByPageResponse> {
        self.describeRuleHistoryByPage(DescribeRuleHistoryByPageRequest(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(projectId: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleHistoryByPageResponse {
        try await self.describeRuleHistoryByPage(DescribeRuleHistoryByPageRequest(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
