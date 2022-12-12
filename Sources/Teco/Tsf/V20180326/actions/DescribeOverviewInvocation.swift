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

extension Tsf {
    /// DescribeOverviewInvocation请求参数结构体
    public struct DescribeOverviewInvocationRequest: TCRequestModel {
        /// 命名空间ID
        public let namespaceId: String?
        
        /// 监控统计类型，可选值：SumReqAmount、AvgFailureRate、AvgTimeCost，分别对应请求量、请求错误率、平均响应耗时
        public let type: String?
        
        /// 监控统计数据粒度，可选值：60、3600、86400，分别对应1分钟、1小时、1天
        public let period: Int64?
        
        /// 查询开始时间，默认为当天的 00:00:00
        public let startTime: Date?
        
        /// 查询结束时间，默认为当前时间
        public let endTime: Date?
        
        public init (namespaceId: String? = nil, type: String? = nil, period: Int64? = nil, startTime: Date? = nil, endTime: Date? = nil) {
            self.namespaceId = namespaceId
            self.type = type
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case type = "Type"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeOverviewInvocation返回参数结构体
    public struct DescribeOverviewInvocationResponse: TCResponseModel {
        /// 监控统计数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [MetricDataPoint]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 服务调用监控统计概览
    @inlinable
    public func describeOverviewInvocation(_ input: DescribeOverviewInvocationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOverviewInvocationResponse > {
        self.client.execute(action: "DescribeOverviewInvocation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 服务调用监控统计概览
    @inlinable
    public func describeOverviewInvocation(_ input: DescribeOverviewInvocationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewInvocationResponse {
        try await self.client.execute(action: "DescribeOverviewInvocation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
