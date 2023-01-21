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

extension Vod {
    /// DescribeImageReviewUsageData请求参数结构体
    public struct DescribeImageReviewUsageDataRequest: TCRequestModel {
        /// 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        public let startTime: String

        /// 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        public let endTime: String

        /// <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
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

    /// DescribeImageReviewUsageData返回参数结构体
    public struct DescribeImageReviewUsageDataResponse: TCResponseModel {
        /// 图片审核次数统计数据，展示查询时间范围内的图片审核次数的概览数据。
        public let imageReviewUsageDataSet: [ImageReviewUsageDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageReviewUsageDataSet = "ImageReviewUsageDataSet"
            case requestId = "RequestId"
        }
    }

    /// 查询图片审核用量统计数据
    ///
    /// 该接口返回查询时间范围内每天使用的图片审核用量信息。
    ///    1. 可以查询最近365天内的图片审核统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeImageReviewUsageData(_ input: DescribeImageReviewUsageDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageReviewUsageDataResponse> {
        self.client.execute(action: "DescribeImageReviewUsageData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询图片审核用量统计数据
    ///
    /// 该接口返回查询时间范围内每天使用的图片审核用量信息。
    ///    1. 可以查询最近365天内的图片审核统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeImageReviewUsageData(_ input: DescribeImageReviewUsageDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageReviewUsageDataResponse {
        try await self.client.execute(action: "DescribeImageReviewUsageData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询图片审核用量统计数据
    ///
    /// 该接口返回查询时间范围内每天使用的图片审核用量信息。
    ///    1. 可以查询最近365天内的图片审核统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeImageReviewUsageData(startTime: String, endTime: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageReviewUsageDataResponse> {
        self.describeImageReviewUsageData(DescribeImageReviewUsageDataRequest(startTime: startTime, endTime: endTime, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询图片审核用量统计数据
    ///
    /// 该接口返回查询时间范围内每天使用的图片审核用量信息。
    ///    1. 可以查询最近365天内的图片审核统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeImageReviewUsageData(startTime: String, endTime: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageReviewUsageDataResponse {
        try await self.describeImageReviewUsageData(DescribeImageReviewUsageDataRequest(startTime: startTime, endTime: endTime, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
