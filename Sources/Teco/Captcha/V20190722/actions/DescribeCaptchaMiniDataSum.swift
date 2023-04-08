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

extension Captcha {
    /// DescribeCaptchaMiniDataSum请求参数结构体
    public struct DescribeCaptchaMiniDataSumRequest: TCRequestModel {
        /// 验证码应用ID
        public let captchaAppId: Int64

        /// 查询开始时间
        public let start: Int64

        /// 查询结束时间
        public let end: Int64

        public init(captchaAppId: Int64, start: Int64, end: Int64) {
            self.captchaAppId = captchaAppId
            self.start = start
            self.end = end
        }

        enum CodingKeys: String, CodingKey {
            case captchaAppId = "CaptchaAppId"
            case start = "Start"
            case end = "End"
        }
    }

    /// DescribeCaptchaMiniDataSum返回参数结构体
    public struct DescribeCaptchaMiniDataSumResponse: TCResponseModel {
        /// 请求总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let getSum: Int64?

        /// 请求验证成功量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vfySuccSum: Int64?

        /// 请求验证量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vfySum: Int64?

        /// 拦截攻击量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attackSum: Int64?

        /// 返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaMsg: String?

        /// 成功返回0  其它失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaCode: Int64?

        /// 票据校验总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkTicketSum: Int64?

        /// 票据验证通过量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ticketThroughputSum: Int64?

        /// 票据验证拦截量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ticketInterceptSum: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case getSum = "GetSum"
            case vfySuccSum = "VfySuccSum"
            case vfySum = "VfySum"
            case attackSum = "AttackSum"
            case captchaMsg = "CaptchaMsg"
            case captchaCode = "CaptchaCode"
            case checkTicketSum = "CheckTicketSum"
            case ticketThroughputSum = "TicketThroughputSum"
            case ticketInterceptSum = "TicketInterceptSum"
            case requestId = "RequestId"
        }
    }

    /// 安全验证码小程序插件查询请求数据概况
    @inlinable
    public func describeCaptchaMiniDataSum(_ input: DescribeCaptchaMiniDataSumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaMiniDataSumResponse> {
        self.client.execute(action: "DescribeCaptchaMiniDataSum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全验证码小程序插件查询请求数据概况
    @inlinable
    public func describeCaptchaMiniDataSum(_ input: DescribeCaptchaMiniDataSumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniDataSumResponse {
        try await self.client.execute(action: "DescribeCaptchaMiniDataSum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全验证码小程序插件查询请求数据概况
    @inlinable
    public func describeCaptchaMiniDataSum(captchaAppId: Int64, start: Int64, end: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaMiniDataSumResponse> {
        self.describeCaptchaMiniDataSum(.init(captchaAppId: captchaAppId, start: start, end: end), region: region, logger: logger, on: eventLoop)
    }

    /// 安全验证码小程序插件查询请求数据概况
    @inlinable
    public func describeCaptchaMiniDataSum(captchaAppId: Int64, start: Int64, end: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniDataSumResponse {
        try await self.describeCaptchaMiniDataSum(.init(captchaAppId: captchaAppId, start: start, end: end), region: region, logger: logger, on: eventLoop)
    }
}
