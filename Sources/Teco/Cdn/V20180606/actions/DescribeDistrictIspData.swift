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
    /// DescribeDistrictIspData请求参数结构体
    public struct DescribeDistrictIspDataRequest: TCRequestModel {
        /// 域名列表，最多支持20个域名
        public let domains: [String]

        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        /// 支持近 60 天内的数据查询，每次查询时间区间为 3 小时
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        /// 结束时间与起始时间区间最大为 3 小时
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指定查询指标，支持:
        /// bandwidth：带宽，单位为 bps
        /// request：请求数，单位为 次
        public let metric: String

        /// 指定省份查询，不填充表示查询所有省份
        /// 省份、国家/地区编码可以查看 [省份编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        public let districts: [Int64]?

        /// 指定运营商查询，不填充表示查询所有运营商
        /// 运营商编码可以查看 [运营商编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        public let isps: [Int64]?

        /// 指定协议查询，不填充表示查询所有协议
        /// all：所有协议
        /// http：指定查询 HTTP 对应指标
        /// https：指定查询 HTTPS 对应指标
        public let `protocol`: String?

        /// 指定IP协议查询，不填充表示查询所有协议
        /// all：所有协议
        /// ipv4：指定查询 ipv4 对应指标
        /// ipv6：指定查询 ipv6 对应指标
        /// 指定IP协议查询时，不可同时指定省份、运营商查询
        public let ipProtocol: String?

        /// 时间粒度，支持以下几种模式（默认5min）：
        /// min：1 分钟粒度，支持近 60 天内的数据查询，每次查询时间区间不超过10分钟，可返回 1 分钟粒度明细数据
        /// 5min：5 分钟粒度，支持近 60 天内的数据查询，每次查询时间区间不超过3 小时，可返回 5 分钟粒度明细数据
        public let interval: String?

        public init(domains: [String], startTime: Date, endTime: Date, metric: String, districts: [Int64]? = nil, isps: [Int64]? = nil, protocol: String? = nil, ipProtocol: String? = nil, interval: String? = nil) {
            self.domains = domains
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metric = metric
            self.districts = districts
            self.isps = isps
            self.protocol = `protocol`
            self.ipProtocol = ipProtocol
            self.interval = interval
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metric = "Metric"
            case districts = "Districts"
            case isps = "Isps"
            case `protocol` = "Protocol"
            case ipProtocol = "IpProtocol"
            case interval = "Interval"
        }
    }

    /// DescribeDistrictIspData返回参数结构体
    public struct DescribeDistrictIspDataResponse: TCResponseModel {
        /// 地区运营商数据明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DistrictIspInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 地区运营商明细查询
    ///
    /// 查询指定域名的区域、运营商明细数据
    /// 注意事项：接口尚未全量开放，未在内测名单中的账号不支持调用
    @inlinable
    public func describeDistrictIspData(_ input: DescribeDistrictIspDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDistrictIspDataResponse> {
        self.client.execute(action: "DescribeDistrictIspData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 地区运营商明细查询
    ///
    /// 查询指定域名的区域、运营商明细数据
    /// 注意事项：接口尚未全量开放，未在内测名单中的账号不支持调用
    @inlinable
    public func describeDistrictIspData(_ input: DescribeDistrictIspDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDistrictIspDataResponse {
        try await self.client.execute(action: "DescribeDistrictIspData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 地区运营商明细查询
    ///
    /// 查询指定域名的区域、运营商明细数据
    /// 注意事项：接口尚未全量开放，未在内测名单中的账号不支持调用
    @inlinable
    public func describeDistrictIspData(domains: [String], startTime: Date, endTime: Date, metric: String, districts: [Int64]? = nil, isps: [Int64]? = nil, protocol: String? = nil, ipProtocol: String? = nil, interval: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDistrictIspDataResponse> {
        self.describeDistrictIspData(DescribeDistrictIspDataRequest(domains: domains, startTime: startTime, endTime: endTime, metric: metric, districts: districts, isps: isps, protocol: `protocol`, ipProtocol: ipProtocol, interval: interval), region: region, logger: logger, on: eventLoop)
    }

    /// 地区运营商明细查询
    ///
    /// 查询指定域名的区域、运营商明细数据
    /// 注意事项：接口尚未全量开放，未在内测名单中的账号不支持调用
    @inlinable
    public func describeDistrictIspData(domains: [String], startTime: Date, endTime: Date, metric: String, districts: [Int64]? = nil, isps: [Int64]? = nil, protocol: String? = nil, ipProtocol: String? = nil, interval: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDistrictIspDataResponse {
        try await self.describeDistrictIspData(DescribeDistrictIspDataRequest(domains: domains, startTime: startTime, endTime: endTime, metric: metric, districts: districts, isps: isps, protocol: `protocol`, ipProtocol: ipProtocol, interval: interval), region: region, logger: logger, on: eventLoop)
    }
}
