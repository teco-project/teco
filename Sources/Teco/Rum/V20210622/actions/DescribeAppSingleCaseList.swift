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

extension Rum {
    /// DescribeAppSingleCaseList请求参数结构体
    public struct DescribeAppSingleCaseListRequest: TCRequestModel {
        /// app 项目 ID
        public let projectID: Int64

        /// 查询的表名
        public let from: String

        /// 查询指标 field
        public let fields: String

        /// 查询的过滤条件
        public let filter: String

        /// 查询简单过滤条件
        public let filterSimple: String?

        /// group by 条件
        public let groupBy: [String]?

        /// order by 条件
        public let orderBy: [String]?

        /// limit 参数
        public let limit: Int64?

        /// offset 参数
        public let offset: Int64?

        public init(projectID: Int64, from: String, fields: String, filter: String, filterSimple: String? = nil, groupBy: [String]? = nil, orderBy: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.projectID = projectID
            self.from = from
            self.fields = fields
            self.filter = filter
            self.filterSimple = filterSimple
            self.groupBy = groupBy
            self.orderBy = orderBy
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case projectID = "ProjectID"
            case from = "From"
            case fields = "Fields"
            case filter = "Filter"
            case filterSimple = "FilterSimple"
            case groupBy = "GroupBy"
            case orderBy = "OrderBy"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeAppSingleCaseList返回参数结构体
    public struct DescribeAppSingleCaseListResponse: TCResponseModel {
        /// 查询数据返回
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询 app 监控个例聚合列表
    @inlinable
    public func describeAppSingleCaseList(_ input: DescribeAppSingleCaseListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppSingleCaseListResponse> {
        self.client.execute(action: "DescribeAppSingleCaseList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 app 监控个例聚合列表
    @inlinable
    public func describeAppSingleCaseList(_ input: DescribeAppSingleCaseListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppSingleCaseListResponse {
        try await self.client.execute(action: "DescribeAppSingleCaseList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 app 监控个例聚合列表
    @inlinable
    public func describeAppSingleCaseList(projectID: Int64, from: String, fields: String, filter: String, filterSimple: String? = nil, groupBy: [String]? = nil, orderBy: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppSingleCaseListResponse> {
        self.describeAppSingleCaseList(.init(projectID: projectID, from: from, fields: fields, filter: filter, filterSimple: filterSimple, groupBy: groupBy, orderBy: orderBy, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 app 监控个例聚合列表
    @inlinable
    public func describeAppSingleCaseList(projectID: Int64, from: String, fields: String, filter: String, filterSimple: String? = nil, groupBy: [String]? = nil, orderBy: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppSingleCaseListResponse {
        try await self.describeAppSingleCaseList(.init(projectID: projectID, from: from, fields: fields, filter: filter, filterSimple: filterSimple, groupBy: groupBy, orderBy: orderBy, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}