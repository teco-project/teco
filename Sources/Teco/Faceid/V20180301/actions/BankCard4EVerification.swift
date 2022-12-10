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

extension Faceid {
    /// 银行卡四要素核验
    ///
    /// 本接口用于输入银行卡号、姓名、开户证件号、开户手机号，校验信息的真实性和一致性。
    @inlinable
    public func bankCard4EVerification(_ input: BankCard4EVerificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BankCard4EVerificationResponse > {
        self.client.execute(action: "BankCard4EVerification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 银行卡四要素核验
    ///
    /// 本接口用于输入银行卡号、姓名、开户证件号、开户手机号，校验信息的真实性和一致性。
    @inlinable
    public func bankCard4EVerification(_ input: BankCard4EVerificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BankCard4EVerificationResponse {
        try await self.client.execute(action: "BankCard4EVerification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BankCard4EVerification请求参数结构体
    public struct BankCard4EVerificationRequest: TCRequestModel {
        /// 姓名
        public let name: String
        
        /// 银行卡
        public let bankCard: String
        
        /// 手机号码
        public let phone: String
        
        /// 开户证件号，与CertType参数的证件类型一致，如：身份证，则传入身份证号。
        public let idCard: String
        
        /// 证件类型，请确认该证件为开户时使用的证件类型，未用于开户的证件信息不支持验证。
        /// 目前默认为0：身份证，其他证件类型暂不支持。
        public let certType: Int64?
        
        /// 敏感数据加密信息。对传入信息（姓名、身份证号、手机号、银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption
        
        public init (name: String, bankCard: String, phone: String, idCard: String, certType: Int64?, encryption: Encryption) {
            self.name = name
            self.bankCard = bankCard
            self.phone = phone
            self.idCard = idCard
            self.certType = certType
            self.encryption = encryption
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case bankCard = "BankCard"
            case phone = "Phone"
            case idCard = "IdCard"
            case certType = "CertType"
            case encryption = "Encryption"
        }
    }
    
    /// BankCard4EVerification返回参数结构体
    public struct BankCard4EVerificationResponse: TCResponseModel {
        /// 认证结果码
        /// 收费结果码：
        /// '0': '认证通过'
        /// '-1': '认证未通过'
        /// '-6': '持卡人信息有误'
        /// '-7': '未开通无卡支付'
        /// '-8': '此卡被没收'
        /// '-9': '无效卡号'
        /// '-10': '此卡无对应发卡行'
        /// '-11': '该卡未初始化或睡眠卡'
        /// '-12': '作弊卡、吞卡'
        /// '-13': '此卡已挂失'
        /// '-14': '该卡已过期'
        /// '-15': '受限制的卡'
        /// '-16': '密码错误次数超限'
        /// '-17': '发卡行不支持此交易'
        /// 不收费结果码：
        /// '-2': '姓名校验不通过'
        /// '-3': '身份证号码有误'
        /// '-4': '银行卡号码有误'
        /// '-5': '手机号码不合法'
        /// '-18': '验证中心服务繁忙'
        public let result: String
        
        /// 业务结果描述。
        public let description: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }
}
