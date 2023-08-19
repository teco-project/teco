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
    /// DescribeLiveTimeShiftBillInfoList请求参数结构体
    public struct DescribeLiveTimeShiftBillInfoListRequest: TCRequest {
        /// UTC开始时间，支持最近三个月的查询，查询时间最长跨度为一个月。
        ///
        /// 使用 UTC 格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String

        /// UTC结束时间，支持最近三个月的查询，查询时间最长跨度为一个月。
        ///
        /// 使用 UTC 格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String

        /// 推流域名列表，若不传递此参数，则表示查询总体数据。
        public let pushDomains: [String]?

        public init(startTime: String, endTime: String, pushDomains: [String]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.pushDomains = pushDomains
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pushDomains = "PushDomains"
        }
    }

    /// DescribeLiveTimeShiftBillInfoList返回参数结构体
    public struct DescribeLiveTimeShiftBillInfoListResponse: TCResponse {
        /// 时移计费明细数据。
        public let dataInfoList: [TimeShiftBillData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 直播时移计费信息查询
    ///
    /// 提供给客户对账，按天统计，维度：推流域名、时移文件时长（累加）、配置天数（不累加）、时移总时长（累加）。
    @inlinable
    public func describeLiveTimeShiftBillInfoList(_ input: DescribeLiveTimeShiftBillInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveTimeShiftBillInfoListResponse> {
        self.client.execute(action: "DescribeLiveTimeShiftBillInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播时移计费信息查询
    ///
    /// 提供给客户对账，按天统计，维度：推流域名、时移文件时长（累加）、配置天数（不累加）、时移总时长（累加）。
    @inlinable
    public func describeLiveTimeShiftBillInfoList(_ input: DescribeLiveTimeShiftBillInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTimeShiftBillInfoListResponse {
        try await self.client.execute(action: "DescribeLiveTimeShiftBillInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播时移计费信息查询
    ///
    /// 提供给客户对账，按天统计，维度：推流域名、时移文件时长（累加）、配置天数（不累加）、时移总时长（累加）。
    @inlinable
    public func describeLiveTimeShiftBillInfoList(startTime: String, endTime: String, pushDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveTimeShiftBillInfoListResponse> {
        self.describeLiveTimeShiftBillInfoList(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains), region: region, logger: logger, on: eventLoop)
    }

    /// 直播时移计费信息查询
    ///
    /// 提供给客户对账，按天统计，维度：推流域名、时移文件时长（累加）、配置天数（不累加）、时移总时长（累加）。
    @inlinable
    public func describeLiveTimeShiftBillInfoList(startTime: String, endTime: String, pushDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTimeShiftBillInfoListResponse {
        try await self.describeLiveTimeShiftBillInfoList(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains), region: region, logger: logger, on: eventLoop)
    }
}
