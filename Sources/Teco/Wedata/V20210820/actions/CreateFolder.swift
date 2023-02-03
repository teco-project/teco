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

extension Wedata {
    /// CreateFolder请求参数结构体
    public struct CreateFolderRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 文件夹名称
        public let folderName: String

        /// 父文件夹ID
        public let parentsFolderId: String?

        public init(projectId: String, folderName: String, parentsFolderId: String? = nil) {
            self.projectId = projectId
            self.folderName = folderName
            self.parentsFolderId = parentsFolderId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case folderName = "FolderName"
            case parentsFolderId = "ParentsFolderId"
        }
    }

    /// CreateFolder返回参数结构体
    public struct CreateFolderResponse: TCResponseModel {
        /// 文件夹Id，null则创建失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CommonId?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建文件夹
    @inlinable
    public func createFolder(_ input: CreateFolderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFolderResponse> {
        self.client.execute(action: "CreateFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建文件夹
    @inlinable
    public func createFolder(_ input: CreateFolderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFolderResponse {
        try await self.client.execute(action: "CreateFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建文件夹
    @inlinable
    public func createFolder(projectId: String, folderName: String, parentsFolderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFolderResponse> {
        let input = CreateFolderRequest(projectId: projectId, folderName: folderName, parentsFolderId: parentsFolderId)
        return self.client.execute(action: "CreateFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建文件夹
    @inlinable
    public func createFolder(projectId: String, folderName: String, parentsFolderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFolderResponse {
        let input = CreateFolderRequest(projectId: projectId, folderName: folderName, parentsFolderId: parentsFolderId)
        return try await self.client.execute(action: "CreateFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
