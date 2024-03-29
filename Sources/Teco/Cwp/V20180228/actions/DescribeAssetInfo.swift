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
    /// DescribeAssetInfo请求参数结构体
    public struct DescribeAssetInfoRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeAssetInfo返回参数结构体
    public struct DescribeAssetInfoResponse: TCResponse {
        /// 主机数
        public let machineCount: UInt64

        /// 账号数
        public let accountCount: UInt64

        /// 端口数
        public let portCount: UInt64

        /// 进程数
        public let processCount: UInt64

        /// 软件数
        public let softwareCount: UInt64

        /// 数据库数
        public let databaseCount: UInt64

        /// Web应用数
        public let webAppCount: UInt64

        /// Web框架数
        public let webFrameCount: UInt64

        /// Web服务数
        public let webServiceCount: UInt64

        /// Web站点数
        public let webLocationCount: UInt64

        /// 账号今日新增
        public let accountNewCount: Int64

        /// 端口今日新增
        public let portNewCount: Int64

        /// 进程今日新增
        public let processNewCount: Int64

        /// 软件今日新增
        public let softwareNewCount: Int64

        /// 数据库今日新增
        public let databaseNewCount: Int64

        /// Web应用今日新增
        public let webAppNewCount: Int64

        /// Web框架今日新增
        public let webFrameNewCount: Int64

        /// Web服务今日新增
        public let webServiceNewCount: Int64

        /// Web站点今日新增
        public let webLocationNewCount: Int64

        /// 主机今日新增
        public let machineNewCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machineCount = "MachineCount"
            case accountCount = "AccountCount"
            case portCount = "PortCount"
            case processCount = "ProcessCount"
            case softwareCount = "SoftwareCount"
            case databaseCount = "DatabaseCount"
            case webAppCount = "WebAppCount"
            case webFrameCount = "WebFrameCount"
            case webServiceCount = "WebServiceCount"
            case webLocationCount = "WebLocationCount"
            case accountNewCount = "AccountNewCount"
            case portNewCount = "PortNewCount"
            case processNewCount = "ProcessNewCount"
            case softwareNewCount = "SoftwareNewCount"
            case databaseNewCount = "DatabaseNewCount"
            case webAppNewCount = "WebAppNewCount"
            case webFrameNewCount = "WebFrameNewCount"
            case webServiceNewCount = "WebServiceNewCount"
            case webLocationNewCount = "WebLocationNewCount"
            case machineNewCount = "MachineNewCount"
            case requestId = "RequestId"
        }
    }

    /// 获取资产数量概况
    ///
    /// 获取资产数量： 主机数、账号数、端口数、进程数、软件数、数据库数、Web应用数、Web框架数、Web服务数、Web站点数
    @inlinable
    public func describeAssetInfo(_ input: DescribeAssetInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetInfoResponse> {
        self.client.execute(action: "DescribeAssetInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产数量概况
    ///
    /// 获取资产数量： 主机数、账号数、端口数、进程数、软件数、数据库数、Web应用数、Web框架数、Web服务数、Web站点数
    @inlinable
    public func describeAssetInfo(_ input: DescribeAssetInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetInfoResponse {
        try await self.client.execute(action: "DescribeAssetInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产数量概况
    ///
    /// 获取资产数量： 主机数、账号数、端口数、进程数、软件数、数据库数、Web应用数、Web框架数、Web服务数、Web站点数
    @inlinable
    public func describeAssetInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetInfoResponse> {
        self.describeAssetInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产数量概况
    ///
    /// 获取资产数量： 主机数、账号数、端口数、进程数、软件数、数据库数、Web应用数、Web框架数、Web服务数、Web站点数
    @inlinable
    public func describeAssetInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetInfoResponse {
        try await self.describeAssetInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
