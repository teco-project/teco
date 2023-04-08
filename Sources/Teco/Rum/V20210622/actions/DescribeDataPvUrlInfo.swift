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

extension Rum {
    /// DescribeDataPvUrlInfo请求参数结构体
    public struct DescribeDataPvUrlInfoRequest: TCRequestModel {
        /// 开始时间
        public let startTime: Int64

        /// 类型
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

        /// 环境
        public let env: String?

        public init(startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String? = nil, engine: String? = nil, isp: String? = nil, from: String? = nil, level: String? = nil, brand: String? = nil, area: String? = nil, versionNum: String? = nil, platform: String? = nil, extThird: String? = nil, extFirst: String? = nil, netType: String? = nil, device: String? = nil, isAbroad: String? = nil, os: String? = nil, browser: String? = nil, env: String? = nil) {
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
            self.env = env
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
            case env = "Env"
        }
    }

    /// DescribeDataPvUrlInfo返回参数结构体
    public struct DescribeDataPvUrlInfoResponse: TCResponseModel {
        /// 返回值
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取PvUrlInfo信息
    @inlinable
    public func describeDataPvUrlInfo(_ input: DescribeDataPvUrlInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataPvUrlInfoResponse> {
        self.client.execute(action: "DescribeDataPvUrlInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取PvUrlInfo信息
    @inlinable
    public func describeDataPvUrlInfo(_ input: DescribeDataPvUrlInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataPvUrlInfoResponse {
        try await self.client.execute(action: "DescribeDataPvUrlInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取PvUrlInfo信息
    @inlinable
    public func describeDataPvUrlInfo(startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String? = nil, engine: String? = nil, isp: String? = nil, from: String? = nil, level: String? = nil, brand: String? = nil, area: String? = nil, versionNum: String? = nil, platform: String? = nil, extThird: String? = nil, extFirst: String? = nil, netType: String? = nil, device: String? = nil, isAbroad: String? = nil, os: String? = nil, browser: String? = nil, env: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataPvUrlInfoResponse> {
        self.describeDataPvUrlInfo(.init(startTime: startTime, type: type, endTime: endTime, id: id, extSecond: extSecond, engine: engine, isp: isp, from: from, level: level, brand: brand, area: area, versionNum: versionNum, platform: platform, extThird: extThird, extFirst: extFirst, netType: netType, device: device, isAbroad: isAbroad, os: os, browser: browser, env: env), region: region, logger: logger, on: eventLoop)
    }

    /// 获取PvUrlInfo信息
    @inlinable
    public func describeDataPvUrlInfo(startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String? = nil, engine: String? = nil, isp: String? = nil, from: String? = nil, level: String? = nil, brand: String? = nil, area: String? = nil, versionNum: String? = nil, platform: String? = nil, extThird: String? = nil, extFirst: String? = nil, netType: String? = nil, device: String? = nil, isAbroad: String? = nil, os: String? = nil, browser: String? = nil, env: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataPvUrlInfoResponse {
        try await self.describeDataPvUrlInfo(.init(startTime: startTime, type: type, endTime: endTime, id: id, extSecond: extSecond, engine: engine, isp: isp, from: from, level: level, brand: brand, area: area, versionNum: versionNum, platform: platform, extThird: extThird, extFirst: extFirst, netType: netType, device: device, isAbroad: isAbroad, os: os, browser: browser, env: env), region: region, logger: logger, on: eventLoop)
    }
}
