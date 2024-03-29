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
    /// CreateBatchSignUrl请求参数结构体
    public struct CreateBatchSignUrlRequest: TCRequest {
        /// 执行本接口操作的员工信息。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 签署方经办人的姓名。
        /// 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        ///
        /// 注：`请确保和合同中填入的一致`
        public let name: String

        /// 手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        /// 请确认手机号所有方为此业务通知方。
        ///
        /// 注：`请确保和合同中填入的一致,  若无法保持一致，请确保在发起和生成批量签署链接时传入相同的参与方证件信息`
        public let mobile: String

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 证件类型，支持以下类型
        ///
        /// - ID_CARD : 居民身份证 (默认值)
        /// - HONGKONG_AND_MACAO : 港澳居民来往内地通行证
        /// - HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)
        ///
        /// 注：`请确保和合同中填入的一致`
        public let idCardType: String?

        /// 证件号码，应符合以下规则
        ///
        /// - 居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。
        /// - 港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。
        /// - 港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。
        ///
        /// 注：`请确保和合同中填入的一致`
        public let idCardNumber: String?

        /// 通知用户方式：
        ///
        /// - **NONE** : 不通知（默认）
        /// - **SMS** : 短信通知（发送短信通知到Mobile参数所传的手机号）
        public let notifyType: String?

        /// 本次需要批量签署的合同流程ID列表。
        /// 可以不传,  如不传则是发给对方的所有待签署合同流程。
        public let flowIds: [String]?

        /// 目标签署人的企业名称，签署人如果是企业员工身份，需要传此参数。
        ///
        /// 注：
        ///
        /// - 请确认该名称与企业营业执照中注册的名称一致。
        /// - 如果名称中包含英文括号()，请使用中文括号（）代替。
        /// - 请确保此企业已完成腾讯电子签企业认证。
        public let organizationName: String?

        /// 是否直接跳转至合同内容页面进行签署
        ///
        /// - **false**: 会跳转至批量合同流程的列表,  点击需要批量签署合同后进入合同内容页面进行签署(默认)
        /// - **true**: 跳过合同流程列表, 直接进入合同内容页面进行签署
        public let jumpToDetail: Bool?

        public init(operator: UserInfo, name: String, mobile: String, agent: Agent? = nil, idCardType: String? = nil, idCardNumber: String? = nil, notifyType: String? = nil, flowIds: [String]? = nil, organizationName: String? = nil, jumpToDetail: Bool? = nil) {
            self.operator = `operator`
            self.name = name
            self.mobile = mobile
            self.agent = agent
            self.idCardType = idCardType
            self.idCardNumber = idCardNumber
            self.notifyType = notifyType
            self.flowIds = flowIds
            self.organizationName = organizationName
            self.jumpToDetail = jumpToDetail
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case name = "Name"
            case mobile = "Mobile"
            case agent = "Agent"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case notifyType = "NotifyType"
            case flowIds = "FlowIds"
            case organizationName = "OrganizationName"
            case jumpToDetail = "JumpToDetail"
        }
    }

    /// CreateBatchSignUrl返回参数结构体
    public struct CreateBatchSignUrlResponse: TCResponse {
        /// 批量签署链接，以短链形式返回，短链的有效期参考回参中的 ExpiredTime。
        ///
        /// 注: `非小程序和APP集成使用`
        public let signUrl: String

        /// 链接过期时间以 Unix 时间戳格式表示，默认生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
        public let expiredTime: Int64

        /// 从客户小程序或者客户APP跳转至腾讯电子签小程序进行批量签署的跳转路径
        ///
        /// 注: `小程序和APP集成使用`
        public let miniAppPath: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signUrl = "SignUrl"
            case expiredTime = "ExpiredTime"
            case miniAppPath = "MiniAppPath"
            case requestId = "RequestId"
        }
    }

    /// 获取跳转至腾讯电子签小程序的批量签署链接
    ///
    /// 通过此接口，创建小程序批量签署链接，个人/企业员工点击此链接即可跳转小程序进行批量签署。
    /// 请确保生成链接时候的身份信息和签署合同参与方的信息保持一致。
    ///
    /// 注：
    /// - 参与人点击链接后需短信验证码才能查看合同内容。
    /// - 企业用户批量签署，需要传OrganizationName（参与方所在企业名称）参数生成签署链接，`请确保此企业已完成腾讯电子签企业认证`。
    /// - 个人批量签署，签名区`仅支持手写签名`。
    @inlinable
    public func createBatchSignUrl(_ input: CreateBatchSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchSignUrlResponse> {
        self.client.execute(action: "CreateBatchSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取跳转至腾讯电子签小程序的批量签署链接
    ///
    /// 通过此接口，创建小程序批量签署链接，个人/企业员工点击此链接即可跳转小程序进行批量签署。
    /// 请确保生成链接时候的身份信息和签署合同参与方的信息保持一致。
    ///
    /// 注：
    /// - 参与人点击链接后需短信验证码才能查看合同内容。
    /// - 企业用户批量签署，需要传OrganizationName（参与方所在企业名称）参数生成签署链接，`请确保此企业已完成腾讯电子签企业认证`。
    /// - 个人批量签署，签名区`仅支持手写签名`。
    @inlinable
    public func createBatchSignUrl(_ input: CreateBatchSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchSignUrlResponse {
        try await self.client.execute(action: "CreateBatchSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取跳转至腾讯电子签小程序的批量签署链接
    ///
    /// 通过此接口，创建小程序批量签署链接，个人/企业员工点击此链接即可跳转小程序进行批量签署。
    /// 请确保生成链接时候的身份信息和签署合同参与方的信息保持一致。
    ///
    /// 注：
    /// - 参与人点击链接后需短信验证码才能查看合同内容。
    /// - 企业用户批量签署，需要传OrganizationName（参与方所在企业名称）参数生成签署链接，`请确保此企业已完成腾讯电子签企业认证`。
    /// - 个人批量签署，签名区`仅支持手写签名`。
    @inlinable
    public func createBatchSignUrl(operator: UserInfo, name: String, mobile: String, agent: Agent? = nil, idCardType: String? = nil, idCardNumber: String? = nil, notifyType: String? = nil, flowIds: [String]? = nil, organizationName: String? = nil, jumpToDetail: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchSignUrlResponse> {
        self.createBatchSignUrl(.init(operator: `operator`, name: name, mobile: mobile, agent: agent, idCardType: idCardType, idCardNumber: idCardNumber, notifyType: notifyType, flowIds: flowIds, organizationName: organizationName, jumpToDetail: jumpToDetail), region: region, logger: logger, on: eventLoop)
    }

    /// 获取跳转至腾讯电子签小程序的批量签署链接
    ///
    /// 通过此接口，创建小程序批量签署链接，个人/企业员工点击此链接即可跳转小程序进行批量签署。
    /// 请确保生成链接时候的身份信息和签署合同参与方的信息保持一致。
    ///
    /// 注：
    /// - 参与人点击链接后需短信验证码才能查看合同内容。
    /// - 企业用户批量签署，需要传OrganizationName（参与方所在企业名称）参数生成签署链接，`请确保此企业已完成腾讯电子签企业认证`。
    /// - 个人批量签署，签名区`仅支持手写签名`。
    @inlinable
    public func createBatchSignUrl(operator: UserInfo, name: String, mobile: String, agent: Agent? = nil, idCardType: String? = nil, idCardNumber: String? = nil, notifyType: String? = nil, flowIds: [String]? = nil, organizationName: String? = nil, jumpToDetail: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchSignUrlResponse {
        try await self.createBatchSignUrl(.init(operator: `operator`, name: name, mobile: mobile, agent: agent, idCardType: idCardType, idCardNumber: idCardNumber, notifyType: notifyType, flowIds: flowIds, organizationName: organizationName, jumpToDetail: jumpToDetail), region: region, logger: logger, on: eventLoop)
    }
}
