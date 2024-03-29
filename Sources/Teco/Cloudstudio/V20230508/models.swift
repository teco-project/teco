//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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
    /// 环境变量
    public struct Env: TCInputModel {
        /// 环境变量 key
        public let name: String?

        /// 环境变量 value
        public let value: String?

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// Git 仓库
    public struct GitRepository: TCInputModel {
        /// Git 仓库地址
        public let url: String

        /// Git 仓库分支名或 Tag 名
        public let branch: String?

        public init(url: String, branch: String? = nil) {
            self.url = url
            self.branch = branch
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case branch = "Branch"
        }
    }

    /// 基础镜像
    public struct Image: TCOutputModel {
        /// 镜像名称
        public let name: String?

        /// 镜像仓库
        public let repository: String?

        /// tag 列表
        public let tags: [String]?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case repository = "Repository"
            case tags = "Tags"
        }
    }

    /// 工作空间生命周期自动执行脚本
    public struct LifeCycle: TCInputModel {
        /// 工作空间首次初始化时执行
        public let `init`: [LifeCycleCommand]?

        /// 每次工作空间启动时执行
        public let start: [LifeCycleCommand]?

        /// 每次工作空间关闭时执行
        public let destroy: [LifeCycleCommand]?

        public init(init: [LifeCycleCommand]? = nil, start: [LifeCycleCommand]? = nil, destroy: [LifeCycleCommand]? = nil) {
            self.`init` = `init`
            self.start = start
            self.destroy = destroy
        }

        enum CodingKeys: String, CodingKey {
            case `init` = "Init"
            case start = "Start"
            case destroy = "Destroy"
        }
    }

    /// 工作空间生命周期执行指令
    public struct LifeCycleCommand: TCInputModel {
        /// 指令描述
        public let name: String?

        /// 具体命令
        public let command: String?

        public init(name: String, command: String) {
            self.name = name
            self.command = command
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case command = "Command"
        }
    }

    /// 获取用户工作空间返回信息
    public struct WorkspaceStatusInfo: TCOutputModel {
        /// 工作空间 ID
        public let id: Int64

        /// 工作空间名称
        public let name: String

        /// 工作空间标识
        public let spaceKey: String

        /// 工作空间状态
        public let status: String

        /// CPU数量
        public let cpu: Int64

        /// 内存
        public let memory: Int64

        /// 工作空间图标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let icon: String?

        /// 工作空间状态, 异常原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusReason: String?

        /// 工作空间描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 工作空间类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workspaceType: String?

        /// Git 仓库 HTTPS 地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlUrl: String?

        /// Git 仓库引用。指定分支使用 /refs/heads/{分支名}, 指定 Tag 用 /refs/tags/{Tag名}
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionControlRef: String?

        /// 最后操作时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastOpsDate: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createDate: String?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case spaceKey = "SpaceKey"
            case status = "Status"
            case cpu = "Cpu"
            case memory = "Memory"
            case icon = "Icon"
            case statusReason = "StatusReason"
            case description = "Description"
            case workspaceType = "WorkspaceType"
            case versionControlUrl = "VersionControlUrl"
            case versionControlRef = "VersionControlRef"
            case lastOpsDate = "LastOpsDate"
            case createDate = "CreateDate"
        }
    }
}
