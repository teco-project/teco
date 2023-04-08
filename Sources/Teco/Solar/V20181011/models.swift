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

extension Solar {
    /// 活动详情
    public struct ActivityInfo: TCOutputModel {
        /// 活动使用模板id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: String?

        /// 活动标题
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityTitle: String?

        /// 活动描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityDesc: String?

        /// 活动封面地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityCover: String?

        /// 活动类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityType: String?

        /// 活动id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityId: String?

        /// 活动模板自定义配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personalConfig: String?

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case activityTitle = "ActivityTitle"
            case activityDesc = "ActivityDesc"
            case activityCover = "ActivityCover"
            case activityType = "ActivityType"
            case activityId = "ActivityId"
            case personalConfig = "PersonalConfig"
        }
    }

    /// 客户档案
    public struct CustomerInfo: TCOutputModel {
        /// 总活跃度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activity: Int64?

        /// 客户ID
        public let audienceUserId: String

        /// 头像
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let avatar: String?

        /// 最近记录城市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let city: String?

        /// 最活跃时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastActiveTime: String?

        /// 是否星标客户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let markFlag: String?

        /// 30天活跃度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let monthActive: Int64?

        /// 30天推荐度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let monthRecommend: Int64?

        /// 手机号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phone: String?

        /// 最近记录省份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let province: String?

        /// 姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realName: String?

        /// 员工标识 0 未关联 1 已关联
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let relChannelFlag: Int64?

        /// 性别 1男 2女
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sex: Int64?

        /// 传播力（好友数）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let spread: Int64?

        /// 7天活跃度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let weekActive: Int64?

        /// 7天推荐度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let weekRecommend: Int64?

        /// 微信城市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wxCity: String?

        /// 微信国家或地区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wxCountry: String?

        /// 微信呢称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wxNickname: String?

        /// 微信省份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wxProvince: String?

        enum CodingKeys: String, CodingKey {
            case activity = "Activity"
            case audienceUserId = "AudienceUserId"
            case avatar = "Avatar"
            case city = "City"
            case lastActiveTime = "LastActiveTime"
            case markFlag = "MarkFlag"
            case monthActive = "MonthActive"
            case monthRecommend = "MonthRecommend"
            case phone = "Phone"
            case province = "Province"
            case realName = "RealName"
            case relChannelFlag = "RelChannelFlag"
            case sex = "Sex"
            case spread = "Spread"
            case weekActive = "WeekActive"
            case weekRecommend = "WeekRecommend"
            case wxCity = "WxCity"
            case wxCountry = "WxCountry"
            case wxNickname = "WxNickname"
            case wxProvince = "WxProvince"
        }
    }

    /// 可见范围过滤参数
    public struct Filters: TCInputModel {
        /// 过滤类型, 0: 默认(可见部门+自创) 1: 自创 2: 指定部门(部门在可见范围内)
        public let type: Int64?

        /// 指定部门Id, 类型2使用
        public let deptIds: [String]?

        /// 用户Id列表
        public let userIds: [String]?

        public init(type: Int64? = nil, deptIds: [String]? = nil, userIds: [String]? = nil) {
            self.type = type
            self.deptIds = deptIds
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case deptIds = "DeptIds"
            case userIds = "UserIds"
        }
    }

    /// 内容页结构
    public struct ProductInfo: TCOutputModel {
        /// 模板id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: String?

        /// 模板主题
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productTitle: String?

        /// 模板描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productDesc: String?

        /// 模板封面地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productCover: String?

        /// 内容作品id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        /// 作品预览链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productUrl: String?

        /// 作品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case productTitle = "ProductTitle"
            case productDesc = "ProductDesc"
            case productCover = "ProductCover"
            case productId = "ProductId"
            case productUrl = "ProductUrl"
            case productName = "ProductName"
        }
    }

    /// 项目基础信息
    public struct ProjectInfo: TCOutputModel {
        /// 项目ID
        public let projectId: String

        /// 项目名称
        public let projectName: String

        /// 项目所属机构
        public let projectOrg: String

        /// 项目预算
        public let projectBudget: Float

        /// 项目状态
        public let projectStatus: String

        /// 项目创建时间
        public let createTime: String

        /// 项目简介
        public let projectIntroduction: String

        /// 项目所属机构Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectOrgId: String?

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case projectOrg = "ProjectOrg"
            case projectBudget = "ProjectBudget"
            case projectStatus = "ProjectStatus"
            case createTime = "CreateTime"
            case projectIntroduction = "ProjectIntroduction"
            case projectOrgId = "ProjectOrgId"
        }
    }

    /// 项目奖品库存
    public struct ProjectStock: TCOutputModel {
        /// 奖品id
        public let prizeId: String

        /// 奖品批次
        public let prizeBat: UInt64

        /// 奖品名称
        public let prizeName: String

        /// 已分配奖品数量
        public let usedStock: UInt64

        /// 该奖品剩余库存数量
        public let remainStock: UInt64

        /// 奖品所在奖池index
        public let poolIdx: UInt64

        /// 奖品所在奖池名称
        public let poolName: String

        enum CodingKeys: String, CodingKey {
            case prizeId = "PrizeId"
            case prizeBat = "PrizeBat"
            case prizeName = "PrizeName"
            case usedStock = "UsedStock"
            case remainStock = "RemainStock"
            case poolIdx = "PoolIdx"
            case poolName = "PoolName"
        }
    }

    /// 素材模板消息标题的样例列表
    public struct ResourceTemplateHeader: TCOutputModel {
        /// 模板预览区内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: String?

        /// 模板预览示例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let example: String?

        /// 模板预览区域键数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyArray: String?

        /// 模板id
        public let templateId: String

        /// 模板标题
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let title: String?

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case example = "Example"
            case keyArray = "KeyArray"
            case templateId = "TemplateId"
            case title = "Title"
        }
    }

    /// 子项目信息
    public struct SubProjectInfo: TCOutputModel {
        /// 子项目id
        public let subProjectId: String

        /// 子项目名称
        public let subProjectName: String

        /// 子项目状态
        public let subProjectStatus: String

        enum CodingKeys: String, CodingKey {
            case subProjectId = "SubProjectId"
            case subProjectName = "SubProjectName"
            case subProjectStatus = "SubProjectStatus"
        }
    }
}
