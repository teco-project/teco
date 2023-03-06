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

import TecoPaginationHelpers

extension Sms {
    /// PullSmsReplyStatusByPhoneNumber请求参数结构体
    public struct PullSmsReplyStatusByPhoneNumberRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: PullSmsReplyStatusByPhoneNumberResponse) -> PullSmsReplyStatusByPhoneNumberRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return PullSmsReplyStatusByPhoneNumberRequest(sendDateTime: self.sendDateTime, offset: self.offset + .init(response.getItems().count), limit: self.limit, phoneNumber: self.phoneNumber, smsSdkAppid: self.smsSdkAppid, endDateTime: self.endDateTime)
        }
    }

    /// PullSmsReplyStatusByPhoneNumber返回参数结构体
    public struct PullSmsReplyStatusByPhoneNumberResponse: TCPaginatedResponse {
        /// 回复状态响应集合。
        public let pullSmsReplyStatusSet: [PullSmsReplyStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pullSmsReplyStatusSet = "PullSmsReplyStatusSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PullSmsReplyStatus] {
            self.pullSmsReplyStatusSet
        }
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsReplyStatusByPhoneNumberResponse> {
        self.client.execute(action: "PullSmsReplyStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsReplyStatusByPhoneNumberResponse {
        try await self.client.execute(action: "PullSmsReplyStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(sendDateTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppid: String, endDateTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsReplyStatusByPhoneNumberResponse> {
        let input = PullSmsReplyStatusByPhoneNumberRequest(sendDateTime: sendDateTime, offset: offset, limit: limit, phoneNumber: phoneNumber, smsSdkAppid: smsSdkAppid, endDateTime: endDateTime)
        return self.client.execute(action: "PullSmsReplyStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(sendDateTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppid: String, endDateTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsReplyStatusByPhoneNumberResponse {
        let input = PullSmsReplyStatusByPhoneNumberRequest(sendDateTime: sendDateTime, offset: offset, limit: limit, phoneNumber: phoneNumber, smsSdkAppid: smsSdkAppid, endDateTime: endDateTime)
        return try await self.client.execute(action: "PullSmsReplyStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumberPaginated(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [PullSmsReplyStatus])> {
        self.client.paginate(input: input, region: region, command: self.pullSmsReplyStatusByPhoneNumber, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable @discardableResult
    public func pullSmsReplyStatusByPhoneNumberPaginated(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, onResponse: @escaping (PullSmsReplyStatusByPhoneNumberResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.pullSmsReplyStatusByPhoneNumber, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    ///
    /// - Returns: `AsyncSequence`s of `PullSmsReplyStatus` and `PullSmsReplyStatusByPhoneNumberResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func pullSmsReplyStatusByPhoneNumberPaginator(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<PullSmsReplyStatusByPhoneNumberRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.pullSmsReplyStatusByPhoneNumber, logger: logger, on: eventLoop)
    }
}
