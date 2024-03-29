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
    /// DescribeCaptchaMiniOperData请求参数结构体
    public struct DescribeCaptchaMiniOperDataRequest: TCRequest {
        /// 验证码应用ID
        public let captchaAppId: UInt64

        /// 查询开始时间
        public let start: UInt64

        /// 查询类型
        public let type: UInt64

        /// 查询结束时间
        public let end: UInt64?

        public init(captchaAppId: UInt64, start: UInt64, type: UInt64, end: UInt64? = nil) {
            self.captchaAppId = captchaAppId
            self.start = start
            self.type = type
            self.end = end
        }

        enum CodingKeys: String, CodingKey {
            case captchaAppId = "CaptchaAppId"
            case start = "Start"
            case type = "Type"
            case end = "End"
        }
    }

    /// DescribeCaptchaMiniOperData返回参数结构体
    public struct DescribeCaptchaMiniOperDataResponse: TCResponse {
        /// 成功返回 0 其它失败
        public let captchaCode: Int64

        /// 返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaMsg: String?

        /// 用户操作数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CaptchaOperDataRes?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case captchaCode = "CaptchaCode"
            case captchaMsg = "CaptchaMsg"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 安全验证码小程序插件用户操作数据查询
    @inlinable
    public func describeCaptchaMiniOperData(_ input: DescribeCaptchaMiniOperDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaMiniOperDataResponse> {
        self.client.execute(action: "DescribeCaptchaMiniOperData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全验证码小程序插件用户操作数据查询
    @inlinable
    public func describeCaptchaMiniOperData(_ input: DescribeCaptchaMiniOperDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniOperDataResponse {
        try await self.client.execute(action: "DescribeCaptchaMiniOperData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全验证码小程序插件用户操作数据查询
    @inlinable
    public func describeCaptchaMiniOperData(captchaAppId: UInt64, start: UInt64, type: UInt64, end: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaMiniOperDataResponse> {
        self.describeCaptchaMiniOperData(.init(captchaAppId: captchaAppId, start: start, type: type, end: end), region: region, logger: logger, on: eventLoop)
    }

    /// 安全验证码小程序插件用户操作数据查询
    @inlinable
    public func describeCaptchaMiniOperData(captchaAppId: UInt64, start: UInt64, type: UInt64, end: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniOperDataResponse {
        try await self.describeCaptchaMiniOperData(.init(captchaAppId: captchaAppId, start: start, type: type, end: end), region: region, logger: logger, on: eventLoop)
    }
}
