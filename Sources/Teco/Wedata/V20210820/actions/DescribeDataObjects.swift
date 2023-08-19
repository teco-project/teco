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

extension Wedata {
    /// DescribeDataObjects请求参数结构体
    public struct DescribeDataObjectsRequest: TCRequest {
        /// 数据来源ID
        public let datasourceId: String?

        /// 数据表ID
        public let tableId: String?

        /// 质量规则组ID
        public let ruleGroupId: UInt64?

        /// 项目ID
        public let projectId: String?

        public init(datasourceId: String? = nil, tableId: String? = nil, ruleGroupId: UInt64? = nil, projectId: String? = nil) {
            self.datasourceId = datasourceId
            self.tableId = tableId
            self.ruleGroupId = ruleGroupId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case datasourceId = "DatasourceId"
            case tableId = "TableId"
            case ruleGroupId = "RuleGroupId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeDataObjects返回参数结构体
    public struct DescribeDataObjectsResponse: TCResponse {
        /// 数据对象列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SourceObject]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询规则组数据对象列表
    @inlinable
    public func describeDataObjects(_ input: DescribeDataObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataObjectsResponse> {
        self.client.execute(action: "DescribeDataObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则组数据对象列表
    @inlinable
    public func describeDataObjects(_ input: DescribeDataObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataObjectsResponse {
        try await self.client.execute(action: "DescribeDataObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则组数据对象列表
    @inlinable
    public func describeDataObjects(datasourceId: String? = nil, tableId: String? = nil, ruleGroupId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataObjectsResponse> {
        self.describeDataObjects(.init(datasourceId: datasourceId, tableId: tableId, ruleGroupId: ruleGroupId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则组数据对象列表
    @inlinable
    public func describeDataObjects(datasourceId: String? = nil, tableId: String? = nil, ruleGroupId: UInt64? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataObjectsResponse {
        try await self.describeDataObjects(.init(datasourceId: datasourceId, tableId: tableId, ruleGroupId: ruleGroupId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
