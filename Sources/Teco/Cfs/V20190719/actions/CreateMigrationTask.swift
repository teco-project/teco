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
    /// CreateMigrationTask请求参数结构体
    public struct CreateMigrationTaskRequest: TCRequest {
        /// 迁移任务名称
        public let taskName: String

        /// 迁移方式标志位，默认为0。0: 桶迁移；1: 清单迁移
        public let migrationType: UInt64

        /// 迁移模式，默认为0。0: 全量迁移
        public let migrationMode: UInt64

        /// 数据源账号的SecretId
        public let srcSecretId: String

        /// 数据源账号的SecretKey
        public let srcSecretKey: String

        /// 文件系统实例Id
        public let fileSystemId: String

        /// 文件系统路径
        public let fsPath: String

        /// 同名文件迁移时覆盖策略，默认为0。0: 最后修改时间优先；1: 全覆盖；2: 不覆盖
        public let coverType: UInt64

        /// 数据源服务商。COS: 腾讯云COS，OSS: 阿里云OSS，OBS:华为云OBS
        public let srcService: String

        /// 数据源桶名称，名称和地址至少有一个
        public let bucketName: String?

        /// 数据源桶地域
        public let bucketRegion: String?

        /// 数据源桶地址，名称和地址至少有一个
        public let bucketAddress: String?

        /// 清单地址，迁移方式为清单迁移时必填
        public let listAddress: String?

        /// 目标文件系统名称
        public let fsName: String?

        /// 源桶路径，默认为/
        public let bucketPath: String?

        public init(taskName: String, migrationType: UInt64, migrationMode: UInt64, srcSecretId: String, srcSecretKey: String, fileSystemId: String, fsPath: String, coverType: UInt64, srcService: String, bucketName: String? = nil, bucketRegion: String? = nil, bucketAddress: String? = nil, listAddress: String? = nil, fsName: String? = nil, bucketPath: String? = nil) {
            self.taskName = taskName
            self.migrationType = migrationType
            self.migrationMode = migrationMode
            self.srcSecretId = srcSecretId
            self.srcSecretKey = srcSecretKey
            self.fileSystemId = fileSystemId
            self.fsPath = fsPath
            self.coverType = coverType
            self.srcService = srcService
            self.bucketName = bucketName
            self.bucketRegion = bucketRegion
            self.bucketAddress = bucketAddress
            self.listAddress = listAddress
            self.fsName = fsName
            self.bucketPath = bucketPath
        }

        enum CodingKeys: String, CodingKey {
            case taskName = "TaskName"
            case migrationType = "MigrationType"
            case migrationMode = "MigrationMode"
            case srcSecretId = "SrcSecretId"
            case srcSecretKey = "SrcSecretKey"
            case fileSystemId = "FileSystemId"
            case fsPath = "FsPath"
            case coverType = "CoverType"
            case srcService = "SrcService"
            case bucketName = "BucketName"
            case bucketRegion = "BucketRegion"
            case bucketAddress = "BucketAddress"
            case listAddress = "ListAddress"
            case fsName = "FsName"
            case bucketPath = "BucketPath"
        }
    }

    /// CreateMigrationTask返回参数结构体
    public struct CreateMigrationTaskResponse: TCResponse {
        /// 迁移任务Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建迁移任务
    ///
    /// 用于创建迁移任务。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func createMigrationTask(_ input: CreateMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationTaskResponse> {
        self.client.execute(action: "CreateMigrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建迁移任务
    ///
    /// 用于创建迁移任务。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func createMigrationTask(_ input: CreateMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrationTaskResponse {
        try await self.client.execute(action: "CreateMigrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建迁移任务
    ///
    /// 用于创建迁移任务。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func createMigrationTask(taskName: String, migrationType: UInt64, migrationMode: UInt64, srcSecretId: String, srcSecretKey: String, fileSystemId: String, fsPath: String, coverType: UInt64, srcService: String, bucketName: String? = nil, bucketRegion: String? = nil, bucketAddress: String? = nil, listAddress: String? = nil, fsName: String? = nil, bucketPath: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationTaskResponse> {
        self.createMigrationTask(.init(taskName: taskName, migrationType: migrationType, migrationMode: migrationMode, srcSecretId: srcSecretId, srcSecretKey: srcSecretKey, fileSystemId: fileSystemId, fsPath: fsPath, coverType: coverType, srcService: srcService, bucketName: bucketName, bucketRegion: bucketRegion, bucketAddress: bucketAddress, listAddress: listAddress, fsName: fsName, bucketPath: bucketPath), region: region, logger: logger, on: eventLoop)
    }

    /// 创建迁移任务
    ///
    /// 用于创建迁移任务。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func createMigrationTask(taskName: String, migrationType: UInt64, migrationMode: UInt64, srcSecretId: String, srcSecretKey: String, fileSystemId: String, fsPath: String, coverType: UInt64, srcService: String, bucketName: String? = nil, bucketRegion: String? = nil, bucketAddress: String? = nil, listAddress: String? = nil, fsName: String? = nil, bucketPath: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrationTaskResponse {
        try await self.createMigrationTask(.init(taskName: taskName, migrationType: migrationType, migrationMode: migrationMode, srcSecretId: srcSecretId, srcSecretKey: srcSecretKey, fileSystemId: fileSystemId, fsPath: fsPath, coverType: coverType, srcService: srcService, bucketName: bucketName, bucketRegion: bucketRegion, bucketAddress: bucketAddress, listAddress: listAddress, fsName: fsName, bucketPath: bucketPath), region: region, logger: logger, on: eventLoop)
    }
}
