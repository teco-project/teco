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

extension Cat {
    /// DescribeProbeMetricData请求参数结构体
    public struct DescribeProbeMetricDataRequest: TCRequestModel {
        /// 分析任务类型，支持以下几种类型：
        /// AnalyzeTaskType_Network：网络质量
        /// AnalyzeTaskType_Browse：页面性能
        /// AnalyzeTaskType_Transport：端口性能
        /// AnalyzeTaskType_UploadDownload：文件传输
        /// AnalyzeTaskType_MediaStream：音视频体验
        public let analyzeTaskType: String?

        /// 指标类型，指标查询默认传gauge
        public let metricType: String?

        /// 指标详细字段，可以传递传具体的指标也可以对指标进行聚合查询例如："avg(ping_time)"代表整体时延(ms)
        public let field: String?

        /// 过滤条件可以传单个过滤条件也可以拼接多个参数
        public let filter: String?

        /// 聚合时间, 1m、1d、30d 等等
        public let groupBy: String?

        /// 多条件过滤，支持多个过滤条件组合查询
        /// 例如：[""host" = 'www.test.com'", "time >= now()-1h"]
        public let filters: [String]?

        public init(analyzeTaskType: String? = nil, metricType: String? = nil, field: String? = nil, filter: String? = nil, groupBy: String? = nil, filters: [String]? = nil) {
            self.analyzeTaskType = analyzeTaskType
            self.metricType = metricType
            self.field = field
            self.filter = filter
            self.groupBy = groupBy
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case analyzeTaskType = "AnalyzeTaskType"
            case metricType = "MetricType"
            case field = "Field"
            case filter = "Filter"
            case groupBy = "GroupBy"
            case filters = "Filters"
        }
    }

    /// DescribeProbeMetricData返回参数结构体
    public struct DescribeProbeMetricDataResponse: TCResponseModel {
        /// 返回指标 JSON 序列化后的字符串,具体如下所示：
        /// "[{\"name\":\"task_navigate_request_gauge\",\"columns\":[\"time\",\"avg(first_screen_time) / 1000\"],\"values\":[[1641571200,6.756600000000001]],\"tags\":null}]"
        public let metricSet: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricSet = "MetricSet"
            case requestId = "RequestId"
        }
    }

    /// 列出云拨测指标详细数据
    ///
    /// 查询云拨测指标数据，指标支持使用sum,avg,max,min聚合函数进行指标数据查询
    @inlinable
    public func describeProbeMetricData(_ input: DescribeProbeMetricDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProbeMetricDataResponse> {
        self.client.execute(action: "DescribeProbeMetricData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出云拨测指标详细数据
    ///
    /// 查询云拨测指标数据，指标支持使用sum,avg,max,min聚合函数进行指标数据查询
    @inlinable
    public func describeProbeMetricData(_ input: DescribeProbeMetricDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeMetricDataResponse {
        try await self.client.execute(action: "DescribeProbeMetricData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出云拨测指标详细数据
    ///
    /// 查询云拨测指标数据，指标支持使用sum,avg,max,min聚合函数进行指标数据查询
    @inlinable
    public func describeProbeMetricData(analyzeTaskType: String? = nil, metricType: String? = nil, field: String? = nil, filter: String? = nil, groupBy: String? = nil, filters: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProbeMetricDataResponse> {
        let input = DescribeProbeMetricDataRequest(analyzeTaskType: analyzeTaskType, metricType: metricType, field: field, filter: filter, groupBy: groupBy, filters: filters)
        return self.client.execute(action: "DescribeProbeMetricData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出云拨测指标详细数据
    ///
    /// 查询云拨测指标数据，指标支持使用sum,avg,max,min聚合函数进行指标数据查询
    @inlinable
    public func describeProbeMetricData(analyzeTaskType: String? = nil, metricType: String? = nil, field: String? = nil, filter: String? = nil, groupBy: String? = nil, filters: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeMetricDataResponse {
        let input = DescribeProbeMetricDataRequest(analyzeTaskType: analyzeTaskType, metricType: metricType, field: field, filter: filter, groupBy: groupBy, filters: filters)
        return try await self.client.execute(action: "DescribeProbeMetricData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
