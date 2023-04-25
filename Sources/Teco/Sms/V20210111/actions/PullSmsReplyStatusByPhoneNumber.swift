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
import TecoPaginationHelpers

extension Sms {
    /// PullSmsReplyStatusByPhoneNumber请求参数结构体
    public struct PullSmsReplyStatusByPhoneNumberRequest: TCPaginatedRequest {
        /// 拉取起始时间，UNIX 时间戳（时间：秒）。
        /// 注：最大可拉取当前时期前7天的数据。
        public let beginTime: UInt64

        /// 偏移量。
        /// 注：目前固定设置为0。
        public let offset: UInt64

        /// 拉取最大条数，最多 100。
        public let limit: UInt64

        /// 下发目的手机号码，依据 E.164 标准为：+[国家（或地区）码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let phoneNumber: String

        /// 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        public let smsSdkAppId: String

        /// 拉取截止时间，UNIX 时间戳（时间：秒）。
        public let endTime: UInt64?

        public init(beginTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppId: String, endTime: UInt64? = nil) {
            self.beginTime = beginTime
            self.offset = offset
            self.limit = limit
            self.phoneNumber = phoneNumber
            self.smsSdkAppId = smsSdkAppId
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case offset = "Offset"
            case limit = "Limit"
            case phoneNumber = "PhoneNumber"
            case smsSdkAppId = "SmsSdkAppId"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: PullSmsReplyStatusByPhoneNumberResponse) -> PullSmsReplyStatusByPhoneNumberRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return PullSmsReplyStatusByPhoneNumberRequest(beginTime: self.beginTime, offset: self.offset + .init(response.getItems().count), limit: self.limit, phoneNumber: self.phoneNumber, smsSdkAppId: self.smsSdkAppId, endTime: self.endTime)
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
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsReplyStatusByPhoneNumberResponse> {
        self.client.execute(action: "PullSmsReplyStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsReplyStatusByPhoneNumberResponse {
        try await self.client.execute(action: "PullSmsReplyStatusByPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(beginTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppId: String, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullSmsReplyStatusByPhoneNumberResponse> {
        self.pullSmsReplyStatusByPhoneNumber(.init(beginTime: beginTime, offset: offset, limit: limit, phoneNumber: phoneNumber, smsSdkAppId: smsSdkAppId, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumber(beginTime: UInt64, offset: UInt64, limit: UInt64, phoneNumber: String, smsSdkAppId: String, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullSmsReplyStatusByPhoneNumberResponse {
        try await self.pullSmsReplyStatusByPhoneNumber(.init(beginTime: beginTime, offset: offset, limit: limit, phoneNumber: phoneNumber, smsSdkAppId: smsSdkAppId, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func pullSmsReplyStatusByPhoneNumberPaginated(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [PullSmsReplyStatus])> {
        self.client.paginate(input: input, region: region, command: self.pullSmsReplyStatusByPhoneNumber, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable @discardableResult
    public func pullSmsReplyStatusByPhoneNumberPaginated(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, onResponse: @escaping (PullSmsReplyStatusByPhoneNumberResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.pullSmsReplyStatusByPhoneNumber, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取单个号码短信回复状态
    ///
    /// 拉取单个号码短信回复状态。
    /// 目前也支持 [配置回复回调](https://cloud.tencent.com/document/product/382/42907) 的方式来获取上行回复。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    ///
    /// - Returns: `AsyncSequence`s of `PullSmsReplyStatus` and `PullSmsReplyStatusByPhoneNumberResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func pullSmsReplyStatusByPhoneNumberPaginator(_ input: PullSmsReplyStatusByPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<PullSmsReplyStatusByPhoneNumberRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.pullSmsReplyStatusByPhoneNumber, logger: logger, on: eventLoop)
    }
}
