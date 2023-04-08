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

extension Zj {
    /// AddSmsTemplate请求参数结构体
    public struct AddSmsTemplateRequest: TCRequestModel {
        /// 商户证书
        public let license: String

        /// 短信签名，创建签名时返回
        public let signID: UInt64

        /// 模板名称
        public let templateName: String

        /// 短信内容，动态内容使用占位符{1}，{2}等表示
        public let templateContent: String

        /// 短信类型：{0:普通短信，1:营销短信}
        public let smsType: UInt64

        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        /// 短信模板标签
        public let remark: String

        /// 发送短信活动时配置的落地链接地址,仅用作短信活动
        public let urls: [String]?

        /// 发送短信活动时用于展示人群包动态参数模板占位符序号或接口发送时变量占位符序号
        public let commonParams: [Int64]?

        /// 发送短信活动时用于展示短连接模板占位符序号,仅用作短信活动
        public let urlParams: [Int64]?

        public init(license: String, signID: UInt64, templateName: String, templateContent: String, smsType: UInt64, international: UInt64, remark: String, urls: [String]? = nil, commonParams: [Int64]? = nil, urlParams: [Int64]? = nil) {
            self.license = license
            self.signID = signID
            self.templateName = templateName
            self.templateContent = templateContent
            self.smsType = smsType
            self.international = international
            self.remark = remark
            self.urls = urls
            self.commonParams = commonParams
            self.urlParams = urlParams
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case signID = "SignID"
            case templateName = "TemplateName"
            case templateContent = "TemplateContent"
            case smsType = "SmsType"
            case international = "International"
            case remark = "Remark"
            case urls = "Urls"
            case commonParams = "CommonParams"
            case urlParams = "UrlParams"
        }
    }

    /// AddSmsTemplate返回参数结构体
    public struct AddSmsTemplateResponse: TCResponseModel {
        /// 短信模板创建接口返回
        public let data: AddSmsTemplateDataStruct

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 短信模板创建接口
    ///
    /// 根据短信标题、模板内容等创建短信模板
    @inlinable
    public func addSmsTemplate(_ input: AddSmsTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddSmsTemplateResponse> {
        self.client.execute(action: "AddSmsTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 短信模板创建接口
    ///
    /// 根据短信标题、模板内容等创建短信模板
    @inlinable
    public func addSmsTemplate(_ input: AddSmsTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSmsTemplateResponse {
        try await self.client.execute(action: "AddSmsTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 短信模板创建接口
    ///
    /// 根据短信标题、模板内容等创建短信模板
    @inlinable
    public func addSmsTemplate(license: String, signID: UInt64, templateName: String, templateContent: String, smsType: UInt64, international: UInt64, remark: String, urls: [String]? = nil, commonParams: [Int64]? = nil, urlParams: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddSmsTemplateResponse> {
        self.addSmsTemplate(.init(license: license, signID: signID, templateName: templateName, templateContent: templateContent, smsType: smsType, international: international, remark: remark, urls: urls, commonParams: commonParams, urlParams: urlParams), region: region, logger: logger, on: eventLoop)
    }

    /// 短信模板创建接口
    ///
    /// 根据短信标题、模板内容等创建短信模板
    @inlinable
    public func addSmsTemplate(license: String, signID: UInt64, templateName: String, templateContent: String, smsType: UInt64, international: UInt64, remark: String, urls: [String]? = nil, commonParams: [Int64]? = nil, urlParams: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSmsTemplateResponse {
        try await self.addSmsTemplate(.init(license: license, signID: signID, templateName: templateName, templateContent: templateContent, smsType: smsType, international: international, remark: remark, urls: urls, commonParams: commonParams, urlParams: urlParams), region: region, logger: logger, on: eventLoop)
    }
}
