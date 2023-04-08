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

import TecoCore

extension Cwp {
    /// UpdateBaselineStrategy请求参数结构体
    public struct UpdateBaselineStrategyRequest: TCRequestModel {
        /// 策略id
        public let strategyId: UInt64

        /// 策略名称
        public let strategyName: String

        /// 检测周期
        public let scanCycle: UInt64

        /// 定期检测时间，该时间下发扫描
        public let scanAt: String

        /// 该策略下选择的基线id数组
        public let categoryIds: [String]

        /// 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        public let isGlobal: UInt64

        /// 云主机类型：
        /// cvm：腾讯云服务器
        /// bm：裸金属
        /// ecm：边缘计算主机
        /// lh:轻量应用服务器
        /// other:混合云机器
        public let machineType: String

        /// 主机地域 ap-guangzhou
        public let regionCode: String

        /// 主机id数组
        public let quuids: [String]

        public init(strategyId: UInt64, strategyName: String, scanCycle: UInt64, scanAt: String, categoryIds: [String], isGlobal: UInt64, machineType: String, regionCode: String, quuids: [String]) {
            self.strategyId = strategyId
            self.strategyName = strategyName
            self.scanCycle = scanCycle
            self.scanAt = scanAt
            self.categoryIds = categoryIds
            self.isGlobal = isGlobal
            self.machineType = machineType
            self.regionCode = regionCode
            self.quuids = quuids
        }

        enum CodingKeys: String, CodingKey {
            case strategyId = "StrategyId"
            case strategyName = "StrategyName"
            case scanCycle = "ScanCycle"
            case scanAt = "ScanAt"
            case categoryIds = "CategoryIds"
            case isGlobal = "IsGlobal"
            case machineType = "MachineType"
            case regionCode = "RegionCode"
            case quuids = "Quuids"
        }
    }

    /// UpdateBaselineStrategy返回参数结构体
    public struct UpdateBaselineStrategyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新基线策略信息
    ///
    /// 根据基线策略id更新策略信息
    @inlinable @discardableResult
    public func updateBaselineStrategy(_ input: UpdateBaselineStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBaselineStrategyResponse> {
        self.client.execute(action: "UpdateBaselineStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新基线策略信息
    ///
    /// 根据基线策略id更新策略信息
    @inlinable @discardableResult
    public func updateBaselineStrategy(_ input: UpdateBaselineStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBaselineStrategyResponse {
        try await self.client.execute(action: "UpdateBaselineStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新基线策略信息
    ///
    /// 根据基线策略id更新策略信息
    @inlinable @discardableResult
    public func updateBaselineStrategy(strategyId: UInt64, strategyName: String, scanCycle: UInt64, scanAt: String, categoryIds: [String], isGlobal: UInt64, machineType: String, regionCode: String, quuids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBaselineStrategyResponse> {
        self.updateBaselineStrategy(.init(strategyId: strategyId, strategyName: strategyName, scanCycle: scanCycle, scanAt: scanAt, categoryIds: categoryIds, isGlobal: isGlobal, machineType: machineType, regionCode: regionCode, quuids: quuids), region: region, logger: logger, on: eventLoop)
    }

    /// 更新基线策略信息
    ///
    /// 根据基线策略id更新策略信息
    @inlinable @discardableResult
    public func updateBaselineStrategy(strategyId: UInt64, strategyName: String, scanCycle: UInt64, scanAt: String, categoryIds: [String], isGlobal: UInt64, machineType: String, regionCode: String, quuids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBaselineStrategyResponse {
        try await self.updateBaselineStrategy(.init(strategyId: strategyId, strategyName: strategyName, scanCycle: scanCycle, scanAt: scanAt, categoryIds: categoryIds, isGlobal: isGlobal, machineType: machineType, regionCode: regionCode, quuids: quuids), region: region, logger: logger, on: eventLoop)
    }
}
