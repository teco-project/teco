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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Yunjing {
    /// DescribeWeeklyReportVuls请求参数结构体
    public struct DescribeWeeklyReportVulsRequest: TCRequestModel {
        /// 专业版周报开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self._beginDate = .init(wrappedValue: beginDate)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeWeeklyReportVuls返回参数结构体
    public struct DescribeWeeklyReportVulsResponse: TCResponseModel {
        /// 专业周报漏洞数据数组。
        public let weeklyReportVuls: [WeeklyReportVul]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case weeklyReportVuls = "WeeklyReportVuls"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取专业版周报漏洞数据
    ///
    /// 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。
    @inlinable
    public func describeWeeklyReportVuls(_ input: DescribeWeeklyReportVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportVulsResponse> {
        self.client.execute(action: "DescribeWeeklyReportVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业版周报漏洞数据
    ///
    /// 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。
    @inlinable
    public func describeWeeklyReportVuls(_ input: DescribeWeeklyReportVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportVulsResponse {
        try await self.client.execute(action: "DescribeWeeklyReportVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专业版周报漏洞数据
    ///
    /// 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。
    @inlinable
    public func describeWeeklyReportVuls(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportVulsResponse> {
        let input = DescribeWeeklyReportVulsRequest(beginDate: beginDate, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeWeeklyReportVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业版周报漏洞数据
    ///
    /// 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。
    @inlinable
    public func describeWeeklyReportVuls(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportVulsResponse {
        let input = DescribeWeeklyReportVulsRequest(beginDate: beginDate, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeWeeklyReportVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
