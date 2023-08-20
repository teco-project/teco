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

extension Essbasic {
    /// ChannelCreateUserAutoSignEnableUrl请求参数结构体
    public struct ChannelCreateUserAutoSignEnableUrlRequest: TCRequest {
        /// 渠道应用相关信息
        public let agent: Agent

        /// 自动签场景:
        /// E_PRESCRIPTION_AUTO_SIGN 电子处方
        public let sceneKey: String

        /// 操作人信息
        public let `operator`: UserInfo?

        /// 自动签开通，签署相关配置
        public let autoSignConfig: AutoSignConfig?

        /// 链接类型，空-默认小程序端链接，H5SIGN-h5端链接
        public let urlType: String?

        /// 通知类型，默认不填为不通知开通方，填写 SMS 为短信通知。
        public let notifyType: String?

        /// 若上方填写为 SMS，则此处为手机号
        public let notifyAddress: String?

        /// 链接的过期时间，格式为Unix时间戳，不能早于当前时间，且最大为30天。如果不传，默认有效期为7天。
        public let expiredTime: Int64?

        public init(agent: Agent, sceneKey: String, operator: UserInfo? = nil, autoSignConfig: AutoSignConfig? = nil, urlType: String? = nil, notifyType: String? = nil, notifyAddress: String? = nil, expiredTime: Int64? = nil) {
            self.agent = agent
            self.sceneKey = sceneKey
            self.operator = `operator`
            self.autoSignConfig = autoSignConfig
            self.urlType = urlType
            self.notifyType = notifyType
            self.notifyAddress = notifyAddress
            self.expiredTime = expiredTime
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case sceneKey = "SceneKey"
            case `operator` = "Operator"
            case autoSignConfig = "AutoSignConfig"
            case urlType = "UrlType"
            case notifyType = "NotifyType"
            case notifyAddress = "NotifyAddress"
            case expiredTime = "ExpiredTime"
        }
    }

    /// ChannelCreateUserAutoSignEnableUrl返回参数结构体
    public struct ChannelCreateUserAutoSignEnableUrlResponse: TCResponse {
        /// 跳转短链
        public let url: String

        /// 小程序AppId
        public let appId: String

        /// 小程序 原始 Id
        public let appOriginalId: String

        /// 跳转路径
        public let path: String

        /// base64格式跳转二维码
        public let qrCode: String

        /// 链接类型，空-默认小程序端链接，H5SIGN-h5端链接
        public let urlType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case appId = "AppId"
            case appOriginalId = "AppOriginalId"
            case path = "Path"
            case qrCode = "QrCode"
            case urlType = "UrlType"
            case requestId = "RequestId"
        }
    }

    /// 获取个人用户自动签开启链接
    ///
    /// 企业方可以通过此接口获取个人用户开启自动签的跳转链接
    @inlinable
    public func channelCreateUserAutoSignEnableUrl(_ input: ChannelCreateUserAutoSignEnableUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateUserAutoSignEnableUrlResponse> {
        self.client.execute(action: "ChannelCreateUserAutoSignEnableUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取个人用户自动签开启链接
    ///
    /// 企业方可以通过此接口获取个人用户开启自动签的跳转链接
    @inlinable
    public func channelCreateUserAutoSignEnableUrl(_ input: ChannelCreateUserAutoSignEnableUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateUserAutoSignEnableUrlResponse {
        try await self.client.execute(action: "ChannelCreateUserAutoSignEnableUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取个人用户自动签开启链接
    ///
    /// 企业方可以通过此接口获取个人用户开启自动签的跳转链接
    @inlinable
    public func channelCreateUserAutoSignEnableUrl(agent: Agent, sceneKey: String, operator: UserInfo? = nil, autoSignConfig: AutoSignConfig? = nil, urlType: String? = nil, notifyType: String? = nil, notifyAddress: String? = nil, expiredTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCreateUserAutoSignEnableUrlResponse> {
        self.channelCreateUserAutoSignEnableUrl(.init(agent: agent, sceneKey: sceneKey, operator: `operator`, autoSignConfig: autoSignConfig, urlType: urlType, notifyType: notifyType, notifyAddress: notifyAddress, expiredTime: expiredTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取个人用户自动签开启链接
    ///
    /// 企业方可以通过此接口获取个人用户开启自动签的跳转链接
    @inlinable
    public func channelCreateUserAutoSignEnableUrl(agent: Agent, sceneKey: String, operator: UserInfo? = nil, autoSignConfig: AutoSignConfig? = nil, urlType: String? = nil, notifyType: String? = nil, notifyAddress: String? = nil, expiredTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCreateUserAutoSignEnableUrlResponse {
        try await self.channelCreateUserAutoSignEnableUrl(.init(agent: agent, sceneKey: sceneKey, operator: `operator`, autoSignConfig: autoSignConfig, urlType: urlType, notifyType: notifyType, notifyAddress: notifyAddress, expiredTime: expiredTime), region: region, logger: logger, on: eventLoop)
    }
}