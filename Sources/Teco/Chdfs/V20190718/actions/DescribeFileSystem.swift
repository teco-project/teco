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

extension Chdfs {
    /// DescribeFileSystem请求参数结构体
    public struct DescribeFileSystemRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    /// DescribeFileSystem返回参数结构体
    public struct DescribeFileSystemResponse: TCResponseModel {
        /// 文件系统
        public let fileSystem: FileSystem

        /// 文件系统已使用容量（已弃用）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSystemCapacityUsed: UInt64?

        /// 已使用容量（byte），包括标准和归档存储
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let capacityUsed: UInt64?

        /// 已使用归档存储容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let archiveCapacityUsed: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileSystem = "FileSystem"
            case fileSystemCapacityUsed = "FileSystemCapacityUsed"
            case capacityUsed = "CapacityUsed"
            case archiveCapacityUsed = "ArchiveCapacityUsed"
            case requestId = "RequestId"
        }
    }

    /// 查看文件系统详细信息
    ///
    /// 查看文件系统详细信息。
    @available(*, unavailable, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeFileSystem(_ input: DescribeFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileSystemResponse> {
        self.client.execute(action: "DescribeFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看文件系统详细信息
    ///
    /// 查看文件系统详细信息。
    @available(*, unavailable, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeFileSystem(_ input: DescribeFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileSystemResponse {
        try await self.client.execute(action: "DescribeFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看文件系统详细信息
    ///
    /// 查看文件系统详细信息。
    @available(*, unavailable, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeFileSystem(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileSystemResponse> {
        let input = DescribeFileSystemRequest(fileSystemId: fileSystemId)
        return self.client.execute(action: "DescribeFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看文件系统详细信息
    ///
    /// 查看文件系统详细信息。
    @available(*, unavailable, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeFileSystem(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileSystemResponse {
        let input = DescribeFileSystemRequest(fileSystemId: fileSystemId)
        return try await self.client.execute(action: "DescribeFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
