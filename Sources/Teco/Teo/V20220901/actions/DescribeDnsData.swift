//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeDnsData请求参数结构体
    public struct DescribeDnsDataRequest: TCRequestModel {
        /// 起始时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date
        
        /// 结束时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date
        
        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>zone<br>   按照【<strong>站点名称</strong>】进行过滤。站点名称形如：tencent.com<br>   类型：String<br>   必选：否，仅支持填写一个站点
        /// <li>host<br>   按照【<strong>域名</strong>】进行过滤。域名形如：test.tencent.com<br>   类型：String<br>   必选：否，仅支持填写一个域名
        /// <li>type<br>   按照【<strong>DNS解析类型</strong>】进行过滤<br>   类型：String<br>   必选：否<br>   可选项：<br>   A：A记录<br>   AAAA：AAAA记录<br>   CNAME：CNAME记录<br>   MX：MX记录<br>   TXT：TXT记录<br>   NS：NS记录<br>   SRV：SRV记录<br>   CAA：CAA记录
        /// <li>code<br>   按照【<strong>DNS解析状态码</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   NoError：成功<br>   NXDomain：请求域不存在<br>   NotImp：不支持的请求类型<br>   Refused：域名服务器因为策略的原因拒绝执行请求
        /// <li>area<br>   按照【<strong>DNS解析地域</strong>】进行过滤。<br>   类型：String<br>   必选：否。<br>   可选项：<br>   亚洲：Asia<br>   欧洲：Europe<br>   非洲：Africa<br>   大洋洲：Oceania<br>   美洲：Americas
        public let filters: [Filter]?
        
        /// 时间粒度，取值有：
        /// <li>min：1分钟粒度；</li>
        /// <li>5min：5分钟粒度；</li>
        /// <li>hour：1小时粒度；</li>
        /// <li>day：天粒度。</li>不填写，默认值为：min。
        public let interval: String?
        
        public init (startTime: Date, endTime: Date, filters: [Filter]? = nil, interval: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.filters = filters
            self.interval = interval
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
            case interval = "Interval"
        }
    }
    
    /// DescribeDnsData返回参数结构体
    public struct DescribeDnsDataResponse: TCResponseModel {
        /// 统计数据。
        public let data: [DnsData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(_ input: DescribeDnsDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDnsDataResponse > {
        self.client.execute(action: "DescribeDnsData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(_ input: DescribeDnsDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsDataResponse {
        try await self.client.execute(action: "DescribeDnsData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(startTime: Date, endTime: Date, filters: [Filter]? = nil, interval: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDnsDataResponse > {
        self.describeDnsData(DescribeDnsDataRequest(startTime: startTime, endTime: endTime, filters: filters, interval: interval), logger: logger, on: eventLoop)
    }
    
    /// 获取DNS请求数统计曲线
    @inlinable
    public func describeDnsData(startTime: Date, endTime: Date, filters: [Filter]? = nil, interval: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsDataResponse {
        try await self.describeDnsData(DescribeDnsDataRequest(startTime: startTime, endTime: endTime, filters: filters, interval: interval), logger: logger, on: eventLoop)
    }
}
