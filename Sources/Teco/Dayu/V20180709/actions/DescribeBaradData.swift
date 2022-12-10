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
    /// 获取转发报表数据
    ///
    /// 为大禹子产品提供业务转发指标数据的接口
    @inlinable
    public func describeBaradData(_ input: DescribeBaradDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBaradDataResponse > {
        self.client.execute(action: "DescribeBaradData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取转发报表数据
    ///
    /// 为大禹子产品提供业务转发指标数据的接口
    @inlinable
    public func describeBaradData(_ input: DescribeBaradDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaradDataResponse {
        try await self.client.execute(action: "DescribeBaradData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBaradData请求参数结构体
    public struct DescribeBaradDataRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String
        
        /// 资源实例ID
        public let id: String
        
        /// 指标名，取值：
        /// connum表示TCP活跃连接数；
        /// new_conn表示新建TCP连接数；
        /// inactive_conn表示非活跃连接数;
        /// intraffic表示入流量；
        /// outtraffic表示出流量；
        /// alltraffic表示出流量和入流量之和；
        /// inpkg表示入包速率；
        /// outpkg表示出包速率；
        public let metricName: String
        
        /// 统计时间粒度，单位秒（300表示5分钟；3600表示小时；86400表示天）
        public let period: UInt64
        
        /// 统计开始时间，秒部分保持为0，分钟部分为5的倍数
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 统计结束时间，秒部分保持为0，分钟部分为5的倍数
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 统计方式，取值：
        /// max表示最大值；
        /// min表示最小值；
        /// avg表示均值；
        public let statistics: String
        
        /// 协议端口数组
        public let protocolPort: [ProtocolPort]?
        
        /// 资源实例下的IP，只有当Business=net(高防IP专业版)时才必须填写资源的一个IP（因为高防IP专业版资源实例有多个IP，才需要指定）；
        public let ip: String?
        
        public init (business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date, statistics: String, protocolPort: [ProtocolPort]?, ip: String?) {
            self.business = business
            self.id = id
            self.metricName = metricName
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
            self.statistics = statistics
            self.protocolPort = protocolPort
            self.ip = ip
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case metricName = "MetricName"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case statistics = "Statistics"
            case protocolPort = "ProtocolPort"
            case ip = "Ip"
        }
    }
    
    /// DescribeBaradData返回参数结构体
    public struct DescribeBaradDataResponse: TCResponseModel {
        /// 返回指标的值
        public let dataList: [BaradData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case requestId = "RequestId"
        }
    }
}
