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

extension Trtc {
    /// DescribeTRTCMarketQualityMetricData请求参数结构体
    public struct DescribeTRTCMarketQualityMetricDataRequest: TCRequestModel {
        /// 用户SdkAppId（如：1400xxxxxx）
        public let sdkAppId: String
        
        /// 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        // FIXME: Codable support not implemented for date yet.
        public let startTime: Date
        
        /// 查询结束时间，格式为YYYY-MM-DD。
        // FIXME: Codable support not implemented for date yet.
        public let endTime: Date
        
        /// 返回数据的粒度，支持设为以下值：
        /// d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        /// h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        public let period: String
        
        public init (sdkAppId: String, startTime: Date, endTime: Date, period: String) {
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
            self.period = period
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
        }
    }
    
    /// DescribeTRTCMarketQualityMetricData返回参数结构体
    public struct DescribeTRTCMarketQualityMetricDataResponse: TCResponseModel {
        /// TRTC监控数据出参
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TRTCDataResp?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 查询TRTC数据大盘质量指标
    ///
    /// 查询TRTC监控仪表盘-数据大盘质量指标（包括下列指标）
    /// joinSuccessRate：加入频道成功率。
    /// joinSuccessIn5sRate：5s内加入频道成功率。
    /// audioFreezeRate：音频卡顿率。
    /// videoFreezeRate：视频卡顿率。
    /// networkDelay ：网络延迟率。
    /// 注意：
    /// 1.调用接口需开通监控仪表盘【基础版】和【进阶版】，监控仪表盘【免费版】不支持调用，监控仪表盘版本功能和计费说明：https://cloud.tencent.com/document/product/647/81331。
    /// 2.查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天。
    @inlinable
    public func describeTRTCMarketQualityMetricData(_ input: DescribeTRTCMarketQualityMetricDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTRTCMarketQualityMetricDataResponse > {
        self.client.execute(action: "DescribeTRTCMarketQualityMetricData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询TRTC数据大盘质量指标
    ///
    /// 查询TRTC监控仪表盘-数据大盘质量指标（包括下列指标）
    /// joinSuccessRate：加入频道成功率。
    /// joinSuccessIn5sRate：5s内加入频道成功率。
    /// audioFreezeRate：音频卡顿率。
    /// videoFreezeRate：视频卡顿率。
    /// networkDelay ：网络延迟率。
    /// 注意：
    /// 1.调用接口需开通监控仪表盘【基础版】和【进阶版】，监控仪表盘【免费版】不支持调用，监控仪表盘版本功能和计费说明：https://cloud.tencent.com/document/product/647/81331。
    /// 2.查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天。
    @inlinable
    public func describeTRTCMarketQualityMetricData(_ input: DescribeTRTCMarketQualityMetricDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTRTCMarketQualityMetricDataResponse {
        try await self.client.execute(action: "DescribeTRTCMarketQualityMetricData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
