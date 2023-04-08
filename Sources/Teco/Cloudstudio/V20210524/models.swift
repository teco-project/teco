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

extension Cloudstudio {
    /// 云服务器创建工作空间 DTO
    public struct AgentSpaceDTO: TCInputModel {
        /// 工作空间名称
        public let name: String

        /// 镜像id
        public let imageId: Int64

        /// 镜像名称
        public let imageName: String

        /// 云服务器登录名称
        public let remoteUser: String

        /// 云服务器登录地址
        public let remoteHost: String

        /// 云服务器登录端口
        public let remotePort: String

        /// 工作空间类型
        public let workspaceType: String

        /// 工作空间版本
        public let workspaceVersion: Int64

        /// 工作空间资源结构
        public let workspaceResourceDTO: WorkspaceResourceDTO

        /// 描述
        public let description: String?

        public init(name: String, imageId: Int64, imageName: String, remoteUser: String, remoteHost: String, remotePort: String, workspaceType: String, workspaceVersion: Int64, workspaceResourceDTO: WorkspaceResourceDTO, description: String? = nil) {
            self.name = name
            self.imageId = imageId
            self.imageName = imageName
            self.remoteUser = remoteUser
            self.remoteHost = remoteHost
            self.remotePort = remotePort
            self.workspaceType = workspaceType
            self.workspaceVersion = workspaceVersion
            self.workspaceResourceDTO = workspaceResourceDTO
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case imageId = "ImageId"
            case imageName = "ImageName"
            case remoteUser = "RemoteUser"
            case remoteHost = "RemoteHost"
            case remotePort = "RemotePort"
            case workspaceType = "WorkspaceType"
            case workspaceVersion = "WorkspaceVersion"
            case workspaceResourceDTO = "WorkspaceResourceDTO"
            case description = "Description"
        }
    }

    /// 模板的预置参数
    public struct CustomizeTemplatesPresetsInfo: TCOutputModel {
        /// 模板tag列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?

        /// 模板图标列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let icons: [String]?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templates: UserDefinedTemplateParams?

        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case icons = "Icons"
            case templates = "Templates"
        }
    }

    /// 可用镜像模板列表
    public struct ImageUserDTO: TCOutputModel {
        /// 镜像模板ID
        public let id: String

        /// 镜像模板名称
        public let name: String

        /// Tag时间
        public let tag: String

        /// 描述
        public let description: String

        /// 中文描述
        public let descriptionCN: String

        /// 图标地址
        public let iconUrl: String

        /// 创建人
        public let author: String

        /// 访问状态
        public let visible: String

        /// 版本
        public let workspaceVersion: Int64

        /// 分类
        public let sort: Int64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case tag = "Tag"
            case description = "Description"
            case descriptionCN = "DescriptionCN"
            case iconUrl = "IconUrl"
            case author = "Author"
            case visible = "Visible"
            case workspaceVersion = "WorkspaceVersion"
            case sort = "Sort"
        }
    }

    /// 用户自定义模板参数
    public struct UserDefinedTemplateParams: TCInputModel, TCOutputModel {
        /// 模板名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 模板图标地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let icon: String?

        /// 模板标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?

        /// 模板来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: String?

        /// 模板描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 模板仓库类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlType: String?

        /// 模板地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlUrl: String?

        public init(name: String, icon: String, tags: [String], source: String, description: String? = nil, versionControlType: String? = nil, versionControlUrl: String? = nil) {
            self.name = name
            self.icon = icon
            self.tags = tags
            self.source = source
            self.description = description
            self.versionControlType = versionControlType
            self.versionControlUrl = versionControlUrl
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case icon = "Icon"
            case tags = "Tags"
            case source = "Source"
            case description = "Description"
            case versionControlType = "VersionControlType"
            case versionControlUrl = "VersionControlUrl"
        }
    }

    /// 用户自定义模板Patched参数
    public struct UserDefinedTemplatePatchedParams: TCInputModel, TCOutputModel {
        /// 模板来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: String?

        /// 模板名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 模板图标地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let icon: String?

        /// 模板描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 模板标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?

        public init(source: String, name: String? = nil, icon: String? = nil, description: String? = nil, tags: [String]? = nil) {
            self.source = source
            self.name = name
            self.icon = icon
            self.description = description
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case name = "Name"
            case icon = "Icon"
            case description = "Description"
            case tags = "Tags"
        }
    }

    /// 用户信息
    public struct UserInfoRsp: TCOutputModel {
        /// 用户ID
        public let id: Int64

        /// 用户验证信息
        public let authenticationUserInfo: UserSubInfo

        /// 头像地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let avatar: String?

        /// 介绍
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let features: String?

        /// 状况
        public let previewStatus: Int64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case authenticationUserInfo = "AuthenticationUserInfo"
            case avatar = "Avatar"
            case features = "Features"
            case previewStatus = "PreviewStatus"
        }
    }

    /// 用户验证信息
    public struct UserSubInfo: TCOutputModel {
        /// 团队名称
        public let team: String

        /// 用户名
        public let userName: String

        /// 昵称
        public let nickName: String

        /// 是否为管理员
        public let isAdmin: Bool

        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isTrial: Bool?

        enum CodingKeys: String, CodingKey {
            case team = "Team"
            case userName = "UserName"
            case nickName = "NickName"
            case isAdmin = "IsAdmin"
            case isTrial = "IsTrial"
        }
    }

    /// 工作空间结构
    public struct WorkspaceDTO: TCInputModel {
        /// 工作空间名称
        public let name: String

        /// 代码来源类型
        public let versionControlType: String

        /// 镜像id
        public let imageId: Int64

        /// 镜像名称
        public let imageName: String

        /// 描述
        public let description: String

        /// 工作空间版本
        public let workspaceVersion: Int64

        /// 工作空间资源结构
        public let workspaceResourceDTO: WorkspaceResourceDTO

        /// 代码仓库地址
        public let versionControlUrl: String?

        /// 代码Ref是分支还是标签
        public let versionControlRef: String?

        /// 代码Ref地址
        public let versionControlRefType: String?

        /// 快照Uid
        public let snapshotUid: String?

        /// 模板id
        public let templateId: Int64?

        /// 价格id
        public let priceId: Int64?

        /// 初始化状态
        public let initializeStatus: Int64?

        /// 描述
        public let versionControlDesc: String?

        public init(name: String, versionControlType: String, imageId: Int64, imageName: String, description: String, workspaceVersion: Int64, workspaceResourceDTO: WorkspaceResourceDTO, versionControlUrl: String? = nil, versionControlRef: String? = nil, versionControlRefType: String? = nil, snapshotUid: String? = nil, templateId: Int64? = nil, priceId: Int64? = nil, initializeStatus: Int64? = nil, versionControlDesc: String? = nil) {
            self.name = name
            self.versionControlType = versionControlType
            self.imageId = imageId
            self.imageName = imageName
            self.description = description
            self.workspaceVersion = workspaceVersion
            self.workspaceResourceDTO = workspaceResourceDTO
            self.versionControlUrl = versionControlUrl
            self.versionControlRef = versionControlRef
            self.versionControlRefType = versionControlRefType
            self.snapshotUid = snapshotUid
            self.templateId = templateId
            self.priceId = priceId
            self.initializeStatus = initializeStatus
            self.versionControlDesc = versionControlDesc
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case versionControlType = "VersionControlType"
            case imageId = "ImageId"
            case imageName = "ImageName"
            case description = "Description"
            case workspaceVersion = "WorkspaceVersion"
            case workspaceResourceDTO = "WorkspaceResourceDTO"
            case versionControlUrl = "VersionControlUrl"
            case versionControlRef = "VersionControlRef"
            case versionControlRefType = "VersionControlRefType"
            case snapshotUid = "SnapshotUid"
            case templateId = "TemplateId"
            case priceId = "PriceId"
            case initializeStatus = "InitializeStatus"
            case versionControlDesc = "VersionControlDesc"
        }
    }

    /// 工作空间信息
    public struct WorkspaceInfo: TCOutputModel {
        /// 工作空间ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workspaceId: Int64?

        /// 工作空间标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let spaceKey: String?

        enum CodingKeys: String, CodingKey {
            case workspaceId = "WorkspaceId"
            case spaceKey = "SpaceKey"
        }
    }

    /// 工作空间基本信息描述
    public struct WorkspaceInfoDTO: TCOutputModel {
        /// 工作空间创建时间
        public let createDate: String

        /// 空间key
        public let spaceKey: String

        /// 工作空间id
        public let workspaceId: Int64

        enum CodingKeys: String, CodingKey {
            case createDate = "CreateDate"
            case spaceKey = "SpaceKey"
            case workspaceId = "WorkspaceId"
        }
    }

    /// 工作空间资源结构
    public struct WorkspaceResourceDTO: TCInputModel {
        /// CPU核心数
        public let cpuCoreNumber: UInt64

        /// 一般内存
        public let normalMemory: UInt64

        /// 系统存储
        public let systemStorage: UInt64

        /// 用户存储
        public let userStorage: UInt64

        /// GPU数
        public let gpuNumber: UInt64

        /// GPU内存
        public let gpuMemory: UInt64

        public init(cpuCoreNumber: UInt64, normalMemory: UInt64, systemStorage: UInt64, userStorage: UInt64, gpuNumber: UInt64, gpuMemory: UInt64) {
            self.cpuCoreNumber = cpuCoreNumber
            self.normalMemory = normalMemory
            self.systemStorage = systemStorage
            self.userStorage = userStorage
            self.gpuNumber = gpuNumber
            self.gpuMemory = gpuMemory
        }

        enum CodingKeys: String, CodingKey {
            case cpuCoreNumber = "CpuCoreNumber"
            case normalMemory = "NormalMemory"
            case systemStorage = "SystemStorage"
            case userStorage = "UserStorage"
            case gpuNumber = "GpuNumber"
            case gpuMemory = "GpuMemory"
        }
    }

    /// 用户空间共享信息
    public struct WorkspaceShareInfo: TCOutputModel {
        /// 共享或不共享状态
        public let status: Bool

        /// 是否与我共享
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let withMe: Bool?

        /// 开始共享的时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let beginDate: String?

        /// 停止共享的时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endDate: String?

        /// 停止共享的时间
        public let users: [UserInfoRsp]

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case withMe = "WithMe"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case users = "Users"
        }
    }

    /// 获取用户工作空间返回信息
    public struct WorkspaceStatusInfo: TCOutputModel {
        /// 空间ID
        public let id: Int64

        /// 空间名称
        public let name: String

        /// 所属人
        public let owner: UserInfoRsp

        /// 空间标识
        public let spaceKey: String

        /// 状态
        public let status: String

        /// 最后操作时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastOpsDate: String?

        /// 描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 共享状态
        public let share: WorkspaceShareInfo

        /// 空间类型
        public let workspaceType: String

        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 空间版本
        public let workspaceVersion: Int64

        /// 图标地址
        public let imageIcon: String

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createDate: String?

        /// 版本控制地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlUrl: String?

        /// 版本控制描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlDesc: String?

        /// 版本控制引用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlRef: String?

        /// 版本控制引用类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlRefType: String?

        /// 版本控制类型
        public let versionControlType: String

        /// 模板ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: Int64?

        /// 快照ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshotUid: String?

        /// 类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let specDesc: String?

        /// CPU数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cpu: Int64?

        /// 内存
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memory: Int64?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case owner = "Owner"
            case spaceKey = "SpaceKey"
            case status = "Status"
            case lastOpsDate = "LastOpsDate"
            case description = "Description"
            case share = "Share"
            case workspaceType = "WorkspaceType"
            case label = "Label"
            case workspaceVersion = "WorkspaceVersion"
            case imageIcon = "ImageIcon"
            case createDate = "CreateDate"
            case versionControlUrl = "VersionControlUrl"
            case versionControlDesc = "VersionControlDesc"
            case versionControlRef = "VersionControlRef"
            case versionControlRefType = "VersionControlRefType"
            case versionControlType = "VersionControlType"
            case templateId = "TemplateId"
            case snapshotUid = "SnapshotUid"
            case specDesc = "SpecDesc"
            case cpu = "Cpu"
            case memory = "Memory"
        }
    }

    /// 工作空间模板信息
    public struct WorkspaceTemplateInfo: TCOutputModel {
        /// 模板ID
        public let id: Int64

        /// 模板分类
        public let category: String

        /// 模板名称
        public let name: String

        /// 模板描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 中文描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let descriptionEN: String?

        /// 模板标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: String?

        /// 模板图标地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let icon: String?

        /// 默认仓库类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlType: String?

        /// 默认仓库地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlUrl: String?

        /// 默认仓库描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlDesc: String?

        /// 默认仓库所属人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlOwner: String?

        /// 默认仓库引用地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlRef: String?

        /// 默认仓库引用类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlRefType: String?

        /// 用户自定义仓库地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userVersionControlUrl: String?

        /// 用户自定义仓库类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userVersionControlType: String?

        /// 用户自定义仓库引用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userVersionControlRef: String?

        /// 用户自定义仓库引用类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userVersionControlRefType: String?

        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devFile: String?

        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pluginFile: String?

        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let prebuildFile: String?

        /// 是否标记
        public let marked: Bool

        /// 标记状态
        public let markAt: Int64

        /// 创建时间
        public let createDate: String

        /// 最后修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModified: String?

        /// 编号
        public let sort: Int64

        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshotUid: String?

        /// 用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: Int64?

        /// 用户名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let author: String?

        /// 是否属于当前用户
        public let me: Bool

        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorAvatar: String?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case category = "Category"
            case name = "Name"
            case description = "Description"
            case descriptionEN = "DescriptionEN"
            case tags = "Tags"
            case icon = "Icon"
            case versionControlType = "VersionControlType"
            case versionControlUrl = "VersionControlUrl"
            case versionControlDesc = "VersionControlDesc"
            case versionControlOwner = "VersionControlOwner"
            case versionControlRef = "VersionControlRef"
            case versionControlRefType = "VersionControlRefType"
            case userVersionControlUrl = "UserVersionControlUrl"
            case userVersionControlType = "UserVersionControlType"
            case userVersionControlRef = "UserVersionControlRef"
            case userVersionControlRefType = "UserVersionControlRefType"
            case devFile = "DevFile"
            case pluginFile = "PluginFile"
            case prebuildFile = "PrebuildFile"
            case marked = "Marked"
            case markAt = "MarkAt"
            case createDate = "CreateDate"
            case lastModified = "LastModified"
            case sort = "Sort"
            case snapshotUid = "SnapshotUid"
            case userId = "UserId"
            case author = "Author"
            case me = "Me"
            case authorAvatar = "AuthorAvatar"
        }
    }

    /// 创建临时工作空间凭证 DTO
    public struct WorkspaceTokenDTO: TCInputModel {
        /// 工作空间 SpaceKey
        public let spaceKey: String?

        /// token过期时间，单位是秒，默认 3600
        public let tokenExpiredLimitSec: UInt64?

        public init(spaceKey: String? = nil, tokenExpiredLimitSec: UInt64? = nil) {
            self.spaceKey = spaceKey
            self.tokenExpiredLimitSec = tokenExpiredLimitSec
        }

        enum CodingKeys: String, CodingKey {
            case spaceKey = "SpaceKey"
            case tokenExpiredLimitSec = "TokenExpiredLimitSec"
        }
    }

    /// 获取工作空间临时访问 token 出参
    public struct WorkspaceTokenInfoV0: TCOutputModel {
        /// 访问工作空间临时凭证
        public let token: String

        /// token 过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expiredTime: String?

        enum CodingKeys: String, CodingKey {
            case token = "Token"
            case expiredTime = "ExpiredTime"
        }
    }
}
