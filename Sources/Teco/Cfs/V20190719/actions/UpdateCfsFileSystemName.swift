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

import TecoCore

extension Cfs {
    /// UpdateCfsFileSystemName请求参数结构体
    public struct UpdateCfsFileSystemNameRequest: TCRequestModel {
        /// 文件系统 ID
        public let fileSystemId: String

        /// 用户自定义文件系统名称
        public let fsName: String?

        public init(fileSystemId: String, fsName: String? = nil) {
            self.fileSystemId = fileSystemId
            self.fsName = fsName
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case fsName = "FsName"
        }
    }

    /// UpdateCfsFileSystemName返回参数结构体
    public struct UpdateCfsFileSystemNameResponse: TCResponseModel {
        /// 用户自定义文件系统名称
        public let creationToken: String

        /// 文件系统ID
        public let fileSystemId: String

        /// 用户自定义文件系统名称
        public let fsName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case creationToken = "CreationToken"
            case fileSystemId = "FileSystemId"
            case fsName = "FsName"
            case requestId = "RequestId"
        }
    }

    /// 更新文件系统名
    ///
    /// 本接口（UpdateCfsFileSystemName）用于更新文件系统名
    @inlinable
    public func updateCfsFileSystemName(_ input: UpdateCfsFileSystemNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCfsFileSystemNameResponse> {
        self.client.execute(action: "UpdateCfsFileSystemName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新文件系统名
    ///
    /// 本接口（UpdateCfsFileSystemName）用于更新文件系统名
    @inlinable
    public func updateCfsFileSystemName(_ input: UpdateCfsFileSystemNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsFileSystemNameResponse {
        try await self.client.execute(action: "UpdateCfsFileSystemName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新文件系统名
    ///
    /// 本接口（UpdateCfsFileSystemName）用于更新文件系统名
    @inlinable
    public func updateCfsFileSystemName(fileSystemId: String, fsName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCfsFileSystemNameResponse> {
        self.updateCfsFileSystemName(.init(fileSystemId: fileSystemId, fsName: fsName), region: region, logger: logger, on: eventLoop)
    }

    /// 更新文件系统名
    ///
    /// 本接口（UpdateCfsFileSystemName）用于更新文件系统名
    @inlinable
    public func updateCfsFileSystemName(fileSystemId: String, fsName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsFileSystemNameResponse {
        try await self.updateCfsFileSystemName(.init(fileSystemId: fileSystemId, fsName: fsName), region: region, logger: logger, on: eventLoop)
    }
}
