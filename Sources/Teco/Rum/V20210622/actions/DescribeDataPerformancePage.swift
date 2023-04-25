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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Rum {
    /// DescribeDataPerformancePage请求参数结构体
    public struct DescribeDataPerformancePageRequest: TCRequestModel {
        /// 项目ID
        public let id: Int64

        /// 开始时间
        public let startTime: Int64

        /// 结束时间
        public let endTime: Int64

        /// pagepv：性能视图，allcount：性能视图，falls：页面加载瀑布图，samp：首屏时间，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        public let type: String

        /// 日志等级
        public let level: String?

        /// 运营商
        public let isp: String?

        /// 地区
        public let area: String?

        /// 网络类型
        public let netType: String?

        /// 平台
        public let platform: String?

        /// 机型
        public let device: String?

        /// 版本
        public let versionNum: String?

        /// 自定义1
        public let extFirst: String?

        /// 自定义2
        public let extSecond: String?

        /// 自定义3
        public let extThird: String?

        /// 是否海外
        public let isAbroad: String?

        /// 浏览器
        public let browser: String?

        /// 操作系统
        public let os: String?

        /// 浏览器引擎
        public let engine: String?

        /// 品牌
        public let brand: String?

        /// 来源页面
        public let from: String?

        /// 耗时计算方式
        public let costType: String?

        /// 环境变量
        public let env: String?

        /// 网络状态
        public let netStatus: String?

        public init(id: Int64, startTime: Int64, endTime: Int64, type: String, level: String? = nil, isp: String? = nil, area: String? = nil, netType: String? = nil, platform: String? = nil, device: String? = nil, versionNum: String? = nil, extFirst: String? = nil, extSecond: String? = nil, extThird: String? = nil, isAbroad: String? = nil, browser: String? = nil, os: String? = nil, engine: String? = nil, brand: String? = nil, from: String? = nil, costType: String? = nil, env: String? = nil, netStatus: String? = nil) {
            self.id = id
            self.startTime = startTime
            self.endTime = endTime
            self.type = type
            self.level = level
            self.isp = isp
            self.area = area
            self.netType = netType
            self.platform = platform
            self.device = device
            self.versionNum = versionNum
            self.extFirst = extFirst
            self.extSecond = extSecond
            self.extThird = extThird
            self.isAbroad = isAbroad
            self.browser = browser
            self.os = os
            self.engine = engine
            self.brand = brand
            self.from = from
            self.costType = costType
            self.env = env
            self.netStatus = netStatus
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case type = "Type"
            case level = "Level"
            case isp = "Isp"
            case area = "Area"
            case netType = "NetType"
            case platform = "Platform"
            case device = "Device"
            case versionNum = "VersionNum"
            case extFirst = "ExtFirst"
            case extSecond = "ExtSecond"
            case extThird = "ExtThird"
            case isAbroad = "IsAbroad"
            case browser = "Browser"
            case os = "Os"
            case engine = "Engine"
            case brand = "Brand"
            case from = "From"
            case costType = "CostType"
            case env = "Env"
            case netStatus = "NetStatus"
        }
    }

    /// DescribeDataPerformancePage返回参数结构体
    public struct DescribeDataPerformancePageResponse: TCResponseModel {
        /// 返回值
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取PerformancePage信息
    @inlinable
    public func describeDataPerformancePage(_ input: DescribeDataPerformancePageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataPerformancePageResponse> {
        self.client.execute(action: "DescribeDataPerformancePage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取PerformancePage信息
    @inlinable
    public func describeDataPerformancePage(_ input: DescribeDataPerformancePageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataPerformancePageResponse {
        try await self.client.execute(action: "DescribeDataPerformancePage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取PerformancePage信息
    @inlinable
    public func describeDataPerformancePage(id: Int64, startTime: Int64, endTime: Int64, type: String, level: String? = nil, isp: String? = nil, area: String? = nil, netType: String? = nil, platform: String? = nil, device: String? = nil, versionNum: String? = nil, extFirst: String? = nil, extSecond: String? = nil, extThird: String? = nil, isAbroad: String? = nil, browser: String? = nil, os: String? = nil, engine: String? = nil, brand: String? = nil, from: String? = nil, costType: String? = nil, env: String? = nil, netStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataPerformancePageResponse> {
        self.describeDataPerformancePage(.init(id: id, startTime: startTime, endTime: endTime, type: type, level: level, isp: isp, area: area, netType: netType, platform: platform, device: device, versionNum: versionNum, extFirst: extFirst, extSecond: extSecond, extThird: extThird, isAbroad: isAbroad, browser: browser, os: os, engine: engine, brand: brand, from: from, costType: costType, env: env, netStatus: netStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 获取PerformancePage信息
    @inlinable
    public func describeDataPerformancePage(id: Int64, startTime: Int64, endTime: Int64, type: String, level: String? = nil, isp: String? = nil, area: String? = nil, netType: String? = nil, platform: String? = nil, device: String? = nil, versionNum: String? = nil, extFirst: String? = nil, extSecond: String? = nil, extThird: String? = nil, isAbroad: String? = nil, browser: String? = nil, os: String? = nil, engine: String? = nil, brand: String? = nil, from: String? = nil, costType: String? = nil, env: String? = nil, netStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataPerformancePageResponse {
        try await self.describeDataPerformancePage(.init(id: id, startTime: startTime, endTime: endTime, type: type, level: level, isp: isp, area: area, netType: netType, platform: platform, device: device, versionNum: versionNum, extFirst: extFirst, extSecond: extSecond, extThird: extThird, isAbroad: isAbroad, browser: browser, os: os, engine: engine, brand: brand, from: from, costType: costType, env: env, netStatus: netStatus), region: region, logger: logger, on: eventLoop)
    }
}
