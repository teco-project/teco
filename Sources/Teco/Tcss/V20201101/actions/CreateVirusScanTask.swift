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
    /// CreateVirusScanTask请求参数结构体
    public struct CreateVirusScanTaskRequest: TCRequest {
        /// 是否扫描所有路径
        public let scanPathAll: Bool

        /// 扫描范围0容器1主机节点
        public let scanRangeType: UInt64

        /// true 全选，false 自选
        public let scanRangeAll: Bool

        /// 超时时长，单位小时
        public let timeout: UInt64

        /// 当ScanPathAll为false生效 0扫描以下路径 1、扫描除以下路径
        public let scanPathType: UInt64?

        /// 自选扫描范围的容器id或者主机id 根据ScanRangeType决定
        public let scanIds: [String]?

        /// 自选排除或扫描的地址
        public let scanPath: [String]?

        /// 扫描路径模式：
        /// SCAN_PATH_ALL：全部路径
        /// SCAN_PATH_DEFAULT：默认路径
        /// SCAN_PATH_USER_DEFINE：用户自定义路径
        public let scanPathMode: String?

        public init(scanPathAll: Bool, scanRangeType: UInt64, scanRangeAll: Bool, timeout: UInt64, scanPathType: UInt64? = nil, scanIds: [String]? = nil, scanPath: [String]? = nil, scanPathMode: String? = nil) {
            self.scanPathAll = scanPathAll
            self.scanRangeType = scanRangeType
            self.scanRangeAll = scanRangeAll
            self.timeout = timeout
            self.scanPathType = scanPathType
            self.scanIds = scanIds
            self.scanPath = scanPath
            self.scanPathMode = scanPathMode
        }

        enum CodingKeys: String, CodingKey {
            case scanPathAll = "ScanPathAll"
            case scanRangeType = "ScanRangeType"
            case scanRangeAll = "ScanRangeAll"
            case timeout = "Timeout"
            case scanPathType = "ScanPathType"
            case scanIds = "ScanIds"
            case scanPath = "ScanPath"
            case scanPathMode = "ScanPathMode"
        }
    }

    /// CreateVirusScanTask返回参数结构体
    public struct CreateVirusScanTaskResponse: TCResponse {
        /// 任务id
        public let taskID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }

    /// 运行时文件查杀一键扫描
    @inlinable
    public func createVirusScanTask(_ input: CreateVirusScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirusScanTaskResponse> {
        self.client.execute(action: "CreateVirusScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时文件查杀一键扫描
    @inlinable
    public func createVirusScanTask(_ input: CreateVirusScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirusScanTaskResponse {
        try await self.client.execute(action: "CreateVirusScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时文件查杀一键扫描
    @inlinable
    public func createVirusScanTask(scanPathAll: Bool, scanRangeType: UInt64, scanRangeAll: Bool, timeout: UInt64, scanPathType: UInt64? = nil, scanIds: [String]? = nil, scanPath: [String]? = nil, scanPathMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirusScanTaskResponse> {
        self.createVirusScanTask(.init(scanPathAll: scanPathAll, scanRangeType: scanRangeType, scanRangeAll: scanRangeAll, timeout: timeout, scanPathType: scanPathType, scanIds: scanIds, scanPath: scanPath, scanPathMode: scanPathMode), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时文件查杀一键扫描
    @inlinable
    public func createVirusScanTask(scanPathAll: Bool, scanRangeType: UInt64, scanRangeAll: Bool, timeout: UInt64, scanPathType: UInt64? = nil, scanIds: [String]? = nil, scanPath: [String]? = nil, scanPathMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirusScanTaskResponse {
        try await self.createVirusScanTask(.init(scanPathAll: scanPathAll, scanRangeType: scanRangeType, scanRangeAll: scanRangeAll, timeout: timeout, scanPathType: scanPathType, scanIds: scanIds, scanPath: scanPath, scanPathMode: scanPathMode), region: region, logger: logger, on: eventLoop)
    }
}
