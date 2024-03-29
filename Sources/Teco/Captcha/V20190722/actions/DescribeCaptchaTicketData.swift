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
    /// DescribeCaptchaTicketData请求参数结构体
    public struct DescribeCaptchaTicketDataRequest: TCRequest {
        /// 验证码应用ID
        public let captchaAppId: Int64

        /// 查询开始时间 例如：20200909
        public let start: Int64

        /// 查询结束时间 例如：20220314
        public let end: Int64?

        public init(captchaAppId: Int64, start: Int64, end: Int64? = nil) {
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

    /// DescribeCaptchaTicketData返回参数结构体
    public struct DescribeCaptchaTicketDataResponse: TCResponse {
        /// 成功返回 0 其它失败
        public let captchaCode: Int64

        /// 返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaMsg: String?

        /// 验证码票据信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CaptchaTicketDataRes?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case captchaCode = "CaptchaCode"
            case captchaMsg = "CaptchaMsg"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 安全验证码用户操作票据数据查询
    @inlinable
    public func describeCaptchaTicketData(_ input: DescribeCaptchaTicketDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaTicketDataResponse> {
        self.client.execute(action: "DescribeCaptchaTicketData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全验证码用户操作票据数据查询
    @inlinable
    public func describeCaptchaTicketData(_ input: DescribeCaptchaTicketDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaTicketDataResponse {
        try await self.client.execute(action: "DescribeCaptchaTicketData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全验证码用户操作票据数据查询
    @inlinable
    public func describeCaptchaTicketData(captchaAppId: Int64, start: Int64, end: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaTicketDataResponse> {
        self.describeCaptchaTicketData(.init(captchaAppId: captchaAppId, start: start, end: end), region: region, logger: logger, on: eventLoop)
    }

    /// 安全验证码用户操作票据数据查询
    @inlinable
    public func describeCaptchaTicketData(captchaAppId: Int64, start: Int64, end: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaTicketDataResponse {
        try await self.describeCaptchaTicketData(.init(captchaAppId: captchaAppId, start: start, end: end), region: region, logger: logger, on: eventLoop)
    }
}
