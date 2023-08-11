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

extension Apigateway {
    /// DescribeLogSearch请求参数结构体
    public struct DescribeLogSearchRequest: TCRequestModel {
        /// 日志开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 日志结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 服务id
        public let serviceId: String

        /// 保留字段
        public let filters: [Filter]?

        /// 单次要返回的日志条数，单次返回的最大条数为100
        public let limit: UInt64?

        /// 根据上次返回的ConText，获取后续的内容，最多可获取10000条
        public let conText: String?

        /// 按时间排序 asc（升序）或者 desc（降序），默认为 desc
        public let sort: String?

        /// 保留字段
        public let query: String?

        /// 检索条件,支持的检索条件如下：
        /// req_id：“=”
        /// api_id：“=”
        /// cip：“=”
        /// uip：“:”
        /// err_msg：“:”
        /// rsp_st：“=” 、“!=” 、 “:” 、 “>” 、 “<”
        /// req_t：”>=“ 、 ”<=“
        ///
        /// 说明：
        /// “:”表示包含，“!=”表示不等于，字段含义见输出参数的LogSet说明
        @available(*, deprecated)
        public let logQuerys: [LogQuery]? = nil

        public init(startTime: Date, endTime: Date, serviceId: String, filters: [Filter]? = nil, limit: UInt64? = nil, conText: String? = nil, sort: String? = nil, query: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.serviceId = serviceId
            self.filters = filters
            self.limit = limit
            self.conText = conText
            self.sort = sort
            self.query = query
        }

        @available(*, deprecated, renamed: "init(startTime:endTime:serviceId:filters:limit:conText:sort:query:)", message: "'logQuerys' is deprecated in 'DescribeLogSearchRequest'. Setting this parameter has no effect.")
        public init(startTime: Date, endTime: Date, serviceId: String, filters: [Filter]? = nil, limit: UInt64? = nil, conText: String? = nil, sort: String? = nil, query: String? = nil, logQuerys: [LogQuery]? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.serviceId = serviceId
            self.filters = filters
            self.limit = limit
            self.conText = conText
            self.sort = sort
            self.query = query
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case serviceId = "ServiceId"
            case filters = "Filters"
            case limit = "Limit"
            case conText = "ConText"
            case sort = "Sort"
            case query = "Query"
            case logQuerys = "LogQuerys"
        }
    }

    /// DescribeLogSearch返回参数结构体
    public struct DescribeLogSearchResponse: TCResponseModel {
        /// 获取更多检索结果的游标，值为""表示无后续结果
        public let conText: String

        /// 由0或多条日志组成，每条日志格式如下：
        /// '[$app_id][$env_name][$service_id][$http_host][$api_id][$uri][$scheme][rsp_st:$status][ups_st:$upstream_status]'
        /// '[cip:$remote_addr][uip:$upstream_addr][vip:$server_addr][rsp_len:$bytes_sent][req_len:$request_length]'
        /// '[req_t:$request_time][ups_rsp_t:$upstream_response_time][ups_conn_t:$upstream_connect_time][ups_head_t:$upstream_header_time]’
        /// '[err_msg:$err_msg][tcp_rtt:$tcpinfo_rtt][$pid][$time_local][req_id:$request_id]';
        ///
        /// 说明：
        /// app_id： 用户 ID。
        /// env_name：环境名称。
        /// service_id： 服务 ID。
        /// http_host： 域名。
        /// api_id： API 的 ID。
        /// uri：请求的路径。
        /// scheme： HTTP/HTTPS 协议。
        /// rsp_st： 请求响应状态码。
        /// ups_st： 后端业务服务器的响应状态码（如果请求透传到后端，改变量不为空。如果请求在 APIGW 就被拦截了，那么该变量显示为 -）。
        /// cip： 客户端 IP。
        /// uip： 后端业务服务（upstream）的 IP。
        /// vip： 请求访问的 VIP。
        /// rsp_len： 响应长度。
        /// req_len： 请求长度。
        /// req_t： 请求响应的总时间。
        /// ups_rsp_t： 后端响应的总时间（apigw 建立连接到接收到后端响应的时间）。
        /// ups_conn_t: 与后端业务服务器连接建立成功时间。
        /// ups_head_t：后端响应的头部到达时间。
        /// err_msg： 错误信息。
        /// tcp_rtt： 客户端 TCP 连接信息，RTT（Round Trip Time）由三部分组成：链路的传播时间（propagation delay）、末端系统的处理时间、路由器缓存中的排队和处理时间（queuing delay）。
        /// req_id：请求id。
        public let logSet: [String]

        /// 单次搜索返回的日志条数，TotalCount <= Limit
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case conText = "ConText"
            case logSet = "LogSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 日志搜索服务
    ///
    /// 本接口DescribeLogSearch用于搜索日志
    @inlinable
    public func describeLogSearch(_ input: DescribeLogSearchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogSearchResponse> {
        self.client.execute(action: "DescribeLogSearch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 日志搜索服务
    ///
    /// 本接口DescribeLogSearch用于搜索日志
    @inlinable
    public func describeLogSearch(_ input: DescribeLogSearchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogSearchResponse {
        try await self.client.execute(action: "DescribeLogSearch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 日志搜索服务
    ///
    /// 本接口DescribeLogSearch用于搜索日志
    @inlinable
    public func describeLogSearch(startTime: Date, endTime: Date, serviceId: String, filters: [Filter]? = nil, limit: UInt64? = nil, conText: String? = nil, sort: String? = nil, query: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogSearchResponse> {
        self.describeLogSearch(.init(startTime: startTime, endTime: endTime, serviceId: serviceId, filters: filters, limit: limit, conText: conText, sort: sort, query: query), region: region, logger: logger, on: eventLoop)
    }

    /// 日志搜索服务
    ///
    /// 本接口DescribeLogSearch用于搜索日志
    @available(*, deprecated, renamed: "describeLogSearch(startTime:endTime:serviceId:filters:limit:conText:sort:query:region:logger:on:)", message: "'logQuerys' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func describeLogSearch(startTime: Date, endTime: Date, serviceId: String, filters: [Filter]? = nil, limit: UInt64? = nil, conText: String? = nil, sort: String? = nil, query: String? = nil, logQuerys: [LogQuery]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogSearchResponse> {
        self.describeLogSearch(.init(startTime: startTime, endTime: endTime, serviceId: serviceId, filters: filters, limit: limit, conText: conText, sort: sort, query: query, logQuerys: logQuerys), region: region, logger: logger, on: eventLoop)
    }

    /// 日志搜索服务
    ///
    /// 本接口DescribeLogSearch用于搜索日志
    @inlinable
    public func describeLogSearch(startTime: Date, endTime: Date, serviceId: String, filters: [Filter]? = nil, limit: UInt64? = nil, conText: String? = nil, sort: String? = nil, query: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogSearchResponse {
        try await self.describeLogSearch(.init(startTime: startTime, endTime: endTime, serviceId: serviceId, filters: filters, limit: limit, conText: conText, sort: sort, query: query), region: region, logger: logger, on: eventLoop)
    }

    /// 日志搜索服务
    ///
    /// 本接口DescribeLogSearch用于搜索日志
    @available(*, deprecated, renamed: "describeLogSearch(startTime:endTime:serviceId:filters:limit:conText:sort:query:region:logger:on:)", message: "'logQuerys' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func describeLogSearch(startTime: Date, endTime: Date, serviceId: String, filters: [Filter]? = nil, limit: UInt64? = nil, conText: String? = nil, sort: String? = nil, query: String? = nil, logQuerys: [LogQuery]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogSearchResponse {
        try await self.describeLogSearch(.init(startTime: startTime, endTime: endTime, serviceId: serviceId, filters: filters, limit: limit, conText: conText, sort: sort, query: query, logQuerys: logQuerys), region: region, logger: logger, on: eventLoop)
    }
}
