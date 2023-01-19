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
    /// DeleteFolder请求参数结构体
    public struct DeleteFolderRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 文件夹ID
        public let folderId: String

        public init(projectId: String, folderId: String) {
            self.projectId = projectId
            self.folderId = folderId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case folderId = "FolderId"
        }
    }

    /// DeleteFolder返回参数结构体
    public struct DeleteFolderResponse: TCResponseModel {
        /// true代表删除成功，false代表删除失败
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 删除文件夹
    @inlinable
    public func deleteFolder(_ input: DeleteFolderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFolderResponse> {
        self.client.execute(action: "DeleteFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 删除文件夹
    @inlinable
    public func deleteFolder(_ input: DeleteFolderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFolderResponse {
        try await self.client.execute(action: "DeleteFolder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 删除文件夹
    @inlinable
    public func deleteFolder(projectId: String, folderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFolderResponse> {
        self.deleteFolder(DeleteFolderRequest(projectId: projectId, folderId: folderId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除文件夹【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 删除文件夹
    @inlinable
    public func deleteFolder(projectId: String, folderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFolderResponse {
        try await self.deleteFolder(DeleteFolderRequest(projectId: projectId, folderId: folderId), region: region, logger: logger, on: eventLoop)
    }
}
