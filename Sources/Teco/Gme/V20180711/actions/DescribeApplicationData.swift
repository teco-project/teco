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
import TecoCore
import TecoDateHelpers

extension Gme {
    /// DescribeApplicationData请求参数结构体
    public struct DescribeApplicationDataRequest: TCRequestModel {
        /// 应用ID
        public let bizId: UInt64

        /// 数据开始时间，格式为 年-月-日，如: 2018-07-13
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 数据结束时间，格式为 年-月-日，如: 2018-07-13
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        public init(bizId: UInt64, startDate: Date, endDate: Date) {
            self.bizId = bizId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case startDate = "StartDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeApplicationData返回参数结构体
    public struct DescribeApplicationDataResponse: TCResponseModel {
        /// 应用统计数据
        public let data: ApplicationDataStatistics

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取数据详情
    ///
    /// 本接口(DescribeApplicationData)用于获取数据详情信息，最多可拉取最近90天的数据。
    @inlinable
    public func describeApplicationData(_ input: DescribeApplicationDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationDataResponse> {
        self.client.execute(action: "DescribeApplicationData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据详情
    ///
    /// 本接口(DescribeApplicationData)用于获取数据详情信息，最多可拉取最近90天的数据。
    @inlinable
    public func describeApplicationData(_ input: DescribeApplicationDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationDataResponse {
        try await self.client.execute(action: "DescribeApplicationData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据详情
    ///
    /// 本接口(DescribeApplicationData)用于获取数据详情信息，最多可拉取最近90天的数据。
    @inlinable
    public func describeApplicationData(bizId: UInt64, startDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationDataResponse> {
        self.describeApplicationData(.init(bizId: bizId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据详情
    ///
    /// 本接口(DescribeApplicationData)用于获取数据详情信息，最多可拉取最近90天的数据。
    @inlinable
    public func describeApplicationData(bizId: UInt64, startDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationDataResponse {
        try await self.describeApplicationData(.init(bizId: bizId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
