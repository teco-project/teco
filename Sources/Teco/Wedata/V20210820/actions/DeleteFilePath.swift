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

import Logging
import NIOCore
import TecoCore

extension Wedata {
    /// DeleteFilePath请求参数结构体
    public struct DeleteFilePathRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 资源ID
        public let resourceIds: [String]

        /// 使用状态
        public let useStatus: String

        /// 文件路径
        public let filePaths: [String]?

        public init(projectId: String, resourceIds: [String], useStatus: String, filePaths: [String]? = nil) {
            self.projectId = projectId
            self.resourceIds = resourceIds
            self.useStatus = useStatus
            self.filePaths = filePaths
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case resourceIds = "ResourceIds"
            case useStatus = "UseStatus"
            case filePaths = "FilePaths"
        }
    }

    /// DeleteFilePath返回参数结构体
    public struct DeleteFilePathResponse: TCResponseModel {
        /// 文件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userFileList: [UserFileInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userFileList = "UserFileList"
            case requestId = "RequestId"
        }
    }

    /// 开发空间-批量删除目录和文件
    @inlinable
    public func deleteFilePath(_ input: DeleteFilePathRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFilePathResponse> {
        self.client.execute(action: "DeleteFilePath", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开发空间-批量删除目录和文件
    @inlinable
    public func deleteFilePath(_ input: DeleteFilePathRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFilePathResponse {
        try await self.client.execute(action: "DeleteFilePath", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开发空间-批量删除目录和文件
    @inlinable
    public func deleteFilePath(projectId: String, resourceIds: [String], useStatus: String, filePaths: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFilePathResponse> {
        self.deleteFilePath(.init(projectId: projectId, resourceIds: resourceIds, useStatus: useStatus, filePaths: filePaths), region: region, logger: logger, on: eventLoop)
    }

    /// 开发空间-批量删除目录和文件
    @inlinable
    public func deleteFilePath(projectId: String, resourceIds: [String], useStatus: String, filePaths: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFilePathResponse {
        try await self.deleteFilePath(.init(projectId: projectId, resourceIds: resourceIds, useStatus: useStatus, filePaths: filePaths), region: region, logger: logger, on: eventLoop)
    }
}