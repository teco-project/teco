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

extension Iot {
    /// GetDeviceStatistics请求参数结构体
    public struct GetDeviceStatisticsRequest: TCRequest {
        /// 产品Id列表
        public let products: [String]?

        /// 开始日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date?

        /// 结束日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date?

        public init(products: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil) {
            self.products = products
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
        }

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case startDate = "StartDate"
            case endDate = "EndDate"
        }
    }

    /// GetDeviceStatistics返回参数结构体
    public struct GetDeviceStatisticsResponse: TCResponse {
        /// 统计数据
        public let deviceStatistics: [DeviceStatData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceStatistics = "DeviceStatistics"
            case requestId = "RequestId"
        }
    }

    /// 获取设备统计指标
    ///
    /// 查询某段时间范围内产品的在线、激活设备数
    @inlinable
    public func getDeviceStatistics(_ input: GetDeviceStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceStatisticsResponse> {
        self.client.execute(action: "GetDeviceStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备统计指标
    ///
    /// 查询某段时间范围内产品的在线、激活设备数
    @inlinable
    public func getDeviceStatistics(_ input: GetDeviceStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceStatisticsResponse {
        try await self.client.execute(action: "GetDeviceStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备统计指标
    ///
    /// 查询某段时间范围内产品的在线、激活设备数
    @inlinable
    public func getDeviceStatistics(products: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceStatisticsResponse> {
        self.getDeviceStatistics(.init(products: products, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备统计指标
    ///
    /// 查询某段时间范围内产品的在线、激活设备数
    @inlinable
    public func getDeviceStatistics(products: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceStatisticsResponse {
        try await self.getDeviceStatistics(.init(products: products, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
