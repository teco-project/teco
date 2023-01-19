//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Trtc {
    /// DescribeTRTCRealTimeScaleMetricData请求参数结构体
    public struct DescribeTRTCRealTimeScaleMetricDataRequest: TCRequestModel {
        /// 用户SdkAppId（如：1400xxxxxx）
        public let sdkAppId: String

        /// 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        public let startTime: Int64

        /// 结束时间，unix时间戳，单位：秒
        public let endTime: Int64

        /// 房间ID
        public let roomId: String?

        public init(sdkAppId: String, startTime: Int64, endTime: Int64, roomId: String? = nil) {
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case roomId = "RoomId"
        }
    }

    /// DescribeTRTCRealTimeScaleMetricData返回参数结构体
    public struct DescribeTRTCRealTimeScaleMetricDataResponse: TCResponseModel {
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

    /// 查询TRTC实时监控规模指标
    ///
    /// 查询TRTC监控仪表盘-实时监控规模指标（会返回下列指标）
    /// -userCount（在线用户数）
    /// -roomCount（在线房间数）
    /// 注意：
    /// 1.调用接口需开通监控仪表盘【基础版】和【进阶版】，监控仪表盘【免费版】不支持调用，监控仪表盘版本功能和计费说明：https://cloud.tencent.com/document/product/647/81331。
    /// 2.查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时。
    @inlinable
    public func describeTRTCRealTimeScaleMetricData(_ input: DescribeTRTCRealTimeScaleMetricDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTRTCRealTimeScaleMetricDataResponse> {
        self.client.execute(action: "DescribeTRTCRealTimeScaleMetricData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询TRTC实时监控规模指标
    ///
    /// 查询TRTC监控仪表盘-实时监控规模指标（会返回下列指标）
    /// -userCount（在线用户数）
    /// -roomCount（在线房间数）
    /// 注意：
    /// 1.调用接口需开通监控仪表盘【基础版】和【进阶版】，监控仪表盘【免费版】不支持调用，监控仪表盘版本功能和计费说明：https://cloud.tencent.com/document/product/647/81331。
    /// 2.查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时。
    @inlinable
    public func describeTRTCRealTimeScaleMetricData(_ input: DescribeTRTCRealTimeScaleMetricDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTRTCRealTimeScaleMetricDataResponse {
        try await self.client.execute(action: "DescribeTRTCRealTimeScaleMetricData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询TRTC实时监控规模指标
    ///
    /// 查询TRTC监控仪表盘-实时监控规模指标（会返回下列指标）
    /// -userCount（在线用户数）
    /// -roomCount（在线房间数）
    /// 注意：
    /// 1.调用接口需开通监控仪表盘【基础版】和【进阶版】，监控仪表盘【免费版】不支持调用，监控仪表盘版本功能和计费说明：https://cloud.tencent.com/document/product/647/81331。
    /// 2.查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时。
    @inlinable
    public func describeTRTCRealTimeScaleMetricData(sdkAppId: String, startTime: Int64, endTime: Int64, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTRTCRealTimeScaleMetricDataResponse> {
        self.describeTRTCRealTimeScaleMetricData(DescribeTRTCRealTimeScaleMetricDataRequest(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询TRTC实时监控规模指标
    ///
    /// 查询TRTC监控仪表盘-实时监控规模指标（会返回下列指标）
    /// -userCount（在线用户数）
    /// -roomCount（在线房间数）
    /// 注意：
    /// 1.调用接口需开通监控仪表盘【基础版】和【进阶版】，监控仪表盘【免费版】不支持调用，监控仪表盘版本功能和计费说明：https://cloud.tencent.com/document/product/647/81331。
    /// 2.查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时。
    @inlinable
    public func describeTRTCRealTimeScaleMetricData(sdkAppId: String, startTime: Int64, endTime: Int64, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTRTCRealTimeScaleMetricDataResponse {
        try await self.describeTRTCRealTimeScaleMetricData(DescribeTRTCRealTimeScaleMetricDataRequest(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
