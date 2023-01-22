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

extension Cdn {
    /// DescribeIpVisit请求参数结构体
    public struct DescribeIpVisitRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:10，返回结果大于等于指定时间
        /// 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:10 在按 5 分钟的时间粒度查询时，返回的第一个数据对应时间点为 2018-09-04 10:40:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，如：2018-09-04 10:40:10，返回结果小于等于指定时间
        /// 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:10 在按 5 分钟的时间粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:40:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        public let domains: [String]?

        /// 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        public let project: Int64?

        /// 时间粒度，支持以下几种模式：
        /// 5min：5 分钟粒度，查询时间区间 24 小时内，默认返回 5 分钟粒度活跃用户数
        /// day：天粒度，查询时间区间大于 1 天时，默认返回天粒度活跃用户数
        public let interval: String?

        public init(startTime: Date, endTime: Date, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.domains = domains
            self.project = project
            self.interval = interval
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case domains = "Domains"
            case project = "Project"
            case interval = "Interval"
        }
    }

    /// DescribeIpVisit返回参数结构体
    public struct DescribeIpVisitResponse: TCResponseModel {
        /// 数据统计的时间粒度，支持5min,  day，分别表示5分钟，1天的时间粒度。
        public let interval: String

        /// 各个资源的回源数据详情。
        public let data: [ResourceData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case interval = "Interval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 活跃用户查询
    ///
    /// DescribeIpVisit 用于查询 5 分钟活跃用户数，及日活跃用户数明细
    ///
    /// + 5 分钟活跃用户数：根据日志中客户端 IP，5 分钟粒度去重统计
    /// + 日活跃用户数：根据日志中客户端 IP，按天粒度去重统计
    @inlinable
    public func describeIpVisit(_ input: DescribeIpVisitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpVisitResponse> {
        self.client.execute(action: "DescribeIpVisit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 活跃用户查询
    ///
    /// DescribeIpVisit 用于查询 5 分钟活跃用户数，及日活跃用户数明细
    ///
    /// + 5 分钟活跃用户数：根据日志中客户端 IP，5 分钟粒度去重统计
    /// + 日活跃用户数：根据日志中客户端 IP，按天粒度去重统计
    @inlinable
    public func describeIpVisit(_ input: DescribeIpVisitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpVisitResponse {
        try await self.client.execute(action: "DescribeIpVisit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 活跃用户查询
    ///
    /// DescribeIpVisit 用于查询 5 分钟活跃用户数，及日活跃用户数明细
    ///
    /// + 5 分钟活跃用户数：根据日志中客户端 IP，5 分钟粒度去重统计
    /// + 日活跃用户数：根据日志中客户端 IP，按天粒度去重统计
    @inlinable
    public func describeIpVisit(startTime: Date, endTime: Date, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpVisitResponse> {
        self.describeIpVisit(DescribeIpVisitRequest(startTime: startTime, endTime: endTime, domains: domains, project: project, interval: interval), region: region, logger: logger, on: eventLoop)
    }

    /// 活跃用户查询
    ///
    /// DescribeIpVisit 用于查询 5 分钟活跃用户数，及日活跃用户数明细
    ///
    /// + 5 分钟活跃用户数：根据日志中客户端 IP，5 分钟粒度去重统计
    /// + 日活跃用户数：根据日志中客户端 IP，按天粒度去重统计
    @inlinable
    public func describeIpVisit(startTime: Date, endTime: Date, domains: [String]? = nil, project: Int64? = nil, interval: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpVisitResponse {
        try await self.describeIpVisit(DescribeIpVisitRequest(startTime: startTime, endTime: endTime, domains: domains, project: project, interval: interval), region: region, logger: logger, on: eventLoop)
    }
}
