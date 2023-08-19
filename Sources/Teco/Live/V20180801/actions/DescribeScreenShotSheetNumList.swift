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

import Logging
import NIOCore
import TecoCore

extension Live {
    /// DescribeScreenShotSheetNumList请求参数结构体
    public struct DescribeScreenShotSheetNumListRequest: TCRequest {
        /// 起始时间点，接口查询支持两种时间格式：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        public let startTime: String

        /// 结束时间点，接口查询支持两种时间格式：
        /// 1）YYYY-MM-DDThh:mm:ssZ：UTC时间格式，详见IOS日期格式说明文档: https://cloud.tencent.com/document/product/266/11732#I
        /// 2）YYYY-MM-DD hh:mm:ss：使用此格式时，默认代表北京时间。
        /// 支持查询最近1年的数据。
        public let endTime: String

        /// 地域信息，可选值包括Mainland，Oversea，前者是查询中国大陆范围内的数据，后者是除中国大陆范围之外的数据，若不传该参数，则查询所有地区的数据。
        public let zone: String?

        /// 推流域名（支持查询2019年11 月1日之后的域名维度数据）。
        public let pushDomains: [String]?

        /// 数据维度，数据延迟1个半小时，可选值包括：1、Minute（5分钟粒度，最大支持查询时间范围是31天），2、Day（天粒度，默认值，按照北京时间做跨天处理，最大支持查询时间范围是186天当天）。
        public let granularity: String?

        public init(startTime: String, endTime: String, zone: String? = nil, pushDomains: [String]? = nil, granularity: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.zone = zone
            self.pushDomains = pushDomains
            self.granularity = granularity
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zone = "Zone"
            case pushDomains = "PushDomains"
            case granularity = "Granularity"
        }
    }

    /// DescribeScreenShotSheetNumList返回参数结构体
    public struct DescribeScreenShotSheetNumListResponse: TCResponse {
        /// 数据信息列表。
        public let dataInfoList: [TimeValue]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询截图张数
    ///
    /// 接口用来查询直播增值业务--截图的张数
    @inlinable
    public func describeScreenShotSheetNumList(_ input: DescribeScreenShotSheetNumListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScreenShotSheetNumListResponse> {
        self.client.execute(action: "DescribeScreenShotSheetNumList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询截图张数
    ///
    /// 接口用来查询直播增值业务--截图的张数
    @inlinable
    public func describeScreenShotSheetNumList(_ input: DescribeScreenShotSheetNumListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScreenShotSheetNumListResponse {
        try await self.client.execute(action: "DescribeScreenShotSheetNumList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询截图张数
    ///
    /// 接口用来查询直播增值业务--截图的张数
    @inlinable
    public func describeScreenShotSheetNumList(startTime: String, endTime: String, zone: String? = nil, pushDomains: [String]? = nil, granularity: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScreenShotSheetNumListResponse> {
        self.describeScreenShotSheetNumList(.init(startTime: startTime, endTime: endTime, zone: zone, pushDomains: pushDomains, granularity: granularity), region: region, logger: logger, on: eventLoop)
    }

    /// 查询截图张数
    ///
    /// 接口用来查询直播增值业务--截图的张数
    @inlinable
    public func describeScreenShotSheetNumList(startTime: String, endTime: String, zone: String? = nil, pushDomains: [String]? = nil, granularity: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScreenShotSheetNumListResponse {
        try await self.describeScreenShotSheetNumList(.init(startTime: startTime, endTime: endTime, zone: zone, pushDomains: pushDomains, granularity: granularity), region: region, logger: logger, on: eventLoop)
    }
}
