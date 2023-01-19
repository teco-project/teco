//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Rum {
    /// DescribeDataSetUrlStatistics请求参数结构体
    public struct DescribeDataSetUrlStatisticsRequest: TCRequestModel {
        /// 开始时间
        public let startTime: Int64

        /// allcount：性能视图，data：小程序，component：小程序相关，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        public let type: String

        /// 结束时间
        public let endTime: Int64

        /// 项目ID
        public let id: Int64

        /// 自定义2
        public let extSecond: String?

        /// 浏览器引擎
        public let engine: String?

        /// 运营商
        public let isp: String?

        /// 来源页面
        public let from: String?

        /// 日志等级
        public let level: String?

        /// 品牌
        public let brand: String?

        /// 地区
        public let area: String?

        /// 版本
        public let versionNum: String?

        /// 平台
        public let platform: String?

        /// 自定义3
        public let extThird: String?

        /// 自定义1
        public let extFirst: String?

        /// 网络类型
        public let netType: String?

        /// 机型
        public let device: String?

        /// 是否海外
        public let isAbroad: String?

        /// 操作系统
        public let os: String?

        /// 浏览器
        public let browser: String?

        /// 耗时计算
        public let costType: String?

        /// 环境
        public let env: String?

        /// 获取package
        public let packageType: String?

        public init(startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String? = nil, engine: String? = nil, isp: String? = nil, from: String? = nil, level: String? = nil, brand: String? = nil, area: String? = nil, versionNum: String? = nil, platform: String? = nil, extThird: String? = nil, extFirst: String? = nil, netType: String? = nil, device: String? = nil, isAbroad: String? = nil, os: String? = nil, browser: String? = nil, costType: String? = nil, env: String? = nil, packageType: String? = nil) {
            self.startTime = startTime
            self.type = type
            self.endTime = endTime
            self.id = id
            self.extSecond = extSecond
            self.engine = engine
            self.isp = isp
            self.from = from
            self.level = level
            self.brand = brand
            self.area = area
            self.versionNum = versionNum
            self.platform = platform
            self.extThird = extThird
            self.extFirst = extFirst
            self.netType = netType
            self.device = device
            self.isAbroad = isAbroad
            self.os = os
            self.browser = browser
            self.costType = costType
            self.env = env
            self.packageType = packageType
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case type = "Type"
            case endTime = "EndTime"
            case id = "ID"
            case extSecond = "ExtSecond"
            case engine = "Engine"
            case isp = "Isp"
            case from = "From"
            case level = "Level"
            case brand = "Brand"
            case area = "Area"
            case versionNum = "VersionNum"
            case platform = "Platform"
            case extThird = "ExtThird"
            case extFirst = "ExtFirst"
            case netType = "NetType"
            case device = "Device"
            case isAbroad = "IsAbroad"
            case os = "Os"
            case browser = "Browser"
            case costType = "CostType"
            case env = "Env"
            case packageType = "PackageType"
        }
    }

    /// DescribeDataSetUrlStatistics返回参数结构体
    public struct DescribeDataSetUrlStatisticsResponse: TCResponseModel {
        /// 返回值
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取DescribeDataSetUrlStatistics信息
    @inlinable
    public func describeDataSetUrlStatistics(_ input: DescribeDataSetUrlStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSetUrlStatisticsResponse> {
        self.client.execute(action: "DescribeDataSetUrlStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DescribeDataSetUrlStatistics信息
    @inlinable
    public func describeDataSetUrlStatistics(_ input: DescribeDataSetUrlStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSetUrlStatisticsResponse {
        try await self.client.execute(action: "DescribeDataSetUrlStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DescribeDataSetUrlStatistics信息
    @inlinable
    public func describeDataSetUrlStatistics(startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String? = nil, engine: String? = nil, isp: String? = nil, from: String? = nil, level: String? = nil, brand: String? = nil, area: String? = nil, versionNum: String? = nil, platform: String? = nil, extThird: String? = nil, extFirst: String? = nil, netType: String? = nil, device: String? = nil, isAbroad: String? = nil, os: String? = nil, browser: String? = nil, costType: String? = nil, env: String? = nil, packageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSetUrlStatisticsResponse> {
        self.describeDataSetUrlStatistics(DescribeDataSetUrlStatisticsRequest(startTime: startTime, type: type, endTime: endTime, id: id, extSecond: extSecond, engine: engine, isp: isp, from: from, level: level, brand: brand, area: area, versionNum: versionNum, platform: platform, extThird: extThird, extFirst: extFirst, netType: netType, device: device, isAbroad: isAbroad, os: os, browser: browser, costType: costType, env: env, packageType: packageType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DescribeDataSetUrlStatistics信息
    @inlinable
    public func describeDataSetUrlStatistics(startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String? = nil, engine: String? = nil, isp: String? = nil, from: String? = nil, level: String? = nil, brand: String? = nil, area: String? = nil, versionNum: String? = nil, platform: String? = nil, extThird: String? = nil, extFirst: String? = nil, netType: String? = nil, device: String? = nil, isAbroad: String? = nil, os: String? = nil, browser: String? = nil, costType: String? = nil, env: String? = nil, packageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSetUrlStatisticsResponse {
        try await self.describeDataSetUrlStatistics(DescribeDataSetUrlStatisticsRequest(startTime: startTime, type: type, endTime: endTime, id: id, extSecond: extSecond, engine: engine, isp: isp, from: from, level: level, brand: brand, area: area, versionNum: versionNum, platform: platform, extThird: extThird, extFirst: extFirst, netType: netType, device: device, isAbroad: isAbroad, os: os, browser: browser, costType: costType, env: env, packageType: packageType), region: region, logger: logger, on: eventLoop)
    }
}
