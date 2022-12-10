//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Apm {
    /// 获取指标数据通用接口
    ///
    /// 获取指标数据通用接口。用户根据需要上送请求参数，返回对应的指标数据。
    /// 接口调用频率限制为：20次/秒，1200次/分钟。单请求的数据点数限制为1440个。
    @inlinable
    public func describeGeneralMetricData(_ input: DescribeGeneralMetricDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGeneralMetricDataResponse > {
        self.client.execute(action: "DescribeGeneralMetricData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取指标数据通用接口
    ///
    /// 获取指标数据通用接口。用户根据需要上送请求参数，返回对应的指标数据。
    /// 接口调用频率限制为：20次/秒，1200次/分钟。单请求的数据点数限制为1440个。
    @inlinable
    public func describeGeneralMetricData(_ input: DescribeGeneralMetricDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeneralMetricDataResponse {
        try await self.client.execute(action: "DescribeGeneralMetricData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGeneralMetricData请求参数结构体
    public struct DescribeGeneralMetricDataRequest: TCRequestModel {
        /// 要过滤的维度信息：
        /// service_metric视图支持：service.name（服务名）、span.kind（客户端/服务端视角）为维度进行过滤，service.name（服务名）必填。
        /// span.kind:
        /// 	server:服务端视角
        /// 	client:客户端视角
        /// 默认为服务端视角进行查询。
        /// runtime_metric视图支持：service.name（服务名）维度进行过滤，service.name（服务名）必填。
        /// sql_metric视图支持：service.name（服务名）、db.instance（数据库名称）、db.ip（数据库实例ip）维度进行过滤，查询service_slow_sql_count（慢sql）指标时service.name必填，查询sql_duration_avg（耗时）指标时db.instance（数据库名称）必填。
        public let filters: [GeneralFilter]
        
        /// 需要查询的指标，不可自定义输入。
        /// service_metric视图支持：service_request_count（总请求）、service_duration（平均响应时间）、service_error_req_rate（平均错误率）、service_slow_call_count（慢调用）、service_error_request_count（异常数量）。
        /// runtime_metric视图支持：service_gc_full_count（Full GC）。
        /// sql_metric视图支持：service_slow_sql_count（慢sql）、sql_duration_avg（耗时）。
        public let metrics: [String]
        
        /// 业务系统ID
        public let instanceId: String
        
        /// 视图名称，不可自定义输入。支持：service_metric、runtime_metric、sql_metric。
        public let viewName: String
        
        /// 聚合维度：
        /// service_metric视图支持：service.name（服务名）、span.kind （客户端/服务端视角）维度进行聚合，service.name（服务名）必填。
        /// runtime_metric视图支持：service.name（服务名）维度进行聚合，service.name（服务名）必填。
        /// sql_metric视图支持：service.name（服务名）、db.statement（sql语句）维度进行聚合，查询service_slow_sql_count（慢sql）时service.name（服务名）必填，查询sql_duration_avg（耗时）指标时service.name（服务名）、db.statement（sql语句）必填。
        public let groupBy: [String]?
        
        /// 起始时间的时间戳，单位为秒，只支持查询2天内最多1小时的指标数据。
        public let startTime: Int64?
        
        /// 结束时间的时间戳，单位为秒，只支持查询2天内最多1小时的指标数据。
        public let endTime: Int64?
        
        /// 聚合粒度，单位为秒，最小为60s，即一分钟的聚合粒度；如果为空或0则计算开始时间到截止时间的指标数据，上报其他值会报错。
        public let period: Int64?
        
        /// 对查询指标进行排序：
        /// service_metric视图支持：service_request_count（总请求）、service_duration（平均响应时间）、service_error_req_rate（平均错误率）、service_slow_call_count（慢调用）、service_error_request_count（异常数量）。
        /// runtime_metric视图支持：service_gc_full_count（Full GC）。
        /// sql_metric视图支持：service_slow_sql_count（慢sql）、sql_duration_avg（耗时）。
        /// asc:对查询指标进行升序排序
        /// desc：对查询指标进行降序排序
        public let orderBy: OrderBy
        
        /// 查询指标的限制条数，目前最多展示50条数据，PageSize取值为1-50，上送PageSize则根据PageSize的值展示限制条数。
        public let pageSize: Int64?
        
        public init (filters: [GeneralFilter], metrics: [String], instanceId: String, viewName: String, groupBy: [String]?, startTime: Int64?, endTime: Int64?, period: Int64?, orderBy: OrderBy, pageSize: Int64?) {
            self.filters = filters
            self.metrics = metrics
            self.instanceId = instanceId
            self.viewName = viewName
            self.groupBy = groupBy
            self.startTime = startTime
            self.endTime = endTime
            self.period = period
            self.orderBy = orderBy
            self.pageSize = pageSize
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case metrics = "Metrics"
            case instanceId = "InstanceId"
            case viewName = "ViewName"
            case groupBy = "GroupBy"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
            case orderBy = "OrderBy"
            case pageSize = "PageSize"
        }
    }
    
    /// DescribeGeneralMetricData返回参数结构体
    public struct DescribeGeneralMetricDataResponse: TCResponseModel {
        /// 指标结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let records: [Line]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case records = "Records"
            case requestId = "RequestId"
        }
    }
}