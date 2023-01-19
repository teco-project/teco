//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Wedata {
    /// ModifyFolder请求参数结构体
    public struct ModifyFolderRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 文件夹名称
        public let folderName: String

        /// 文件夹Id
        public let folderId: String

        /// 父文件夹ID
        public let parentsFolderId: String?

        public init(projectId: String, folderName: String, folderId: String, parentsFolderId: String? = nil) {
            self.projectId = projectId
            self.folderName = folderName
            self.folderId = folderId
            self.parentsFolderId = parentsFolderId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case folderName = "FolderName"
            case folderId = "FolderId"
            case parentsFolderId = "ParentsFolderId"
        }
    }

    /// ModifyFolder返回参数结构体
    public struct ModifyFolderResponse: TCResponseModel {
        /// true代表成功，false代表失败
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 文件夹更新【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 文件夹更新
    @inlinable
    public func modifyFolder(_ input: ModifyFolderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFolderResponse> {
        self.client.execute(action: "ModifyFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件夹更新【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 文件夹更新
    @inlinable
    public func modifyFolder(_ input: ModifyFolderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFolderResponse {
        try await self.client.execute(action: "ModifyFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文件夹更新【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 文件夹更新
    @inlinable
    public func modifyFolder(projectId: String, folderName: String, folderId: String, parentsFolderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFolderResponse> {
        self.modifyFolder(ModifyFolderRequest(projectId: projectId, folderName: folderName, folderId: folderId, parentsFolderId: parentsFolderId), region: region, logger: logger, on: eventLoop)
    }

    /// 文件夹更新【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 文件夹更新
    @inlinable
    public func modifyFolder(projectId: String, folderName: String, folderId: String, parentsFolderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFolderResponse {
        try await self.modifyFolder(ModifyFolderRequest(projectId: projectId, folderName: folderName, folderId: folderId, parentsFolderId: parentsFolderId), region: region, logger: logger, on: eventLoop)
    }
}
