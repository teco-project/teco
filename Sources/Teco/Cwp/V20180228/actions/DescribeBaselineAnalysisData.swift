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
    /// DescribeBaselineAnalysisData请求参数结构体
    public struct DescribeBaselineAnalysisDataRequest: TCRequestModel {
        /// 基线策略id
        public let strategyId: UInt64

        public init(strategyId: UInt64) {
            self.strategyId = strategyId
        }

        enum CodingKeys: String, CodingKey {
            case strategyId = "StrategyId"
        }
    }

    /// DescribeBaselineAnalysisData返回参数结构体
    public struct DescribeBaselineAnalysisDataResponse: TCResponseModel {
        /// 最后检测时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let latestScanTime: String?

        /// 是否全部服务器：1-是 0-否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isGlobal: UInt64?

        /// 服务器总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanHostCount: UInt64?

        /// 检测项总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRuleCount: UInt64?

        /// 是否是第一次检测  1是 0不是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ifFirstScan: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case latestScanTime = "LatestScanTime"
            case isGlobal = "IsGlobal"
            case scanHostCount = "ScanHostCount"
            case scanRuleCount = "ScanRuleCount"
            case ifFirstScan = "IfFirstScan"
            case requestId = "RequestId"
        }
    }

    /// 基线策略概览统计数据查询
    ///
    /// 根据基线策略id查询基线策略数据概览统计
    @inlinable
    public func describeBaselineAnalysisData(_ input: DescribeBaselineAnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineAnalysisDataResponse> {
        self.client.execute(action: "DescribeBaselineAnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基线策略概览统计数据查询
    ///
    /// 根据基线策略id查询基线策略数据概览统计
    @inlinable
    public func describeBaselineAnalysisData(_ input: DescribeBaselineAnalysisDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineAnalysisDataResponse {
        try await self.client.execute(action: "DescribeBaselineAnalysisData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基线策略概览统计数据查询
    ///
    /// 根据基线策略id查询基线策略数据概览统计
    @inlinable
    public func describeBaselineAnalysisData(strategyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineAnalysisDataResponse> {
        self.describeBaselineAnalysisData(.init(strategyId: strategyId), region: region, logger: logger, on: eventLoop)
    }

    /// 基线策略概览统计数据查询
    ///
    /// 根据基线策略id查询基线策略数据概览统计
    @inlinable
    public func describeBaselineAnalysisData(strategyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineAnalysisDataResponse {
        try await self.describeBaselineAnalysisData(.init(strategyId: strategyId), region: region, logger: logger, on: eventLoop)
    }
}
