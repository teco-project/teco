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

extension Cwp {
    /// ExportSecurityTrends请求参数结构体
    public struct ExportSecurityTrendsRequest: TCRequest {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$beginDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        public init(beginDate: Date, endDate: Date) {
            self._beginDate = .init(wrappedValue: beginDate)
            self._endDate = .init(wrappedValue: endDate)
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case endDate = "EndDate"
        }
    }

    /// ExportSecurityTrends返回参数结构体
    public struct ExportSecurityTrendsResponse: TCResponse {
        /// 导出文件下载链接地址。
        public let downloadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 导出风险趋势
    @inlinable
    public func exportSecurityTrends(_ input: ExportSecurityTrendsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportSecurityTrendsResponse> {
        self.client.execute(action: "ExportSecurityTrends", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出风险趋势
    @inlinable
    public func exportSecurityTrends(_ input: ExportSecurityTrendsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportSecurityTrendsResponse {
        try await self.client.execute(action: "ExportSecurityTrends", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出风险趋势
    @inlinable
    public func exportSecurityTrends(beginDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportSecurityTrendsResponse> {
        self.exportSecurityTrends(.init(beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 导出风险趋势
    @inlinable
    public func exportSecurityTrends(beginDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportSecurityTrendsResponse {
        try await self.exportSecurityTrends(.init(beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
