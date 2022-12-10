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
    /// 查询媒体文件按指定时间粒度统计的播放数据
    ///
    /// 该接口用于查询媒体文件按指定时间粒度统计的播放数据
    /// * 可以查询最近一年的播放统计数据。
    /// * 时间粒度为小时，结束时间和起始时间的跨度最大为7天。
    /// * 时间粒度为天，结束时间和起始时间的跨度最大为90天。
    @inlinable
    public func describeMediaPlayStatDetails(_ input: DescribeMediaPlayStatDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMediaPlayStatDetailsResponse > {
        self.client.execute(action: "DescribeMediaPlayStatDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询媒体文件按指定时间粒度统计的播放数据
    ///
    /// 该接口用于查询媒体文件按指定时间粒度统计的播放数据
    /// * 可以查询最近一年的播放统计数据。
    /// * 时间粒度为小时，结束时间和起始时间的跨度最大为7天。
    /// * 时间粒度为天，结束时间和起始时间的跨度最大为90天。
    @inlinable
    public func describeMediaPlayStatDetails(_ input: DescribeMediaPlayStatDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaPlayStatDetailsResponse {
        try await self.client.execute(action: "DescribeMediaPlayStatDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMediaPlayStatDetails请求参数结构体
    public struct DescribeMediaPlayStatDetailsRequest: TCRequestModel {
        /// 媒体文件 ID。
        public let fileId: String
        
        /// 起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String
        
        /// 结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// 统计时间粒度，有效值：
        /// <li>Hour：以小时为粒度。</li>
        /// <li>Day：以天为粒度。</li>
        /// 默认按时间跨度决定，小于1天以小时为粒度，大于等于1天则以天为粒度。
        public let interval: String?
        
        public init (fileId: String, startTime: String, endTime: String, subAppId: UInt64?, interval: String?) {
            self.fileId = fileId
            self.startTime = startTime
            self.endTime = endTime
            self.subAppId = subAppId
            self.interval = interval
        }
        
        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subAppId = "SubAppId"
            case interval = "Interval"
        }
    }
    
    /// DescribeMediaPlayStatDetails返回参数结构体
    public struct DescribeMediaPlayStatDetailsResponse: TCResponseModel {
        /// 播放统计数据。
        public let playStatInfoSet: [PlayStatInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case playStatInfoSet = "PlayStatInfoSet"
            case requestId = "RequestId"
        }
    }
}