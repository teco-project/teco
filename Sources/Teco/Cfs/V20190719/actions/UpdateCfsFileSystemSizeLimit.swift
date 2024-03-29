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

extension Cfs {
    /// UpdateCfsFileSystemSizeLimit请求参数结构体
    public struct UpdateCfsFileSystemSizeLimitRequest: TCRequest {
        /// 文件系统容量限制大小，输入范围0-1073741824, 单位为GB；其中输入值为0时，表示不限制文件系统容量。
        public let fsLimit: UInt64

        /// 文件系统ID，目前仅支持标准型文件系统。
        public let fileSystemId: String

        public init(fsLimit: UInt64, fileSystemId: String) {
            self.fsLimit = fsLimit
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fsLimit = "FsLimit"
            case fileSystemId = "FileSystemId"
        }
    }

    /// UpdateCfsFileSystemSizeLimit返回参数结构体
    public struct UpdateCfsFileSystemSizeLimitResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新文件系统存储容量限制
    ///
    /// 本接口（UpdateCfsFileSystemSizeLimit）用于更新文件系统存储容量限制。
    @inlinable @discardableResult
    public func updateCfsFileSystemSizeLimit(_ input: UpdateCfsFileSystemSizeLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCfsFileSystemSizeLimitResponse> {
        self.client.execute(action: "UpdateCfsFileSystemSizeLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新文件系统存储容量限制
    ///
    /// 本接口（UpdateCfsFileSystemSizeLimit）用于更新文件系统存储容量限制。
    @inlinable @discardableResult
    public func updateCfsFileSystemSizeLimit(_ input: UpdateCfsFileSystemSizeLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsFileSystemSizeLimitResponse {
        try await self.client.execute(action: "UpdateCfsFileSystemSizeLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新文件系统存储容量限制
    ///
    /// 本接口（UpdateCfsFileSystemSizeLimit）用于更新文件系统存储容量限制。
    @inlinable @discardableResult
    public func updateCfsFileSystemSizeLimit(fsLimit: UInt64, fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCfsFileSystemSizeLimitResponse> {
        self.updateCfsFileSystemSizeLimit(.init(fsLimit: fsLimit, fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新文件系统存储容量限制
    ///
    /// 本接口（UpdateCfsFileSystemSizeLimit）用于更新文件系统存储容量限制。
    @inlinable @discardableResult
    public func updateCfsFileSystemSizeLimit(fsLimit: UInt64, fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsFileSystemSizeLimitResponse {
        try await self.updateCfsFileSystemSizeLimit(.init(fsLimit: fsLimit, fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }
}
