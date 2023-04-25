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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Ecdn {
    /// DescribeEcdnStatistics请求参数结构体
    public struct DescribeEcdnStatisticsRequest: TCRequestModel {
        /// 查询起始时间，如：2019-12-13 00:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，如：2019-12-13 23:59:59
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指定查询指标，支持的类型有：
        /// flux：流量，单位为 byte
        /// bandwidth：带宽，单位为 bps
        /// request：请求数，单位为 次
        /// 2xx：返回 2xx 状态码汇总或者 2 开头状态码数据，单位为 个
        /// 3xx：返回 3xx 状态码汇总或者 3 开头状态码数据，单位为 个
        /// 4xx：返回 4xx 状态码汇总或者 4 开头状态码数据，单位为 个
        /// 5xx：返回 5xx 状态码汇总或者 5 开头状态码数据，单位为 个
        public let metrics: [String]

        /// 时间粒度，支持以下几种模式：
        /// 1 天	 1，5，15，30，60，120，240，1440
        /// 2 ~ 3 天	15，30，60，120，240，1440
        /// 4 ~ 7 天	30，60，120，240，1440
        /// 8 ~ 31 天	 60，120，240，1440
        public let interval: Int64

        /// 指定查询域名列表
        ///
        /// 最多可一次性查询30个加速域名。
        public let domains: [String]?

        /// 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        public let projects: [Int64]?

        /// 统计区域:
        /// mainland: 境内
        /// oversea: 境外
        /// global: 全部
        /// 默认 global
        public let area: String?

        public init(startTime: Date, endTime: Date, metrics: [String], interval: Int64, domains: [String]? = nil, projects: [Int64]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metrics = metrics
            self.interval = interval
            self.domains = domains
            self.projects = projects
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metrics = "Metrics"
            case interval = "Interval"
            case domains = "Domains"
            case projects = "Projects"
            case area = "Area"
        }
    }

    /// DescribeEcdnStatistics返回参数结构体
    public struct DescribeEcdnStatisticsResponse: TCResponseModel {
        /// 指定条件查询得到的数据明细
        public let data: [ResourceData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 访问数据查询
    ///
    /// DescribeEcdnStatistics用于查询 ECDN 实时访问监控数据，支持以下指标查询：
    ///
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeEcdnStatistics(_ input: DescribeEcdnStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEcdnStatisticsResponse> {
        self.client.execute(action: "DescribeEcdnStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 访问数据查询
    ///
    /// DescribeEcdnStatistics用于查询 ECDN 实时访问监控数据，支持以下指标查询：
    ///
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeEcdnStatistics(_ input: DescribeEcdnStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnStatisticsResponse {
        try await self.client.execute(action: "DescribeEcdnStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 访问数据查询
    ///
    /// DescribeEcdnStatistics用于查询 ECDN 实时访问监控数据，支持以下指标查询：
    ///
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeEcdnStatistics(startTime: Date, endTime: Date, metrics: [String], interval: Int64, domains: [String]? = nil, projects: [Int64]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEcdnStatisticsResponse> {
        self.describeEcdnStatistics(.init(startTime: startTime, endTime: endTime, metrics: metrics, interval: interval, domains: domains, projects: projects, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 访问数据查询
    ///
    /// DescribeEcdnStatistics用于查询 ECDN 实时访问监控数据，支持以下指标查询：
    ///
    /// + 流量（单位为 byte）
    /// + 带宽（单位为 bps）
    /// + 请求数（单位为 次）
    /// + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
    /// + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
    /// + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
    /// + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）
    @inlinable
    public func describeEcdnStatistics(startTime: Date, endTime: Date, metrics: [String], interval: Int64, domains: [String]? = nil, projects: [Int64]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnStatisticsResponse {
        try await self.describeEcdnStatistics(.init(startTime: startTime, endTime: endTime, metrics: metrics, interval: interval, domains: domains, projects: projects, area: area), region: region, logger: logger, on: eventLoop)
    }
}
