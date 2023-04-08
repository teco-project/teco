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

extension Cwp {
    /// ScanVulSetting请求参数结构体
    public struct ScanVulSettingRequest: TCRequestModel {
        /// 定期检测间隔时间（天）
        public let timerInterval: UInt64

        /// 漏洞类型：1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞, 以数组方式传参[1,2]
        public let vulCategories: [UInt64]?

        /// 危害等级：1-低危；2-中危；3-高危；4-严重,以数组方式传参[1,2,3]
        public let vulLevels: [UInt64]?

        /// 定期检测时间，如：02:10:50
        public let timerTime: String?

        /// 是否是应急漏洞 0 否 1 是
        public let vulEmergency: UInt64?

        /// 扫描开始时间，如：00:00
        public let startTime: String?

        /// 扫描结束时间，如：08:00
        public let endTime: String?

        /// 是否开启扫描 1开启 0不开启
        public let enableScan: UInt64?

        /// 为空默认扫描全部专业版、旗舰版、普惠版主机，不为空只扫描选中主机
        public let uuids: [String]?

        public init(timerInterval: UInt64, vulCategories: [UInt64]? = nil, vulLevels: [UInt64]? = nil, timerTime: String? = nil, vulEmergency: UInt64? = nil, startTime: String? = nil, endTime: String? = nil, enableScan: UInt64? = nil, uuids: [String]? = nil) {
            self.timerInterval = timerInterval
            self.vulCategories = vulCategories
            self.vulLevels = vulLevels
            self.timerTime = timerTime
            self.vulEmergency = vulEmergency
            self.startTime = startTime
            self.endTime = endTime
            self.enableScan = enableScan
            self.uuids = uuids
        }

        enum CodingKeys: String, CodingKey {
            case timerInterval = "TimerInterval"
            case vulCategories = "VulCategories"
            case vulLevels = "VulLevels"
            case timerTime = "TimerTime"
            case vulEmergency = "VulEmergency"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case enableScan = "EnableScan"
            case uuids = "Uuids"
        }
    }

    /// ScanVulSetting返回参数结构体
    public struct ScanVulSettingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 定期扫描漏洞设置
    @inlinable @discardableResult
    public func scanVulSetting(_ input: ScanVulSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanVulSettingResponse> {
        self.client.execute(action: "ScanVulSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 定期扫描漏洞设置
    @inlinable @discardableResult
    public func scanVulSetting(_ input: ScanVulSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanVulSettingResponse {
        try await self.client.execute(action: "ScanVulSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 定期扫描漏洞设置
    @inlinable @discardableResult
    public func scanVulSetting(timerInterval: UInt64, vulCategories: [UInt64]? = nil, vulLevels: [UInt64]? = nil, timerTime: String? = nil, vulEmergency: UInt64? = nil, startTime: String? = nil, endTime: String? = nil, enableScan: UInt64? = nil, uuids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanVulSettingResponse> {
        self.scanVulSetting(.init(timerInterval: timerInterval, vulCategories: vulCategories, vulLevels: vulLevels, timerTime: timerTime, vulEmergency: vulEmergency, startTime: startTime, endTime: endTime, enableScan: enableScan, uuids: uuids), region: region, logger: logger, on: eventLoop)
    }

    /// 定期扫描漏洞设置
    @inlinable @discardableResult
    public func scanVulSetting(timerInterval: UInt64, vulCategories: [UInt64]? = nil, vulLevels: [UInt64]? = nil, timerTime: String? = nil, vulEmergency: UInt64? = nil, startTime: String? = nil, endTime: String? = nil, enableScan: UInt64? = nil, uuids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanVulSettingResponse {
        try await self.scanVulSetting(.init(timerInterval: timerInterval, vulCategories: vulCategories, vulLevels: vulLevels, timerTime: timerTime, vulEmergency: vulEmergency, startTime: startTime, endTime: endTime, enableScan: enableScan, uuids: uuids), region: region, logger: logger, on: eventLoop)
    }
}
