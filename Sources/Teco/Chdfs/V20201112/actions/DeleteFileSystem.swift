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

extension Chdfs {
    /// DeleteFileSystem请求参数结构体
    public struct DeleteFileSystemRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    /// DeleteFileSystem返回参数结构体
    public struct DeleteFileSystemResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除文件系统
    ///
    /// 删除文件系统，不允许删除非空文件系统。
    @inlinable
    public func deleteFileSystem(_ input: DeleteFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFileSystemResponse> {
        self.client.execute(action: "DeleteFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除文件系统
    ///
    /// 删除文件系统，不允许删除非空文件系统。
    @inlinable
    public func deleteFileSystem(_ input: DeleteFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFileSystemResponse {
        try await self.client.execute(action: "DeleteFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除文件系统
    ///
    /// 删除文件系统，不允许删除非空文件系统。
    @inlinable
    public func deleteFileSystem(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFileSystemResponse> {
        self.deleteFileSystem(DeleteFileSystemRequest(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除文件系统
    ///
    /// 删除文件系统，不允许删除非空文件系统。
    @inlinable
    public func deleteFileSystem(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFileSystemResponse {
        try await self.deleteFileSystem(DeleteFileSystemRequest(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }
}
