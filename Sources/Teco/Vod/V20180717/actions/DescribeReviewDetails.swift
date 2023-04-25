//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// DescribeReviewDetails请求参数结构体
    public struct DescribeReviewDetailsRequest: TCRequestModel {
        /// 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String

        /// 结束日期，需大于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(startTime: String, endTime: String, subAppId: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subAppId = "SubAppId"
        }
    }

    /// DescribeReviewDetails返回参数结构体
    public struct DescribeReviewDetailsResponse: TCResponseModel {
        /// 发起内容智能识别次数。
        public let totalCount: Int64

        /// 内容智能识别总时长。
        public let totalDuration: Int64

        /// 内容智能识别时长统计数据，每天一个数据。
        public let data: [StatDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case totalDuration = "TotalDuration"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询内容智能识别详情
    ///
    /// <b>本接口已不推荐使用，用 [DescribeMediaProcessUsageData](/document/product/266/41464) 替代</b>
    ///
    /// 该接口返回查询时间范围内每天使用的视频内容智能识别时长数据，单位： 秒。
    ///
    /// 1. 可以查询最近365天内的视频内容智能识别时长统计数据。
    /// 2. 查询时间跨度不超过90天。
    @inlinable
    public func describeReviewDetails(_ input: DescribeReviewDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReviewDetailsResponse> {
        self.client.execute(action: "DescribeReviewDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询内容智能识别详情
    ///
    /// <b>本接口已不推荐使用，用 [DescribeMediaProcessUsageData](/document/product/266/41464) 替代</b>
    ///
    /// 该接口返回查询时间范围内每天使用的视频内容智能识别时长数据，单位： 秒。
    ///
    /// 1. 可以查询最近365天内的视频内容智能识别时长统计数据。
    /// 2. 查询时间跨度不超过90天。
    @inlinable
    public func describeReviewDetails(_ input: DescribeReviewDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReviewDetailsResponse {
        try await self.client.execute(action: "DescribeReviewDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询内容智能识别详情
    ///
    /// <b>本接口已不推荐使用，用 [DescribeMediaProcessUsageData](/document/product/266/41464) 替代</b>
    ///
    /// 该接口返回查询时间范围内每天使用的视频内容智能识别时长数据，单位： 秒。
    ///
    /// 1. 可以查询最近365天内的视频内容智能识别时长统计数据。
    /// 2. 查询时间跨度不超过90天。
    @inlinable
    public func describeReviewDetails(startTime: String, endTime: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReviewDetailsResponse> {
        self.describeReviewDetails(.init(startTime: startTime, endTime: endTime, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询内容智能识别详情
    ///
    /// <b>本接口已不推荐使用，用 [DescribeMediaProcessUsageData](/document/product/266/41464) 替代</b>
    ///
    /// 该接口返回查询时间范围内每天使用的视频内容智能识别时长数据，单位： 秒。
    ///
    /// 1. 可以查询最近365天内的视频内容智能识别时长统计数据。
    /// 2. 查询时间跨度不超过90天。
    @inlinable
    public func describeReviewDetails(startTime: String, endTime: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReviewDetailsResponse {
        try await self.describeReviewDetails(.init(startTime: startTime, endTime: endTime, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
