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
    /// GetTicketStatistics请求参数结构体
    public struct GetTicketStatisticsRequest: TCRequest {
        /// 验证码AppId
        public let captchaAppId: String

        /// 开始时间字符串
        public let startTimeStr: String

        /// 结束时间字符串
        public let endTimeStr: String

        /// 查询粒度
        public let dimension: String

        public init(captchaAppId: String, startTimeStr: String, endTimeStr: String, dimension: String) {
            self.captchaAppId = captchaAppId
            self.startTimeStr = startTimeStr
            self.endTimeStr = endTimeStr
            self.dimension = dimension
        }

        enum CodingKeys: String, CodingKey {
            case captchaAppId = "CaptchaAppId"
            case startTimeStr = "StartTimeStr"
            case endTimeStr = "EndTimeStr"
            case dimension = "Dimension"
        }
    }

    /// GetTicketStatistics返回参数结构体
    public struct GetTicketStatisticsResponse: TCResponse {
        /// 查询后数据块
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CaptchaStatisticObj?

        /// 验证码返回码
        public let captchaCode: Int64

        /// 验证码返回信息
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

    /// 查询单个CaptchaAppID票据校验数据
    ///
    /// 查询单个CaptchaAppID票据校验数据，包括：票据校验量、票据校验通过量、票据校验拦截量。
    @inlinable
    public func getTicketStatistics(_ input: GetTicketStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTicketStatisticsResponse> {
        self.client.execute(action: "GetTicketStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单个CaptchaAppID票据校验数据
    ///
    /// 查询单个CaptchaAppID票据校验数据，包括：票据校验量、票据校验通过量、票据校验拦截量。
    @inlinable
    public func getTicketStatistics(_ input: GetTicketStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTicketStatisticsResponse {
        try await self.client.execute(action: "GetTicketStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单个CaptchaAppID票据校验数据
    ///
    /// 查询单个CaptchaAppID票据校验数据，包括：票据校验量、票据校验通过量、票据校验拦截量。
    @inlinable
    public func getTicketStatistics(captchaAppId: String, startTimeStr: String, endTimeStr: String, dimension: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTicketStatisticsResponse> {
        self.getTicketStatistics(.init(captchaAppId: captchaAppId, startTimeStr: startTimeStr, endTimeStr: endTimeStr, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单个CaptchaAppID票据校验数据
    ///
    /// 查询单个CaptchaAppID票据校验数据，包括：票据校验量、票据校验通过量、票据校验拦截量。
    @inlinable
    public func getTicketStatistics(captchaAppId: String, startTimeStr: String, endTimeStr: String, dimension: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTicketStatisticsResponse {
        try await self.getTicketStatistics(.init(captchaAppId: captchaAppId, startTimeStr: startTimeStr, endTimeStr: endTimeStr, dimension: dimension), region: region, logger: logger, on: eventLoop)
    }
}
