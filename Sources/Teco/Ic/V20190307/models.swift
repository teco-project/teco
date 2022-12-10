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

@_exported import struct Foundation.Date

extension Ic {
    /// 物联网卡应用信息详情
    public struct AppInfo: TCOutputModel {
        /// 应用ID
        public let sdkappid: String
        
        /// 应用key
        public let appkey: String
        
        /// 用户appid
        public let cloudAppid: String
        
        /// 应用名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 应用描述
        public let description: String
        
        /// 创建时间
        public let createdTime: String
        
        /// 应用类型
        public let bizType: Int64
        
        /// 用户Uin
        public let uin: String
        
        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case appkey = "Appkey"
            case cloudAppid = "CloudAppid"
            case name = "Name"
            case description = "Description"
            case createdTime = "CreatedTime"
            case bizType = "BizType"
            case uin = "Uin"
        }
    }
    
    /// 卡片详细信息
    public struct CardInfo: TCOutputModel {
        /// 卡片ID
        public let iccid: String
        
        /// 卡电话号码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msisdn: String?
        
        /// 卡imsi
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imsi: String?
        
        /// 卡imei
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imei: String?
        
        /// 应用ID
        public let sdkappid: String
        
        /// 运营商编号
        public let teleoperator: Int64
        
        /// 卡片状态 1:未激活 2：激活 3：停卡 5：销卡
        public let cardStatus: Int64
        
        /// 网络状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let networkStatus: Int64?
        
        /// 激活时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activitedTime: String?
        
        /// 资费类型，1 单卡，2 流量池
        public let type: Int64
        
        /// 套餐类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 流量池ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let poolId: String?
        
        /// 周期套餐流量使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataUsedInPeriod: Float?
        
        /// 周期套餐总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataTotalInPeriod: Float?
        
        /// 过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productExpiredTime: String?
        
        /// 描述信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 创建时间
        // FIXME: Codable support not implemented for datetime yet.
        public let createdTime: Date
        
        /// 修改时间
        // FIXME: Codable support not implemented for datetime yet.
        public let modifiedTime: Date
        
        /// 套餐周期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let preorderCnt: Int64?
        
        /// 激活被回调标志
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isActivated: Int64?
        
        /// 订单ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderId: String?
        
        /// 是否自动续费
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRenew: Int64?
        
        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?
        
        /// 0 不需要开通达量不停卡 1 需要开通达量不停卡
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowArrears: Int64?
        
        /// 是否开通短信0:未开短信 1:开通短信
        public let needSms: Int64
        
        /// 供应商
        public let provider: Int64
        
        /// 实名认证 0:无 1:未实名 2:已实名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificationState: Int64?
        
        /// 其他流量信息,流量分离统计其他流量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let otherData: Float?
        
        enum CodingKeys: String, CodingKey {
            case iccid = "Iccid"
            case msisdn = "Msisdn"
            case imsi = "Imsi"
            case imei = "Imei"
            case sdkappid = "Sdkappid"
            case teleoperator = "Teleoperator"
            case cardStatus = "CardStatus"
            case networkStatus = "NetworkStatus"
            case activitedTime = "ActivitedTime"
            case type = "Type"
            case productId = "ProductId"
            case poolId = "PoolId"
            case dataUsedInPeriod = "DataUsedInPeriod"
            case dataTotalInPeriod = "DataTotalInPeriod"
            case productExpiredTime = "ProductExpiredTime"
            case description = "Description"
            case createdTime = "CreatedTime"
            case modifiedTime = "ModifiedTime"
            case preorderCnt = "PreorderCnt"
            case isActivated = "IsActivated"
            case orderId = "OrderId"
            case autoRenew = "AutoRenew"
            case remark = "Remark"
            case allowArrears = "AllowArrears"
            case needSms = "NeedSms"
            case provider = "Provider"
            case certificationState = "CertificationState"
            case otherData = "OtherData"
        }
    }
    
    /// 卡片列表数据
    public struct CardList: TCOutputModel {
        /// 卡片总数
        public let total: String
        
        /// 卡片列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [CardInfo]?
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
        }
    }
    
    /// 订单ID集合
    public struct ResOrderIds: TCOutputModel {
        /// 每一张续费卡片的订单ID数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderIds: [String]?
        
        enum CodingKeys: String, CodingKey {
            case orderIds = "OrderIds"
        }
    }
    
    /// 云api 卡片续费
    public struct ResRenew: TCOutputModel {
        /// 每一张续费卡片的订单ID数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderIds: [String]?
        
        enum CodingKeys: String, CodingKey {
            case orderIds = "OrderIds"
        }
    }
    
    /// 查询短信列表
    public struct ResSms: TCOutputModel {
        /// 卡片ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iccid: String?
        
        /// 卡片号码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msisdn: String?
        
        /// 应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sdkAppid: Int64?
        
        /// 短信内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: String?
        
        /// 短信类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smsType: Int64?
        
        /// 发送时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sendTime: String?
        
        /// 推送时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportTime: String?
        
        /// SUCC：成功  FAIL 失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?
        
        /// 回执状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?
        
        enum CodingKeys: String, CodingKey {
            case iccid = "Iccid"
            case msisdn = "Msisdn"
            case sdkAppid = "SdkAppid"
            case content = "Content"
            case smsType = "SmsType"
            case sendTime = "SendTime"
            case reportTime = "ReportTime"
            case remark = "Remark"
            case status = "Status"
        }
    }
    
    /// 短信流水信息
    public struct SmsRet: TCOutputModel {
        /// 该iccid请求状态
        public let code: String
        
        /// 短信发送返回信息
        public let msg: String
        
        /// 卡片ID
        public let iccid: String
        
        /// 流水ID
        public let sid: String
        
        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case msg = "Msg"
            case iccid = "Iccid"
            case sid = "Sid"
        }
    }
    
    /// 短信流水信息
    public struct SmsSid: TCOutputModel {
        /// 卡片ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iccid: String?
        
        /// 信息流水ID
        public let sid: String
        
        enum CodingKeys: String, CodingKey {
            case iccid = "Iccid"
            case sid = "Sid"
        }
    }
}