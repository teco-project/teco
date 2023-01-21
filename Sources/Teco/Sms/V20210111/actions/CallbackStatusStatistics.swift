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

extension Sms {
    /// CallbackStatusStatistics请求参数结构体
    public struct CallbackStatusStatisticsRequest: TCRequestModel {
        /// 起始时间，格式为yyyymmddhh，精确到小时，例如2021050113，表示2021年5月1号13时。
        public let beginTime: String

        /// 结束时间，格式为yyyymmddhh，精确到小时，例如2021050118，表示2021年5月1号18时。
        /// 注：EndTime 必须大于 BeginTime，且相差不超过32天。
        public let endTime: String

        /// 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        public let smsSdkAppId: String

        /// 最大上限。
        /// 注：目前固定设置为0。
        public let limit: UInt64

        /// 偏移量。
        /// 注：目前固定设置为0。
        public let offset: UInt64

        public init(beginTime: String, endTime: String, smsSdkAppId: String, limit: UInt64, offset: UInt64) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.smsSdkAppId = smsSdkAppId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case smsSdkAppId = "SmsSdkAppId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// CallbackStatusStatistics返回参数结构体
    public struct CallbackStatusStatisticsResponse: TCResponseModel {
        /// 回执数据统计响应包体。
        public let callbackStatusStatistics: CallbackStatusStatistics

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case callbackStatusStatistics = "CallbackStatusStatistics"
            case requestId = "RequestId"
        }
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(_ input: CallbackStatusStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CallbackStatusStatisticsResponse> {
        self.client.execute(action: "CallbackStatusStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(_ input: CallbackStatusStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallbackStatusStatisticsResponse {
        try await self.client.execute(action: "CallbackStatusStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(beginTime: String, endTime: String, smsSdkAppId: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CallbackStatusStatisticsResponse> {
        self.callbackStatusStatistics(CallbackStatusStatisticsRequest(beginTime: beginTime, endTime: endTime, smsSdkAppId: smsSdkAppId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(beginTime: String, endTime: String, smsSdkAppId: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallbackStatusStatisticsResponse {
        try await self.callbackStatusStatistics(CallbackStatusStatisticsRequest(beginTime: beginTime, endTime: endTime, smsSdkAppId: smsSdkAppId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
