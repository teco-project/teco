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

extension Wedata {
    /// DescribeRuleGroupExecResultsByPage请求参数结构体
    public struct DescribeRuleGroupExecResultsByPageRequest: TCRequestModel {
        /// 分页序号
        public let pageNumber: UInt64?

        /// 分页大小
        public let pageSize: UInt64?

        /// 过滤条件
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

    /// DescribeRuleGroupExecResultsByPage返回参数结构体
    public struct DescribeRuleGroupExecResultsByPageResponse: TCResponseModel {
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

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(_ input: DescribeRuleGroupExecResultsByPageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleGroupExecResultsByPageResponse > {
        self.client.execute(action: "DescribeRuleGroupExecResultsByPage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(_ input: DescribeRuleGroupExecResultsByPageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupExecResultsByPageResponse {
        try await self.client.execute(action: "DescribeRuleGroupExecResultsByPage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleGroupExecResultsByPageResponse > {
        self.describeRuleGroupExecResultsByPage(DescribeRuleGroupExecResultsByPageRequest(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId), logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupExecResultsByPageResponse {
        try await self.describeRuleGroupExecResultsByPage(DescribeRuleGroupExecResultsByPageRequest(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId), logger: logger, on: eventLoop)
    }
}
