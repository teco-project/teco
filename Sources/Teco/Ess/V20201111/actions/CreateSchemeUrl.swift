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

extension Ess {
    /// CreateSchemeUrl请求参数结构体
    public struct CreateSchemeUrlRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 企业名称
        public let organizationName: String?

        /// 姓名,最大长度50个字符
        public let name: String?

        /// 手机号，大陆手机号11位
        public let mobile: String?

        /// 链接类型
        /// HTTP：跳转电子签小程序的http_url，
        /// APP：第三方APP或小程序跳转电子签小程序的path。
        /// 默认为HTTP类型
        public let endPoint: String?

        /// 签署流程编号 (PathType=1时必传)
        public let flowId: String?

        /// 跳转页面 1: 小程序合同详情 2: 小程序合同列表页 0: 不传, 默认主页
        public let pathType: UInt64?

        /// 是否自动回跳 true：是， false：否。该参数只针对"APP" 类型的签署链接有效
        public let autoJumpBack: Bool?

        /// 应用相关信息
        public let agent: Agent?

        public init(operator: UserInfo, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, endPoint: String? = nil, flowId: String? = nil, pathType: UInt64? = nil, autoJumpBack: Bool? = nil, agent: Agent? = nil) {
            self.operator = `operator`
            self.organizationName = organizationName
            self.name = name
            self.mobile = mobile
            self.endPoint = endPoint
            self.flowId = flowId
            self.pathType = pathType
            self.autoJumpBack = autoJumpBack
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case organizationName = "OrganizationName"
            case name = "Name"
            case mobile = "Mobile"
            case endPoint = "EndPoint"
            case flowId = "FlowId"
            case pathType = "PathType"
            case autoJumpBack = "AutoJumpBack"
            case agent = "Agent"
        }
    }

    /// CreateSchemeUrl返回参数结构体
    public struct CreateSchemeUrlResponse: TCResponseModel {
        /// 小程序链接地址
        public let schemeUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case schemeUrl = "SchemeUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取小程序跳转链接
    ///
    /// 获取小程序跳转链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 注：如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署。
    ///
    ///
    /// 跳转到小程序的实现，参考官方文档（分为<a href="https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html">全屏</a>、<a href="https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html">半屏</a>两种方式）
    ///
    ///
    /// 如您需要自主配置小程序跳转链接，请参考: <a href="https://cloud.tencent.com/document/product/1323/74774">跳转小程序链接配置说明</a>
    @inlinable
    public func createSchemeUrl(_ input: CreateSchemeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemeUrlResponse> {
        self.client.execute(action: "CreateSchemeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取小程序跳转链接
    ///
    /// 获取小程序跳转链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 注：如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署。
    ///
    ///
    /// 跳转到小程序的实现，参考官方文档（分为<a href="https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html">全屏</a>、<a href="https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html">半屏</a>两种方式）
    ///
    ///
    /// 如您需要自主配置小程序跳转链接，请参考: <a href="https://cloud.tencent.com/document/product/1323/74774">跳转小程序链接配置说明</a>
    @inlinable
    public func createSchemeUrl(_ input: CreateSchemeUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchemeUrlResponse {
        try await self.client.execute(action: "CreateSchemeUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取小程序跳转链接
    ///
    /// 获取小程序跳转链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 注：如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署。
    ///
    ///
    /// 跳转到小程序的实现，参考官方文档（分为<a href="https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html">全屏</a>、<a href="https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html">半屏</a>两种方式）
    ///
    ///
    /// 如您需要自主配置小程序跳转链接，请参考: <a href="https://cloud.tencent.com/document/product/1323/74774">跳转小程序链接配置说明</a>
    @inlinable
    public func createSchemeUrl(operator: UserInfo, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, endPoint: String? = nil, flowId: String? = nil, pathType: UInt64? = nil, autoJumpBack: Bool? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemeUrlResponse> {
        self.createSchemeUrl(CreateSchemeUrlRequest(operator: `operator`, organizationName: organizationName, name: name, mobile: mobile, endPoint: endPoint, flowId: flowId, pathType: pathType, autoJumpBack: autoJumpBack, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 获取小程序跳转链接
    ///
    /// 获取小程序跳转链接
    ///
    /// 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。
    ///
    /// 注：如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署。
    ///
    ///
    /// 跳转到小程序的实现，参考官方文档（分为<a href="https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html">全屏</a>、<a href="https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html">半屏</a>两种方式）
    ///
    ///
    /// 如您需要自主配置小程序跳转链接，请参考: <a href="https://cloud.tencent.com/document/product/1323/74774">跳转小程序链接配置说明</a>
    @inlinable
    public func createSchemeUrl(operator: UserInfo, organizationName: String? = nil, name: String? = nil, mobile: String? = nil, endPoint: String? = nil, flowId: String? = nil, pathType: UInt64? = nil, autoJumpBack: Bool? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchemeUrlResponse {
        try await self.createSchemeUrl(CreateSchemeUrlRequest(operator: `operator`, organizationName: organizationName, name: name, mobile: mobile, endPoint: endPoint, flowId: flowId, pathType: pathType, autoJumpBack: autoJumpBack, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
