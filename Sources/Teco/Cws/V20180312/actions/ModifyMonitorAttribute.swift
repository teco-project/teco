//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cws {
    /// ModifyMonitorAttribute请求参数结构体
    public struct ModifyMonitorAttributeRequest: TCRequestModel {
        /// 监测任务ID
        public let monitorId: UInt64

        /// 站点的url列表
        public let urls: [String]

        /// 任务名称
        public let name: String

        /// 扫描模式，normal-正常扫描；deep-深度扫描
        public let scannerType: String

        /// 扫描周期，单位小时，每X小时执行一次
        public let crontab: UInt64

        /// 扫描速率限制，每秒发送X个HTTP请求
        public let rateLimit: UInt64

        /// 首次扫描开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var firstScanStartTime: Date

        /// 监测状态：1-监测中；2-暂停监测
        public let monitorStatus: UInt64

        public init(monitorId: UInt64, urls: [String], name: String, scannerType: String, crontab: UInt64, rateLimit: UInt64, firstScanStartTime: Date, monitorStatus: UInt64) {
            self.monitorId = monitorId
            self.urls = urls
            self.name = name
            self.scannerType = scannerType
            self.crontab = crontab
            self.rateLimit = rateLimit
            self.firstScanStartTime = firstScanStartTime
            self.monitorStatus = monitorStatus
        }

        enum CodingKeys: String, CodingKey {
            case monitorId = "MonitorId"
            case urls = "Urls"
            case name = "Name"
            case scannerType = "ScannerType"
            case crontab = "Crontab"
            case rateLimit = "RateLimit"
            case firstScanStartTime = "FirstScanStartTime"
            case monitorStatus = "MonitorStatus"
        }
    }

    /// ModifyMonitorAttribute返回参数结构体
    public struct ModifyMonitorAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改监测任务的属性
    ///
    /// 本接口 (ModifyMonitorAttribute) 用于修改监测任务的属性。
    @inlinable
    public func modifyMonitorAttribute(_ input: ModifyMonitorAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMonitorAttributeResponse > {
        self.client.execute(action: "ModifyMonitorAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改监测任务的属性
    ///
    /// 本接口 (ModifyMonitorAttribute) 用于修改监测任务的属性。
    @inlinable
    public func modifyMonitorAttribute(_ input: ModifyMonitorAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMonitorAttributeResponse {
        try await self.client.execute(action: "ModifyMonitorAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改监测任务的属性
    ///
    /// 本接口 (ModifyMonitorAttribute) 用于修改监测任务的属性。
    @inlinable
    public func modifyMonitorAttribute(monitorId: UInt64, urls: [String], name: String, scannerType: String, crontab: UInt64, rateLimit: UInt64, firstScanStartTime: Date, monitorStatus: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMonitorAttributeResponse > {
        self.modifyMonitorAttribute(ModifyMonitorAttributeRequest(monitorId: monitorId, urls: urls, name: name, scannerType: scannerType, crontab: crontab, rateLimit: rateLimit, firstScanStartTime: firstScanStartTime, monitorStatus: monitorStatus), logger: logger, on: eventLoop)
    }

    /// 修改监测任务的属性
    ///
    /// 本接口 (ModifyMonitorAttribute) 用于修改监测任务的属性。
    @inlinable
    public func modifyMonitorAttribute(monitorId: UInt64, urls: [String], name: String, scannerType: String, crontab: UInt64, rateLimit: UInt64, firstScanStartTime: Date, monitorStatus: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMonitorAttributeResponse {
        try await self.modifyMonitorAttribute(ModifyMonitorAttributeRequest(monitorId: monitorId, urls: urls, name: name, scannerType: scannerType, crontab: crontab, rateLimit: rateLimit, firstScanStartTime: firstScanStartTime, monitorStatus: monitorStatus), logger: logger, on: eventLoop)
    }
}
