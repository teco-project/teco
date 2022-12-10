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

extension Vod {
    /// 查询每日播放 Top100的媒体文件的播放统计数据
    ///
    /// 该接口用于查询每日播放Top100 的媒体文件的播放统计数据。
    /// * 可以查询最近一年的播放统计数据。
    /// * 可以按播放次数或者播放流量查询。
    /// * 播放次数统计说明：
    ///     1. HLS 文件：访问 M3U8 文件时统计播放次数；访问 TS 文件不统计播放次数。
    ///     2. 其它文件（如 MP4 文件）：播放请求带有 range 参数且 range 的 start 参数不等于0时不统计播放次数，其它情况统计播放次数。
    @inlinable
    public func describeDailyMostPlayedStat(_ input: DescribeDailyMostPlayedStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDailyMostPlayedStatResponse > {
        self.client.execute(action: "DescribeDailyMostPlayedStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询每日播放 Top100的媒体文件的播放统计数据
    ///
    /// 该接口用于查询每日播放Top100 的媒体文件的播放统计数据。
    /// * 可以查询最近一年的播放统计数据。
    /// * 可以按播放次数或者播放流量查询。
    /// * 播放次数统计说明：
    ///     1. HLS 文件：访问 M3U8 文件时统计播放次数；访问 TS 文件不统计播放次数。
    ///     2. 其它文件（如 MP4 文件）：播放请求带有 range 参数且 range 的 start 参数不等于0时不统计播放次数，其它情况统计播放次数。
    @inlinable
    public func describeDailyMostPlayedStat(_ input: DescribeDailyMostPlayedStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDailyMostPlayedStatResponse {
        try await self.client.execute(action: "DescribeDailyMostPlayedStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDailyMostPlayedStat请求参数结构体
    public struct DescribeDailyMostPlayedStatRequest: TCRequestModel {
        /// 查询日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。该参数仅日期部分有效。
        public let date: String
        
        /// 域名。查询该域名播放 Top100 的媒体文件的统计数据。默认查询所有域名的播放统计数据。
        public let domainName: String?
        
        /// Top 数据的统计指标，取值有：
        /// <li>Traffic：播放流量，按播放流量统计 Top100 的数据。</li>
        /// <li>PlayTimes：播放次数，按播放次数统计播放 Top100 的数据。</li>
        public let metric: String?
        
        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?
        
        public init (date: String, domainName: String?, metric: String?, subAppId: UInt64?) {
            self.date = date
            self.domainName = domainName
            self.metric = metric
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case domainName = "DomainName"
            case metric = "Metric"
            case subAppId = "SubAppId"
        }
    }
    
    /// DescribeDailyMostPlayedStat返回参数结构体
    public struct DescribeDailyMostPlayedStatResponse: TCResponseModel {
        /// 媒体文件播放统计信息。
        public let dailyPlayStatInfoSet: [DailyPlayStatInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dailyPlayStatInfoSet = "DailyPlayStatInfoSet"
            case requestId = "RequestId"
        }
    }
}
