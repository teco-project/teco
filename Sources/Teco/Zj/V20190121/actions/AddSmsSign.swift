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

extension Zj {
    /// AddSmsSign请求参数结构体
    public struct AddSmsSignRequest: TCRequest {
        /// 商户证书
        public let license: String

        /// 签名类型。其中每种类型后面标注了其可选的 DocumentType（证明类型）：
        /// 0：公司（0，1，2，3）。
        /// 1：APP（0，1，2，3，4） 。
        /// 2：网站（0，1，2，3，5）。
        /// 3：公众号或者小程序（0，1，2，3，6）。
        /// 4：商标（7）。
        /// 5：政府/机关事业单位/其他机构（2，3）。
        /// 注：必须按照对应关系选择证明类型，否则会审核失败。
        public let signType: UInt64

        /// 证明类型：
        /// 0：三证合一。
        /// 1：企业营业执照。
        /// 2：组织机构代码证书。
        /// 3：社会信用代码证书。
        /// 4：应用后台管理截图（个人开发APP）。
        /// 5：网站备案后台截图（个人开发网站）。
        /// 6：小程序设置页面截图（个人认证小程序）。
        /// 7：商标注册书
        public let documentType: UInt64

        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        /// 资质图片url
        public let proofImage: String

        /// 签名内容
        public let signName: String

        /// 签名备注，比如申请原因，使用场景等,可以填空
        public let remark: String?

        public init(license: String, signType: UInt64, documentType: UInt64, international: UInt64, proofImage: String, signName: String, remark: String? = nil) {
            self.license = license
            self.signType = signType
            self.documentType = documentType
            self.international = international
            self.proofImage = proofImage
            self.signName = signName
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case signType = "SignType"
            case documentType = "DocumentType"
            case international = "International"
            case proofImage = "ProofImage"
            case signName = "SignName"
            case remark = "Remark"
        }
    }

    /// AddSmsSign返回参数结构体
    public struct AddSmsSignResponse: TCResponse {
        /// 签名id数组
        public let data: PaasCreateSignResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 短信签名创建接口
    ///
    /// 创建普通短信签名信息
    @inlinable
    public func addSmsSign(_ input: AddSmsSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddSmsSignResponse> {
        self.client.execute(action: "AddSmsSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 短信签名创建接口
    ///
    /// 创建普通短信签名信息
    @inlinable
    public func addSmsSign(_ input: AddSmsSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSmsSignResponse {
        try await self.client.execute(action: "AddSmsSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 短信签名创建接口
    ///
    /// 创建普通短信签名信息
    @inlinable
    public func addSmsSign(license: String, signType: UInt64, documentType: UInt64, international: UInt64, proofImage: String, signName: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddSmsSignResponse> {
        self.addSmsSign(.init(license: license, signType: signType, documentType: documentType, international: international, proofImage: proofImage, signName: signName, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 短信签名创建接口
    ///
    /// 创建普通短信签名信息
    @inlinable
    public func addSmsSign(license: String, signType: UInt64, documentType: UInt64, international: UInt64, proofImage: String, signName: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSmsSignResponse {
        try await self.addSmsSign(.init(license: license, signType: signType, documentType: documentType, international: international, proofImage: proofImage, signName: signName, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
