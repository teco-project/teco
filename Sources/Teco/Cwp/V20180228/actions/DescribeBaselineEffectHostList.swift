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
    /// DescribeBaselineEffectHostList请求参数结构体
    public struct DescribeBaselineEffectHostListRequest: TCRequestModel {
        /// 分页参数 最大100条
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 基线id
        public let baselineId: UInt64

        /// 过滤条件。
        /// <li>AliasName- String- 主机别名</li>
        /// <li>Status- Uint- 1已通过  0未通过 5检测中</li>
        public let filters: [Filters]?

        /// 策略id
        public let strategyId: UInt64?

        /// 主机uuid数组
        public let uuidList: [String]?

        public init(limit: UInt64, offset: UInt64, baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.baselineId = baselineId
            self.filters = filters
            self.strategyId = strategyId
            self.uuidList = uuidList
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case baselineId = "BaselineId"
            case filters = "Filters"
            case strategyId = "StrategyId"
            case uuidList = "UuidList"
        }
    }

    /// DescribeBaselineEffectHostList返回参数结构体
    public struct DescribeBaselineEffectHostListResponse: TCResponseModel {
        /// 记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 影响服务器列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let effectHostList: [BaselineEffectHost]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case effectHostList = "EffectHostList"
            case requestId = "RequestId"
        }
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineEffectHostListResponse> {
        self.client.execute(action: "DescribeBaselineEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(_ input: DescribeBaselineEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineEffectHostListResponse {
        try await self.client.execute(action: "DescribeBaselineEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(limit: UInt64, offset: UInt64, baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineEffectHostListResponse> {
        let input = DescribeBaselineEffectHostListRequest(limit: limit, offset: offset, baselineId: baselineId, filters: filters, strategyId: strategyId, uuidList: uuidList)
        return self.client.execute(action: "DescribeBaselineEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表
    ///
    /// 根据基线id查询基线影响主机列表
    @inlinable
    public func describeBaselineEffectHostList(limit: UInt64, offset: UInt64, baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineEffectHostListResponse {
        let input = DescribeBaselineEffectHostListRequest(limit: limit, offset: offset, baselineId: baselineId, filters: filters, strategyId: strategyId, uuidList: uuidList)
        return try await self.client.execute(action: "DescribeBaselineEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
