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

extension Pts {
    /// DeleteFiles请求参数结构体
    public struct DeleteFilesRequest: TCRequestModel {
        /// 项目 ID
        public let projectId: String

        /// 文件 ID 数组
        public let fileIds: [String]

        public init(projectId: String, fileIds: [String]) {
            self.projectId = projectId
            self.fileIds = fileIds
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case fileIds = "FileIds"
        }
    }

    /// DeleteFiles返回参数结构体
    public struct DeleteFilesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除文件
    @inlinable @discardableResult
    public func deleteFiles(_ input: DeleteFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFilesResponse> {
        self.client.execute(action: "DeleteFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除文件
    @inlinable @discardableResult
    public func deleteFiles(_ input: DeleteFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFilesResponse {
        try await self.client.execute(action: "DeleteFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除文件
    @inlinable @discardableResult
    public func deleteFiles(projectId: String, fileIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFilesResponse> {
        self.deleteFiles(.init(projectId: projectId, fileIds: fileIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除文件
    @inlinable @discardableResult
    public func deleteFiles(projectId: String, fileIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFilesResponse {
        try await self.deleteFiles(.init(projectId: projectId, fileIds: fileIds), region: region, logger: logger, on: eventLoop)
    }
}
