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
import TecoPaginationHelpers

extension Ecdn {
    /// DescribeEcdnDomainStatistics请求参数结构体
    public struct DescribeEcdnDomainStatisticsRequest: TCPaginatedRequest {
        /// 查询起始时间，如：2019-12-13 00:00:00。
        /// 起止时间不超过90天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，如：2019-12-13 23:59:59。
        /// 起止时间不超过90天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 统计指标名称:
        /// flux：流量，单位为 byte
        /// bandwidth：带宽，单位为 bps
        /// request：请求数，单位为 次
        public let metrics: [String]

        /// 指定查询域名列表
        public let domains: [String]?

        /// 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        public let projects: [Int64]?

        /// 列表分页起始地址，默认0。
        public let offset: Int64?

        /// 列表分页记录条数，默认1000，最大3000。
        public let limit: Int64?

        /// 统计区域:
        /// mainland: 境内
        /// oversea: 境外
        /// global: 全部
        /// 默认 global
        public let area: String?

        public init(startTime: Date, endTime: Date, metrics: [String], domains: [String]? = nil, projects: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metrics = metrics
            self.domains = domains
            self.projects = projects
            self.offset = offset
            self.limit = limit
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metrics = "Metrics"
            case domains = "Domains"
            case projects = "Projects"
            case offset = "Offset"
            case limit = "Limit"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeEcdnDomainStatisticsResponse) -> DescribeEcdnDomainStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEcdnDomainStatisticsRequest(startTime: self.startTime, endTime: self.endTime, metrics: self.metrics, domains: self.domains, projects: self.projects, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, area: self.area)
        }
    }

    /// DescribeEcdnDomainStatistics返回参数结构体
    public struct DescribeEcdnDomainStatisticsResponse: TCPaginatedResponse {
        /// 域名数据
        public let data: [DomainData]

        /// 数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainData] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatistics(_ input: DescribeEcdnDomainStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEcdnDomainStatisticsResponse> {
        self.client.execute(action: "DescribeEcdnDomainStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatistics(_ input: DescribeEcdnDomainStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnDomainStatisticsResponse {
        try await self.client.execute(action: "DescribeEcdnDomainStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatistics(startTime: Date, endTime: Date, metrics: [String], domains: [String]? = nil, projects: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEcdnDomainStatisticsResponse> {
        let input = DescribeEcdnDomainStatisticsRequest(startTime: startTime, endTime: endTime, metrics: metrics, domains: domains, projects: projects, offset: offset, limit: limit, area: area)
        return self.client.execute(action: "DescribeEcdnDomainStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatistics(startTime: Date, endTime: Date, metrics: [String], domains: [String]? = nil, projects: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnDomainStatisticsResponse {
        let input = DescribeEcdnDomainStatisticsRequest(startTime: startTime, endTime: endTime, metrics: metrics, domains: domains, projects: projects, offset: offset, limit: limit, area: area)
        return try await self.client.execute(action: "DescribeEcdnDomainStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatisticsPaginated(_ input: DescribeEcdnDomainStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainData])> {
        self.client.paginate(input: input, region: region, command: self.describeEcdnDomainStatistics, logger: logger, on: eventLoop)
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatisticsPaginated(_ input: DescribeEcdnDomainStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEcdnDomainStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEcdnDomainStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 域名统计指标查询
    ///
    /// 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeEcdnDomainStatisticsPaginator(_ input: DescribeEcdnDomainStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeEcdnDomainStatisticsRequest, DescribeEcdnDomainStatisticsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeEcdnDomainStatisticsRequest, DescribeEcdnDomainStatisticsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeEcdnDomainStatisticsRequest, DescribeEcdnDomainStatisticsResponse>.ResultSequence(input: input, region: region, command: self.describeEcdnDomainStatistics, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeEcdnDomainStatisticsRequest, DescribeEcdnDomainStatisticsResponse>.ResponseSequence(input: input, region: region, command: self.describeEcdnDomainStatistics, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
