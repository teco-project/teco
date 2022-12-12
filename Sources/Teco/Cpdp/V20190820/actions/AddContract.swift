//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// AddContract请求参数结构体
    public struct AddContractRequest: TCRequestModel {
        /// 收单系统分配的开放ID
        public let openId: String
        
        /// 收单系统分配的密钥
        public let openKey: String
        
        /// 机构合同主键（系统有唯一性校验），建议使用合同表的主键ID，防止重复添加合同
        public let outContractId: String
        
        /// 合同编号（系统有唯一性校验）
        public let code: String
        
        /// 支付方式编号
        public let paymentId: String
        
        /// 支付方式行业分类编号
        public let paymentClassificationId: String
        
        /// 封顶值（分为单位，无封顶填0）
        public let paymentClassificationLimit: String
        
        /// 商户编号
        public let merchantNo: String
        
        /// 签约扣率百分比（如：0.32）
        public let fee: String
        
        /// 合同生效日期（yyyy-mm-dd）
        public let startDate: String
        
        /// 合同过期日期（yyyy-mm-dd）
        public let endDate: String
        
        /// 合同签约人
        public let signMan: String
        
        /// 签购单名称，建议使用商户招牌名称
        public let signName: String
        
        /// 合同签署日期（yyyy-mm-dd）
        public let signDate: String
        
        /// 是否自动续签（1是，0否）
        public let autoSign: String
        
        /// 联系人
        public let contact: String
        
        /// 联系人电话
        public let contactTelephone: String
        
        /// 合同照片【私密区】
        public let pictureOne: String
        
        /// 合同照片【私密区】
        public let pictureTwo: String?
        
        /// 渠道扩展字段，json格式
        public let channelExtJson: String?
        
        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?
        
        /// 合同选项1（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionOne: String?
        
        /// 合同选项2（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionTwo: String?
        
        /// 合同选项3（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionThree: String?
        
        /// 合同选项4（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionFour: String?
        
        /// 合同证书选项1（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionFive: String?
        
        /// 合同证书选项2（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionSix: String?
        
        /// 合同选项5（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionSeven: String?
        
        /// 合同选项6（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionOther: String?
        
        /// 合同选项8
        public let paymentOptionTen: String?
        
        /// 合同选项7（不同支付方式规则不一样，请以支付方式规定的格式传值）
        public let paymentOptionNine: String?
        
        public init (openId: String, openKey: String, outContractId: String, code: String, paymentId: String, paymentClassificationId: String, paymentClassificationLimit: String, merchantNo: String, fee: String, startDate: String, endDate: String, signMan: String, signName: String, signDate: String, autoSign: String, contact: String, contactTelephone: String, pictureOne: String, pictureTwo: String? = nil, channelExtJson: String? = nil, profile: String? = nil, paymentOptionOne: String? = nil, paymentOptionTwo: String? = nil, paymentOptionThree: String? = nil, paymentOptionFour: String? = nil, paymentOptionFive: String? = nil, paymentOptionSix: String? = nil, paymentOptionSeven: String? = nil, paymentOptionOther: String? = nil, paymentOptionTen: String? = nil, paymentOptionNine: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.outContractId = outContractId
            self.code = code
            self.paymentId = paymentId
            self.paymentClassificationId = paymentClassificationId
            self.paymentClassificationLimit = paymentClassificationLimit
            self.merchantNo = merchantNo
            self.fee = fee
            self.startDate = startDate
            self.endDate = endDate
            self.signMan = signMan
            self.signName = signName
            self.signDate = signDate
            self.autoSign = autoSign
            self.contact = contact
            self.contactTelephone = contactTelephone
            self.pictureOne = pictureOne
            self.pictureTwo = pictureTwo
            self.channelExtJson = channelExtJson
            self.profile = profile
            self.paymentOptionOne = paymentOptionOne
            self.paymentOptionTwo = paymentOptionTwo
            self.paymentOptionThree = paymentOptionThree
            self.paymentOptionFour = paymentOptionFour
            self.paymentOptionFive = paymentOptionFive
            self.paymentOptionSix = paymentOptionSix
            self.paymentOptionSeven = paymentOptionSeven
            self.paymentOptionOther = paymentOptionOther
            self.paymentOptionTen = paymentOptionTen
            self.paymentOptionNine = paymentOptionNine
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case outContractId = "OutContractId"
            case code = "Code"
            case paymentId = "PaymentId"
            case paymentClassificationId = "PaymentClassificationId"
            case paymentClassificationLimit = "PaymentClassificationLimit"
            case merchantNo = "MerchantNo"
            case fee = "Fee"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case signMan = "SignMan"
            case signName = "SignName"
            case signDate = "SignDate"
            case autoSign = "AutoSign"
            case contact = "Contact"
            case contactTelephone = "ContactTelephone"
            case pictureOne = "PictureOne"
            case pictureTwo = "PictureTwo"
            case channelExtJson = "ChannelExtJson"
            case profile = "Profile"
            case paymentOptionOne = "PaymentOptionOne"
            case paymentOptionTwo = "PaymentOptionTwo"
            case paymentOptionThree = "PaymentOptionThree"
            case paymentOptionFour = "PaymentOptionFour"
            case paymentOptionFive = "PaymentOptionFive"
            case paymentOptionSix = "PaymentOptionSix"
            case paymentOptionSeven = "PaymentOptionSeven"
            case paymentOptionOther = "PaymentOptionOther"
            case paymentOptionTen = "PaymentOptionTen"
            case paymentOptionNine = "PaymentOptionNine"
        }
    }
    
    /// AddContract返回参数结构体
    public struct AddContractResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 业务系统返回码
        public let errCode: String
        
        /// 添加合同响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AddContractResult?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 云支付-添加合同接口
    @inlinable
    public func addContract(_ input: AddContractRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddContractResponse > {
        self.client.execute(action: "AddContract", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云支付-添加合同接口
    @inlinable
    public func addContract(_ input: AddContractRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddContractResponse {
        try await self.client.execute(action: "AddContract", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
