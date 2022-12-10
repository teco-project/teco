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
    /// 查询媒体文件的播放统计数据
    ///
    /// 该接口用于查询指定日期范围内每天的播放统计数据。
    /// * 可以查询最近一年的播放统计数据。
    /// * 结束日期和起始日期的时间跨度最大为90天。
    @inlinable
    public func describeDailyMediaPlayStat(_ input: DescribeDailyMediaPlayStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDailyMediaPlayStatResponse > {
        self.client.execute(action: "DescribeDailyMediaPlayStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询媒体文件的播放统计数据
    ///
    /// 该接口用于查询指定日期范围内每天的播放统计数据。
    /// * 可以查询最近一年的播放统计数据。
    /// * 结束日期和起始日期的时间跨度最大为90天。
    @inlinable
    public func describeDailyMediaPlayStat(_ input: DescribeDailyMediaPlayStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDailyMediaPlayStatResponse {
        try await self.client.execute(action: "DescribeDailyMediaPlayStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDailyMediaPlayStat请求参数结构体
    public struct DescribeDailyMediaPlayStatRequest: TCRequestModel {
        /// 媒体文件 ID 。
        public let fileId: String
        
        /// 起始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。该参数仅日期部分有效。
        public let startDate: String
        
        /// 结束日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。该参数仅日期部分有效。
        public let endDate: String
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        public init (fileId: String, startDate: String, endDate: String, subAppId: UInt64?) {
            self.fileId = fileId
            self.startDate = startDate
            self.endDate = endDate
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case subAppId = "SubAppId"
        }
    }
    
    /// DescribeDailyMediaPlayStat返回参数结构体
    public struct DescribeDailyMediaPlayStatResponse: TCResponseModel {
        /// 播放统计数据。
        public let dailyPlayStatInfoSet: [DailyPlayStatInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dailyPlayStatInfoSet = "DailyPlayStatInfoSet"
            case requestId = "RequestId"
        }
    }
}