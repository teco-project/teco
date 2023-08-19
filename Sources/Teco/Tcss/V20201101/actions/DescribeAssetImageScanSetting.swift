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

extension Tcss {
    /// DescribeAssetImageScanSetting请求参数结构体
    public struct DescribeAssetImageScanSettingRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeAssetImageScanSetting返回参数结构体
    public struct DescribeAssetImageScanSettingResponse: TCResponse {
        /// 开关
        public let enable: Bool

        /// 扫描时刻(完整时间;后端按0时区解析时分秒)
        public let scanTime: String

        /// 扫描间隔
        public let scanPeriod: UInt64

        /// 扫描木马
        public let scanVirus: Bool

        /// 扫描敏感信息
        public let scanRisk: Bool

        /// 扫描漏洞
        public let scanVul: Bool

        /// 扫描全部镜像
        public let all: Bool

        /// 自定义扫描镜像
        public let images: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case scanTime = "ScanTime"
            case scanPeriod = "ScanPeriod"
            case scanVirus = "ScanVirus"
            case scanRisk = "ScanRisk"
            case scanVul = "ScanVul"
            case all = "All"
            case images = "Images"
            case requestId = "RequestId"
        }
    }

    /// 获取镜像扫描设置信息
    @inlinable
    public func describeAssetImageScanSetting(_ input: DescribeAssetImageScanSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageScanSettingResponse> {
        self.client.execute(action: "DescribeAssetImageScanSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取镜像扫描设置信息
    @inlinable
    public func describeAssetImageScanSetting(_ input: DescribeAssetImageScanSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageScanSettingResponse {
        try await self.client.execute(action: "DescribeAssetImageScanSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取镜像扫描设置信息
    @inlinable
    public func describeAssetImageScanSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageScanSettingResponse> {
        self.describeAssetImageScanSetting(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取镜像扫描设置信息
    @inlinable
    public func describeAssetImageScanSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageScanSettingResponse {
        try await self.describeAssetImageScanSetting(.init(), region: region, logger: logger, on: eventLoop)
    }
}
