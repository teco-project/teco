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
    /// DescribeBaseMetrics请求参数结构体
    public struct DescribeBaseMetricsRequest: TCRequestModel {
        /// 业务命名空间，各个云产品的业务命名空间不同。如需获取业务命名空间，请前往各产品监控指标文档，例如云服务器的命名空间，可参见 [云服务器监控指标](https://cloud.tencent.com/document/product/248/6843)
        public let namespace: String
        
        /// 指标名，各个云产品的指标名不同。如需获取指标名，请前往各产品监控指标文档，例如云服务器的指标名，可参见 [云服务器监控指标](https://cloud.tencent.com/document/product/248/6843)
        public let metricName: String?
        
        /// 可选参数，按照维度过滤
        public let dimensions: [String]?
        
        public init (namespace: String, metricName: String? = nil, dimensions: [String]? = nil) {
            self.namespace = namespace
            self.metricName = metricName
            self.dimensions = dimensions
        }
        
        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case metricName = "MetricName"
            case dimensions = "Dimensions"
        }
    }
    
    /// DescribeBaseMetrics返回参数结构体
    public struct DescribeBaseMetricsResponse: TCResponseModel {
        /// 查询得到的指标描述列表
        public let metricSet: [MetricSet]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case metricSet = "MetricSet"
            case requestId = "RequestId"
        }
    }
    
    /// 获取基础指标属性
    @inlinable
    public func describeBaseMetrics(_ input: DescribeBaseMetricsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBaseMetricsResponse > {
        self.client.execute(action: "DescribeBaseMetrics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取基础指标属性
    @inlinable
    public func describeBaseMetrics(_ input: DescribeBaseMetricsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaseMetricsResponse {
        try await self.client.execute(action: "DescribeBaseMetrics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
