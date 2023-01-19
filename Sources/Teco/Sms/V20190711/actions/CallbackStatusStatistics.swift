//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
        /// 开始时间，yyyymmddhh 需要拉取的起始时间，精确到小时。
        public let startDateTime: UInt64

        /// 结束时间，yyyymmddhh 需要拉取的截止时间，精确到小时。
        /// 注：EndDataTime 必须大于 StartDateTime。
        public let endDataTime: UInt64

        /// 短信SdkAppid在 [短信控制台](https://console.cloud.tencent.com/smsv2) 添加应用后生成的实际SdkAppid，示例如1400006666。
        public let smsSdkAppid: String

        /// 最大上限。
        /// 注：目前固定设置为0。
        public let limit: UInt64

        /// 偏移量。
        /// 注：目前固定设置为0。
        public let offset: UInt64

        public init(startDateTime: UInt64, endDataTime: UInt64, smsSdkAppid: String, limit: UInt64, offset: UInt64) {
            self.startDateTime = startDateTime
            self.endDataTime = endDataTime
            self.smsSdkAppid = smsSdkAppid
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startDateTime = "StartDateTime"
            case endDataTime = "EndDataTime"
            case smsSdkAppid = "SmsSdkAppid"
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
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(_ input: CallbackStatusStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CallbackStatusStatisticsResponse> {
        self.client.execute(action: "CallbackStatusStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(_ input: CallbackStatusStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallbackStatusStatisticsResponse {
        try await self.client.execute(action: "CallbackStatusStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(startDateTime: UInt64, endDataTime: UInt64, smsSdkAppid: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CallbackStatusStatisticsResponse> {
        self.callbackStatusStatistics(CallbackStatusStatisticsRequest(startDateTime: startDateTime, endDataTime: endDataTime, smsSdkAppid: smsSdkAppid, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 回执数据统计
    ///
    /// 统计用户回执的数据。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func callbackStatusStatistics(startDateTime: UInt64, endDataTime: UInt64, smsSdkAppid: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallbackStatusStatisticsResponse {
        try await self.callbackStatusStatistics(CallbackStatusStatisticsRequest(startDateTime: startDateTime, endDataTime: endDataTime, smsSdkAppid: smsSdkAppid, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
