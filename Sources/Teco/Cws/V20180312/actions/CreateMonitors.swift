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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cws {
    /// CreateMonitors请求参数结构体
    public struct CreateMonitorsRequest: TCRequest {
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
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$firstScanStartTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var firstScanStartTime: Date

        public init(urls: [String], name: String, scannerType: String, crontab: UInt64, rateLimit: UInt64, firstScanStartTime: Date) {
            self.urls = urls
            self.name = name
            self.scannerType = scannerType
            self.crontab = crontab
            self.rateLimit = rateLimit
            self._firstScanStartTime = .init(wrappedValue: firstScanStartTime)
        }

        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
            case name = "Name"
            case scannerType = "ScannerType"
            case crontab = "Crontab"
            case rateLimit = "RateLimit"
            case firstScanStartTime = "FirstScanStartTime"
        }
    }

    /// CreateMonitors返回参数结构体
    public struct CreateMonitorsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增监测任务
    ///
    /// 本接口（CreateMonitors）用于新增一个或多个站点的监测任务。
    @inlinable @discardableResult
    public func createMonitors(_ input: CreateMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMonitorsResponse> {
        self.client.execute(action: "CreateMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增监测任务
    ///
    /// 本接口（CreateMonitors）用于新增一个或多个站点的监测任务。
    @inlinable @discardableResult
    public func createMonitors(_ input: CreateMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMonitorsResponse {
        try await self.client.execute(action: "CreateMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增监测任务
    ///
    /// 本接口（CreateMonitors）用于新增一个或多个站点的监测任务。
    @inlinable @discardableResult
    public func createMonitors(urls: [String], name: String, scannerType: String, crontab: UInt64, rateLimit: UInt64, firstScanStartTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMonitorsResponse> {
        self.createMonitors(.init(urls: urls, name: name, scannerType: scannerType, crontab: crontab, rateLimit: rateLimit, firstScanStartTime: firstScanStartTime), region: region, logger: logger, on: eventLoop)
    }

    /// 新增监测任务
    ///
    /// 本接口（CreateMonitors）用于新增一个或多个站点的监测任务。
    @inlinable @discardableResult
    public func createMonitors(urls: [String], name: String, scannerType: String, crontab: UInt64, rateLimit: UInt64, firstScanStartTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMonitorsResponse {
        try await self.createMonitors(.init(urls: urls, name: name, scannerType: scannerType, crontab: crontab, rateLimit: rateLimit, firstScanStartTime: firstScanStartTime), region: region, logger: logger, on: eventLoop)
    }
}
