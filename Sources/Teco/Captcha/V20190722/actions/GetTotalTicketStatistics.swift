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

extension Captcha {
    /// GetTotalTicketStatistics请求参数结构体
    public struct GetTotalTicketStatisticsRequest: TCRequestModel {
        /// 开始时间
        public let startTimeStr: String

        /// 结束时间
        public let endTimeStr: String

        /// 查询粒度
        /// 分钟：“1”
        /// 小时：“2”
        /// 天：“3”
        public let dimension: String

        public init(startTimeStr: String, endTimeStr: String, dimension: String) {
            self.startTimeStr = startTimeStr
            self.endTimeStr = endTimeStr
            self.dimension = dimension
        }

        enum CodingKeys: String, CodingKey {
            case startTimeStr = "StartTimeStr"
            case endTimeStr = "EndTimeStr"
            case dimension = "Dimension"
        }
    }

    /// GetTotalTicketStatistics返回参数结构体
    public struct GetTotalTicketStatisticsResponse: TCResponseModel {
        /// 返回数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CaptchaStatisticObj?

        /// 返回码
        public let captchaCode: Int64

        /// 返回信息
        public let captchaMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case captchaCode = "CaptchaCode"
            case captchaMsg = "CaptchaMsg"
            case requestId = "RequestId"
        }
    }

    /// 查询全部票据校验统计数据
    ///
    /// 查询全部票据校验的统计数据，包括：总票据校验量、总票据校验通过量、总票据校验拦截量。
    @inlinable
    public func getTotalTicketStatistics(_ input: GetTotalTicketStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTotalTicketStatisticsResponse> {
        self.client.execute(action: "GetTotalTicketStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询全部票据校验统计数据
    ///
    /// 查询全部票据校验的统计数据，包括：总票据校验量、总票据校验通过量、总票据校验拦截量。
    @inlinable
    public func getTotalTicketStatistics(_ input: GetTotalTicketStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTotalTicketStatisticsResponse {
        try await self.client.execute(action: "GetTotalTicketStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询全部票据校验统计数据
    ///
    /// 查询全部票据校验的统计数据，包括：总票据校验量、总票据校验通过量、总票据校验拦截量。
    @inlinable
    public func getTotalTicketStatistics(startTimeStr: String, endTimeStr: String, dimension: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTotalTicketStatisticsResponse> {
        self.getTotalTicketStatistics(.init(startTimeStr: startTimeStr, endTimeStr: endTimeStr, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全部票据校验统计数据
    ///
    /// 查询全部票据校验的统计数据，包括：总票据校验量、总票据校验通过量、总票据校验拦截量。
    @inlinable
    public func getTotalTicketStatistics(startTimeStr: String, endTimeStr: String, dimension: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTotalTicketStatisticsResponse {
        try await self.getTotalTicketStatistics(.init(startTimeStr: startTimeStr, endTimeStr: endTimeStr, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }
}
