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
    /// CreateFileSystem请求参数结构体
    public struct CreateFileSystemRequest: TCRequestModel {
        /// 文件系统名称
        public let fileSystemName: String

        /// 文件系统容量（byte），下限为1G，上限为1P，且必须是1G的整数倍
        public let capacityQuota: UInt64

        /// 文件系统描述
        public let description: String?

        public init(fileSystemName: String, capacityQuota: UInt64, description: String? = nil) {
            self.fileSystemName = fileSystemName
            self.capacityQuota = capacityQuota
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemName = "FileSystemName"
            case capacityQuota = "CapacityQuota"
            case description = "Description"
        }
    }

    /// CreateFileSystem返回参数结构体
    public struct CreateFileSystemResponse: TCResponseModel {
        /// 文件系统
        public let fileSystem: FileSystem

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileSystem = "FileSystem"
            case requestId = "RequestId"
        }
    }

    /// 创建文件系统
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 创建文件系统（异步）。
    @inlinable
    public func createFileSystem(_ input: CreateFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFileSystemResponse> {
        self.client.execute(action: "CreateFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文件系统
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 创建文件系统（异步）。
    @inlinable
    public func createFileSystem(_ input: CreateFileSystemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileSystemResponse {
        try await self.client.execute(action: "CreateFileSystem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文件系统
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 创建文件系统（异步）。
    @inlinable
    public func createFileSystem(fileSystemName: String, capacityQuota: UInt64, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFileSystemResponse> {
        self.createFileSystem(CreateFileSystemRequest(fileSystemName: fileSystemName, capacityQuota: capacityQuota, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建文件系统
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 创建文件系统（异步）。
    @inlinable
    public func createFileSystem(fileSystemName: String, capacityQuota: UInt64, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileSystemResponse {
        try await self.createFileSystem(CreateFileSystemRequest(fileSystemName: fileSystemName, capacityQuota: capacityQuota, description: description), region: region, logger: logger, on: eventLoop)
    }
}
