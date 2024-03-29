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

extension Yunjing {
    /// CreateBaselineStrategy请求参数结构体
    public struct CreateBaselineStrategyRequest: TCRequest {
        /// 策略名称
        public let strategyName: String

        /// 检测周期, 表示每隔多少天进行检测.示例: 2, 表示每2天进行检测一次.
        public let scanCycle: UInt64

        /// 定期检测时间，该时间下发扫描. 示例:“22:00”, 表示在22:00下发检测
        public let scanAt: String

        /// 该策略下选择的基线id数组. 示例: [1,3,5,7]
        public let categoryIds: [UInt64]

        /// 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        public let isGlobal: UInt64

        /// 云主机类型：“CVM”：虚拟主机，"BMS"：裸金属，"ECM"：边缘计算主机
        public let machineType: String

        /// 主机地域. 示例: "ap-bj"
        public let regionCode: String

        /// 主机id数组. 示例: ["quuid1","quuid2"]
        public let quuids: [String]?

        public init(strategyName: String, scanCycle: UInt64, scanAt: String, categoryIds: [UInt64], isGlobal: UInt64, machineType: String, regionCode: String, quuids: [String]? = nil) {
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

    /// CreateBaselineStrategy返回参数结构体
    public struct CreateBaselineStrategyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建基线策略
    ///
    /// 根据策略信息创建基线策略
    @inlinable @discardableResult
    public func createBaselineStrategy(_ input: CreateBaselineStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBaselineStrategyResponse> {
        self.client.execute(action: "CreateBaselineStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建基线策略
    ///
    /// 根据策略信息创建基线策略
    @inlinable @discardableResult
    public func createBaselineStrategy(_ input: CreateBaselineStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBaselineStrategyResponse {
        try await self.client.execute(action: "CreateBaselineStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建基线策略
    ///
    /// 根据策略信息创建基线策略
    @inlinable @discardableResult
    public func createBaselineStrategy(strategyName: String, scanCycle: UInt64, scanAt: String, categoryIds: [UInt64], isGlobal: UInt64, machineType: String, regionCode: String, quuids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBaselineStrategyResponse> {
        self.createBaselineStrategy(.init(strategyName: strategyName, scanCycle: scanCycle, scanAt: scanAt, categoryIds: categoryIds, isGlobal: isGlobal, machineType: machineType, regionCode: regionCode, quuids: quuids), region: region, logger: logger, on: eventLoop)
    }

    /// 创建基线策略
    ///
    /// 根据策略信息创建基线策略
    @inlinable @discardableResult
    public func createBaselineStrategy(strategyName: String, scanCycle: UInt64, scanAt: String, categoryIds: [UInt64], isGlobal: UInt64, machineType: String, regionCode: String, quuids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBaselineStrategyResponse {
        try await self.createBaselineStrategy(.init(strategyName: strategyName, scanCycle: scanCycle, scanAt: scanAt, categoryIds: categoryIds, isGlobal: isGlobal, machineType: machineType, regionCode: regionCode, quuids: quuids), region: region, logger: logger, on: eventLoop)
    }
}
