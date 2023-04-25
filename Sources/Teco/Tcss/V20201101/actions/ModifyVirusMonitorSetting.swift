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

extension Tcss {
    /// ModifyVirusMonitorSetting请求参数结构体
    public struct ModifyVirusMonitorSettingRequest: TCRequestModel {
        /// 是否开启定期扫描
        public let enableScan: Bool

        /// 扫描全部路径
        public let scanPathAll: Bool

        /// 当ScanPathAll为true 生效 0扫描以下路径 1、扫描除以下路径(扫描范围只能小于等于1)
        public let scanPathType: UInt64

        /// 自选排除或扫描的地址
        public let scanPath: [String]?

        /// 扫描路径模式：
        /// SCAN_PATH_ALL：全部路径
        /// SCAN_PATH_DEFAULT：默认路径
        /// SCAN_PATH_USER_DEFINE：用户自定义路径
        public let scanPathMode: String?

        public init(enableScan: Bool, scanPathAll: Bool, scanPathType: UInt64, scanPath: [String]? = nil, scanPathMode: String? = nil) {
            self.enableScan = enableScan
            self.scanPathAll = scanPathAll
            self.scanPathType = scanPathType
            self.scanPath = scanPath
            self.scanPathMode = scanPathMode
        }

        enum CodingKeys: String, CodingKey {
            case enableScan = "EnableScan"
            case scanPathAll = "ScanPathAll"
            case scanPathType = "ScanPathType"
            case scanPath = "ScanPath"
            case scanPathMode = "ScanPathMode"
        }
    }

    /// ModifyVirusMonitorSetting返回参数结构体
    public struct ModifyVirusMonitorSettingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 运行时更新文件查杀实时监控设置
    @inlinable @discardableResult
    public func modifyVirusMonitorSetting(_ input: ModifyVirusMonitorSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVirusMonitorSettingResponse> {
        self.client.execute(action: "ModifyVirusMonitorSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时更新文件查杀实时监控设置
    @inlinable @discardableResult
    public func modifyVirusMonitorSetting(_ input: ModifyVirusMonitorSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVirusMonitorSettingResponse {
        try await self.client.execute(action: "ModifyVirusMonitorSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时更新文件查杀实时监控设置
    @inlinable @discardableResult
    public func modifyVirusMonitorSetting(enableScan: Bool, scanPathAll: Bool, scanPathType: UInt64, scanPath: [String]? = nil, scanPathMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVirusMonitorSettingResponse> {
        self.modifyVirusMonitorSetting(.init(enableScan: enableScan, scanPathAll: scanPathAll, scanPathType: scanPathType, scanPath: scanPath, scanPathMode: scanPathMode), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时更新文件查杀实时监控设置
    @inlinable @discardableResult
    public func modifyVirusMonitorSetting(enableScan: Bool, scanPathAll: Bool, scanPathType: UInt64, scanPath: [String]? = nil, scanPathMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVirusMonitorSettingResponse {
        try await self.modifyVirusMonitorSetting(.init(enableScan: enableScan, scanPathAll: scanPathAll, scanPathType: scanPathType, scanPath: scanPath, scanPathMode: scanPathMode), region: region, logger: logger, on: eventLoop)
    }
}
