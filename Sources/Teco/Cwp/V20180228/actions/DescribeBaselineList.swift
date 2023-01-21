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

extension Cwp {
    /// DescribeBaselineList请求参数结构体
    public struct DescribeBaselineListRequest: TCRequestModel {
        /// 分页参数 最大100条
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 过滤条件。
        /// <li>StrategyId- Uint64 - 基线策略id</li>
        /// <li>Status - Uint64 - 处理状态1已通过 0未通过</li>
        /// <li>Level - Uint64[] - 处理状态1已通过 0未通过</li>BaselineName
        /// <li>BaselineName  - String - 基线名称</li>
        /// <li>Quuid- String - 主机quuid</li>
        /// <li>Uuid- String - 主机uuid</li>
        public let filters: [Filters]?

        public init(limit: UInt64, offset: UInt64, filters: [Filters]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeBaselineList返回参数结构体
    public struct DescribeBaselineListResponse: TCResponseModel {
        /// 基线信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baselineList: [BaselineInfo]?

        /// 分页查询记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case baselineList = "BaselineList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询基线列表
    ///
    /// 查询基线列表信息
    @inlinable
    public func describeBaselineList(_ input: DescribeBaselineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineListResponse> {
        self.client.execute(action: "DescribeBaselineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线列表
    ///
    /// 查询基线列表信息
    @inlinable
    public func describeBaselineList(_ input: DescribeBaselineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineListResponse {
        try await self.client.execute(action: "DescribeBaselineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基线列表
    ///
    /// 查询基线列表信息
    @inlinable
    public func describeBaselineList(limit: UInt64, offset: UInt64, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineListResponse> {
        self.describeBaselineList(DescribeBaselineListRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基线列表
    ///
    /// 查询基线列表信息
    @inlinable
    public func describeBaselineList(limit: UInt64, offset: UInt64, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineListResponse {
        try await self.describeBaselineList(DescribeBaselineListRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
