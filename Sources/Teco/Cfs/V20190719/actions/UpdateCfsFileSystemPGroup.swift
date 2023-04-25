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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cfs {
    /// UpdateCfsFileSystemPGroup请求参数结构体
    public struct UpdateCfsFileSystemPGroupRequest: TCRequestModel {
        /// 权限组 ID
        public let pGroupId: String

        /// 文件系统 ID
        public let fileSystemId: String

        public init(pGroupId: String, fileSystemId: String) {
            self.pGroupId = pGroupId
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
            case fileSystemId = "FileSystemId"
        }
    }

    /// UpdateCfsFileSystemPGroup返回参数结构体
    public struct UpdateCfsFileSystemPGroupResponse: TCResponseModel {
        /// 权限组 ID
        public let pGroupId: String

        /// 文件系统 ID
        public let fileSystemId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
            case fileSystemId = "FileSystemId"
            case requestId = "RequestId"
        }
    }

    /// 更新文件系统的权限组
    ///
    /// 本接口（UpdateCfsFileSystemPGroup）用于更新文件系统所使用的权限组
    @inlinable
    public func updateCfsFileSystemPGroup(_ input: UpdateCfsFileSystemPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCfsFileSystemPGroupResponse> {
        self.client.execute(action: "UpdateCfsFileSystemPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新文件系统的权限组
    ///
    /// 本接口（UpdateCfsFileSystemPGroup）用于更新文件系统所使用的权限组
    @inlinable
    public func updateCfsFileSystemPGroup(_ input: UpdateCfsFileSystemPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsFileSystemPGroupResponse {
        try await self.client.execute(action: "UpdateCfsFileSystemPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新文件系统的权限组
    ///
    /// 本接口（UpdateCfsFileSystemPGroup）用于更新文件系统所使用的权限组
    @inlinable
    public func updateCfsFileSystemPGroup(pGroupId: String, fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCfsFileSystemPGroupResponse> {
        self.updateCfsFileSystemPGroup(.init(pGroupId: pGroupId, fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新文件系统的权限组
    ///
    /// 本接口（UpdateCfsFileSystemPGroup）用于更新文件系统所使用的权限组
    @inlinable
    public func updateCfsFileSystemPGroup(pGroupId: String, fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsFileSystemPGroupResponse {
        try await self.updateCfsFileSystemPGroup(.init(pGroupId: pGroupId, fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }
}
