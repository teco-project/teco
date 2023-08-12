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
    /// SmsPackagesStatistics请求参数结构体
    public struct SmsPackagesStatisticsRequest: TCPaginatedRequest {
        /// 短信SdkAppid在 [短信控制台](https://console.cloud.tencent.com/smsv2) 添加应用后生成的实际SdkAppid，示例如1400006666。
        public let smsSdkAppid: String

        /// 最大上限(需要拉取的套餐包个数)。
        public let limit: UInt64

        /// 偏移量。
        /// 注：目前固定设置为0。
        public let offset: UInt64

        public init(smsSdkAppid: String, limit: UInt64, offset: UInt64) {
            self.smsSdkAppid = smsSdkAppid
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case smsSdkAppid = "SmsSdkAppid"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SmsPackagesStatisticsResponse) -> SmsPackagesStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SmsPackagesStatisticsRequest(smsSdkAppid: self.smsSdkAppid, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// SmsPackagesStatistics返回参数结构体
    public struct SmsPackagesStatisticsResponse: TCPaginatedResponse {
        /// 发送数据统计响应包体。
        public let smsPackagesStatisticsSet: [SmsPackagesStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case smsPackagesStatisticsSet = "SmsPackagesStatisticsSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SmsPackagesStatistics`` list from the paginated response.
        public func getItems() -> [SmsPackagesStatistics] {
            self.smsPackagesStatisticsSet
        }
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func smsPackagesStatistics(_ input: SmsPackagesStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SmsPackagesStatisticsResponse> {
        self.client.execute(action: "SmsPackagesStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func smsPackagesStatistics(_ input: SmsPackagesStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SmsPackagesStatisticsResponse {
        try await self.client.execute(action: "SmsPackagesStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func smsPackagesStatistics(smsSdkAppid: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SmsPackagesStatisticsResponse> {
        self.smsPackagesStatistics(.init(smsSdkAppid: smsSdkAppid, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func smsPackagesStatistics(smsSdkAppid: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SmsPackagesStatisticsResponse {
        try await self.smsPackagesStatistics(.init(smsSdkAppid: smsSdkAppid, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func smsPackagesStatisticsPaginated(_ input: SmsPackagesStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [SmsPackagesStatistics])> {
        self.client.paginate(input: input, region: region, command: self.smsPackagesStatistics, logger: logger, on: eventLoop)
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable @discardableResult
    public func smsPackagesStatisticsPaginated(_ input: SmsPackagesStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (SmsPackagesStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.smsPackagesStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 套餐包信息统计
    ///
    /// 用户套餐包信息统计。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    ///
    /// - Returns: `AsyncSequence`s of ``SmsPackagesStatistics`` and ``SmsPackagesStatisticsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func smsPackagesStatisticsPaginator(_ input: SmsPackagesStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SmsPackagesStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.smsPackagesStatistics, logger: logger, on: eventLoop)
    }
}
