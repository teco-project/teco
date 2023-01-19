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
    /// DescribeRuleGroupTable请求参数结构体
    public struct DescribeRuleGroupTableRequest: TCRequestModel {
        /// 表ID
        public let tableId: String

        public init(tableId: String) {
            self.tableId = tableId
        }

        enum CodingKeys: String, CodingKey {
            case tableId = "TableId"
        }
    }

    /// DescribeRuleGroupTable返回参数结构体
    public struct DescribeRuleGroupTableResponse: TCResponseModel {
        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupTable?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询表绑定执行规则组信息
    @inlinable
    public func describeRuleGroupTable(_ input: DescribeRuleGroupTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupTableResponse> {
        self.client.execute(action: "DescribeRuleGroupTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表绑定执行规则组信息
    @inlinable
    public func describeRuleGroupTable(_ input: DescribeRuleGroupTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupTableResponse {
        try await self.client.execute(action: "DescribeRuleGroupTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表绑定执行规则组信息
    @inlinable
    public func describeRuleGroupTable(tableId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupTableResponse> {
        self.describeRuleGroupTable(DescribeRuleGroupTableRequest(tableId: tableId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表绑定执行规则组信息
    @inlinable
    public func describeRuleGroupTable(tableId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupTableResponse {
        try await self.describeRuleGroupTable(DescribeRuleGroupTableRequest(tableId: tableId), region: region, logger: logger, on: eventLoop)
    }
}
