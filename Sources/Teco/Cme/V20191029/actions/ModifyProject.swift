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

extension Cme {
    /// ModifyProject请求参数结构体
    public struct ModifyProjectRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 项目 Id。
        public let projectId: String

        /// 项目名称，不可超过30个字符。
        public let name: String?

        /// 画布宽高比，值为视频编辑项目画布宽与高的像素值的比值，如 16:9、9:16 等。
        public let aspectRatio: String?

        /// 项目所有者。目前仅支持个人项目，不支持团队项目。
        public let owner: Entity?

        /// 项目模式，一个项目可以有多种模式并相互切换。
        /// 当 Category 为 VIDEO_EDIT 时，可选模式有：
        /// <li>Default：默认模式，即普通视频编辑项目。</li>
        /// <li>VideoEditTemplate：剪辑模板制作模式，用于制作剪辑模板。</li>
        public let mode: String?

        public init(platform: String, projectId: String, name: String? = nil, aspectRatio: String? = nil, owner: Entity? = nil, mode: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.name = name
            self.aspectRatio = aspectRatio
            self.owner = owner
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case name = "Name"
            case aspectRatio = "AspectRatio"
            case owner = "Owner"
            case mode = "Mode"
        }
    }

    /// ModifyProject返回参数结构体
    public struct ModifyProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改项目
    ///
    /// 修改项目信息。
    @inlinable @discardableResult
    public func modifyProject(_ input: ModifyProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectResponse> {
        self.client.execute(action: "ModifyProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改项目
    ///
    /// 修改项目信息。
    @inlinable @discardableResult
    public func modifyProject(_ input: ModifyProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectResponse {
        try await self.client.execute(action: "ModifyProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改项目
    ///
    /// 修改项目信息。
    @inlinable @discardableResult
    public func modifyProject(platform: String, projectId: String, name: String? = nil, aspectRatio: String? = nil, owner: Entity? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectResponse> {
        self.modifyProject(ModifyProjectRequest(platform: platform, projectId: projectId, name: name, aspectRatio: aspectRatio, owner: owner, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改项目
    ///
    /// 修改项目信息。
    @inlinable @discardableResult
    public func modifyProject(platform: String, projectId: String, name: String? = nil, aspectRatio: String? = nil, owner: Entity? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectResponse {
        try await self.modifyProject(ModifyProjectRequest(platform: platform, projectId: projectId, name: name, aspectRatio: aspectRatio, owner: owner, mode: mode), region: region, logger: logger, on: eventLoop)
    }
}
