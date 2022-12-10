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

extension Afc {
    /// AntiFraudVipCryptoFilter– 业务入参
    public struct AntiFraudVipCryptoFilter: TCInputModel {
        /// 约定用入参，默认不涉及默认BusinessSecurityData 与BusinessCrptoData 不传
        public let cryptoType: String?
        
        /// 约定用入参，默认不涉及
        public let cryptoContent: String?
        
        public init (cryptoType: String?, cryptoContent: String?) {
            self.cryptoType = cryptoType
            self.cryptoContent = cryptoContent
        }
        
        enum CodingKeys: String, CodingKey {
            case cryptoType = "CryptoType"
            case cryptoContent = "CryptoContent"
        }
    }
    
    /// AntiFraudVipFilter– 业务入参
    public struct AntiFraudVipFilter: TCInputModel {
        /// 业务方账号 ID
        public let customerUin: String
        
        /// 业务方APPID
        public let customerAppid: String
        
        /// 身份证号
        /// 注 1：下方 idCryptoType 为指定
        /// 加密方式
        /// 注 2：若 idNumber 加密则必传加
        /// 密方式
        public let idNumber: String
        
        /// 手机号码（注：不需要带国家代码
        /// 例如：13430421011）
        /// 注 1：下方 phoneCryptoType 为
        /// 指定加密方式:
        /// 注 2：若 phoneNumber 加密则必
        /// 传加密方式
        public let phoneNumber: String
        
        /// 业务场景 ID
        public let scene: String?
        
        /// 默认不使用，业务方子
        /// 账号，若接口使用密钥对应是子账
        /// 号则必填
        public let customerSubUin: String?
        
        /// 已获取约定标识则传 1；
        /// 用于基于特定需求而传的标识字段
        /// 注：有约定则是必传，若未传则查
        /// 询接口失败
        public let authorization: String?
        
        /// 姓名
        /// 注 ：不支持加密
        public let name: String?
        
        /// 银行卡号
        public let bankCardNumber: String?
        
        /// 用户请求来源 IP
        public let userIp: String?
        
        /// 国际移动设备识别码
        public let imei: String?
        
        /// ios 系统广告标示符
        public let idfa: String?
        
        /// 用户邮箱地址
        public let emailAddress: String?
        
        /// 用户住址
        public let address: String?
        
        /// MAC 地址
        public let mac: String?
        
        /// 国际移动用户识别码
        public let imsi: String?
        
        /// 关联的腾讯帐号 QQ：1；
        /// 开放帐号微信： 2；
        public let accountType: String?
        
        /// 可选的 QQ 或微信 openid
        public let uid: String?
        
        /// qq 或微信分配给网站或应用的
        /// appid，用来唯一标识网站或应用
        public let appIdU: String?
        
        /// ＷＩＦＩＭＡＣ
        public let wifiMac: String?
        
        /// WIFI 服务集标识
        public let wifiSSID: String?
        
        /// WIFI-BSSID
        public let wifiBSSID: String?
        
        /// 拓展字段类型 ID
        /// 注：默认不填写，需要时天御侧将
        /// 提供
        public let extensionId: String?
        
        /// 拓展字段内容
        /// 注：默认不填，需要时天御侧将提
        /// 供
        public let extensionIn: String?
        
        /// 业务 ID，默认不传
        public let businessId: String?
        
        /// 身份证加密类型
        /// 0：不加密（默认值）
        /// 1：md5
        /// 2：sha256
        /// 3：SM3
        /// 注：若 idNumber 加密则必传加密
        /// 方式
        public let idCryptoType: String?
        
        /// 手机号加密类型
        /// 0：不加密（默认值）
        /// 1：md5,
        /// 2：sha256
        /// 3：SM3
        /// 注：若 phoneNumber 加密则必传
        /// 加密方式
        public let phoneCryptoType: String?
        
        /// 姓名加密类型：——注：已经不支持加
        /// 密，该字段存在是为了兼容可能历史客户
        /// 版本；
        /// 0：不加密（默认值）
        /// 1：md5
        public let nameCryptoType: String?
        
        public init (customerUin: String, customerAppid: String, idNumber: String, phoneNumber: String, scene: String?, customerSubUin: String?, authorization: String?, name: String?, bankCardNumber: String?, userIp: String?, imei: String?, idfa: String?, emailAddress: String?, address: String?, mac: String?, imsi: String?, accountType: String?, uid: String?, appIdU: String?, wifiMac: String?, wifiSSID: String?, wifiBSSID: String?, extensionId: String?, extensionIn: String?, businessId: String?, idCryptoType: String?, phoneCryptoType: String?, nameCryptoType: String?) {
            self.customerUin = customerUin
            self.customerAppid = customerAppid
            self.idNumber = idNumber
            self.phoneNumber = phoneNumber
            self.scene = scene
            self.customerSubUin = customerSubUin
            self.authorization = authorization
            self.name = name
            self.bankCardNumber = bankCardNumber
            self.userIp = userIp
            self.imei = imei
            self.idfa = idfa
            self.emailAddress = emailAddress
            self.address = address
            self.mac = mac
            self.imsi = imsi
            self.accountType = accountType
            self.uid = uid
            self.appIdU = appIdU
            self.wifiMac = wifiMac
            self.wifiSSID = wifiSSID
            self.wifiBSSID = wifiBSSID
            self.extensionId = extensionId
            self.extensionIn = extensionIn
            self.businessId = businessId
            self.idCryptoType = idCryptoType
            self.phoneCryptoType = phoneCryptoType
            self.nameCryptoType = nameCryptoType
        }
        
        enum CodingKeys: String, CodingKey {
            case customerUin = "CustomerUin"
            case customerAppid = "CustomerAppid"
            case idNumber = "IdNumber"
            case phoneNumber = "PhoneNumber"
            case scene = "Scene"
            case customerSubUin = "CustomerSubUin"
            case authorization = "Authorization"
            case name = "Name"
            case bankCardNumber = "BankCardNumber"
            case userIp = "UserIp"
            case imei = "Imei"
            case idfa = "Idfa"
            case emailAddress = "EmailAddress"
            case address = "Address"
            case mac = "Mac"
            case imsi = "Imsi"
            case accountType = "AccountType"
            case uid = "Uid"
            case appIdU = "AppIdU"
            case wifiMac = "WifiMac"
            case wifiSSID = "WifiSSID"
            case wifiBSSID = "WifiBSSID"
            case extensionId = "ExtensionId"
            case extensionIn = "ExtensionIn"
            case businessId = "BusinessId"
            case idCryptoType = "IdCryptoType"
            case phoneCryptoType = "PhoneCryptoType"
            case nameCryptoType = "NameCryptoType"
        }
    }
    
    /// 反欺诈VIP查询结果
    public struct AntiFraudVipRecord: TCOutputModel {
        /// 公共错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: String?
        
        /// 业务侧错误码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeDesc: String?
        
        /// 业务侧错误信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?
        
        /// 表示该条记录能否查到：1 为能查到；-1 为查不到，此时 RiskScore 返回-1；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let found: String?
        
        /// 表示该条记录中的身份 ID 能否查到
        /// 1 为能查到
        /// -1 为查不到
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idFound: String?
        
        /// 当可查到时，返回 0~100 区间，值越高 欺诈可
        /// 能性越大。
        /// 当查不到时（即 found=-1），返回-1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskScore: String?
        
        /// 扩展字段，对风险类型的说明。扩展字段并非必
        /// 然出现。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskInfo: [SimpleKindRiskDetail]?
        
        /// 默认出现，提供模型版本号说明及多模型返回需
        /// 要时用到；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let otherModelScores: [OtherModelScores]?
        
        /// 表示请求时间，标准 sunix 时间戳，非必然出现
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postTime: String?
        
        /// 拓展字段，非必然出现，和 ExtensionIn 对应；
        /// 注：非必然出现，需要返回时天御侧将说明；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extensionOut: String?
        
        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case codeDesc = "CodeDesc"
            case message = "Message"
            case found = "Found"
            case idFound = "IdFound"
            case riskScore = "RiskScore"
            case riskInfo = "RiskInfo"
            case otherModelScores = "OtherModelScores"
            case postTime = "PostTime"
            case extensionOut = "ExtensionOut"
        }
    }
    
    /// 扩展字段，包含多个模型的结果
    public struct OtherModelScores: TCOutputModel {
        /// 模型类型
        public let modelId: String
        
        /// 该模型评分
        public let modelScore: String
        
        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case modelScore = "ModelScore"
        }
    }
    
    /// 扩展字段，对风险类型的说明
    public struct RiskDetail: TCOutputModel {
        /// 风险码
        public let riskCode: UInt64
        
        enum CodingKeys: String, CodingKey {
            case riskCode = "RiskCode"
        }
    }
    
    /// 扩展字段，对风险类型的说明
    public struct SimpleKindRiskDetail: TCOutputModel {
        /// 风险码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCode: String?
        
        /// 风险码详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCodeValue: String?
        
        enum CodingKeys: String, CodingKey {
            case riskCode = "RiskCode"
            case riskCodeValue = "RiskCodeValue"
        }
    }
    
    /// 天御信鸽取数平台接口入参
    public struct TransportGeneralInterfaceInput: TCInputModel {
        /// 公证处请求接口名
        public let interfaceName: String?
        
        /// 公证处业务详情二层入参
        public let notarizationInput: String?
        
        /// 业务二层详情入参的哈希签名
        public let notarizationSign: String?
        
        public init (interfaceName: String?, notarizationInput: String?, notarizationSign: String?) {
            self.interfaceName = interfaceName
            self.notarizationInput = notarizationInput
            self.notarizationSign = notarizationSign
        }
        
        enum CodingKeys: String, CodingKey {
            case interfaceName = "InterfaceName"
            case notarizationInput = "NotarizationInput"
            case notarizationSign = "NotarizationSign"
        }
    }
    
    /// 天御信鸽取数平台接口出参
    public struct TransportGeneralInterfaceOutput: TCOutputModel {
        /// 错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: String?
        
        /// 回包信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?
        
        /// 公证处业务回包
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notarizationData: String?
        
        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case message = "Message"
            case notarizationData = "NotarizationData"
        }
    }
}