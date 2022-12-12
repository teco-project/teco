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

extension Trtc {
    /// DescribeExternalTrtcMeasure请求参数结构体
    public struct DescribeExternalTrtcMeasureRequest: TCRequestModel {
        /// 查询开始日期。
        public let startTime: String
        
        /// 查询结束日期。
        public let endTime: String
        
        /// 对应的应用。如果没有这个参数，表示获取用户名下全部实时音视频应用的汇总。
        public let sdkAppId: UInt64?
        
        public init (startTime: String, endTime: String, sdkAppId: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.sdkAppId = sdkAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sdkAppId = "SdkAppId"
        }
    }
    
    /// DescribeExternalTrtcMeasure返回参数结构体
    public struct DescribeExternalTrtcMeasureResponse: TCResponseModel {
        /// 每个SdkAppId的时长使用信息
        public let sdkAppIdTrtrTimeUsages: [SdkAppIdNewTrtcTimeUsage]
        
        /// 主播的用量统计方式。取值"InRoomTime":房间时长,"SubscribeTime":"订阅时长","Bandwidth":带宽
        public let anchorUsageMode: String
        
        /// 观众的用量统计方式。取值"InRoomTime":在房间时长,"SubscribeTime":"订阅时长","Bandwidth":带宽,"MergeWithAnchor":"不区分麦上麦下"
        public let audienceUsageMode: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sdkAppIdTrtrTimeUsages = "SdkAppIdTrtrTimeUsages"
            case anchorUsageMode = "AnchorUsageMode"
            case audienceUsageMode = "AudienceUsageMode"
            case requestId = "RequestId"
        }
    }
    
    /// 查询音视频用量计费时长（旧）
    ///
    /// 获取Trtc的用量统计数据。走计费渠道二期 只允许查两天的数据。
    /// 当前接口已不再更新维护，请使用新版音视频用量接口：DescribeTrtcUsage （https://cloud.tencent.com/document/product/647/81425）
    @inlinable
    public func describeExternalTrtcMeasure(_ input: DescribeExternalTrtcMeasureRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeExternalTrtcMeasureResponse > {
        self.client.execute(action: "DescribeExternalTrtcMeasure", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询音视频用量计费时长（旧）
    ///
    /// 获取Trtc的用量统计数据。走计费渠道二期 只允许查两天的数据。
    /// 当前接口已不再更新维护，请使用新版音视频用量接口：DescribeTrtcUsage （https://cloud.tencent.com/document/product/647/81425）
    @inlinable
    public func describeExternalTrtcMeasure(_ input: DescribeExternalTrtcMeasureRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExternalTrtcMeasureResponse {
        try await self.client.execute(action: "DescribeExternalTrtcMeasure", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
