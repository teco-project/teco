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

extension Ess {
    /// CreateSchemeUrl请求参数结构体
    public struct CreateSchemeUrlRequest: TCRequest {
        /// 执行本接口操作的员工信息, userId 必填。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 合同流程签署方的组织机构名称。
        /// 如果名称中包含英文括号()，请使用中文括号（）代替。
        public let organizationName: String?

        /// 合同流程里边签署方经办人的姓名。
        public let name: String?

        /// 合同流程里边签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        public let mobile: String?

        /// 要跳转的链接类型
        ///
        /// - **HTTP**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型  ，此时返回长链 (默认类型)
        /// - **HTTP_SHORT_URL**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型，此时返回短链
        /// - **APP**： 第三方APP或小程序跳转电子签小程序的path,  APP或者小程序跳转适合此类型
        public let endPoint: String?

        /// 合同流程ID
        /// 注: `如果准备跳转到合同流程签署的详情页面(即PathType=1时)必传,   跳转其他页面可不传`
        public let flowId: String?

        /// 合同流程组的组ID, 在合同流程组场景下，生成合同流程组的签署链接时需要赋值
        public let flowGroupId: String?

        /// 要跳转到的页面类型
        ///
        /// - **0** : 腾讯电子签小程序个人首页 (默认)
        /// - **1** : 腾讯电子签小程序流程合同的详情页 (即合同签署页面)
        /// - **2** : 腾讯电子签小程序合同列表页
        public let pathType: UInt64?

        /// 签署完成后是否自动回跳
        ///
        /// - **false**：否, 签署完成不会自动跳转回来(默认)
        /// - **true**：是, 签署完成会自动跳转回来
        /// 注:  ` 该参数只针对"APP" 类型的签署链接有效`
        public let autoJumpBack: Bool?

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 生成的签署链接在签署页面隐藏的按钮列表，可设置如下：
        ///
        /// - **0** :合同签署页面更多操作按钮
        /// - **1** :合同签署页面更多操作的拒绝签署按钮
        /// - **2** :合同签署页面更多操作的转他人处理按钮
        /// - **3** :签署成功页的查看详情按钮
        ///
        /// 注:  `字段为数组, 可以传值隐藏多个按钮`
        public let hides: [Int64]?

        /// 签署节点ID，用于生成动态签署人链接完成领取
        public let recipientId: String?

        public init(operator: UserInfo, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, endPoint: String? = nil, flowId: String? = nil, flowGroupId: String? = nil, pathType: UInt64? = nil, autoJumpBack: Bool? = nil, agent: Agent? = nil, hides: [Int64]? = nil, recipientId: String? = nil) {
            self.operator = `operator`
            self.organizationName = organizationName
            self.name = name
            self.mobile = mobile
            self.endPoint = endPoint
            self.flowId = flowId
            self.flowGroupId = flowGroupId
            self.pathType = pathType
            self.autoJumpBack = autoJumpBack
            self.agent = agent
            self.hides = hides
            self.recipientId = recipientId
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case organizationName = "OrganizationName"
            case name = "Name"
            case mobile = "Mobile"
            case endPoint = "EndPoint"
            case flowId = "FlowId"
            case flowGroupId = "FlowGroupId"
            case pathType = "PathType"
            case autoJumpBack = "AutoJumpBack"
            case agent = "Agent"
            case hides = "Hides"
            case recipientId = "RecipientId"
        }
    }

    /// CreateSchemeUrl返回参数结构体
    public struct CreateSchemeUrlResponse: TCResponse {
        /// 腾讯电子签小程序的签署链接。
        ///
        /// - 如果EndPoint是**APP**，得到的链接类似于`pages/guide?from=default&where=mini&id=yDwJSUUirqauh***7jNSxwdirTSGuH&to=CONTRACT_DETAIL&name=&phone=&shortKey=yDw***k1xFc5`, 用法可以参加接口描述中的"跳转到小程序的实现"
        /// - 如果EndPoint是**HTTP**，得到的链接类似于 `https://res.ess.tencent.cn/cdn/h5-activity/jump-mp.html?where=mini&from=SFY&id=yDwfEUUw**4rV6Avz&to=MVP_CONTRACT_COVER&name=%E9%83%**5%86%9B`，点击后会跳转到腾讯电子签小程序进行签署
        /// - 如果EndPoint是**HTTP_SHORT_URL**，得到的链接类似于 `https://essurl.cn/2n**42Nd`，点击后会跳转到腾讯电子签小程序进行签署
        public let schemeUrl: String

        /// 二维码，在生成动态签署人跳转封面页链接时返回
        public let schemeQrcodeUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case schemeUrl = "SchemeUrl"
            case schemeQrcodeUrl = "SchemeQrcodeUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 跳转到小程序的实现，参考微信官方文档（分为[全屏](https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html)、[半屏](https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html)两种方式），如何配置也可以请参考: [跳转电子签小程序配置](https://qian.tencent.com/developers/company/openwxminiprogram)
    ///
    /// 注：
    /// `1. 如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署`
    /// `2. 签署链接的有效期为90天，超过有效期链接不可用`
    ///
    /// 其中小程序的原始Id如下，或者查看小程序信息自助获取。
    ///
    /// | 小程序 | AppID | 原始ID |
    /// | ------------ | ------------ | ------------ |
    /// | 腾讯电子签（正式版） | wxa023b292fd19d41d | gh_da88f6188665 |
    /// | 腾讯电子签Demo | wx371151823f6f3edf | gh_39a5d3de69fa |
    @inlinable
    public func createSchemeUrl(_ input: CreateSchemeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemeUrlResponse> {
        self.client.execute(action: "CreateSchemeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 跳转到小程序的实现，参考微信官方文档（分为[全屏](https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html)、[半屏](https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html)两种方式），如何配置也可以请参考: [跳转电子签小程序配置](https://qian.tencent.com/developers/company/openwxminiprogram)
    ///
    /// 注：
    /// `1. 如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署`
    /// `2. 签署链接的有效期为90天，超过有效期链接不可用`
    ///
    /// 其中小程序的原始Id如下，或者查看小程序信息自助获取。
    ///
    /// | 小程序 | AppID | 原始ID |
    /// | ------------ | ------------ | ------------ |
    /// | 腾讯电子签（正式版） | wxa023b292fd19d41d | gh_da88f6188665 |
    /// | 腾讯电子签Demo | wx371151823f6f3edf | gh_39a5d3de69fa |
    @inlinable
    public func createSchemeUrl(_ input: CreateSchemeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchemeUrlResponse {
        try await self.client.execute(action: "CreateSchemeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 跳转到小程序的实现，参考微信官方文档（分为[全屏](https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html)、[半屏](https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html)两种方式），如何配置也可以请参考: [跳转电子签小程序配置](https://qian.tencent.com/developers/company/openwxminiprogram)
    ///
    /// 注：
    /// `1. 如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署`
    /// `2. 签署链接的有效期为90天，超过有效期链接不可用`
    ///
    /// 其中小程序的原始Id如下，或者查看小程序信息自助获取。
    ///
    /// | 小程序 | AppID | 原始ID |
    /// | ------------ | ------------ | ------------ |
    /// | 腾讯电子签（正式版） | wxa023b292fd19d41d | gh_da88f6188665 |
    /// | 腾讯电子签Demo | wx371151823f6f3edf | gh_39a5d3de69fa |
    @inlinable
    public func createSchemeUrl(operator: UserInfo, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, endPoint: String? = nil, flowId: String? = nil, flowGroupId: String? = nil, pathType: UInt64? = nil, autoJumpBack: Bool? = nil, agent: Agent? = nil, hides: [Int64]? = nil, recipientId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemeUrlResponse> {
        self.createSchemeUrl(.init(operator: `operator`, organizationName: organizationName, name: name, mobile: mobile, endPoint: endPoint, flowId: flowId, flowGroupId: flowGroupId, pathType: pathType, autoJumpBack: autoJumpBack, agent: agent, hides: hides, recipientId: recipientId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 获取跳转至腾讯电子签小程序的签署链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 跳转到小程序的实现，参考微信官方文档（分为[全屏](https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html)、[半屏](https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html)两种方式），如何配置也可以请参考: [跳转电子签小程序配置](https://qian.tencent.com/developers/company/openwxminiprogram)
    ///
    /// 注：
    /// `1. 如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署`
    /// `2. 签署链接的有效期为90天，超过有效期链接不可用`
    ///
    /// 其中小程序的原始Id如下，或者查看小程序信息自助获取。
    ///
    /// | 小程序 | AppID | 原始ID |
    /// | ------------ | ------------ | ------------ |
    /// | 腾讯电子签（正式版） | wxa023b292fd19d41d | gh_da88f6188665 |
    /// | 腾讯电子签Demo | wx371151823f6f3edf | gh_39a5d3de69fa |
    @inlinable
    public func createSchemeUrl(operator: UserInfo, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, endPoint: String? = nil, flowId: String? = nil, flowGroupId: String? = nil, pathType: UInt64? = nil, autoJumpBack: Bool? = nil, agent: Agent? = nil, hides: [Int64]? = nil, recipientId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchemeUrlResponse {
        try await self.createSchemeUrl(.init(operator: `operator`, organizationName: organizationName, name: name, mobile: mobile, endPoint: endPoint, flowId: flowId, flowGroupId: flowGroupId, pathType: pathType, autoJumpBack: autoJumpBack, agent: agent, hides: hides, recipientId: recipientId), region: region, logger: logger, on: eventLoop)
    }
}
