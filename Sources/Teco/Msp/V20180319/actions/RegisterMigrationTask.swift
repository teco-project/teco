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

@_exported import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Msp {
    /// RegisterMigrationTask请求参数结构体
    public struct RegisterMigrationTaskRequest: TCRequestModel {
        /// 任务类型，取值database（数据库迁移）、file（文件迁移）、host（主机迁移）
        public let taskType: String

        /// 任务名称
        public let taskName: String

        /// 服务提供商名称
        public let serviceSupplier: String

        /// 迁移任务创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 迁移任务更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        /// 迁移类别，如数据库迁移中mysql:mysql代表从mysql迁移到mysql，文件迁移中oss:cos代表从阿里云oss迁移到腾讯云cos
        public let migrateClass: String

        /// 迁移任务源信息
        public let srcInfo: SrcInfo?

        /// 迁移任务目的信息
        public let dstInfo: DstInfo?

        /// 源实例接入类型，数据库迁移时填写值为：extranet(外网),cvm(cvm自建实例),dcg(专线接入的实例),vpncloud(云vpn接入的实例),vpnselfbuild(自建vpn接入的实例)，cdb(云上cdb实例)
        public let srcAccessType: String?

        /// 源实例数据库类型，数据库迁移时填写，取值为mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb 之一
        public let srcDatabaseType: String?

        /// 目标实例接入类型，数据库迁移时填写值为：extranet(外网),cvm(cvm自建实例),dcg(专线接入的实例),vpncloud(云vpn接入的实例),vpnselfbuild(自建vpn接入的实例)，cdb(云上cdb实例)
        public let dstAccessType: String?

        /// 目标实例数据库类型,数据库迁移时填写，取值为mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb 之一
        public let dstDatabaseType: String?

        public init(taskType: String, taskName: String, serviceSupplier: String, createTime: Date, updateTime: Date, migrateClass: String, srcInfo: SrcInfo? = nil, dstInfo: DstInfo? = nil, srcAccessType: String? = nil, srcDatabaseType: String? = nil, dstAccessType: String? = nil, dstDatabaseType: String? = nil) {
            self.taskType = taskType
            self.taskName = taskName
            self.serviceSupplier = serviceSupplier
            self._createTime = .init(wrappedValue: createTime)
            self._updateTime = .init(wrappedValue: updateTime)
            self.migrateClass = migrateClass
            self.srcInfo = srcInfo
            self.dstInfo = dstInfo
            self.srcAccessType = srcAccessType
            self.srcDatabaseType = srcDatabaseType
            self.dstAccessType = dstAccessType
            self.dstDatabaseType = dstDatabaseType
        }

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case taskName = "TaskName"
            case serviceSupplier = "ServiceSupplier"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case migrateClass = "MigrateClass"
            case srcInfo = "SrcInfo"
            case dstInfo = "DstInfo"
            case srcAccessType = "SrcAccessType"
            case srcDatabaseType = "SrcDatabaseType"
            case dstAccessType = "DstAccessType"
            case dstDatabaseType = "DstDatabaseType"
        }
    }

    /// RegisterMigrationTask返回参数结构体
    public struct RegisterMigrationTaskResponse: TCResponseModel {
        /// 任务ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 注册迁移任务
    @inlinable
    public func registerMigrationTask(_ input: RegisterMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterMigrationTaskResponse> {
        self.client.execute(action: "RegisterMigrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册迁移任务
    @inlinable
    public func registerMigrationTask(_ input: RegisterMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterMigrationTaskResponse {
        try await self.client.execute(action: "RegisterMigrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册迁移任务
    @inlinable
    public func registerMigrationTask(taskType: String, taskName: String, serviceSupplier: String, createTime: Date, updateTime: Date, migrateClass: String, srcInfo: SrcInfo? = nil, dstInfo: DstInfo? = nil, srcAccessType: String? = nil, srcDatabaseType: String? = nil, dstAccessType: String? = nil, dstDatabaseType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterMigrationTaskResponse> {
        self.registerMigrationTask(.init(taskType: taskType, taskName: taskName, serviceSupplier: serviceSupplier, createTime: createTime, updateTime: updateTime, migrateClass: migrateClass, srcInfo: srcInfo, dstInfo: dstInfo, srcAccessType: srcAccessType, srcDatabaseType: srcDatabaseType, dstAccessType: dstAccessType, dstDatabaseType: dstDatabaseType), region: region, logger: logger, on: eventLoop)
    }

    /// 注册迁移任务
    @inlinable
    public func registerMigrationTask(taskType: String, taskName: String, serviceSupplier: String, createTime: Date, updateTime: Date, migrateClass: String, srcInfo: SrcInfo? = nil, dstInfo: DstInfo? = nil, srcAccessType: String? = nil, srcDatabaseType: String? = nil, dstAccessType: String? = nil, dstDatabaseType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterMigrationTaskResponse {
        try await self.registerMigrationTask(.init(taskType: taskType, taskName: taskName, serviceSupplier: serviceSupplier, createTime: createTime, updateTime: updateTime, migrateClass: migrateClass, srcInfo: srcInfo, dstInfo: dstInfo, srcAccessType: srcAccessType, srcDatabaseType: srcDatabaseType, dstAccessType: dstAccessType, dstDatabaseType: dstDatabaseType), region: region, logger: logger, on: eventLoop)
    }
}
