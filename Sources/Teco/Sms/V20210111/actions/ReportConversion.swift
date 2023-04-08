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
    /// ReportConversion请求参数结构体
    public struct ReportConversionRequest: TCRequestModel {
        /// 短信应用ID。在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        public let smsSdkAppId: String

        /// 发送短信返回的流水号。
        public let serialNo: String

        /// 用户回填时间，UNIX 时间戳（单位：秒）。
        public let conversionTime: UInt64?

        public init(smsSdkAppId: String, serialNo: String, conversionTime: UInt64? = nil) {
            self.smsSdkAppId = smsSdkAppId
            self.serialNo = serialNo
            self.conversionTime = conversionTime
        }

        enum CodingKeys: String, CodingKey {
            case smsSdkAppId = "SmsSdkAppId"
            case serialNo = "SerialNo"
            case conversionTime = "ConversionTime"
        }
    }

    /// ReportConversion返回参数结构体
    public struct ReportConversionResponse: TCResponseModel {
        /// 转化率上报响应包体。
        public let reportConversionStatus: ReportConversionStatus

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reportConversionStatus = "ReportConversionStatus"
            case requestId = "RequestId"
        }
    }

    /// 上报转换率
    ///
    /// 短信转化率上报。将已接收到短信的流水号上报到腾讯云短信服务。
    /// >- 注：当前接口以白名单方式对外开放，如有需要请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    @inlinable
    public func reportConversion(_ input: ReportConversionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportConversionResponse> {
        self.client.execute(action: "ReportConversion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报转换率
    ///
    /// 短信转化率上报。将已接收到短信的流水号上报到腾讯云短信服务。
    /// >- 注：当前接口以白名单方式对外开放，如有需要请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    @inlinable
    public func reportConversion(_ input: ReportConversionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportConversionResponse {
        try await self.client.execute(action: "ReportConversion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报转换率
    ///
    /// 短信转化率上报。将已接收到短信的流水号上报到腾讯云短信服务。
    /// >- 注：当前接口以白名单方式对外开放，如有需要请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    @inlinable
    public func reportConversion(smsSdkAppId: String, serialNo: String, conversionTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportConversionResponse> {
        self.reportConversion(.init(smsSdkAppId: smsSdkAppId, serialNo: serialNo, conversionTime: conversionTime), region: region, logger: logger, on: eventLoop)
    }

    /// 上报转换率
    ///
    /// 短信转化率上报。将已接收到短信的流水号上报到腾讯云短信服务。
    /// >- 注：当前接口以白名单方式对外开放，如有需要请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 开通。
    @inlinable
    public func reportConversion(smsSdkAppId: String, serialNo: String, conversionTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportConversionResponse {
        try await self.reportConversion(.init(smsSdkAppId: smsSdkAppId, serialNo: serialNo, conversionTime: conversionTime), region: region, logger: logger, on: eventLoop)
    }
}
