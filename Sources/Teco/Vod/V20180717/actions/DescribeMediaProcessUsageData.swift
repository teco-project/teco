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

extension Vod {
    /// 查询视频处理用量统计数据
    ///
    /// 该接口返回查询时间范围内每天使用的视频处理用量信息。
    ///    1. 可以查询最近365天内的视频处理统计数据。
    ///    2. 查询时间跨度不超过90天。
    @inlinable
    public func describeMediaProcessUsageData(_ input: DescribeMediaProcessUsageDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMediaProcessUsageDataResponse > {
        self.client.execute(action: "DescribeMediaProcessUsageData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询视频处理用量统计数据
    ///
    /// 该接口返回查询时间范围内每天使用的视频处理用量信息。
    ///    1. 可以查询最近365天内的视频处理统计数据。
    ///    2. 查询时间跨度不超过90天。
    @inlinable
    public func describeMediaProcessUsageData(_ input: DescribeMediaProcessUsageDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaProcessUsageDataResponse {
        try await self.client.execute(action: "DescribeMediaProcessUsageData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMediaProcessUsageData请求参数结构体
    public struct DescribeMediaProcessUsageDataRequest: TCRequestModel {
        /// 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        public let startTime: String
        
        /// 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        public let endTime: String
        
        /// <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// 查询视频处理任务类型，目前支持的任务类型包括：
        /// <li> Transcoding: 普通转码</li>
        /// <li> Transcoding-TESHD: 极速高清转码</li>
        /// <li> Editing: 视频编辑</li>
        /// <li> Editing-TESHD: 极速高清视频编辑</li>
        /// <li> AdaptiveBitrateStreaming: 自适应码流</li>
        /// <li> ContentAudit: 内容审核</li>
        /// <li> ContentRecognition: 内容识别</li>
        /// <li> RemoveWatermark: 去除水印</li>
        /// <li> ExtractTraceWatermark: 提取水印</li>
        /// <li> AddTraceWatermark: 添加水印</li>
        /// <li>Transcode: 转码，包含普通转码、极速高清和视频编辑（不推荐使用）</li>
        public let type: String?
        
        public init (startTime: String, endTime: String, subAppId: UInt64?, type: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.subAppId = subAppId
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subAppId = "SubAppId"
            case type = "Type"
        }
    }
    
    /// DescribeMediaProcessUsageData返回参数结构体
    public struct DescribeMediaProcessUsageDataResponse: TCResponseModel {
        /// 视频处理统计数据概览，展示所查询任务的概览以及详细数据。
        public let mediaProcessDataSet: [TaskStatData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case mediaProcessDataSet = "MediaProcessDataSet"
            case requestId = "RequestId"
        }
    }
}