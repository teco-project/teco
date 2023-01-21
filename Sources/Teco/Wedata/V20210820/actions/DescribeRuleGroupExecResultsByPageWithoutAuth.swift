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

extension Wedata {
    /// DescribeRuleGroupExecResultsByPageWithoutAuth请求参数结构体
    public struct DescribeRuleGroupExecResultsByPageWithoutAuthRequest: TCRequestModel {
        /// 分页序号
        public let pageNumber: UInt64?

        /// 分页大小
        public let pageSize: UInt64?

        /// 过滤条件，指定表ID过滤字段为 TableIds
        public let filters: [Filter]?

        /// 排序字段
        public let orderFields: [OrderField]?

        /// 项目ID
        public let projectId: String?

        public init(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRuleGroupExecResultsByPageWithoutAuth返回参数结构体
    public struct DescribeRuleGroupExecResultsByPageWithoutAuthResponse: TCResponseModel {
        /// 规则组执行结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupExecResultPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 规则组执行结果分页查询接口不带鉴权
    @inlinable
    public func describeRuleGroupExecResultsByPageWithoutAuth(_ input: DescribeRuleGroupExecResultsByPageWithoutAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupExecResultsByPageWithoutAuthResponse> {
        self.client.execute(action: "DescribeRuleGroupExecResultsByPageWithoutAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口不带鉴权
    @inlinable
    public func describeRuleGroupExecResultsByPageWithoutAuth(_ input: DescribeRuleGroupExecResultsByPageWithoutAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupExecResultsByPageWithoutAuthResponse {
        try await self.client.execute(action: "DescribeRuleGroupExecResultsByPageWithoutAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则组执行结果分页查询接口不带鉴权
    @inlinable
    public func describeRuleGroupExecResultsByPageWithoutAuth(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupExecResultsByPageWithoutAuthResponse> {
        self.describeRuleGroupExecResultsByPageWithoutAuth(DescribeRuleGroupExecResultsByPageWithoutAuthRequest(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口不带鉴权
    @inlinable
    public func describeRuleGroupExecResultsByPageWithoutAuth(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupExecResultsByPageWithoutAuthResponse {
        try await self.describeRuleGroupExecResultsByPageWithoutAuth(DescribeRuleGroupExecResultsByPageWithoutAuthRequest(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
