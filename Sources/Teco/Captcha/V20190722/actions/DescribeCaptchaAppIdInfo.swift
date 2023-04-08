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

import TecoCore

extension Captcha {
    /// DescribeCaptchaAppIdInfo请求参数结构体
    public struct DescribeCaptchaAppIdInfoRequest: TCRequestModel {
        /// 验证码应用注册APPID
        public let captchaAppId: UInt64

        public init(captchaAppId: UInt64) {
            self.captchaAppId = captchaAppId
        }

        enum CodingKeys: String, CodingKey {
            case captchaAppId = "CaptchaAppId"
        }
    }

    /// DescribeCaptchaAppIdInfo返回参数结构体
    public struct DescribeCaptchaAppIdInfoResponse: TCResponseModel {
        /// 界面风格
        public let schemeColor: String

        /// 语言
        public let language: Int64

        /// 场景
        public let sceneType: Int64

        /// 防控风险等级
        public let evilInterceptGrade: Int64

        /// 智能验证
        public let smartVerify: Int64

        /// 智能引擎
        public let smartEngine: Int64

        /// 验证码类型
        public let capType: Int64

        /// 应用名称
        public let appName: String

        /// 域名限制
        public let domainLimit: String

        /// 邮件告警
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mailAlarm: [String]?

        /// 流量控制
        public let trafficThreshold: Int64

        /// 加密key
        public let encryptKey: String

        /// 是否全屏
        public let topFullScreen: Int64

        /// 成功返回0 其它失败
        public let captchaCode: Int64

        /// 返回操作信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case schemeColor = "SchemeColor"
            case language = "Language"
            case sceneType = "SceneType"
            case evilInterceptGrade = "EvilInterceptGrade"
            case smartVerify = "SmartVerify"
            case smartEngine = "SmartEngine"
            case capType = "CapType"
            case appName = "AppName"
            case domainLimit = "DomainLimit"
            case mailAlarm = "MailAlarm"
            case trafficThreshold = "TrafficThreshold"
            case encryptKey = "EncryptKey"
            case topFullScreen = "TopFullScreen"
            case captchaCode = "CaptchaCode"
            case captchaMsg = "CaptchaMsg"
            case requestId = "RequestId"
        }
    }

    /// 查询安全验证码应用APPId信息
    @inlinable
    public func describeCaptchaAppIdInfo(_ input: DescribeCaptchaAppIdInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaAppIdInfoResponse> {
        self.client.execute(action: "DescribeCaptchaAppIdInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全验证码应用APPId信息
    @inlinable
    public func describeCaptchaAppIdInfo(_ input: DescribeCaptchaAppIdInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaAppIdInfoResponse {
        try await self.client.execute(action: "DescribeCaptchaAppIdInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全验证码应用APPId信息
    @inlinable
    public func describeCaptchaAppIdInfo(captchaAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCaptchaAppIdInfoResponse> {
        self.describeCaptchaAppIdInfo(.init(captchaAppId: captchaAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全验证码应用APPId信息
    @inlinable
    public func describeCaptchaAppIdInfo(captchaAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaAppIdInfoResponse {
        try await self.describeCaptchaAppIdInfo(.init(captchaAppId: captchaAppId), region: region, logger: logger, on: eventLoop)
    }
}
