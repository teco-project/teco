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

extension Tiw {
    /// 查询质量数据
    ///
    /// 查询互动白板质量数据
    @inlinable
    public func describeQualityMetrics(_ input: DescribeQualityMetricsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeQualityMetricsResponse > {
        self.client.execute(action: "DescribeQualityMetrics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询质量数据
    ///
    /// 查询互动白板质量数据
    @inlinable
    public func describeQualityMetrics(_ input: DescribeQualityMetricsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityMetricsResponse {
        try await self.client.execute(action: "DescribeQualityMetrics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeQualityMetrics请求参数结构体
    public struct DescribeQualityMetricsRequest: TCRequestModel {
        /// 白板应用的SdkAppId
        public let sdkAppId: Int64
        
        /// 开始时间，Unix时间戳，单位秒，时间跨度不能超过7天
        public let startTime: Int64
        
        /// 结束时间，Unix时间戳，单位秒，时间跨度不能超过7天
        public let endTime: Int64
        
        /// 查询的指标，目前支持以下值
        ///   - image_load_total_count: 图片加载总数（单位，次）
        ///   - image_load_fail_count: 图片加载失败数量（单位，次）
        ///   - image_load_success_rate: 图片加载成功率（百分比）
        ///   - ppt_load_total_count: PPT加载总数（单位，次）
        ///   - ppt_load_fail_count: PPT加载失败总数（单位，次）
        ///   - ppt_load_success_rate: PPT加载成功率（单位，百分比）
        ///   - verify_sdk_total_count: 白板鉴权总次数（单位，次）
        ///   - verify_sdk_fail_count: 白板鉴权失败次数（单位，次）
        ///   - verify_sdk_success_rate: 白板鉴权成功率（单位，百分比）
        ///   - verify_sdk_in_one_second_rate: 白板鉴权秒开率（单位，百分比）
        ///   - verify_sdk_cost_avg: 白板鉴权耗时平均时间（单位，毫秒）
        public let metric: String
        
        /// 聚合的时间维度，目前只支持1小时，输入值为"1h"
        public let interval: String?
        
        public init (sdkAppId: Int64, startTime: Int64, endTime: Int64, metric: String, interval: String?) {
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
            self.metric = metric
            self.interval = interval
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metric = "Metric"
            case interval = "Interval"
        }
    }
    
    /// DescribeQualityMetrics返回参数结构体
    public struct DescribeQualityMetricsResponse: TCResponseModel {
        /// 输入的查询指标
        public let metric: String
        
        /// 时间序列
        public let content: [TimeValue]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case metric = "Metric"
            case content = "Content"
            case requestId = "RequestId"
        }
    }
}
