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

extension Dts {
    /// CreateMigrationService请求参数结构体
    public struct CreateMigrationServiceRequest: TCRequestModel {
        /// 源实例数据库类型，mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb
        public let srcDatabaseType: String

        /// 目标实例数据库类型，mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb
        public let dstDatabaseType: String

        /// 源实例地域，如：ap-guangzhou
        public let srcRegion: String

        /// 目标实例地域，如：ap-guangzhou。注意，目标地域必须和API请求地域保持一致。
        public let dstRegion: String

        /// 实例规格，包括：small、medium、large、xlarge、2xlarge
        public let instanceClass: String

        /// 购买数量，范围为[1,15]，默认为1
        public let count: UInt64?

        /// 迁移服务名称，最大长度128
        public let jobName: String?

        /// 标签信息
        public let tags: [TagItem]?

        public init(srcDatabaseType: String, dstDatabaseType: String, srcRegion: String, dstRegion: String, instanceClass: String, count: UInt64? = nil, jobName: String? = nil, tags: [TagItem]? = nil) {
            self.srcDatabaseType = srcDatabaseType
            self.dstDatabaseType = dstDatabaseType
            self.srcRegion = srcRegion
            self.dstRegion = dstRegion
            self.instanceClass = instanceClass
            self.count = count
            self.jobName = jobName
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case srcDatabaseType = "SrcDatabaseType"
            case dstDatabaseType = "DstDatabaseType"
            case srcRegion = "SrcRegion"
            case dstRegion = "DstRegion"
            case instanceClass = "InstanceClass"
            case count = "Count"
            case jobName = "JobName"
            case tags = "Tags"
        }
    }

    /// CreateMigrationService返回参数结构体
    public struct CreateMigrationServiceResponse: TCResponseModel {
        /// 下单成功随机生成的迁移任务id列表，形如：dts-c1f6rs21
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case requestId = "RequestId"
        }
    }

    /// 购买迁移任务
    ///
    /// 购买迁移任务。购买成功后会返回随机生成的迁移任务id列表，也可以通过查询迁移任务任务列表接口`DescribeMigrationJobs`看到购买成功的实例Id。注意，一旦购买成功后源及目标数据库类型，源及目标实例地域不可修改。
    @inlinable
    public func createMigrationService(_ input: CreateMigrationServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationServiceResponse> {
        self.client.execute(action: "CreateMigrationService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买迁移任务
    ///
    /// 购买迁移任务。购买成功后会返回随机生成的迁移任务id列表，也可以通过查询迁移任务任务列表接口`DescribeMigrationJobs`看到购买成功的实例Id。注意，一旦购买成功后源及目标数据库类型，源及目标实例地域不可修改。
    @inlinable
    public func createMigrationService(_ input: CreateMigrationServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrationServiceResponse {
        try await self.client.execute(action: "CreateMigrationService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买迁移任务
    ///
    /// 购买迁移任务。购买成功后会返回随机生成的迁移任务id列表，也可以通过查询迁移任务任务列表接口`DescribeMigrationJobs`看到购买成功的实例Id。注意，一旦购买成功后源及目标数据库类型，源及目标实例地域不可修改。
    @inlinable
    public func createMigrationService(srcDatabaseType: String, dstDatabaseType: String, srcRegion: String, dstRegion: String, instanceClass: String, count: UInt64? = nil, jobName: String? = nil, tags: [TagItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationServiceResponse> {
        self.createMigrationService(.init(srcDatabaseType: srcDatabaseType, dstDatabaseType: dstDatabaseType, srcRegion: srcRegion, dstRegion: dstRegion, instanceClass: instanceClass, count: count, jobName: jobName, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 购买迁移任务
    ///
    /// 购买迁移任务。购买成功后会返回随机生成的迁移任务id列表，也可以通过查询迁移任务任务列表接口`DescribeMigrationJobs`看到购买成功的实例Id。注意，一旦购买成功后源及目标数据库类型，源及目标实例地域不可修改。
    @inlinable
    public func createMigrationService(srcDatabaseType: String, dstDatabaseType: String, srcRegion: String, dstRegion: String, instanceClass: String, count: UInt64? = nil, jobName: String? = nil, tags: [TagItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrationServiceResponse {
        try await self.createMigrationService(.init(srcDatabaseType: srcDatabaseType, dstDatabaseType: dstDatabaseType, srcRegion: srcRegion, dstRegion: dstRegion, instanceClass: instanceClass, count: count, jobName: jobName, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
