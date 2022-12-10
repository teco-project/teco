//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Sms {
    /// 修改短信签名
    ///
    /// 1. 修改短信签名，修改之前请先认证参阅 [腾讯云短信签名审核标准](https://cloud.tencent.com/document/product/382/39022)。
    /// 2. ⚠️注意：个人认证用户不支持使用 API 修改短信签名，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)，如果为个人认证请登录 [控制台](https://console.cloud.tencent.com/smsv2) 修改短信签名。
    /// 3. 修改短信签名，仅当签名为**待审核**或**已拒绝**状态时，才能进行修改，**已审核通过**的签名不支持修改。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func modifySmsSign(_ input: ModifySmsSignRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySmsSignResponse > {
        self.client.execute(action: "ModifySmsSign", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改短信签名
    ///
    /// 1. 修改短信签名，修改之前请先认证参阅 [腾讯云短信签名审核标准](https://cloud.tencent.com/document/product/382/39022)。
    /// 2. ⚠️注意：个人认证用户不支持使用 API 修改短信签名，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)，如果为个人认证请登录 [控制台](https://console.cloud.tencent.com/smsv2) 修改短信签名。
    /// 3. 修改短信签名，仅当签名为**待审核**或**已拒绝**状态时，才能进行修改，**已审核通过**的签名不支持修改。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func modifySmsSign(_ input: ModifySmsSignRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySmsSignResponse {
        try await self.client.execute(action: "ModifySmsSign", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySmsSign请求参数结构体
    public struct ModifySmsSignRequest: TCRequestModel {
        /// 待修改的签名 ID。
        public let signId: UInt64
        
        /// 签名名称。
        public let signName: String
        
        /// 签名类型。其中每种类型后面标注了其可选的 DocumentType（证明类型）：
        /// 0：公司，可选 DocumentType 有（0，1）。
        /// 1：APP，可选 DocumentType 有（0，1，2，3，4） 。
        /// 2：网站，可选 DocumentType 有（0，1，2，3，5）。
        /// 3：公众号，可选 DocumentType 有（0，1，2，3，8）。
        /// 4：商标，可选 DocumentType 有（7）。
        /// 5：政府/机关事业单位/其他机构，可选 DocumentType 有（2，3）。
        /// 6：小程序，可选 DocumentType 有（0，1，2，3，6）。
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
        /// 7：商标注册书。
        /// 8：公众号设置页面截图（个人认证公众号）。
        public let documentType: UInt64
        
        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        /// 注：需要和待修改签名International值保持一致，该参数不能直接修改国内签名到国际签名。
        public let international: UInt64
        
        /// 签名用途：
        /// 0：自用。
        /// 1：他用。
        public let signPurpose: UInt64
        
        /// 签名对应的资质证明图片需先进行 base64 编码格式转换，将转换后的字符串去掉前缀`data:image/jpeg;base64,`再赋值给该参数。
        public let proofImage: String
        
        /// 委托授权证明。选择 SignPurpose 为他用之后需要提交委托的授权证明。
        /// 图片需先进行 base64 编码格式转换，将转换后的字符串去掉前缀`data:image/jpeg;base64,`再赋值给该参数。
        /// 注：只有 SignPurpose 在选择为 1（他用）时，这个字段才会生效。
        public let commissionImage: String?
        
        /// 签名的申请备注。
        public let remark: String?
        
        public init (signId: UInt64, signName: String, signType: UInt64, documentType: UInt64, international: UInt64, signPurpose: UInt64, proofImage: String, commissionImage: String?, remark: String?) {
            self.signId = signId
            self.signName = signName
            self.signType = signType
            self.documentType = documentType
            self.international = international
            self.signPurpose = signPurpose
            self.proofImage = proofImage
            self.commissionImage = commissionImage
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case signId = "SignId"
            case signName = "SignName"
            case signType = "SignType"
            case documentType = "DocumentType"
            case international = "International"
            case signPurpose = "SignPurpose"
            case proofImage = "ProofImage"
            case commissionImage = "CommissionImage"
            case remark = "Remark"
        }
    }
    
    /// ModifySmsSign返回参数结构体
    public struct ModifySmsSignResponse: TCResponseModel {
        /// 修改签名响应
        public let modifySignStatus: ModifySignStatus
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case modifySignStatus = "ModifySignStatus"
            case requestId = "RequestId"
        }
    }
}