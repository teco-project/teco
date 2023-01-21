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

extension Zj {
    /// CancelCampaign请求参数结构体
    public struct CancelCampaignRequest: TCRequestModel {
        /// 商户证书
        public let license: String

        /// 短信活动id
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

    /// CancelCampaign返回参数结构体
    public struct CancelCampaignResponse: TCResponseModel {
        /// 处理结果
        public let data: CancelActivityData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 取消短信活动
    ///
    /// 取消短信推送活动
    @inlinable
    public func cancelCampaign(_ input: CancelCampaignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelCampaignResponse> {
        self.client.execute(action: "CancelCampaign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消短信活动
    ///
    /// 取消短信推送活动
    @inlinable
    public func cancelCampaign(_ input: CancelCampaignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelCampaignResponse {
        try await self.client.execute(action: "CancelCampaign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消短信活动
    ///
    /// 取消短信推送活动
    @inlinable
    public func cancelCampaign(license: String, campaignId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelCampaignResponse> {
        self.cancelCampaign(CancelCampaignRequest(license: license, campaignId: campaignId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消短信活动
    ///
    /// 取消短信推送活动
    @inlinable
    public func cancelCampaign(license: String, campaignId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelCampaignResponse {
        try await self.cancelCampaign(CancelCampaignRequest(license: license, campaignId: campaignId), region: region, logger: logger, on: eventLoop)
    }
}
