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

extension Trp {
    /// 通用属性
    ///
    /// Type 的枚举值
    /// text:文本类型, longtext:长文本类型, banner:单图片类型, image:多图片类型, video:视频类型, mp:小程序类型
    ///
    /// 具体组合如下
    /// - Type: "text" 文本类型, 对应值 Value: "文本字符串"
    /// - Type: "longtext" 长文本类型, 对应值 Value: "长文本字符串, 支持换行\n"
    /// - Type: "banner" 单图片类型, 对应图片地址 Value: "https://sample.cdn.com/xxx.jpg"
    /// - Type: "image" 多图片类型, 对应图片地址 Values: ["https://sample.cdn.com/1.jpg", "https://sample.cdn.com/2.jpg"]
    /// - Type: "video" 视频类型, 对应视频地址 Value: "https://sample.cdn.com/xxx.mp4"
    /// - Type: "mp" 小程序类型, 对应配置 Values: ["WXAPPID", "WXAPP_PATH", "跳转说明"]
    public struct AttrItem: TCInputModel, TCOutputModel {
        /// 字段名称
        public let name: String

        /// 字段值
        public let value: String

        /// 字段类型
        /// text:文本类型,
        /// longtext:长文本类型, banner:单图片类型, image:多图片类型,
        /// video:视频类型,
        /// mp:小程序类型
        public let type: String

        /// 只读
        public let readOnly: Bool

        /// 扫码展示
        public let hidden: Bool

        /// 多个值
        public let values: [String]

        /// 类型标识
        public let key: String

        /// 扩展字段
        public let ext: String

        public init(name: String, value: String, type: String, readOnly: Bool, hidden: Bool, values: [String], key: String, ext: String) {
            self.name = name
            self.value = value
            self.type = type
            self.readOnly = readOnly
            self.hidden = hidden
            self.values = values
            self.key = key
            self.ext = ext
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
            case type = "Type"
            case readOnly = "ReadOnly"
            case hidden = "Hidden"
            case values = "Values"
            case key = "Key"
            case ext = "Ext"
        }
    }

    /// 上链数据
    public struct ChainData: TCInputModel, TCOutputModel {
        /// 区块hash
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockHash: String?

        /// 区块高度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockHeight: String?

        /// 区块时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockTime: String?

        public init(blockHash: String? = nil, blockHeight: String? = nil, blockTime: String? = nil) {
            self.blockHash = blockHash
            self.blockHeight = blockHeight
            self.blockTime = blockTime
        }

        enum CodingKeys: String, CodingKey {
            case blockHash = "BlockHash"
            case blockHeight = "BlockHeight"
            case blockTime = "BlockTime"
        }
    }

    /// 批次
    public struct CodeBatch: TCOutputModel {
        /// 批次号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchId: String?

        /// 企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: Int64?

        /// 批次编码(未使用)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchCode: String?

        /// 码数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeCnt: Int64?

        /// 所属商户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantId: String?

        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        /// 批次类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchType: Int64?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 微信模板
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mpTpl: String?

        /// 批次状态 0: 未激活 1: 已激活 -1: 已冻结
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 所属商户名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantName: String?

        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        /// 未使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ext: Ext?

        /// 模板名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tplName: String?

        /// 调度任务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let job: Job?

        /// 生产日期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productionDate: String?

        /// 有效期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let validDate: String?

        /// 扩展属性
        public let attrs: [AttrItem]?

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case corpId = "CorpId"
            case batchCode = "BatchCode"
            case codeCnt = "CodeCnt"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case batchType = "BatchType"
            case remark = "Remark"
            case mpTpl = "MpTpl"
            case status = "Status"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case merchantName = "MerchantName"
            case productName = "ProductName"
            case ext = "Ext"
            case tplName = "TplName"
            case job = "Job"
            case productionDate = "ProductionDate"
            case validDate = "ValidDate"
            case attrs = "Attrs"
        }
    }

    /// 码类型
    public struct CodeItem: TCInputModel, TCOutputModel {
        public let code: String?

        public init(code: String? = nil) {
            self.code = code
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
        }
    }

    /// 码包类型
    public struct CodePack: TCOutputModel {
        /// 码id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packId: String?

        /// 企业id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: Int64?

        /// 商户id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantId: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 制码状态 init: 初始化, pending: 执行中, done: 完成, error: 失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 执行日志
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let log: String?

        /// 创建人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUser: String?

        /// 码数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let amount: Int64?

        /// 防伪码长度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeLength: Int64?

        /// 码类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeType: String?

        /// 是否暗码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cipher: Int64?

        /// [弃用] 文字码地址，通过另一个接口查
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textUrl: String?

        /// [弃用] 二维码地址，通过另一个接口查
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packUrl: String?

        /// 商户名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantName: String?

        /// 码规则类型 0: 默认, 1: 自定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleType: Int64?

        /// 自定义码规则ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customId: String?

        /// 码包类型 0: 普通码包 1: 层级码包
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packType: Int64?

        /// 生码层级
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packLevel: UInt64?

        /// 层级码配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packSpec: [PackSpec]?

        enum CodingKeys: String, CodingKey {
            case packId = "PackId"
            case corpId = "CorpId"
            case merchantId = "MerchantId"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case status = "Status"
            case log = "Log"
            case createUser = "CreateUser"
            case amount = "Amount"
            case codeLength = "CodeLength"
            case codeType = "CodeType"
            case cipher = "Cipher"
            case textUrl = "TextUrl"
            case packUrl = "PackUrl"
            case merchantName = "MerchantName"
            case ruleType = "RuleType"
            case customId = "CustomId"
            case packType = "PackType"
            case packLevel = "PackLevel"
            case packSpec = "PackSpec"
        }
    }

    /// 码段配置
    public struct CodePart: TCOutputModel {
        /// 码段名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 码段类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 码段内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?

        /// 码段长度
        public let length: UInt64

        /// 扩展字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ext: String?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
            case value = "Value"
            case length = "Length"
            case ext = "Ext"
        }
    }

    /// 渠道商的子企业额度使用情况
    public struct CorpQuota: TCOutputModel {
        /// 企业ID
        public let corpId: UInt64

        /// 企业名称
        public let corpName: String

        /// 额度
        public let quota: Quota

        /// 额度使用量
        public let usageQuota: UsageQuota

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case corpName = "CorpName"
            case quota = "Quota"
            case usageQuota = "UsageQuota"
        }
    }

    /// 码规则
    public struct CustomRule: TCOutputModel {
        /// 码规则ID
        public let customId: String

        /// 码规则名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: UInt64?

        /// 商户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantId: String?

        /// 码ID长度
        public let codeLength: UInt64

        /// 规则状态
        public let status: Int64

        /// 码段配置
        public let codeParts: [CodePart]

        /// 创建时间
        public let createTime: String

        /// 更新时间
        public let updateTime: String

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case name = "Name"
            case corpId = "CorpId"
            case merchantId = "MerchantId"
            case codeLength = "CodeLength"
            case status = "Status"
            case codeParts = "CodeParts"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 预留字段
    public struct Ext: TCOutputModel {
    }

    /// 业务加密入参
    public struct InputEncryptData: TCInputModel {
        /// 加密方式，0：AES加密；
        public let encryptMethod: Int64

        /// 加密算法中的块处理模式，1：CBC模式； 目前只支持CBC模式
        public let encryptMode: Int64

        /// 填充模式，0：ZeroPadding；1：PKCS5Padding；2：
        /// PKCS7Padding。
        public let paddingType: Int64

        /// 加密数据，将AuthorizedData结构体数组（数组最大长度不超过20）序列化成JSON字符串，对得到的字符串加密并填充到该字段。
        public let encryptData: String

        /// 用户是否授权，本接口取值：1，已授权。
        public let isAuthorized: Int64?

        public init(encryptMethod: Int64, encryptMode: Int64, paddingType: Int64, encryptData: String, isAuthorized: Int64? = nil) {
            self.encryptMethod = encryptMethod
            self.encryptMode = encryptMode
            self.paddingType = paddingType
            self.encryptData = encryptData
            self.isAuthorized = isAuthorized
        }

        enum CodingKeys: String, CodingKey {
            case encryptMethod = "EncryptMethod"
            case encryptMode = "EncryptMode"
            case paddingType = "PaddingType"
            case encryptData = "EncryptData"
            case isAuthorized = "IsAuthorized"
        }
    }

    /// 通用调度任务
    public struct Job: TCOutputModel {
        /// 调度ID
        public let jobId: Int64

        /// 执行状态 init:初始化, pending: 执行中, done: 执行成功, error: 执行失败
        public let status: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case status = "Status"
        }
    }

    /// 商户信息
    public struct Merchant: TCOutputModel {
        /// 商户标识码
        public let merchantId: String

        /// 企业id
        public let corpId: Int64

        /// 商户名称
        public let name: String

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 创建时间
        public let createTime: String

        /// 更新时间
        public let updateTime: String

        /// 商户码规则
        public let codeRule: String

        /// 码来源类型 0: 安心平台 1: 第三方码
        public let codeType: Int64

        /// 第三方码域名前缀
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeUrl: String?

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case corpId = "CorpId"
            case name = "Name"
            case remark = "Remark"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case codeRule = "CodeRule"
            case codeType = "CodeType"
            case codeUrl = "CodeUrl"
        }
    }

    /// 业务出参
    public struct OutputAuthorizedTransfer: TCOutputModel {
        /// 推送状态，0表示成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: Int64?

        /// 错误码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 错误信息描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case message = "Message"
            case value = "Value"
        }
    }

    /// 层级码配置
    public struct PackSpec: TCInputModel, TCOutputModel {
        /// 层级
        public let level: UInt64

        /// 比例
        public let rate: UInt64

        /// 数量
        public let amount: UInt64

        /// 码规则ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customId: String?

        /// 码段配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeParts: [CodePart]?

        public init(level: UInt64, rate: UInt64, amount: UInt64, customId: String? = nil, codeParts: [CodePart]? = nil) {
            self.level = level
            self.rate = rate
            self.amount = amount
            self.customId = customId
            self.codeParts = codeParts
        }

        enum CodingKeys: String, CodingKey {
            case level = "Level"
            case rate = "Rate"
            case amount = "Amount"
            case customId = "CustomId"
            case codeParts = "CodeParts"
        }
    }

    /// 环节数据
    public struct PhaseData: TCInputModel, TCOutputModel {
        /// 启用头
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let headEnabled: Bool?

        /// 标题
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let headTitle: String?

        /// 标识符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// 小程序AppId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?

        /// 小程序AppPath
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appPath: String?

        /// 小程序名称AppName
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appName: String?

        public init(headEnabled: Bool? = nil, headTitle: String? = nil, key: String? = nil, appId: String? = nil, appPath: String? = nil, appName: String? = nil) {
            self.headEnabled = headEnabled
            self.headTitle = headTitle
            self.key = key
            self.appId = appId
            self.appPath = appPath
            self.appName = appName
        }

        enum CodingKeys: String, CodingKey {
            case headEnabled = "HeadEnabled"
            case headTitle = "HeadTitle"
            case key = "Key"
            case appId = "AppId"
            case appPath = "AppPath"
            case appName = "AppName"
        }
    }

    /// 商品信息
    public struct Product: TCInputModel, TCOutputModel {
        /// 商户标识码
        public let merchantId: String

        /// 商品名称
        public let name: String

        /// 商品id
        public let productId: String?

        /// 企业id
        public let corpId: Int64?

        /// 商品编号
        public let productCode: String?

        /// 商品规格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let specification: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 商品图片
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logo: [String]?

        /// 创建时间
        public let createTime: String?

        /// 修改时间
        public let updateTime: String?

        /// 预留字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ext: Ext?

        /// 商户名称
        public let merchantName: String?

        public init(merchantId: String, name: String, productId: String? = nil, corpId: Int64? = nil, productCode: String? = nil, specification: String? = nil, remark: String? = nil, logo: [String]? = nil, createTime: String? = nil, updateTime: String? = nil, ext: Ext? = nil, merchantName: String? = nil) {
            self.merchantId = merchantId
            self.name = name
            self.productId = productId
            self.corpId = corpId
            self.productCode = productCode
            self.specification = specification
            self.remark = remark
            self.logo = logo
            self.createTime = createTime
            self.updateTime = updateTime
            self.ext = ext
            self.merchantName = merchantName
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case name = "Name"
            case productId = "ProductId"
            case corpId = "CorpId"
            case productCode = "ProductCode"
            case specification = "Specification"
            case remark = "Remark"
            case logo = "Logo"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case ext = "Ext"
            case merchantName = "MerchantName"
        }
    }

    /// 企业配额信息
    public struct Quota: TCInputModel, TCOutputModel {
        /// 服务开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?

        /// 服务结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 配额ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let quotaId: UInt64?

        /// 企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: UInt64?

        /// 开通服务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let services: [String]?

        /// 商户配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let factoryQuota: Int64?

        /// 商品配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemQuota: Int64?

        /// 溯源码配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trackQuota: Int64?

        /// 销售码配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let saleQuota: Int64?

        /// 上链配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chainQuota: Int64?

        /// 风控配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskQuota: Int64?

        /// 溯源类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trackType: Int64?

        /// 开通版本 lite:轻量版, basic:基础版, standard:标准版
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let version: String?

        public init(startTime: String, endTime: String, quotaId: UInt64? = nil, corpId: UInt64? = nil, services: [String]? = nil, factoryQuota: Int64? = nil, itemQuota: Int64? = nil, trackQuota: Int64? = nil, saleQuota: Int64? = nil, chainQuota: Int64? = nil, riskQuota: Int64? = nil, trackType: Int64? = nil, version: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.quotaId = quotaId
            self.corpId = corpId
            self.services = services
            self.factoryQuota = factoryQuota
            self.itemQuota = itemQuota
            self.trackQuota = trackQuota
            self.saleQuota = saleQuota
            self.chainQuota = chainQuota
            self.riskQuota = riskQuota
            self.trackType = trackType
            self.version = version
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case quotaId = "QuotaId"
            case corpId = "CorpId"
            case services = "Services"
            case factoryQuota = "FactoryQuota"
            case itemQuota = "ItemQuota"
            case trackQuota = "TrackQuota"
            case saleQuota = "SaleQuota"
            case chainQuota = "ChainQuota"
            case riskQuota = "RiskQuota"
            case trackType = "TrackType"
            case version = "Version"
        }
    }

    /// 原始扫码日志
    public struct RawScanLog: TCOutputModel {
        /// 日志ID
        public let logId: Int64?

        /// 微信小程序openid
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let openid: String?

        /// 扫码时间
        public let createTime: String?

        /// 溯源码
        public let code: String?

        /// 企业ID
        public let corpId: UInt64?

        /// 商户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantId: String?

        /// 商品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        /// 批次ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchId: String?

        /// 省份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let province: String?

        /// 地市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let city: String?

        /// 区/县
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let district: String?

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case openid = "Openid"
            case createTime = "CreateTime"
            case code = "Code"
            case corpId = "CorpId"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case batchId = "BatchId"
            case province = "Province"
            case city = "City"
            case district = "District"
        }
    }

    /// 扫码明细
    public struct ScanLog: TCOutputModel {
        /// 行ID
        public let logId: Int64

        /// 微信openid
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let openid: String?

        /// 微信昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nickname: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: String?

        /// 企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: Int64?

        /// 商户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantId: String?

        /// 商品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        /// ip地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ip: String?

        /// 国家
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let country: String?

        /// 省份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let province: String?

        /// 城市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let city: String?

        /// 县/区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let district: String?

        /// 微信 unionid
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unionid: String?

        /// 首次扫码 0:否, 1:是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let first: Int64?

        /// 批次ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchId: String?

        /// 扫码类型 0:无效扫码 1: 小程序扫码 2: 商家扫码
        public let type: Int64?

        /// 商户名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantName: String?

        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case openid = "Openid"
            case nickname = "Nickname"
            case createTime = "CreateTime"
            case code = "Code"
            case corpId = "CorpId"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case ip = "Ip"
            case country = "Country"
            case province = "Province"
            case city = "City"
            case district = "District"
            case unionid = "Unionid"
            case first = "First"
            case batchId = "BatchId"
            case type = "Type"
            case merchantName = "MerchantName"
            case productName = "ProductName"
        }
    }

    /// 扫码统计
    public struct ScanStat: TCOutputModel {
        /// 安心码
        public let code: String?

        /// 企业ID
        public let corpId: UInt64?

        /// 商户ID
        public let merchantId: String?

        /// 产品ID
        public let productId: String?

        /// 批次ID
        public let batchId: String?

        /// 扫码次数
        public let pv: UInt64?

        /// 扫码人数
        public let uv: UInt64?

        /// 创建时间
        public let createTime: String?

        /// 更新时间
        public let updateTime: String?

        /// 商户名称
        public let merchantName: String?

        /// 产品名称
        public let productName: String?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case corpId = "CorpId"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case batchId = "BatchId"
            case pv = "Pv"
            case uv = "Uv"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case merchantName = "MerchantName"
            case productName = "ProductName"
        }
    }

    /// 溯源码
    public struct TraceCode: TCOutputModel {
        /// 二维码
        public let code: String

        /// 企业ID
        public let corpId: UInt64

        /// 码包ID
        public let packId: String

        /// 批次ID
        public let batchId: String

        /// 所属商户ID
        public let merchantId: String

        /// 产品ID
        public let productId: String

        /// 码状态 0: 冻结 1: 激活
        public let status: UInt64

        /// 创建时间
        public let createTime: String

        /// 修改时间
        public let updateTime: String

        /// 商户名称
        public let merchantName: String

        /// 产品名称
        public let productName: String

        /// 渠道商ID
        public let agentId: UInt64?

        /// 码层级 0: 最小级, 1: 一级, 2: 二级
        public let level: UInt64?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case corpId = "CorpId"
            case packId = "PackId"
            case batchId = "BatchId"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case status = "Status"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case merchantName = "MerchantName"
            case productName = "ProductName"
            case agentId = "AgentId"
            case level = "Level"
        }
    }

    /// 溯源数据
    public struct TraceData: TCInputModel, TCOutputModel {
        /// 溯源ID
        public let traceId: String

        /// 企业ID
        public let corpId: UInt64

        /// 码类型 0: 批次, 1: 码, 2: 生产任务
        public let type: UInt64

        /// 码值，跟码类型一一对应
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: String?

        /// 排序，在Phase相同情况下，值越小排名靠前
        public let rank: UInt64

        /// 溯源阶段 0:商品 1:通用 2:生产溯源 3:销售溯源
        public let phase: UInt64

        /// 溯源环节名称
        public let phaseName: String

        /// 溯源时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let traceTime: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 上链状态 0: 未上链 1: 上链中 2: 已上链 -1: 异常
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chainStatus: UInt64?

        /// 上链时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chainTime: String?

        /// 上链数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chainData: ChainData?

        /// 溯源阶段配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phaseData: PhaseData?

        /// 溯源阶段状态 0: 无效, 1: 有效
        public let status: Int64

        public let traceItems: [TraceItem]?

        public init(traceId: String, corpId: UInt64, type: UInt64, code: String, rank: UInt64, phase: UInt64, phaseName: String, traceTime: String, createTime: String, chainStatus: UInt64, chainTime: String, chainData: ChainData, phaseData: PhaseData, status: Int64, traceItems: [TraceItem]? = nil) {
            self.traceId = traceId
            self.corpId = corpId
            self.type = type
            self.code = code
            self.rank = rank
            self.phase = phase
            self.phaseName = phaseName
            self.traceTime = traceTime
            self.createTime = createTime
            self.chainStatus = chainStatus
            self.chainTime = chainTime
            self.chainData = chainData
            self.phaseData = phaseData
            self.status = status
            self.traceItems = traceItems
        }

        enum CodingKeys: String, CodingKey {
            case traceId = "TraceId"
            case corpId = "CorpId"
            case type = "Type"
            case code = "Code"
            case rank = "Rank"
            case phase = "Phase"
            case phaseName = "PhaseName"
            case traceTime = "TraceTime"
            case createTime = "CreateTime"
            case chainStatus = "ChainStatus"
            case chainTime = "ChainTime"
            case chainData = "ChainData"
            case phaseData = "PhaseData"
            case status = "Status"
            case traceItems = "TraceItems"
        }
    }

    /// 溯源数据项 Type 的枚举值
    ///
    /// text:文本类型, longtext:长文本类型, banner:单图片类型, image:多图片类型, video:视频类型, mp:小程序类型
    ///
    /// 具体组合如下
    /// - Type: "text" 文本类型, 对应值 Value: "文本字符串"
    /// - Type: "longtext" 长文本类型, 对应值 Value: "长文本字符串, 支持换行\n"
    /// - Type: "banner" 单图片类型, 对应图片地址 Value: "https://sample.cdn.com/xxx.jpg"
    /// - Type: "image" 多图片类型, 对应图片地址 Values: ["https://sample.cdn.com/1.jpg", "https://sample.cdn.com/2.jpg"]
    /// - Type: "video" 视频类型, 对应视频地址 Value: "https://sample.cdn.com/xxx.mp4"
    /// - Type: "mp" 小程序类型, 对应配置 Values: ["WXAPPID", "WXAPP_PATH", "跳转说明"]
    public struct TraceItem: TCInputModel, TCOutputModel {
        /// 字段名称
        public let name: String

        /// 字段值
        public let value: String

        /// 字段类型
        /// text:文本类型,
        /// longtext:长文本类型, banner:单图片类型, image:多图片类型,
        /// video:视频类型,
        /// mp:小程序类型
        public let type: String

        /// 多个值
        public let values: [String]

        /// 只读
        public let readOnly: Bool?

        /// 扫码展示
        public let hidden: Bool?

        /// 类型标识
        public let key: String?

        /// 扩展字段
        public let ext: String?

        /// 额外属性
        public let attrs: [TraceItem]?

        /// 子页面，只读
        public let list: [TraceData]?

        public init(name: String, value: String, type: String, values: [String], readOnly: Bool? = nil, hidden: Bool? = nil, key: String? = nil, ext: String? = nil, attrs: [TraceItem]? = nil, list: [TraceData]? = nil) {
            self.name = name
            self.value = value
            self.type = type
            self.values = values
            self.readOnly = readOnly
            self.hidden = hidden
            self.key = key
            self.ext = ext
            self.attrs = attrs
            self.list = list
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
            case type = "Type"
            case values = "Values"
            case readOnly = "ReadOnly"
            case hidden = "Hidden"
            case key = "Key"
            case ext = "Ext"
            case attrs = "Attrs"
            case list = "List"
        }
    }

    /// 付费信息使用量
    public struct UsageQuota: TCOutputModel {
        /// 企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: UInt64?

        /// 商户配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let factoryCnt: Int64?

        /// 商品数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemCnt: Int64?

        /// 溯源码量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trackCnt: Int64?

        /// 营销码额度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let saleCnt: Int64?

        /// 区块链上链次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chainCnt: Int64?

        /// 营销风控次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCnt: Int64?

        /// 时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case factoryCnt = "FactoryCnt"
            case itemCnt = "ItemCnt"
            case trackCnt = "TrackCnt"
            case saleCnt = "SaleCnt"
            case chainCnt = "ChainCnt"
            case riskCnt = "RiskCnt"
            case updateTime = "UpdateTime"
        }
    }
}
