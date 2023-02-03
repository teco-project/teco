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

extension Cdc {
    /// ModifySiteDeviceInfo请求参数结构体
    public struct ModifySiteDeviceInfoRequest: TCRequestModel {
        /// 机房ID
        public let siteId: String

        /// 您将使用光纤类型将CDC设备连接到网络。有单模和多模两种选项。
        public let fiberType: String?

        /// 您将CDC连接到网络时采用的光学标准。此字段取决于上行链路速度、光纤类型和到上游设备的距离。
        public let opticalStandard: String?

        /// 电源连接器类型
        public let powerConnectors: String?

        /// 从机架上方还是下方供电。
        public let powerFeedDrop: String?

        /// 最大承重(KG)
        public let maxWeight: Int64?

        /// 功耗(KW)
        public let powerDrawKva: Int64?

        /// 网络到腾讯云Region区域的上行链路速度
        public let uplinkSpeedGbps: Int64?

        /// 将CDC连接到网络时，每台CDC网络设备(每个机架 2 台设备)使用的上行链路数量。
        public let uplinkCount: Int64?

        /// 是否满足下面环境条件：
        /// 1、场地没有材料要求或验收标准会影响 CDC 设备配送和安装。
        /// 2、确定的机架位置包含:
        /// 温度范围为 41 到 104°F (5 到 40°C)。
        /// 湿度范围为 10°F (-12°C)和 8% RH (相对湿度)到 70°F(21°C)和 80% RH。
        /// 机架位置的气流方向为从前向后，且应具有足够的 CFM (每分钟立方英尺)。CFM 必须是 CDC 配置的 kVA 功耗值的 145.8 倍。
        public let conditionRequirement: Bool?

        /// 是否满足下面的尺寸条件：
        /// 您的装货站台可以容纳一个机架箱(高 x 宽 x 深 = 94" x 54" x 48")。
        /// 您可以提供从机架(高 x 宽 x 深 = 80" x 24" x 48")交货地点到机架最终安置位置的明确通道。测量深度时，应包括站台、走廊通道、门、转弯、坡道、货梯，并将其他通道限制考虑在内。
        /// 在最终的 CDC安置位置，前部间隙可以为 48" 或更大，后部间隙可以为 24" 或更大。
        public let dimensionRequirement: Bool?

        /// 是否提供冗余的上游设备(交换机或路由器)，以便两台  网络设备都能连接到网络设备。
        public let redundantNetworking: Bool?

        /// 是否需要腾讯云团队协助完成机架支撑工作
        public let needHelp: Bool?

        /// 是否电源冗余
        public let redundantPower: Bool?

        /// 上游断路器是否具备
        public let breakerRequirement: Bool?

        public init(siteId: String, fiberType: String? = nil, opticalStandard: String? = nil, powerConnectors: String? = nil, powerFeedDrop: String? = nil, maxWeight: Int64? = nil, powerDrawKva: Int64? = nil, uplinkSpeedGbps: Int64? = nil, uplinkCount: Int64? = nil, conditionRequirement: Bool? = nil, dimensionRequirement: Bool? = nil, redundantNetworking: Bool? = nil, needHelp: Bool? = nil, redundantPower: Bool? = nil, breakerRequirement: Bool? = nil) {
            self.siteId = siteId
            self.fiberType = fiberType
            self.opticalStandard = opticalStandard
            self.powerConnectors = powerConnectors
            self.powerFeedDrop = powerFeedDrop
            self.maxWeight = maxWeight
            self.powerDrawKva = powerDrawKva
            self.uplinkSpeedGbps = uplinkSpeedGbps
            self.uplinkCount = uplinkCount
            self.conditionRequirement = conditionRequirement
            self.dimensionRequirement = dimensionRequirement
            self.redundantNetworking = redundantNetworking
            self.needHelp = needHelp
            self.redundantPower = redundantPower
            self.breakerRequirement = breakerRequirement
        }

        enum CodingKeys: String, CodingKey {
            case siteId = "SiteId"
            case fiberType = "FiberType"
            case opticalStandard = "OpticalStandard"
            case powerConnectors = "PowerConnectors"
            case powerFeedDrop = "PowerFeedDrop"
            case maxWeight = "MaxWeight"
            case powerDrawKva = "PowerDrawKva"
            case uplinkSpeedGbps = "UplinkSpeedGbps"
            case uplinkCount = "UplinkCount"
            case conditionRequirement = "ConditionRequirement"
            case dimensionRequirement = "DimensionRequirement"
            case redundantNetworking = "RedundantNetworking"
            case needHelp = "NeedHelp"
            case redundantPower = "RedundantPower"
            case breakerRequirement = "BreakerRequirement"
        }
    }

    /// ModifySiteDeviceInfo返回参数结构体
    public struct ModifySiteDeviceInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改机房设备信息
    @inlinable @discardableResult
    public func modifySiteDeviceInfo(_ input: ModifySiteDeviceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySiteDeviceInfoResponse> {
        self.client.execute(action: "ModifySiteDeviceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改机房设备信息
    @inlinable @discardableResult
    public func modifySiteDeviceInfo(_ input: ModifySiteDeviceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySiteDeviceInfoResponse {
        try await self.client.execute(action: "ModifySiteDeviceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改机房设备信息
    @inlinable @discardableResult
    public func modifySiteDeviceInfo(siteId: String, fiberType: String? = nil, opticalStandard: String? = nil, powerConnectors: String? = nil, powerFeedDrop: String? = nil, maxWeight: Int64? = nil, powerDrawKva: Int64? = nil, uplinkSpeedGbps: Int64? = nil, uplinkCount: Int64? = nil, conditionRequirement: Bool? = nil, dimensionRequirement: Bool? = nil, redundantNetworking: Bool? = nil, needHelp: Bool? = nil, redundantPower: Bool? = nil, breakerRequirement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySiteDeviceInfoResponse> {
        let input = ModifySiteDeviceInfoRequest(siteId: siteId, fiberType: fiberType, opticalStandard: opticalStandard, powerConnectors: powerConnectors, powerFeedDrop: powerFeedDrop, maxWeight: maxWeight, powerDrawKva: powerDrawKva, uplinkSpeedGbps: uplinkSpeedGbps, uplinkCount: uplinkCount, conditionRequirement: conditionRequirement, dimensionRequirement: dimensionRequirement, redundantNetworking: redundantNetworking, needHelp: needHelp, redundantPower: redundantPower, breakerRequirement: breakerRequirement)
        return self.client.execute(action: "ModifySiteDeviceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改机房设备信息
    @inlinable @discardableResult
    public func modifySiteDeviceInfo(siteId: String, fiberType: String? = nil, opticalStandard: String? = nil, powerConnectors: String? = nil, powerFeedDrop: String? = nil, maxWeight: Int64? = nil, powerDrawKva: Int64? = nil, uplinkSpeedGbps: Int64? = nil, uplinkCount: Int64? = nil, conditionRequirement: Bool? = nil, dimensionRequirement: Bool? = nil, redundantNetworking: Bool? = nil, needHelp: Bool? = nil, redundantPower: Bool? = nil, breakerRequirement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySiteDeviceInfoResponse {
        let input = ModifySiteDeviceInfoRequest(siteId: siteId, fiberType: fiberType, opticalStandard: opticalStandard, powerConnectors: powerConnectors, powerFeedDrop: powerFeedDrop, maxWeight: maxWeight, powerDrawKva: powerDrawKva, uplinkSpeedGbps: uplinkSpeedGbps, uplinkCount: uplinkCount, conditionRequirement: conditionRequirement, dimensionRequirement: dimensionRequirement, redundantNetworking: redundantNetworking, needHelp: needHelp, redundantPower: redundantPower, breakerRequirement: breakerRequirement)
        return try await self.client.execute(action: "ModifySiteDeviceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
