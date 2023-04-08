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
import TecoPaginationHelpers

extension Sms {
    /// PullSmsSendStatusByPhoneNumber请求参数结构体
    public struct PullSmsSendStatusByPhoneNumberRequest: TCPaginatedRequest {
        /// 拉取起始时间，UNIX 时间戳（时间：秒）。
        /// 注：最大可拉取当前时期7天前的数据。
        public let sendDateTime: UInt64

        /// 偏移量。
        /// 注：目前固定设置为0。
        public let offset: UInt64

        /// 拉取最大条数，最多 100。
        public let limit: UInt64

        /// 下发目的手机号码，依据 e.164 标准为：+[国家（或地区）码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let phoneNumber: String

        /// 短信SdkAppid在 [短信控制台](https://console.cloud.tencent.com/smsv2) 添加应用后生成的实际SdkAppid，例如1400006666。
        public let smsSdkAppid: String

        /// 拉取截止时间，UNIX 时间戳（时间：秒）。
        public let endDateTime: UInt64?

        public init(sendDateTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppid: String, endDateTime: UInt64? = nil) {
            self.sendDateTime = sendDateTime
            self.offset = offset
            self.limit = limit
            self.phoneNumber = phoneNumber
            self.smsSdkAppid = smsSdkAppid
            self.endDateTime = endDateTime
        }

        enum CodingKeys: String, CodingKey {
            case sendDateTime = "SendDateTime"
            case offset = "Offset"
            case limit = "Limit"
            case phoneNumber = "PhoneNumber"
            case smsSdkAppid = "SmsSdkAppid"
            case endDateTime = "EndDateTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: PullSmsSendStatusByPhoneNumberResponse) -> PullSmsSendStatusByPhoneNumberRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return PullSmsSendStatusByPhoneNumberRequest(sendDateTime: self.sendDateTime, offset: self.offset + .init(response.getItems().count), limit: self.limit, phoneNumber: self.phoneNumber, smsSdkAppid: self.smsSdkAppid, endDateTime: self.endDateTime)
        }
    }

    /// PullSmsSendStatusByPhoneNumber返回参数结构体
    public struct PullSmsSendStatusByPhoneNumberResponse: TCPaginatedResponse {
        /// 下发状态响应集合。
        public let pullSmsSendStatusSet: [PullSmsSendStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pullSmsSendStatusSet = "PullSmsSendStatusSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PullSmsSendStatus] {
            self.pullSmsSendStatusSet
        }
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatusByPhoneNumber(_ input: PullSmsSendStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsSendStatusByPhoneNumberResponse> {
        self.client.execute(action: "PullSmsSendStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatusByPhoneNumber(_ input: PullSmsSendStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsSendStatusByPhoneNumberResponse {
        try await self.client.execute(action: "PullSmsSendStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatusByPhoneNumber(sendDateTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppid: String, endDateTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsSendStatusByPhoneNumberResponse> {
        self.pullSmsSendStatusByPhoneNumber(.init(sendDateTime: sendDateTime, offset: offset, limit: limit, phoneNumber: phoneNumber, smsSdkAppid: smsSdkAppid, endDateTime: endDateTime), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatusByPhoneNumber(sendDateTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppid: String, endDateTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsSendStatusByPhoneNumberResponse {
        try await self.pullSmsSendStatusByPhoneNumber(.init(sendDateTime: sendDateTime, offset: offset, limit: limit, phoneNumber: phoneNumber, smsSdkAppid: smsSdkAppid, endDateTime: endDateTime), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsSendStatusByPhoneNumberPaginated(_ input: PullSmsSendStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [PullSmsSendStatus])> {
        self.client.paginate(input: input, region: region, command: self.pullSmsSendStatusByPhoneNumber, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable @discardableResult
    public func pullSmsSendStatusByPhoneNumberPaginated(_ input: PullSmsSendStatusByPhoneNumberRequest, region: TCRegion? = nil, onResponse: @escaping (PullSmsSendStatusByPhoneNumberResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.pullSmsSendStatusByPhoneNumber, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信下发状态
    ///
    /// 拉取单个号码短信下发状态。
    /// 目前也支持 [配置回调](https://cloud.tencent.com/document/product/382/37809#.E8.AE.BE.E7.BD.AE.E4.BA.8B.E4.BB.B6.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE) 的方式来获取下发状态。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    ///
    /// - Returns: `AsyncSequence`s of `PullSmsSendStatus` and `PullSmsSendStatusByPhoneNumberResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func pullSmsSendStatusByPhoneNumberPaginator(_ input: PullSmsSendStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<PullSmsSendStatusByPhoneNumberRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.pullSmsSendStatusByPhoneNumber, logger: logger, on: eventLoop)
    }
}
