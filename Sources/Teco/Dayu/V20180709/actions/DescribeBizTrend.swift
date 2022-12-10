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

extension Dayu {
    /// 获取业务流量曲线
    @inlinable
    public func describeBizTrend(_ input: DescribeBizTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBizTrendResponse > {
        self.client.execute(action: "DescribeBizTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取业务流量曲线
    @inlinable
    public func describeBizTrend(_ input: DescribeBizTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizTrendResponse {
        try await self.client.execute(action: "DescribeBizTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBizTrend请求参数结构体
    public struct DescribeBizTrendRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String
        
        /// 资源实例ID
        public let id: String
        
        /// 统计周期，可取值300，1800，3600，21600，86400，单位秒
        public let period: UInt64
        
        /// 统计开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 统计结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 统计方式，可取值max, min, avg, sum, 如统计纬度是流量速率或包量速率，仅可取值max
        public let statistics: String
        
        /// 统计纬度，可取值connum, new_conn, inactive_conn, intraffic, outtraffic, inpkg, outpkg, qps
        public let metricName: String
        
        /// 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        public let protoInfo: [ProtocolPort]?
        
        /// 统计纬度为qps时，可选特定域名查询
        public let domain: String?
        
        public init (business: String, id: String, period: UInt64, startTime: Date, endTime: Date, statistics: String, metricName: String, protoInfo: [ProtocolPort]?, domain: String?) {
            self.business = business
            self.id = id
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
            self.statistics = statistics
            self.metricName = metricName
            self.protoInfo = protoInfo
            self.domain = domain
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case statistics = "Statistics"
            case metricName = "MetricName"
            case protoInfo = "ProtoInfo"
            case domain = "Domain"
        }
    }
    
    /// DescribeBizTrend返回参数结构体
    public struct DescribeBizTrendResponse: TCResponseModel {
        /// 曲线图各个时间点的值
        public let dataList: [Float]
        
        /// 统计纬度
        public let metricName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case metricName = "MetricName"
            case requestId = "RequestId"
        }
    }
}
