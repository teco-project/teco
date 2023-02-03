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
    /// DescribeBaselineStrategyList请求参数结构体
    public struct DescribeBaselineStrategyListRequest: TCRequestModel {
        /// 分页参数 最大100
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 规则开关，1：打开 0：关闭  2:全部
        public let enabled: UInt64

        public init(limit: UInt64, offset: UInt64, enabled: UInt64) {
            self.limit = limit
            self.offset = offset
            self.enabled = enabled
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case enabled = "Enabled"
        }
    }

    /// DescribeBaselineStrategyList返回参数结构体
    public struct DescribeBaselineStrategyListResponse: TCResponseModel {
        /// 分页查询记录的总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 用户策略信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let strategyList: [Strategy]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case strategyList = "StrategyList"
            case requestId = "RequestId"
        }
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineStrategyListResponse> {
        self.client.execute(action: "DescribeBaselineStrategyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(_ input: DescribeBaselineStrategyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineStrategyListResponse {
        try await self.client.execute(action: "DescribeBaselineStrategyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(limit: UInt64, offset: UInt64, enabled: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineStrategyListResponse> {
        let input = DescribeBaselineStrategyListRequest(limit: limit, offset: offset, enabled: enabled)
        return self.client.execute(action: "DescribeBaselineStrategyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户基线策略列表查询
    ///
    /// 查询一个用户下的基线策略信息
    @inlinable
    public func describeBaselineStrategyList(limit: UInt64, offset: UInt64, enabled: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineStrategyListResponse {
        let input = DescribeBaselineStrategyListRequest(limit: limit, offset: offset, enabled: enabled)
        return try await self.client.execute(action: "DescribeBaselineStrategyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
