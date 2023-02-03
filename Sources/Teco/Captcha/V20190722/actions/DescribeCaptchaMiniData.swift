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

extension Captcha {
    /// DescribeCaptchaMiniData请求参数结构体
    public struct DescribeCaptchaMiniDataRequest: TCRequestModel {
        /// 验证码应用ID
        public let captchaAppId: Int64

        /// 查询开始时间 例如：2019112900
        public let start: Int64

        /// 查询结束时间 例如：2019112902
        public let end: Int64

        /// 查询类型 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）
        public let type: Int64

        public init(captchaAppId: Int64, start: Int64, end: Int64, type: Int64) {
            self.captchaAppId = captchaAppId
            self.start = start
            self.end = end
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case captchaAppId = "CaptchaAppId"
            case start = "Start"
            case end = "End"
            case type = "Type"
        }
    }

    /// DescribeCaptchaMiniData返回参数结构体
    public struct DescribeCaptchaMiniDataResponse: TCResponseModel {
        /// 返回码 0 成功 其它失败
        public let captchaCode: Int64

        /// 数据数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [CaptchaQueryData]?

        /// 返回信息描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case captchaCode = "CaptchaCode"
            case data = "Data"
            case captchaMsg = "CaptchaMsg"
            case requestId = "RequestId"
        }
    }

    /// 安全验证码小程序插件分类查询数据接口
    ///
    /// 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）
    @inlinable
    public func describeCaptchaMiniData(_ input: DescribeCaptchaMiniDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaMiniDataResponse> {
        self.client.execute(action: "DescribeCaptchaMiniData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全验证码小程序插件分类查询数据接口
    ///
    /// 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）
    @inlinable
    public func describeCaptchaMiniData(_ input: DescribeCaptchaMiniDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniDataResponse {
        try await self.client.execute(action: "DescribeCaptchaMiniData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全验证码小程序插件分类查询数据接口
    ///
    /// 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）
    @inlinable
    public func describeCaptchaMiniData(captchaAppId: Int64, start: Int64, end: Int64, type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaMiniDataResponse> {
        let input = DescribeCaptchaMiniDataRequest(captchaAppId: captchaAppId, start: start, end: end, type: type)
        return self.client.execute(action: "DescribeCaptchaMiniData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全验证码小程序插件分类查询数据接口
    ///
    /// 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）
    @inlinable
    public func describeCaptchaMiniData(captchaAppId: Int64, start: Int64, end: Int64, type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniDataResponse {
        let input = DescribeCaptchaMiniDataRequest(captchaAppId: captchaAppId, start: start, end: end, type: type)
        return try await self.client.execute(action: "DescribeCaptchaMiniData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
