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

extension Sms {
    /// PullSmsSendStatus请求参数结构体
    public struct PullSmsSendStatusRequest: TCRequest {
        /// 拉取最大条数，最多100条。
        public let limit: UInt64

        /// 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage) 添加应用后生成的实际 SdkAppId，例如1400006666。
        public let smsSdkAppId: String

        public init(limit: UInt64, smsSdkAppId: String) {
            self.limit = limit
            self.smsSdkAppId = smsSdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case smsSdkAppId = "SmsSdkAppId"
        }
    }

    /// PullSmsSendStatus返回参数结构体
    public struct PullSmsSendStatusResponse: TCResponse {
        /// 下发状态响应集合。
        public let pullSmsSendStatusSet: [PullSmsSendStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pullSmsSendStatusSet = "PullSmsSendStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 拉取短信下发状态
    ///
    /// 拉取短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：此接口需要联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatus(_ input: PullSmsSendStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsSendStatusResponse> {
        self.client.execute(action: "PullSmsSendStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取短信下发状态
    ///
    /// 拉取短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：此接口需要联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatus(_ input: PullSmsSendStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsSendStatusResponse {
        try await self.client.execute(action: "PullSmsSendStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取短信下发状态
    ///
    /// 拉取短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：此接口需要联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatus(limit: UInt64, smsSdkAppId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsSendStatusResponse> {
        self.pullSmsSendStatus(.init(limit: limit, smsSdkAppId: smsSdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取短信下发状态
    ///
    /// 拉取短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：此接口需要联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatus(limit: UInt64, smsSdkAppId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsSendStatusResponse {
        try await self.pullSmsSendStatus(.init(limit: limit, smsSdkAppId: smsSdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
