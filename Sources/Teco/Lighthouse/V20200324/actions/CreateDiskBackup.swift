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

extension Lighthouse {
    /// CreateDiskBackup请求参数结构体
    public struct CreateDiskBackupRequest: TCRequestModel {
        /// 云硬盘 ID。当前只支持数据盘创建备份点。
        public let diskId: String

        /// 云硬盘备份点名称，最大长度90。
        public let diskBackupName: String?

        public init(diskId: String, diskBackupName: String? = nil) {
            self.diskId = diskId
            self.diskBackupName = diskBackupName
        }

        enum CodingKeys: String, CodingKey {
            case diskId = "DiskId"
            case diskBackupName = "DiskBackupName"
        }
    }

    /// CreateDiskBackup返回参数结构体
    public struct CreateDiskBackupResponse: TCResponseModel {
        /// 备份点ID。
        public let diskBackupId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskBackupId = "DiskBackupId"
            case requestId = "RequestId"
        }
    }

    /// 创建云硬盘备份点
    ///
    /// 本接口 ( CreateDiskBackup  ) 用于创建指定云硬盘（当前只支持数据盘）的备份点。
    @inlinable
    public func createDiskBackup(_ input: CreateDiskBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiskBackupResponse> {
        self.client.execute(action: "CreateDiskBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云硬盘备份点
    ///
    /// 本接口 ( CreateDiskBackup  ) 用于创建指定云硬盘（当前只支持数据盘）的备份点。
    @inlinable
    public func createDiskBackup(_ input: CreateDiskBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDiskBackupResponse {
        try await self.client.execute(action: "CreateDiskBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云硬盘备份点
    ///
    /// 本接口 ( CreateDiskBackup  ) 用于创建指定云硬盘（当前只支持数据盘）的备份点。
    @inlinable
    public func createDiskBackup(diskId: String, diskBackupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiskBackupResponse> {
        self.createDiskBackup(.init(diskId: diskId, diskBackupName: diskBackupName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云硬盘备份点
    ///
    /// 本接口 ( CreateDiskBackup  ) 用于创建指定云硬盘（当前只支持数据盘）的备份点。
    @inlinable
    public func createDiskBackup(diskId: String, diskBackupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDiskBackupResponse {
        try await self.createDiskBackup(.init(diskId: diskId, diskBackupName: diskBackupName), region: region, logger: logger, on: eventLoop)
    }
}
