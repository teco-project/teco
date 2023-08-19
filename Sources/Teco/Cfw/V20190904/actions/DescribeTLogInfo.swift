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

extension Cfw {
    /// DescribeTLogInfo请求参数结构体
    public struct DescribeTLogInfoRequest: TCRequest {
        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 类型 1 告警 2阻断
        public let queryType: String

        /// 查询条件
        public let searchValue: String?

        public init(startTime: String, endTime: String, queryType: String, searchValue: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.queryType = queryType
            self.searchValue = searchValue
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case queryType = "QueryType"
            case searchValue = "SearchValue"
        }
    }

    /// DescribeTLogInfo返回参数结构体
    public struct DescribeTLogInfoResponse: TCResponse {
        /// "NetworkNum":网络扫描探测
        ///  "HandleNum": 待处理事件
        /// "BanNum":
        ///   "VulNum": 漏洞利用
        ///   "OutNum": 失陷主机
        /// "BruteForceNum": 0
        public let data: TLogInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 告警中心概况
    ///
    /// DescribeTLogInfo告警中心概况
    @inlinable
    public func describeTLogInfo(_ input: DescribeTLogInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTLogInfoResponse> {
        self.client.execute(action: "DescribeTLogInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警中心概况
    ///
    /// DescribeTLogInfo告警中心概况
    @inlinable
    public func describeTLogInfo(_ input: DescribeTLogInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTLogInfoResponse {
        try await self.client.execute(action: "DescribeTLogInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警中心概况
    ///
    /// DescribeTLogInfo告警中心概况
    @inlinable
    public func describeTLogInfo(startTime: String, endTime: String, queryType: String, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTLogInfoResponse> {
        self.describeTLogInfo(.init(startTime: startTime, endTime: endTime, queryType: queryType, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }

    /// 告警中心概况
    ///
    /// DescribeTLogInfo告警中心概况
    @inlinable
    public func describeTLogInfo(startTime: String, endTime: String, queryType: String, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTLogInfoResponse {
        try await self.describeTLogInfo(.init(startTime: startTime, endTime: endTime, queryType: queryType, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }
}
