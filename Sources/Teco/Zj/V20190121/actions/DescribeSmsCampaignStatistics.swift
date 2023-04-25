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

extension Zj {
    /// DescribeSmsCampaignStatistics请求参数结构体
    public struct DescribeSmsCampaignStatisticsRequest: TCRequestModel {
        /// 活动id
        public let campaignId: UInt64

        /// 商户证书
        public let license: String

        public init(campaignId: UInt64, license: String) {
            self.campaignId = campaignId
            self.license = license
        }

        enum CodingKeys: String, CodingKey {
            case campaignId = "CampaignId"
            case license = "License"
        }
    }

    /// DescribeSmsCampaignStatistics返回参数结构体
    public struct DescribeSmsCampaignStatisticsResponse: TCResponseModel {
        /// 响应数据
        public let data: SmsCampaignStatisticsData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取短信超短活动统计数据
    @inlinable
    public func describeSmsCampaignStatistics(_ input: DescribeSmsCampaignStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsCampaignStatisticsResponse> {
        self.client.execute(action: "DescribeSmsCampaignStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取短信超短活动统计数据
    @inlinable
    public func describeSmsCampaignStatistics(_ input: DescribeSmsCampaignStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsCampaignStatisticsResponse {
        try await self.client.execute(action: "DescribeSmsCampaignStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取短信超短活动统计数据
    @inlinable
    public func describeSmsCampaignStatistics(campaignId: UInt64, license: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsCampaignStatisticsResponse> {
        self.describeSmsCampaignStatistics(.init(campaignId: campaignId, license: license), region: region, logger: logger, on: eventLoop)
    }

    /// 获取短信超短活动统计数据
    @inlinable
    public func describeSmsCampaignStatistics(campaignId: UInt64, license: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsCampaignStatisticsResponse {
        try await self.describeSmsCampaignStatistics(.init(campaignId: campaignId, license: license), region: region, logger: logger, on: eventLoop)
    }
}
