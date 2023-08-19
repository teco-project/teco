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

extension Zj {
    /// GetSmsCampaignStatus请求参数结构体
    public struct GetSmsCampaignStatusRequest: TCRequest {
        /// 商户证书
        public let license: String

        /// 活动ID
        public let campaignId: Int64

        public init(license: String, campaignId: Int64) {
            self.license = license
            self.campaignId = campaignId
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case campaignId = "CampaignId"
        }
    }

    /// GetSmsCampaignStatus返回参数结构体
    public struct GetSmsCampaignStatusResponse: TCResponse {
        /// 活动状态
        public let data: PaasSmsCampaignStatusResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取短信活动状态
    ///
    /// 获取短信活动状态信息
    @inlinable
    public func getSmsCampaignStatus(_ input: GetSmsCampaignStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSmsCampaignStatusResponse> {
        self.client.execute(action: "GetSmsCampaignStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取短信活动状态
    ///
    /// 获取短信活动状态信息
    @inlinable
    public func getSmsCampaignStatus(_ input: GetSmsCampaignStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSmsCampaignStatusResponse {
        try await self.client.execute(action: "GetSmsCampaignStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取短信活动状态
    ///
    /// 获取短信活动状态信息
    @inlinable
    public func getSmsCampaignStatus(license: String, campaignId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSmsCampaignStatusResponse> {
        self.getSmsCampaignStatus(.init(license: license, campaignId: campaignId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取短信活动状态
    ///
    /// 获取短信活动状态信息
    @inlinable
    public func getSmsCampaignStatus(license: String, campaignId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSmsCampaignStatusResponse {
        try await self.getSmsCampaignStatus(.init(license: license, campaignId: campaignId), region: region, logger: logger, on: eventLoop)
    }
}
