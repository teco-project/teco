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

extension Essbasic {
    /// CreateConsoleLoginUrl请求参数结构体
    public struct CreateConsoleLoginUrlRequest: TCRequestModel {
        /// 应用信息
        /// 此接口Agent.AppId、Agent.ProxyOrganizationOpenId 和 Agent. ProxyOperator.OpenId 必填
        public let agent: Agent

        /// 渠道子客企业名称，最大长度64个字符
        public let proxyOrganizationName: String

        /// 渠道子客企业经办人的姓名，最大长度50个字符
        public let proxyOperatorName: String?

        /// PC控制台指定模块，文件/合同管理:"DOCUMENT"，模板管理:"TEMPLATE"，印章管理:"SEAL"，组织架构/人员:"OPERATOR"，空字符串："账号信息"。 EndPoint为"CHANNEL"/"APP"只支持"SEAL"-印章管理
        public let module: String?

        /// 控制台指定模块Id
        public let moduleId: String?

        /// 渠道子客企业统一社会信用代码，最大长度200个字符
        public let uniformSocialCreditCode: String?

        /// 是否展示左侧菜单栏 是：ENABLE（默认） 否：DISABLE
        public let menuStatus: String?

        /// 链接跳转类型："PC"-PC控制台，“CHANNEL”-H5跳转到电子签小程序；“APP”-第三方APP或小程序跳转电子签小程序，默认为PC控制台
        public let endpoint: String?

        /// 触发自动跳转事件，仅对App类型有效，"VERIFIED":企业认证完成/员工认证完成后跳回原App/小程序
        public let autoJumpBackEvent: String?

        /// 操作者的信息
        public let `operator`: UserInfo?

        /// 支持的授权方式,授权方式: "1" - 上传授权书认证  "2" - 法定代表人认证
        public let authorizationTypes: [Int64]?

        public init(agent: Agent, proxyOrganizationName: String, proxyOperatorName: String? = nil, module: String? = nil, moduleId: String? = nil, uniformSocialCreditCode: String? = nil, menuStatus: String? = nil, endpoint: String? = nil, autoJumpBackEvent: String? = nil, operator: UserInfo? = nil, authorizationTypes: [Int64]? = nil) {
            self.agent = agent
            self.proxyOrganizationName = proxyOrganizationName
            self.proxyOperatorName = proxyOperatorName
            self.module = module
            self.moduleId = moduleId
            self.uniformSocialCreditCode = uniformSocialCreditCode
            self.menuStatus = menuStatus
            self.endpoint = endpoint
            self.autoJumpBackEvent = autoJumpBackEvent
            self.`operator` = `operator`
            self.authorizationTypes = authorizationTypes
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case proxyOrganizationName = "ProxyOrganizationName"
            case proxyOperatorName = "ProxyOperatorName"
            case module = "Module"
            case moduleId = "ModuleId"
            case uniformSocialCreditCode = "UniformSocialCreditCode"
            case menuStatus = "MenuStatus"
            case endpoint = "Endpoint"
            case autoJumpBackEvent = "AutoJumpBackEvent"
            case `operator` = "Operator"
            case authorizationTypes = "AuthorizationTypes"
        }
    }

    /// CreateConsoleLoginUrl返回参数结构体
    public struct CreateConsoleLoginUrlResponse: TCResponseModel {
        /// 子客Web控制台url注意事项：
        /// 1. 所有类型的链接在企业未认证/员工未认证完成时，只要在有效期内（一年）都可以访问
        /// 2. 若企业认证完成且员工认证完成后，重新获取pc端的链接5分钟之内有效，且只能访问一次
        /// 3. 若企业认证完成且员工认证完成后，重新获取H5/APP的链接只要在有效期内（一年）都可以访问
        /// 4. 此链接仅单次有效，使用后需要再次创建新的链接（部分聊天软件，如企业微信默认会对链接进行解析，此时需要使用类似“代码片段”的方式或者放到txt文件里发送链接）
        /// 5. 创建的链接应避免被转义，如：&被转义为\u0026；如使用Postman请求后，请选择响应类型为 JSON，否则链接将被转义
        public let consoleUrl: String

        /// 渠道子客企业是否已开通腾讯电子签
        public let isActivated: Bool

        /// 当前经办人是否已认证（false:未认证 true:已认证）
        public let proxyOperatorIsVerified: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case consoleUrl = "ConsoleUrl"
            case isActivated = "IsActivated"
            case proxyOperatorIsVerified = "ProxyOperatorIsVerified"
            case requestId = "RequestId"
        }
    }

    /// 生成控制台、移动端链接
    ///
    /// 此接口（CreateConsoleLoginUrl）用于创建渠道子客企业控制台Web/移动登录链接。登录链接是子客控制台的唯一入口。
    /// 若子客企业未激活，会进入企业激活流程，首次参与激活流程的经办人会成为超管。（若企业激活过程中填写信息有误，需要重置激活流程，可以换一个经办人OpenId获取新的链接进入。）
    /// 若子客企业已激活，使用了新的经办人OpenId进入，则会进入经办人的实名流程。
    /// 若子客企业、经办人均已完成认证，则会直接进入子客Web控制台。
    @inlinable
    public func createConsoleLoginUrl(_ input: CreateConsoleLoginUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConsoleLoginUrlResponse> {
        self.client.execute(action: "CreateConsoleLoginUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成控制台、移动端链接
    ///
    /// 此接口（CreateConsoleLoginUrl）用于创建渠道子客企业控制台Web/移动登录链接。登录链接是子客控制台的唯一入口。
    /// 若子客企业未激活，会进入企业激活流程，首次参与激活流程的经办人会成为超管。（若企业激活过程中填写信息有误，需要重置激活流程，可以换一个经办人OpenId获取新的链接进入。）
    /// 若子客企业已激活，使用了新的经办人OpenId进入，则会进入经办人的实名流程。
    /// 若子客企业、经办人均已完成认证，则会直接进入子客Web控制台。
    @inlinable
    public func createConsoleLoginUrl(_ input: CreateConsoleLoginUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConsoleLoginUrlResponse {
        try await self.client.execute(action: "CreateConsoleLoginUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成控制台、移动端链接
    ///
    /// 此接口（CreateConsoleLoginUrl）用于创建渠道子客企业控制台Web/移动登录链接。登录链接是子客控制台的唯一入口。
    /// 若子客企业未激活，会进入企业激活流程，首次参与激活流程的经办人会成为超管。（若企业激活过程中填写信息有误，需要重置激活流程，可以换一个经办人OpenId获取新的链接进入。）
    /// 若子客企业已激活，使用了新的经办人OpenId进入，则会进入经办人的实名流程。
    /// 若子客企业、经办人均已完成认证，则会直接进入子客Web控制台。
    @inlinable
    public func createConsoleLoginUrl(agent: Agent, proxyOrganizationName: String, proxyOperatorName: String? = nil, module: String? = nil, moduleId: String? = nil, uniformSocialCreditCode: String? = nil, menuStatus: String? = nil, endpoint: String? = nil, autoJumpBackEvent: String? = nil, operator: UserInfo? = nil, authorizationTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConsoleLoginUrlResponse> {
        self.createConsoleLoginUrl(CreateConsoleLoginUrlRequest(agent: agent, proxyOrganizationName: proxyOrganizationName, proxyOperatorName: proxyOperatorName, module: module, moduleId: moduleId, uniformSocialCreditCode: uniformSocialCreditCode, menuStatus: menuStatus, endpoint: endpoint, autoJumpBackEvent: autoJumpBackEvent, operator: `operator`, authorizationTypes: authorizationTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 生成控制台、移动端链接
    ///
    /// 此接口（CreateConsoleLoginUrl）用于创建渠道子客企业控制台Web/移动登录链接。登录链接是子客控制台的唯一入口。
    /// 若子客企业未激活，会进入企业激活流程，首次参与激活流程的经办人会成为超管。（若企业激活过程中填写信息有误，需要重置激活流程，可以换一个经办人OpenId获取新的链接进入。）
    /// 若子客企业已激活，使用了新的经办人OpenId进入，则会进入经办人的实名流程。
    /// 若子客企业、经办人均已完成认证，则会直接进入子客Web控制台。
    @inlinable
    public func createConsoleLoginUrl(agent: Agent, proxyOrganizationName: String, proxyOperatorName: String? = nil, module: String? = nil, moduleId: String? = nil, uniformSocialCreditCode: String? = nil, menuStatus: String? = nil, endpoint: String? = nil, autoJumpBackEvent: String? = nil, operator: UserInfo? = nil, authorizationTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConsoleLoginUrlResponse {
        try await self.createConsoleLoginUrl(CreateConsoleLoginUrlRequest(agent: agent, proxyOrganizationName: proxyOrganizationName, proxyOperatorName: proxyOperatorName, module: module, moduleId: moduleId, uniformSocialCreditCode: uniformSocialCreditCode, menuStatus: menuStatus, endpoint: endpoint, autoJumpBackEvent: autoJumpBackEvent, operator: `operator`, authorizationTypes: authorizationTypes), region: region, logger: logger, on: eventLoop)
    }
}
