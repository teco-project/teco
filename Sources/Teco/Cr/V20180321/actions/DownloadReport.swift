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

extension Cr {
    /// DownloadReport请求参数结构体
    public struct DownloadReportRequest: TCRequest {
        /// 模块名，本接口取值：Report
        public let module: String

        /// 操作名，本接口取值：DownloadReport
        public let operation: String

        /// 报告日期，格式为YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$reportDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var reportDate: Date

        /// 实例ID，不传默认为系统分配的初始实例。
        public let instId: String?

        public init(module: String, operation: String, reportDate: Date, instId: String? = nil) {
            self.module = module
            self.operation = operation
            self._reportDate = .init(wrappedValue: reportDate)
            self.instId = instId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case reportDate = "ReportDate"
            case instId = "InstId"
        }
    }

    /// DownloadReport返回参数结构体
    public struct DownloadReportResponse: TCResponse {
        /// 到期/逾期提醒日报下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dailyReportUrl: String?

        /// 到期/逾期提醒结果下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultReportUrl: String?

        /// 到期/逾期提醒明细下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailReportUrl: String?

        /// 回访日报下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callbackDailyReportUrl: String?

        /// 回访结果下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callbackResultReportUrl: String?

        /// 回访明细下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callbackDetailReportUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dailyReportUrl = "DailyReportUrl"
            case resultReportUrl = "ResultReportUrl"
            case detailReportUrl = "DetailReportUrl"
            case callbackDailyReportUrl = "CallbackDailyReportUrl"
            case callbackResultReportUrl = "CallbackResultReportUrl"
            case callbackDetailReportUrl = "CallbackDetailReportUrl"
            case requestId = "RequestId"
        }
    }

    /// 报告下载
    ///
    /// 用于下载结果报表。当日23:00后，可获取当日到期/逾期提醒结果，次日00:30后，可获取昨日回访结果。
    @inlinable
    public func downloadReport(_ input: DownloadReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadReportResponse> {
        self.client.execute(action: "DownloadReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 报告下载
    ///
    /// 用于下载结果报表。当日23:00后，可获取当日到期/逾期提醒结果，次日00:30后，可获取昨日回访结果。
    @inlinable
    public func downloadReport(_ input: DownloadReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadReportResponse {
        try await self.client.execute(action: "DownloadReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 报告下载
    ///
    /// 用于下载结果报表。当日23:00后，可获取当日到期/逾期提醒结果，次日00:30后，可获取昨日回访结果。
    @inlinable
    public func downloadReport(module: String, operation: String, reportDate: Date, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadReportResponse> {
        self.downloadReport(.init(module: module, operation: operation, reportDate: reportDate, instId: instId), region: region, logger: logger, on: eventLoop)
    }

    /// 报告下载
    ///
    /// 用于下载结果报表。当日23:00后，可获取当日到期/逾期提醒结果，次日00:30后，可获取昨日回访结果。
    @inlinable
    public func downloadReport(module: String, operation: String, reportDate: Date, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadReportResponse {
        try await self.downloadReport(.init(module: module, operation: operation, reportDate: reportDate, instId: instId), region: region, logger: logger, on: eventLoop)
    }
}
