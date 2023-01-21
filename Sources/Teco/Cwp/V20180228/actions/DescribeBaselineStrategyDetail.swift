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
    /// DescribeBaselineStrategyDetail请求参数结构体
    public struct DescribeBaselineStrategyDetailRequest: TCRequestModel {
        /// 用户基线策略id
        public let strategyId: UInt64

        public init(strategyId: UInt64) {
            self.strategyId = strategyId
        }

        enum CodingKeys: String, CodingKey {
            case strategyId = "StrategyId"
        }
    }

    /// DescribeBaselineStrategyDetail返回参数结构体
    public struct DescribeBaselineStrategyDetailResponse: TCResponseModel {
        /// 策略扫描通过率
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let passRate: UInt64?

        /// 策略名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let strategyName: String?

        /// 策略扫描周期(天)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanCycle: String?

        /// 定期检测时间, 该时间下发扫描
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanAt: String?

        /// 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isGlobal: UInt64?

        /// 云服务器类型：
        /// cvm：腾讯云服务器
        /// bm：裸金属
        /// ecm：边缘计算主机
        /// lh: 轻量应用服务器
        /// ohter: 混合云机器
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machineType: String?

        /// 主机地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// 用户该策略下的所有主机id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let quuids: [String]?

        /// 用户该策略下所有的基线id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryIds: [String]?

        /// 1 表示扫描过, 0没扫描过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ifScanned: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case passRate = "PassRate"
            case strategyName = "StrategyName"
            case scanCycle = "ScanCycle"
            case scanAt = "ScanAt"
            case isGlobal = "IsGlobal"
            case machineType = "MachineType"
            case region = "Region"
            case quuids = "Quuids"
            case categoryIds = "CategoryIds"
            case ifScanned = "IfScanned"
            case requestId = "RequestId"
        }
    }

    /// 查询基线策略详情
    ///
    /// 根据基线策略id查询策略详情
    @inlinable
    public func describeBaselineStrategyDetail(_ input: DescribeBaselineStrategyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineStrategyDetailResponse> {
        self.client.execute(action: "DescribeBaselineStrategyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线策略详情
    ///
    /// 根据基线策略id查询策略详情
    @inlinable
    public func describeBaselineStrategyDetail(_ input: DescribeBaselineStrategyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineStrategyDetailResponse {
        try await self.client.execute(action: "DescribeBaselineStrategyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基线策略详情
    ///
    /// 根据基线策略id查询策略详情
    @inlinable
    public func describeBaselineStrategyDetail(strategyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineStrategyDetailResponse> {
        self.describeBaselineStrategyDetail(DescribeBaselineStrategyDetailRequest(strategyId: strategyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基线策略详情
    ///
    /// 根据基线策略id查询策略详情
    @inlinable
    public func describeBaselineStrategyDetail(strategyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineStrategyDetailResponse {
        try await self.describeBaselineStrategyDetail(DescribeBaselineStrategyDetailRequest(strategyId: strategyId), region: region, logger: logger, on: eventLoop)
    }
}
