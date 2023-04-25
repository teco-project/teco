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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// CreateSignUrls请求参数结构体
    public struct CreateSignUrlsRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 签署流程编号数组，最多支持100个。(备注：该参数和合同组编号必须二选一)
        public let flowIds: [String]?

        /// 合同组编号(备注：该参数和合同(流程)编号数组必须二选一)
        public let flowGroupId: String?

        /// 签署链接类型：“WEIXINAPP”-短链直接跳小程序；“CHANNEL”-跳转H5页面；“APP”-第三方APP或小程序跳转电子签小程序；"LONGURL2WEIXINAPP"-长链接跳转小程序；默认“WEIXINAPP”类型，即跳转至小程序；
        public let endpoint: String?

        /// 签署链接生成类型，默认是 "ALL"；
        /// "ALL"：全部签署方签署链接，此时不会给自动签署的签署方创建签署链接；
        /// "CHANNEL"：第三方平台子客企业企业；
        /// "NOT_CHANNEL"：非第三方平台子客企业企业；
        /// "PERSON"：个人；
        /// "FOLLOWER"：关注方，目前是合同抄送方；
        public let generateType: String?

        /// 非第三方平台子客企业参与方的企业名称，GenerateType为"NOT_CHANNEL"时必填
        public let organizationName: String?

        /// 参与人姓名，GenerateType为"PERSON"时必填
        public let name: String?

        /// 参与人手机号；
        /// GenerateType为"PERSON"或"FOLLOWER"时必填
        public let mobile: String?

        /// 第三方平台子客企业的企业OpenId，GenerateType为"CHANNEL"时必填
        public let organizationOpenId: String?

        /// 第三方平台子客企业参与人OpenId，GenerateType为"CHANNEL"时可用，指定到具体参与人, 仅展示已经实名的经办人信息
        public let openId: String?

        /// Endpoint为"APP" 类型的签署链接，可以设置此值；支持调用方小程序打开签署链接，在电子签小程序完成签署后自动回跳至调用方小程序
        public let autoJumpBack: Bool?

        /// 签署完之后的H5页面的跳转链接，针对Endpoint为CHANNEL时有效，最大长度1000个字符。
        public let jumpUrl: String?

        /// 暂未开放
        public let `operator`: UserInfo?

        public init(agent: Agent, flowIds: [String]? = nil, flowGroupId: String? = nil, endpoint: String? = nil, generateType: String? = nil, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, organizationOpenId: String? = nil, openId: String? = nil, autoJumpBack: Bool? = nil, jumpUrl: String? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.flowIds = flowIds
            self.flowGroupId = flowGroupId
            self.endpoint = endpoint
            self.generateType = generateType
            self.organizationName = organizationName
            self.name = name
            self.mobile = mobile
            self.organizationOpenId = organizationOpenId
            self.openId = openId
            self.autoJumpBack = autoJumpBack
            self.jumpUrl = jumpUrl
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowIds = "FlowIds"
            case flowGroupId = "FlowGroupId"
            case endpoint = "Endpoint"
            case generateType = "GenerateType"
            case organizationName = "OrganizationName"
            case name = "Name"
            case mobile = "Mobile"
            case organizationOpenId = "OrganizationOpenId"
            case openId = "OpenId"
            case autoJumpBack = "AutoJumpBack"
            case jumpUrl = "JumpUrl"
            case `operator` = "Operator"
        }
    }

    /// CreateSignUrls返回参数结构体
    public struct CreateSignUrlsResponse: TCResponseModel {
        /// 签署参与者签署H5链接信息数组
        public let signUrlInfos: [SignUrlInfo]

        /// 生成失败时的错误信息，成功返回”“，顺序和出参SignUrlInfos保持一致
        public let errorMessages: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signUrlInfos = "SignUrlInfos"
            case errorMessages = "ErrorMessages"
            case requestId = "RequestId"
        }
    }

    /// 获取跳转小程序查看或签署链接
    ///
    /// 创建跳转小程序查看或签署的链接。
    ///
    /// 跳转小程序的几种方式：主要是设置不同的EndPoint
    /// 1. 通过链接Url直接跳转到小程序，不需要返回
    /// 设置EndPoint为WEIXINAPP，得到链接打开即可。（与短信提醒用户签署形式一样）。
    ///
    /// 2. 通过链接Url打开H5引导页-->点击跳转到小程序-->签署完退出小程序-->回到H5引导页-->跳转到指定JumpUrl
    /// 设置EndPoint为CHANNEL，指定JumpUrl，得到链接打开即可。
    ///
    /// 3. 客户App直接跳转到小程序-->小程序签署完成-->返回App
    /// 跳转到小程序的实现，参考官方文档
    /// https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/launchApp.html
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    ///
    /// 4. 客户小程序直接跳到电子签小程序-->签署完成退出电子签小程序-->回到客户小程序
    /// 跳转到小程序的实现，参考官方文档（分为全屏、半屏两种方式）
    /// 全屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html）
    /// 半屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html）
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    @inlinable
    public func createSignUrls(_ input: CreateSignUrlsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignUrlsResponse> {
        self.client.execute(action: "CreateSignUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取跳转小程序查看或签署链接
    ///
    /// 创建跳转小程序查看或签署的链接。
    ///
    /// 跳转小程序的几种方式：主要是设置不同的EndPoint
    /// 1. 通过链接Url直接跳转到小程序，不需要返回
    /// 设置EndPoint为WEIXINAPP，得到链接打开即可。（与短信提醒用户签署形式一样）。
    ///
    /// 2. 通过链接Url打开H5引导页-->点击跳转到小程序-->签署完退出小程序-->回到H5引导页-->跳转到指定JumpUrl
    /// 设置EndPoint为CHANNEL，指定JumpUrl，得到链接打开即可。
    ///
    /// 3. 客户App直接跳转到小程序-->小程序签署完成-->返回App
    /// 跳转到小程序的实现，参考官方文档
    /// https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/launchApp.html
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    ///
    /// 4. 客户小程序直接跳到电子签小程序-->签署完成退出电子签小程序-->回到客户小程序
    /// 跳转到小程序的实现，参考官方文档（分为全屏、半屏两种方式）
    /// 全屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html）
    /// 半屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html）
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    @inlinable
    public func createSignUrls(_ input: CreateSignUrlsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignUrlsResponse {
        try await self.client.execute(action: "CreateSignUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取跳转小程序查看或签署链接
    ///
    /// 创建跳转小程序查看或签署的链接。
    ///
    /// 跳转小程序的几种方式：主要是设置不同的EndPoint
    /// 1. 通过链接Url直接跳转到小程序，不需要返回
    /// 设置EndPoint为WEIXINAPP，得到链接打开即可。（与短信提醒用户签署形式一样）。
    ///
    /// 2. 通过链接Url打开H5引导页-->点击跳转到小程序-->签署完退出小程序-->回到H5引导页-->跳转到指定JumpUrl
    /// 设置EndPoint为CHANNEL，指定JumpUrl，得到链接打开即可。
    ///
    /// 3. 客户App直接跳转到小程序-->小程序签署完成-->返回App
    /// 跳转到小程序的实现，参考官方文档
    /// https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/launchApp.html
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    ///
    /// 4. 客户小程序直接跳到电子签小程序-->签署完成退出电子签小程序-->回到客户小程序
    /// 跳转到小程序的实现，参考官方文档（分为全屏、半屏两种方式）
    /// 全屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html）
    /// 半屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html）
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    @inlinable
    public func createSignUrls(agent: Agent, flowIds: [String]? = nil, flowGroupId: String? = nil, endpoint: String? = nil, generateType: String? = nil, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, organizationOpenId: String? = nil, openId: String? = nil, autoJumpBack: Bool? = nil, jumpUrl: String? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignUrlsResponse> {
        self.createSignUrls(.init(agent: agent, flowIds: flowIds, flowGroupId: flowGroupId, endpoint: endpoint, generateType: generateType, organizationName: organizationName, name: name, mobile: mobile, organizationOpenId: organizationOpenId, openId: openId, autoJumpBack: autoJumpBack, jumpUrl: jumpUrl, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取跳转小程序查看或签署链接
    ///
    /// 创建跳转小程序查看或签署的链接。
    ///
    /// 跳转小程序的几种方式：主要是设置不同的EndPoint
    /// 1. 通过链接Url直接跳转到小程序，不需要返回
    /// 设置EndPoint为WEIXINAPP，得到链接打开即可。（与短信提醒用户签署形式一样）。
    ///
    /// 2. 通过链接Url打开H5引导页-->点击跳转到小程序-->签署完退出小程序-->回到H5引导页-->跳转到指定JumpUrl
    /// 设置EndPoint为CHANNEL，指定JumpUrl，得到链接打开即可。
    ///
    /// 3. 客户App直接跳转到小程序-->小程序签署完成-->返回App
    /// 跳转到小程序的实现，参考官方文档
    /// https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/launchApp.html
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    ///
    /// 4. 客户小程序直接跳到电子签小程序-->签署完成退出电子签小程序-->回到客户小程序
    /// 跳转到小程序的实现，参考官方文档（分为全屏、半屏两种方式）
    /// 全屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html）
    /// 半屏方式：
    /// （https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html）
    /// 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
    /// 使用CreateSignUrls，设置EndPoint为APP，得到path。
    @inlinable
    public func createSignUrls(agent: Agent, flowIds: [String]? = nil, flowGroupId: String? = nil, endpoint: String? = nil, generateType: String? = nil, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, organizationOpenId: String? = nil, openId: String? = nil, autoJumpBack: Bool? = nil, jumpUrl: String? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignUrlsResponse {
        try await self.createSignUrls(.init(agent: agent, flowIds: flowIds, flowGroupId: flowGroupId, endpoint: endpoint, generateType: generateType, organizationName: organizationName, name: name, mobile: mobile, organizationOpenId: organizationOpenId, openId: openId, autoJumpBack: autoJumpBack, jumpUrl: jumpUrl, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
