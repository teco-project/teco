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

extension Lowcode {
    /// 数据源详情列表
    public struct DataSourceDetail: TCOutputModel {
        /// 数据源 ID
        public let id: String
        
        /// 数据源名称
        public let title: String
        
        /// 数据源标识
        public let name: String
        
        /// 数据源类型
        public let type: String
        
        /// 数据源描述
        public let description: String
        
        /// 数据源配置
        public let schema: String
        
        /// cms 项目状态, 0: 重新获取详情信息，1： 不需要重新获取详情信息
        public let cmsProject: String
        
        /// 当前为环境 id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pkgId: String?
        
        /// schema 版本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schemaVersion: String?
        
        /// 创建者用户 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorId: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdAt: String?
        
        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedAt: String?
        
        /// 环境 id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let envId: String?
        
        /// 版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSourceVersion: String?
        
        /// 所属应用数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appUsageList: [DataSourceLinkApp]?
        
        /// 发布时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishedAt: String?
        
        /// 子数据源ids
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let childDataSourceIds: [String]?
        
        /// 数据源发布信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fun: String?
        
        /// 云函数状态 1 Active 2 Creating 3 Updating 4 Deleting  9 Deleted 11 CreatFailed  12 UpdateFailed 13 DeleteFailed 21 UpdateTimeOut
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scfStatus: UInt64?
        
        /// 自定义方法
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let methods: String?
        
        /// 子数据源名数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let childDataSourceNames: [String]?
        
        /// 是否旧数据源 1 新 0 旧
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isNewDataSource: Int64?
        
        /// 数据源视图id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let viewId: String?
        
        /// 数据源属性配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configuration: String?
        
        /// 外部数据源模板code
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateCode: String?
        
        /// 外部数据源模板来源 0 空模板 1 腾讯文档 2 腾讯会议 3 企业微信 4 微信电商
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: Int64?
        
        /// 发布版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishVersion: String?
        
        /// 发布视图id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishViewId: String?
        
        /// 数据源子类型   "database" 标准模型 "custom-database" 自定义模型 "system" 系统模型 "connector" 连接器 "custom-connector" 自定义连接器 "hidden" 隐藏数据源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subType: String?
        
        /// 授权状态  0 授权无效 1 授权有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authStatus: Int64?
        
        /// 数据源授权信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authInfo: TicketAuthInfo
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case title = "Title"
            case name = "Name"
            case type = "Type"
            case description = "Description"
            case schema = "Schema"
            case cmsProject = "CmsProject"
            case pkgId = "PkgId"
            case schemaVersion = "SchemaVersion"
            case creatorId = "CreatorId"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case envId = "EnvId"
            case dataSourceVersion = "DataSourceVersion"
            case appUsageList = "AppUsageList"
            case publishedAt = "PublishedAt"
            case childDataSourceIds = "ChildDataSourceIds"
            case fun = "Fun"
            case scfStatus = "ScfStatus"
            case methods = "Methods"
            case childDataSourceNames = "ChildDataSourceNames"
            case isNewDataSource = "IsNewDataSource"
            case viewId = "ViewId"
            case configuration = "Configuration"
            case templateCode = "TemplateCode"
            case source = "Source"
            case publishVersion = "PublishVersion"
            case publishViewId = "PublishViewId"
            case subType = "SubType"
            case authStatus = "AuthStatus"
            case authInfo = "AuthInfo"
        }
    }
    
    /// 数据详情列表
    public struct DataSourceDetailItems: TCOutputModel {
        /// 数据详情列表
        public let rows: [DataSourceDetail]
        
        /// 数据源列表总个数
        public let count: Int64
        
        enum CodingKeys: String, CodingKey {
            case rows = "Rows"
            case count = "Count"
        }
    }
    
    /// 数据源关联App信息
    public struct DataSourceLinkApp: TCOutputModel {
        /// 应用Id
        public let id: String
        
        /// 应用名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let title: String?
        
        /// 是否编辑状态使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let editStatusUse: Int64?
        
        /// 是否预览状态使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let previewStatusUse: Int64?
        
        /// 是否正式状态使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let onlineStatusUse: Int64?
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case title = "Title"
            case editStatusUse = "EditStatusUse"
            case previewStatusUse = "PreviewStatusUse"
            case onlineStatusUse = "OnlineStatusUse"
        }
    }
    
    /// 数据源模糊查询参数
    public struct DataSourceQueryOption: TCInputModel {
        /// 数据源标识模糊匹配
        public let likeName: String?
        
        /// 数据源名称模糊匹配
        public let likeTitle: String?
        
        public init (likeName: String?, likeTitle: String?) {
            self.likeName = likeName
            self.likeTitle = likeTitle
        }
        
        enum CodingKeys: String, CodingKey {
            case likeName = "LikeName"
            case likeTitle = "LikeTitle"
        }
    }
    
    /// 数据源授权信息
    public struct TicketAuthInfo: TCOutputModel {
        /// 授权用户
        public let authUser: String
        
        enum CodingKeys: String, CodingKey {
            case authUser = "AuthUser"
        }
    }
}
