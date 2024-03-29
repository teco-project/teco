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
    /// DescribeScanVulSetting请求参数结构体
    public struct DescribeScanVulSettingRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeScanVulSetting返回参数结构体
    public struct DescribeScanVulSettingResponse: TCResponse {
        /// 漏洞类型：1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        public let vulCategories: String

        /// 危害等级：1-低危；2-中危；3-高危；4-严重 (多选英文逗号分隔)
        public let vulLevels: String

        /// 定期检测间隔时间（天）
        public let timerInterval: UInt64

        /// 定期检测时间，如：00:00
        public let timerTime: String

        /// 是否紧急漏洞：0-否 1-是
        public let vulEmergency: UInt64

        /// 开始时间
        public let startTime: String

        /// 是否开启
        public let enableScan: UInt64

        /// 结束时间
        public let endTime: String

        /// 一键扫描超时时长，如：1800秒（s）
        public let clickTimeout: UInt64

        /// 为空默认扫描全部专业版、旗舰版、普惠版主机，不为空只扫描选中主机
        public let uuids: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulCategories = "VulCategories"
            case vulLevels = "VulLevels"
            case timerInterval = "TimerInterval"
            case timerTime = "TimerTime"
            case vulEmergency = "VulEmergency"
            case startTime = "StartTime"
            case enableScan = "EnableScan"
            case endTime = "EndTime"
            case clickTimeout = "ClickTimeout"
            case uuids = "Uuids"
            case requestId = "RequestId"
        }
    }

    /// 定期检测配置查询
    ///
    /// 查询定期检测的配置
    @inlinable
    public func describeScanVulSetting(_ input: DescribeScanVulSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanVulSettingResponse> {
        self.client.execute(action: "DescribeScanVulSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 定期检测配置查询
    ///
    /// 查询定期检测的配置
    @inlinable
    public func describeScanVulSetting(_ input: DescribeScanVulSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanVulSettingResponse {
        try await self.client.execute(action: "DescribeScanVulSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 定期检测配置查询
    ///
    /// 查询定期检测的配置
    @inlinable
    public func describeScanVulSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanVulSettingResponse> {
        self.describeScanVulSetting(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 定期检测配置查询
    ///
    /// 查询定期检测的配置
    @inlinable
    public func describeScanVulSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanVulSettingResponse {
        try await self.describeScanVulSetting(.init(), region: region, logger: logger, on: eventLoop)
    }
}
