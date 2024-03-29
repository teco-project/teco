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

import Logging
import NIOCore
import TecoCore

extension Cloudstudio {
    /// CreateWorkspace请求参数结构体
    public struct CreateWorkspaceRequest: TCRequest {
        /// 工作空间名称
        public let name: String

        /// 工作空间描述
        public let description: String?

        /// 工作空间规格。Standard: 2C4G, Calculation: 4C8G, Profession: 8C16G. 默认是 Standard。
        public let specs: String?

        /// 工作空间基础镜像名称, 默认会使用 All In One 镜像
        public let image: String?

        /// Git 仓库. 工作空间启动时会自动克隆该仓库
        public let repository: GitRepository?

        /// 环境变量. 会被注入到工作空间中
        public let envs: [Env]?

        /// 预装插件. 工作空间启动时, 会自动安装这些插件
        public let extensions: [String]?

        /// 工作空间生命周期钩子.  分为三个阶段 init, start, destroy. 分别表示工作空间数据初始化阶段, 工作空间启动阶段, 工作空间关闭阶段.  用户可以自定义 shell 命令.
        public let lifecycle: LifeCycle?

        public init(name: String, description: String? = nil, specs: String? = nil, image: String? = nil, repository: GitRepository? = nil, envs: [Env]? = nil, extensions: [String]? = nil, lifecycle: LifeCycle? = nil) {
            self.name = name
            self.description = description
            self.specs = specs
            self.image = image
            self.repository = repository
            self.envs = envs
            self.extensions = extensions
            self.lifecycle = lifecycle
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case specs = "Specs"
            case image = "Image"
            case repository = "Repository"
            case envs = "Envs"
            case extensions = "Extensions"
            case lifecycle = "Lifecycle"
        }
    }

    /// CreateWorkspace返回参数结构体
    public struct CreateWorkspaceResponse: TCResponse {
        /// 工作空间 SpaceKey
        public let spaceKey: String

        /// 工作空间名称
        public let name: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case spaceKey = "SpaceKey"
            case name = "Name"
            case requestId = "RequestId"
        }
    }

    /// 创建工作空间
    @inlinable
    public func createWorkspace(_ input: CreateWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceResponse> {
        self.client.execute(action: "CreateWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建工作空间
    @inlinable
    public func createWorkspace(_ input: CreateWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceResponse {
        try await self.client.execute(action: "CreateWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建工作空间
    @inlinable
    public func createWorkspace(name: String, description: String? = nil, specs: String? = nil, image: String? = nil, repository: GitRepository? = nil, envs: [Env]? = nil, extensions: [String]? = nil, lifecycle: LifeCycle? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceResponse> {
        self.createWorkspace(.init(name: name, description: description, specs: specs, image: image, repository: repository, envs: envs, extensions: extensions, lifecycle: lifecycle), region: region, logger: logger, on: eventLoop)
    }

    /// 创建工作空间
    @inlinable
    public func createWorkspace(name: String, description: String? = nil, specs: String? = nil, image: String? = nil, repository: GitRepository? = nil, envs: [Env]? = nil, extensions: [String]? = nil, lifecycle: LifeCycle? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceResponse {
        try await self.createWorkspace(.init(name: name, description: description, specs: specs, image: image, repository: repository, envs: envs, extensions: extensions, lifecycle: lifecycle), region: region, logger: logger, on: eventLoop)
    }
}
