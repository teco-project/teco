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

extension Teo {
    /// DescribeWebManagedRulesTopData请求参数结构体
    public struct DescribeWebManagedRulesTopDataRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 统计指标列表，取值有：
        /// <li>waf_requestNum_url ：url请求数排行 ；</li>
        /// <li>waf_requestNum_cip：客户端ip请求数排行 ；</li>
        /// <li>waf_cipRequestNum_region ：客户端区域请求数排行 。</li>
        public let metricName: String

        /// 查询前多少个，传值为0返回全量。
        public let limit: Int64

        /// 站点id列表，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 该字段已废弃，请勿传。
        public let policyIds: [Int64]?

        /// 该字段已废弃，请勿传。
        public let port: Int64?

        /// 该字段已废弃，请勿传。
        public let protocolType: String?

        /// 该字段已废弃，请勿传。
        public let attackType: String?

        /// 域名列表，不填默认选择全部子域名。
        public let domains: [String]?

        /// 查询时间粒度，取值有：
        /// <li>min ：1分钟 ；</li>
        /// <li>5min ：5分钟 ；</li>
        /// <li>hour ：1小时 ；</li>
        /// <li>day ：1天 。</li>
        public let interval: String?

        /// 筛选条件，取值有：
        /// <li>action ：执行动作 。</li>
        public let queryCondition: [QueryCondition]?

        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?

        public init(startTime: Date, endTime: Date, metricName: String, limit: Int64, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, port: Int64? = nil, protocolType: String? = nil, attackType: String? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
            self.limit = limit
            self.zoneIds = zoneIds
            self.policyIds = policyIds
            self.port = port
            self.protocolType = protocolType
            self.attackType = attackType
            self.domains = domains
            self.interval = interval
            self.queryCondition = queryCondition
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case limit = "Limit"
            case zoneIds = "ZoneIds"
            case policyIds = "PolicyIds"
            case port = "Port"
            case protocolType = "ProtocolType"
            case attackType = "AttackType"
            case domains = "Domains"
            case interval = "Interval"
            case queryCondition = "QueryCondition"
            case area = "Area"
        }
    }

    /// DescribeWebManagedRulesTopData返回参数结构体
    public struct DescribeWebManagedRulesTopDataResponse: TCResponseModel {
        /// top数据内容。
        public let data: [TopNEntry]

        /// 请求响应状态，取值有：
        /// <li>1 ：失败 ；</li>
        /// <li>0 ：成功 。</li>
        public let status: Int64

        /// 请求响应消息。
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case status = "Status"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 查询waf攻击top数据
    @available(*, unavailable, message: "此版本的接口已经废弃")
    @inlinable
    public func describeWebManagedRulesTopData(_ input: DescribeWebManagedRulesTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesTopDataResponse> {
        fatalError("DescribeWebManagedRulesTopData is no longer available.")
    }

    /// 查询waf攻击top数据
    @available(*, unavailable, message: "此版本的接口已经废弃")
    @inlinable
    public func describeWebManagedRulesTopData(_ input: DescribeWebManagedRulesTopDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesTopDataResponse {
        fatalError("DescribeWebManagedRulesTopData is no longer available.")
    }

    /// 查询waf攻击top数据
    @available(*, unavailable, message: "此版本的接口已经废弃")
    @inlinable
    public func describeWebManagedRulesTopData(startTime: Date, endTime: Date, metricName: String, limit: Int64, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, port: Int64? = nil, protocolType: String? = nil, attackType: String? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesTopDataResponse> {
        fatalError("DescribeWebManagedRulesTopData is no longer available.")
    }

    /// 查询waf攻击top数据
    @available(*, unavailable, message: "此版本的接口已经废弃")
    @inlinable
    public func describeWebManagedRulesTopData(startTime: Date, endTime: Date, metricName: String, limit: Int64, zoneIds: [String]? = nil, policyIds: [Int64]? = nil, port: Int64? = nil, protocolType: String? = nil, attackType: String? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesTopDataResponse {
        fatalError("DescribeWebManagedRulesTopData is no longer available.")
    }
}
