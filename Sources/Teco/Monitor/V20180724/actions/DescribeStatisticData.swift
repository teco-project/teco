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

extension Monitor {
    /// DescribeStatisticData请求参数结构体
    public struct DescribeStatisticDataRequest: TCRequestModel {
        /// 所属模块，固定值，为monitor
        public let module: String
        
        /// 命名空间，目前只支持QCE/TKE
        public let namespace: String
        
        /// 指标名列表
        public let metricNames: [String]
        
        /// 维度条件，操作符支持=、in
        public let conditions: [MidQueryCondition]?
        
        /// 统计粒度。默认取值为300，单位为s；可选的值为60、300、3600、86400
        /// 受存储时长限制，统计粒度与统计的时间范围有关：
        /// 60s：EndTime-StartTime<12小时，且StartTime距当前时间不能超过15天；
        /// 300s：EndTime-StartTime<3天，且StartTime距当前时间不能超过31天；
        /// 3600s：EndTime-StartTime<30天，且StartTime距当前时间不能超过93天；
        /// 86400s：EndTime-StartTime<186天，且StartTime距当前时间不能超过186天。
        public let period: UInt64?
        
        /// 起始时间，默认为当前时间，如2020-12-08T19:51:23+08:00
        public let startTime: String?
        
        /// 结束时间，默认为当前时间，如2020-12-08T19:51:23+08:00
        public let endTime: String?
        
        /// 按指定维度groupBy
        public let groupBys: [String]?
        
        public init (module: String, namespace: String, metricNames: [String], conditions: [MidQueryCondition]? = nil, period: UInt64? = nil, startTime: String? = nil, endTime: String? = nil, groupBys: [String]? = nil) {
            self.module = module
            self.namespace = namespace
            self.metricNames = metricNames
            self.conditions = conditions
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
            self.groupBys = groupBys
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case namespace = "Namespace"
            case metricNames = "MetricNames"
            case conditions = "Conditions"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case groupBys = "GroupBys"
        }
    }
    
    /// DescribeStatisticData返回参数结构体
    public struct DescribeStatisticDataResponse: TCResponseModel {
        /// 统计周期
        public let period: UInt64
        
        /// 开始时间
        public let startTime: String
        
        /// 结束时间
        public let endTime: String
        
        /// 监控数据
        public let data: [MetricData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 根据维度条件查询监控数据
    @inlinable
    public func describeStatisticData(_ input: DescribeStatisticDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStatisticDataResponse > {
        self.client.execute(action: "DescribeStatisticData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 根据维度条件查询监控数据
    @inlinable
    public func describeStatisticData(_ input: DescribeStatisticDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticDataResponse {
        try await self.client.execute(action: "DescribeStatisticData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
