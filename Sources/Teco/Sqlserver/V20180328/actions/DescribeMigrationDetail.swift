//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
import TecoDateHelpers

extension Sqlserver {
    /// DescribeMigrationDetail请求参数结构体
    public struct DescribeMigrationDetailRequest: TCRequestModel {
        /// 迁移任务ID
        public let migrateId: UInt64

        public init(migrateId: UInt64) {
            self.migrateId = migrateId
        }

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
        }
    }

    /// DescribeMigrationDetail返回参数结构体
    public struct DescribeMigrationDetailResponse: TCResponseModel {
        /// 迁移任务ID
        public let migrateId: UInt64

        /// 迁移任务名称
        public let migrateName: String

        /// 迁移任务所属的用户ID
        public let appId: UInt64

        /// 迁移任务所属的地域
        public let region: String

        /// 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        public let sourceType: Int64

        /// 迁移任务的创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var createTime: Date

        /// 迁移任务的开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date

        /// 迁移任务的结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date

        /// 迁移任务的状态（1:初始化,4:迁移中,5.迁移失败,6.迁移成功）
        public let status: UInt64

        /// 迁移任务当前进度
        public let progress: Int64

        /// 迁移类型（1:结构迁移 2:数据迁移 3:增量同步）
        public let migrateType: Int64

        /// 迁移源
        public let source: MigrateSource

        /// 迁移目标
        public let target: MigrateTarget

        /// 迁移DB对象 ，离线迁移（SourceType=4或SourceType=5）不使用。
        public let migrateDBSet: [MigrateDB]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
            case migrateName = "MigrateName"
            case appId = "AppId"
            case region = "Region"
            case sourceType = "SourceType"
            case createTime = "CreateTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case progress = "Progress"
            case migrateType = "MigrateType"
            case source = "Source"
            case target = "Target"
            case migrateDBSet = "MigrateDBSet"
            case requestId = "RequestId"
        }
    }

    /// 查询迁移任务详情
    ///
    /// 本接口（DescribeMigrationDetail）用于查询迁移任务的详细情况
    @inlinable
    public func describeMigrationDetail(_ input: DescribeMigrationDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMigrationDetailResponse > {
        self.client.execute(action: "DescribeMigrationDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询迁移任务详情
    ///
    /// 本接口（DescribeMigrationDetail）用于查询迁移任务的详细情况
    @inlinable
    public func describeMigrationDetail(_ input: DescribeMigrationDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationDetailResponse {
        try await self.client.execute(action: "DescribeMigrationDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询迁移任务详情
    ///
    /// 本接口（DescribeMigrationDetail）用于查询迁移任务的详细情况
    @inlinable
    public func describeMigrationDetail(migrateId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMigrationDetailResponse > {
        self.describeMigrationDetail(DescribeMigrationDetailRequest(migrateId: migrateId), logger: logger, on: eventLoop)
    }

    /// 查询迁移任务详情
    ///
    /// 本接口（DescribeMigrationDetail）用于查询迁移任务的详细情况
    @inlinable
    public func describeMigrationDetail(migrateId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationDetailResponse {
        try await self.describeMigrationDetail(DescribeMigrationDetailRequest(migrateId: migrateId), logger: logger, on: eventLoop)
    }
}
