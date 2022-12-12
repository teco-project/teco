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

extension Wav {
    /// 活动详情
    public struct ActivityDetail: TCOutputModel {
        /// 活动id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityId: Int64?
        
        /// 活动名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityName: String?
        
        /// 活动状态，10:未开始状态、20:已开始（进行中）状态、30:已结束状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityState: Int64?
        
        /// 活动类型，100:留资活动
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityType: Int64?
        
        /// 活动开始时间戳，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: Int64?
        
        /// 活动结束时间戳，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: Int64?
        
        /// 活动主图
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mainPhoto: String?
        
        /// 协议编号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let privacyAgreementId: String?
        
        /// 活动更新时间戳，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: Int64?
        
        /// 活动数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityDataList: String?
        
        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case activityName = "ActivityName"
            case activityState = "ActivityState"
            case activityType = "ActivityType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case mainPhoto = "MainPhoto"
            case privacyAgreementId = "PrivacyAgreementId"
            case updateTime = "UpdateTime"
            case activityDataList = "ActivityDataList"
        }
    }
    
    /// 活动参与详情
    public struct ActivityJoinDetail: TCOutputModel {
        /// 活动id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityId: Int64?
        
        /// 活动名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityName: String?
        
        /// 销售姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesName: String?
        
        /// 销售电话
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesPhone: String?
        
        /// 参与id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let joinId: Int64?
        
        /// 活码id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveCodeId: Int64?
        
        /// 用户电话
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userPhone: String?
        
        /// 用户姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?
        
        /// 活动数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityData: String?
        
        /// 线索id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let leadId: Int64?
        
        /// 参与时间戳，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let joinTime: Int64?
        
        /// 线索是否是重复创建， 0 ：新建、 1：合并、 2：重复， 默认为0
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duplicate: Int64?
        
        /// 重复线索id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duplicateLeadId: Int64?
        
        /// 是否为参与多次活动， 1：参与一次、2、参与多次，默认为0
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let joinState: Int64?
        
        /// 创建时间戳，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?
        
        /// 更新时间戳，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: Int64?
        
        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case activityName = "ActivityName"
            case salesName = "SalesName"
            case salesPhone = "SalesPhone"
            case joinId = "JoinId"
            case liveCodeId = "LiveCodeId"
            case userPhone = "UserPhone"
            case userName = "UserName"
            case activityData = "ActivityData"
            case leadId = "LeadId"
            case joinTime = "JoinTime"
            case duplicate = "Duplicate"
            case duplicateLeadId = "DuplicateLeadId"
            case joinState = "JoinState"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 渠道活码详情
    public struct ChannelCodeInnerDetail: TCOutputModel {
        /// 渠道活码id
        public let id: Int64
        
        /// 欢迎语类型，0：普通欢迎语、1:渠道欢迎语
        public let type: Int64
        
        /// 渠道来源
        public let source: String
        
        /// 渠道来源名称
        public let sourceName: String
        
        /// 二维码名称
        public let name: String
        
        /// 使用成员用户id集
        public let useUserIdList: [Int64]
        
        /// 使用成员企微账号id集
        public let useUserOpenIdList: [String]
        
        /// 标签
        public let tagList: [WeComTagDetail]
        
        /// 自动通过好友，0：开启、1：关闭，默认0开启
        public let skipVerify: Int64
        
        /// 添加好友人数
        public let friends: Int64
        
        /// 备注
        public let remark: String
        
        /// 欢迎语id（通过欢迎语新增返回的id）
        public let msgId: Int64
        
        /// 联系我config_id
        public let configId: String
        
        /// 联系我二维码地址
        public let qrCodeUrl: String
        
        /// 记录状态， 0：有效、1：无效
        public let recStatus: Int64
        
        /// 应用ID
        public let appId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case type = "Type"
            case source = "Source"
            case sourceName = "SourceName"
            case name = "Name"
            case useUserIdList = "UseUserIdList"
            case useUserOpenIdList = "UseUserOpenIdList"
            case tagList = "TagList"
            case skipVerify = "SkipVerify"
            case friends = "Friends"
            case remark = "Remark"
            case msgId = "MsgId"
            case configId = "ConfigId"
            case qrCodeUrl = "QrCodeUrl"
            case recStatus = "RecStatus"
            case appId = "AppId"
        }
    }
    
    /// 会话存档数据详情
    public struct ChatArchivingDetail: TCOutputModel {
        /// 消息id
        public let msgId: String
        
        /// 动作名称，switch表示切换企微账号，send表示企微普通消息
        public let action: String
        
        /// 消息类型，当Action != "switch"时存在，例如video, text, voice 等，和企微开放文档一一对应
        /// https://open.work.weixin.qq.com/api/doc/90000/90135/91774
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgType: String?
        
        /// 消息发送人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let from: String?
        
        /// 消息接收人列表，注意接收人可能只有一个
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let toList: [String]?
        
        /// 如果是群消息，则不为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let roomId: String?
        
        /// 消息发送的时间戳，单位为秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgTime: UInt64?
        
        /// MsgType=video时的消息体，忽略此字段，见BodyJson字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let video: ChatArchivingMsgTypeVideo?
        
        /// 根据MsgType的不同取值，解析内容不同，参考：https://open.work.weixin.qq.com/api/doc/90000/90135/91774
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bodyJson: String?
        
        enum CodingKeys: String, CodingKey {
            case msgId = "MsgId"
            case action = "Action"
            case msgType = "MsgType"
            case from = "From"
            case toList = "ToList"
            case roomId = "RoomId"
            case msgTime = "MsgTime"
            case video = "Video"
            case bodyJson = "BodyJson"
        }
    }
    
    /// 会话存档的视频消息类型
    public struct ChatArchivingMsgTypeVideo: TCOutputModel {
        /// 视频时长，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let playLength: UInt64?
        
        /// 文件大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSize: UInt64?
        
        /// 视频资源对象Cos下载地址
        public let cosKey: String
        
        enum CodingKeys: String, CodingKey {
            case playLength = "PlayLength"
            case fileSize = "FileSize"
            case cosKey = "CosKey"
        }
    }
    
    /// 线索信息详情
    public struct ClueInfoDetail: TCOutputModel {
        /// 线索id，线索唯一识别编码
        public let clueId: String
        
        /// 接待客户经销商顾问所属组织id,多个组织使用逗号分割
        public let dealerId: String
        
        /// 线索获取时间，用户添加企业微信时间，单位是秒
        public let enquireTime: UInt64
        
        /// 客户在微信生态中唯一识别码
        public let unionId: String
        
        /// 微信昵称
        public let name: String
        
        /// 联系方式
        public let phone: String
        
        /// 车系编号
        public let seriesCode: String
        
        /// 车型编号
        public let modelCode: String
        
        /// 省份编号
        public let provinceCode: String
        
        /// 城市编号
        public let cityCode: String
        
        /// 顾问名称
        public let salesName: String
        
        /// 顾问电话
        public let salesPhone: String
        
        /// 备注
        public let remark: String
        
        /// 标签
        public let tagList: [String]
        
        /// 客户姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?
        
        enum CodingKeys: String, CodingKey {
            case clueId = "ClueId"
            case dealerId = "DealerId"
            case enquireTime = "EnquireTime"
            case unionId = "UnionId"
            case name = "Name"
            case phone = "Phone"
            case seriesCode = "SeriesCode"
            case modelCode = "ModelCode"
            case provinceCode = "ProvinceCode"
            case cityCode = "CityCode"
            case salesName = "SalesName"
            case salesPhone = "SalesPhone"
            case remark = "Remark"
            case tagList = "TagList"
            case userName = "UserName"
        }
    }
    
    /// 企业成员信息
    public struct CorpUserInfo: TCOutputModel {
        /// 企业成员UserId
        public let userId: UInt64
        
        /// 企业成员在SaaS名片内填写的姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?
        
        /// 企业成员在企微原生通讯录内的id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userOpenId: String?
        
        /// 成员所属经销商id，可为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealerId: UInt64?
        
        /// 成员所属门店id，可为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shopId: UInt64?
        
        /// 企业成员手机号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phone: String?
        
        /// 成员所属部门id列表，仅返回该应用有查看权限的部门id；成员授权模式下，固定返回根部门id，即固定为1；多个部门使用逗号分割
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgIds: String?
        
        /// 主部门，仅当应用对主部门有查看权限时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mainDepartment: String?
        
        /// 是否为部门负责人，第三方应用可为空。与orgIds值一一对应，多个部门使用逗号隔开，0-否， 1-是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isLeaderInDept: String?
        
        /// 激活状态: 0=已激活，1=已禁用，-1=退出企业"
        public let status: Int64
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userName = "UserName"
            case userOpenId = "UserOpenId"
            case dealerId = "DealerId"
            case shopId = "ShopId"
            case phone = "Phone"
            case orgIds = "OrgIds"
            case mainDepartment = "MainDepartment"
            case isLeaderInDept = "IsLeaderInDept"
            case status = "Status"
        }
    }
    
    /// CRM统计数据响应
    public struct CrmStatisticsData: TCOutputModel {
        /// 新增线索
        public let leadCnt: UInt64
        
        /// 新增建档
        public let buildCnt: UInt64
        
        /// 新增到店
        public let invitedCnt: UInt64
        
        /// 新增下订
        public let orderedCnt: UInt64
        
        /// 新增成交
        public let deliveredCnt: UInt64
        
        /// 新增战败
        public let defeatCnt: UInt64
        
        /// 新增好友
        public let newContactCnt: UInt64
        
        /// 统计时间, 单位：天
        public let statisticalTime: String
        
        enum CodingKeys: String, CodingKey {
            case leadCnt = "LeadCnt"
            case buildCnt = "BuildCnt"
            case invitedCnt = "InvitedCnt"
            case orderedCnt = "OrderedCnt"
            case deliveredCnt = "DeliveredCnt"
            case defeatCnt = "DefeatCnt"
            case newContactCnt = "NewContactCnt"
            case statisticalTime = "StatisticalTime"
        }
    }
    
    /// 外部联系人SaaS使用明细数据
    public struct CustomerActionEventDetail: TCOutputModel {
        /// 事件码
        public let eventCode: String
        
        /// 事件类型
        public let eventType: Int64
        
        /// 事件来源
        public let eventSource: Int64
        
        /// 外部联系人id
        public let externalUserId: String
        
        /// 销售顾问id
        public let salesId: UInt64
        
        /// 素材类型
        public let materialType: Int64
        
        /// 素材编号id
        public let materialId: UInt64
        
        /// 事件上报时间，单位：秒
        public let eventTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case eventCode = "EventCode"
            case eventType = "EventType"
            case eventSource = "EventSource"
            case externalUserId = "ExternalUserId"
            case salesId = "SalesId"
            case materialType = "MaterialType"
            case materialId = "MaterialId"
            case eventTime = "EventTime"
        }
    }
    
    /// 经销商信息
    public struct DealerInfo: TCOutputModel {
        /// 企微SaaS平台经销商id
        public let dealerId: UInt64
        
        /// 经销商名称
        public let dealerName: String
        
        enum CodingKeys: String, CodingKey {
            case dealerId = "DealerId"
            case dealerName = "DealerName"
        }
    }
    
    /// 客户信息
    public struct ExternalContact: TCOutputModel {
        /// 外部联系人的userId
        public let externalUserId: String
        
        /// 外部联系人性别 0-未知 1-男性 2-女性
        public let gender: Int64
        
        /// 外部联系人的名称
        public let name: String
        
        /// 外部联系人的类型，1表示该外部联系人是微信用户，2表示该外部联系人是企业微信用户
        public let type: UInt64
        
        /// 外部联系人在微信开放平台的唯一身份标识（微信unionid），通过此字段企业可将外部联系人与公众号/小程序用户关联起来。仅当联系人类型是微信用户，且企业或第三方服务商绑定了微信开发者ID有此字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unionId: String?
        
        /// 外部联系人联系电话
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phone: String?
        
        enum CodingKeys: String, CodingKey {
            case externalUserId = "ExternalUserId"
            case gender = "Gender"
            case name = "Name"
            case type = "Type"
            case unionId = "UnionId"
            case phone = "Phone"
        }
    }
    
    /// 外部联系人简短信息
    public struct ExternalContactSimpleInfo: TCOutputModel {
        /// 外部联系人的userId
        public let externalUserId: String
        
        /// 添加了此外部联系人的企业成员userId
        public let userId: String
        
        /// 添加了此外部联系人的企业成员的姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesName: String?
        
        /// 添加了此外部联系人的企业成员的归属部门id列表
        public let departmentIdList: [Int64]
        
        enum CodingKeys: String, CodingKey {
            case externalUserId = "ExternalUserId"
            case userId = "UserId"
            case salesName = "SalesName"
            case departmentIdList = "DepartmentIdList"
        }
    }
    
    /// 外部联系人标签
    public struct ExternalContactTag: TCOutputModel {
        /// 该成员添加此外部联系人所打标签的分组名称（标签功能需要企业微信升级到2.7.5及以上版本）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupName: String?
        
        /// 该成员添加此外部联系人所打标签名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagName: String?
        
        /// 该成员添加此外部联系人所打标签类型, 1-企业设置, 2-用户自定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: UInt64?
        
        /// 该成员添加此外部联系人所打企业标签的id，仅企业设置（type为1）的标签返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagId: String?
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case tagName = "TagName"
            case type = "Type"
            case tagId = "TagId"
        }
    }
    
    /// 外部联系人事件信息
    public struct ExternalUserEventInfo: TCOutputModel {
        /// 事件编码, 添加外部联系人(ADD_EXTERNAL_CUSTOMER)/成员删除外部联系人(DELETE_EXTERNAL_CUSTOMER)/外部联系人删除成员(DELETE_FOLLOW_USER)
        public let eventCode: String
        
        /// 外部联系人id
        public let externalUserId: String
        
        /// 企微SaaS的成员id
        public let salesId: String
        
        /// 事件上报时间戳，单位：秒
        public let eventTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case eventCode = "EventCode"
            case externalUserId = "ExternalUserId"
            case salesId = "SalesId"
            case eventTime = "EventTime"
        }
    }
    
    /// 外部联系人映射信息
    public struct ExternalUserMappingInfo: TCOutputModel {
        /// 企业主体对应的外部联系人userId
        public let corpExternalUserId: String
        
        /// 乐销车应用主体对应的外部联系人, 当不存在好友关系时，该字段值为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let externalUserId: String?
        
        enum CodingKeys: String, CodingKey {
            case corpExternalUserId = "CorpExternalUserId"
            case externalUserId = "ExternalUserId"
        }
    }
    
    /// 添加了此外部联系人的企业成员信息
    public struct FollowUser: TCOutputModel {
        /// 添加了此外部联系人的企业成员userid
        public let userId: String
        
        /// 该成员对此外部联系人的备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?
        
        /// 该成员对此外部联系人的描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 该成员添加此外部联系人的时间戳，单位为秒
        public let createTime: UInt64
        
        /// 该成员添加此客户的来源，具体含义详见<a href="https://work.weixin.qq.com/api/doc/90000/90135/92114#%E6%9D%A5%E6%BA%90%E5%AE%9A%E4%B9%89">来源定义</a>
        public let addWay: Int64
        
        /// 发起添加的userid，如果成员主动添加，为成员的userid；如果是客户主动添加，则为客户的外部联系人userid；如果是内部成员共享/管理员分配，则为对应的成员/管理员userid
        public let operUserId: String
        
        /// 该成员添加此外部联系人所打标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [ExternalContactTag]?
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case remark = "Remark"
            case description = "Description"
            case createTime = "CreateTime"
            case addWay = "AddWay"
            case operUserId = "OperUserId"
            case tags = "Tags"
        }
    }
    
    /// license相关信息
    public struct LicenseInfo: TCOutputModel {
        /// license编号
        public let license: String
        
        /// license版本；1-基础版，2-标准版，3-增值版
        public let licenseEdition: Int64
        
        /// 生效开始时间, 格式yyyy-MM-dd HH:mm:ss
        public let resourceStartTime: String
        
        /// 生效结束时间, 格式yyyy-MM-dd HH:mm:ss
        public let resourceEndTime: String
        
        /// 隔离截止时间, 格式yyyy-MM-dd HH:mm:ss
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isolationDeadline: String?
        
        /// 资源计划销毁时间, 格式yyyy-MM-dd HH:mm:ss
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let destroyTime: String?
        
        /// 资源状态，1.正常，2.隔离，3.销毁
        public let status: Int64
        
        /// 扩展信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?
        
        enum CodingKeys: String, CodingKey {
            case license = "License"
            case licenseEdition = "LicenseEdition"
            case resourceStartTime = "ResourceStartTime"
            case resourceEndTime = "ResourceEndTime"
            case isolationDeadline = "IsolationDeadline"
            case destroyTime = "DestroyTime"
            case status = "Status"
            case extra = "Extra"
        }
    }
    
    /// 活动活码详情
    public struct LiveCodeDetail: TCOutputModel {
        /// 活码id
        public let liveCodeId: UInt64
        
        /// 活码名称
        public let liveCodeName: String
        
        /// 短链url
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shortChainAddress: String?
        
        /// 活码二维码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveCodePreview: String?
        
        /// 活动id
        public let activityId: Int64
        
        /// 活动名称
        public let activityName: String
        
        /// 活码状态，-1：删除，0：启用，1禁用，默认为0
        public let liveCodeState: Int64
        
        /// 活码参数，每个活码参数都是不一样的， 这个的值对应的是字符串json类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveCodeData: String?
        
        /// 创建时间戳，单位为秒
        public let createTime: UInt64
        
        /// 更新时间戳，单位为秒
        public let updateTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case liveCodeId = "LiveCodeId"
            case liveCodeName = "LiveCodeName"
            case shortChainAddress = "ShortChainAddress"
            case liveCodePreview = "LiveCodePreview"
            case activityId = "ActivityId"
            case activityName = "ActivityName"
            case liveCodeState = "LiveCodeState"
            case liveCodeData = "LiveCodeData"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 素材信息响应体
    public struct MaterialInfo: TCOutputModel {
        /// 素材id
        public let materialId: UInt64
        
        /// 素材名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let materialName: String?
        
        /// 素材状态, -1: 删除 0: 启用 1: 禁用
        public let status: Int64
        
        enum CodingKeys: String, CodingKey {
            case materialId = "MaterialId"
            case materialName = "MaterialName"
            case status = "Status"
        }
    }
    
    /// 小程序码信息
    public struct MiniAppCodeInfo: TCOutputModel {
        /// 主键id
        public let id: UInt64
        
        /// 小程序名称
        public let miniAppName: String
        
        /// 小程序logo
        public let miniAppLogo: String
        
        /// 小程序管理端地址
        public let miniAdminUrl: String
        
        /// 状态：0正常，1删除
        public let state: Int64
        
        /// 创建时间戳，单位为秒
        public let createTime: UInt64
        
        /// 更新时间戳，单位为秒
        public let updateTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case miniAppName = "MiniAppName"
            case miniAppLogo = "MiniAppLogo"
            case miniAdminUrl = "MiniAdminUrl"
            case state = "State"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 企业成员SaaS使用明细数据
    public struct SalesActionEventDetail: TCOutputModel {
        /// 事件码
        public let eventCode: String
        
        /// 事件类型
        public let eventType: Int64
        
        /// 事件来源
        public let eventSource: Int64
        
        /// 销售顾问id
        public let salesId: UInt64
        
        /// 素材类型
        public let materialType: Int64
        
        /// 素材编号id
        public let materialId: UInt64
        
        /// 事件上报时间，单位：秒
        public let eventTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case eventCode = "EventCode"
            case eventType = "EventType"
            case eventSource = "EventSource"
            case salesId = "SalesId"
            case materialType = "MaterialType"
            case materialId = "MaterialId"
            case eventTime = "EventTime"
        }
    }
    
    /// 标签详细信息
    public struct TagDetailInfo: TCOutputModel {
        /// 标签名称
        public let tagName: String
        
        /// 标签业务ID
        public let bizTagId: String
        
        /// 企微标签ID
        public let tagId: String
        
        /// 标签排序的次序值，sort值大的排序靠前。有效的值范围是[0, 2^32)
        public let sort: UInt64
        
        /// 标签创建时间,单位为秒
        public let createTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case tagName = "TagName"
            case bizTagId = "BizTagId"
            case tagId = "TagId"
            case sort = "Sort"
            case createTime = "CreateTime"
        }
    }
    
    /// 标签组信息
    public struct TagGroup: TCOutputModel {
        /// 企微标签组id
        public let groupId: String
        
        /// 标签组业务id
        public let bizGroupId: String
        
        /// 企微标签组名称，不能超过15个字符
        public let groupName: String
        
        /// 标签组次序值。sort值大的排序靠前。有效的值范围是[0, 2^32)
        public let sort: UInt64
        
        /// 标签组创建时间,单位为秒
        public let createTime: UInt64
        
        /// 标签组内的标签列表, 上限为20
        public let tags: [TagDetailInfo]
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case bizGroupId = "BizGroupId"
            case groupName = "GroupName"
            case sort = "Sort"
            case createTime = "CreateTime"
            case tags = "Tags"
        }
    }
    
    /// 标签信息
    public struct TagInfo: TCInputModel {
        /// 标签名称, 最大长度限制15个字符
        public let tagName: String
        
        /// 标签组排序,值越大,排序越靠前
        public let sort: UInt64?
        
        public init (tagName: String, sort: UInt64? = nil) {
            self.tagName = tagName
            self.sort = sort
        }
        
        enum CodingKeys: String, CodingKey {
            case tagName = "TagName"
            case sort = "Sort"
        }
    }
    
    /// 车型车系信息
    public struct VehicleInfo: TCOutputModel {
        /// 品牌id
        public let brandId: UInt64
        
        /// 品牌名称
        public let brandName: String
        
        /// 车系id
        public let seriesId: UInt64
        
        /// 车系名称
        public let seriesName: String
        
        /// 车型id
        public let modelId: UInt64
        
        /// 车型名称
        public let modelName: String
        
        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
            case brandName = "BrandName"
            case seriesId = "SeriesId"
            case seriesName = "SeriesName"
            case modelId = "ModelId"
            case modelName = "ModelName"
        }
    }
    
    /// 企微个人标签信息,渠道活码使用
    public struct WeComTagDetail: TCInputModel, TCOutputModel {
        /// 标签分组名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupName: String?
        
        /// 标签分组业务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizGroupId: String?
        
        /// 标签名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagName: String?
        
        /// 标签ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagId: String?
        
        /// 标签业务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizTagId: String?
        
        /// 标签分类，1：企业设置、2：用户自定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: Int64?
        
        /// 标签业务ID字符串格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizTagIdStr: String?
        
        public init (groupName: String? = nil, bizGroupId: String? = nil, tagName: String? = nil, tagId: String? = nil, bizTagId: String? = nil, type: Int64? = nil, bizTagIdStr: String? = nil) {
            self.groupName = groupName
            self.bizGroupId = bizGroupId
            self.tagName = tagName
            self.tagId = tagId
            self.bizTagId = bizTagId
            self.type = type
            self.bizTagIdStr = bizTagIdStr
        }
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case bizGroupId = "BizGroupId"
            case tagName = "TagName"
            case tagId = "TagId"
            case bizTagId = "BizTagId"
            case type = "Type"
            case bizTagIdStr = "BizTagIdStr"
        }
    }
}
