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
import TecoPaginationHelpers

extension Dts {
    /// DescribeMigrateDBInstances请求参数结构体
    public struct DescribeMigrateDBInstancesRequest: TCPaginatedRequest {
        /// 数据库类型，如mysql
        public let databaseType: String

        /// 实例作为迁移的源还是目标,src(表示源)，dst(表示目标)
        public let migrateRole: String?

        /// 云数据库实例ID
        public let instanceId: String?

        /// 云数据库名称
        public let instanceName: String?

        /// 返回数量限制
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 资源所属账号 为空值或self(表示本账号内资源)、other(表示其他账户资源)
        public let accountMode: String?

        /// 临时密钥Id，若为跨账号资源此项必填
        public let tmpSecretId: String?

        /// 临时密钥Key，若为跨账号资源此项必填
        public let tmpSecretKey: String?

        /// 临时密钥Token，若为跨账号资源此项必填
        public let tmpToken: String?

        public init(databaseType: String, migrateRole: String? = nil, instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, accountMode: String? = nil, tmpSecretId: String? = nil, tmpSecretKey: String? = nil, tmpToken: String? = nil) {
            self.databaseType = databaseType
            self.migrateRole = migrateRole
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.limit = limit
            self.offset = offset
            self.accountMode = accountMode
            self.tmpSecretId = tmpSecretId
            self.tmpSecretKey = tmpSecretKey
            self.tmpToken = tmpToken
        }

        enum CodingKeys: String, CodingKey {
            case databaseType = "DatabaseType"
            case migrateRole = "MigrateRole"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case limit = "Limit"
            case offset = "Offset"
            case accountMode = "AccountMode"
            case tmpSecretId = "TmpSecretId"
            case tmpSecretKey = "TmpSecretKey"
            case tmpToken = "TmpToken"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMigrateDBInstancesResponse) -> DescribeMigrateDBInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMigrateDBInstancesRequest(databaseType: self.databaseType, migrateRole: self.migrateRole, instanceId: self.instanceId, instanceName: self.instanceName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), accountMode: self.accountMode, tmpSecretId: self.tmpSecretId, tmpSecretKey: self.tmpSecretKey, tmpToken: self.tmpToken)
        }
    }

    /// DescribeMigrateDBInstances返回参数结构体
    public struct DescribeMigrateDBInstancesResponse: TCPaginatedResponse {
        /// 符合筛选条件的数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instances: [MigrateDBItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MigrateDBItem`` list from the paginated response.
        public func getItems() -> [MigrateDBItem] {
            self.instances ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    @inlinable
    public func describeMigrateDBInstances(_ input: DescribeMigrateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrateDBInstancesResponse> {
        self.client.execute(action: "DescribeMigrateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    @inlinable
    public func describeMigrateDBInstances(_ input: DescribeMigrateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrateDBInstancesResponse {
        try await self.client.execute(action: "DescribeMigrateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    @inlinable
    public func describeMigrateDBInstances(databaseType: String, migrateRole: String? = nil, instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, accountMode: String? = nil, tmpSecretId: String? = nil, tmpSecretKey: String? = nil, tmpToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrateDBInstancesResponse> {
        self.describeMigrateDBInstances(.init(databaseType: databaseType, migrateRole: migrateRole, instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, accountMode: accountMode, tmpSecretId: tmpSecretId, tmpSecretKey: tmpSecretKey, tmpToken: tmpToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    @inlinable
    public func describeMigrateDBInstances(databaseType: String, migrateRole: String? = nil, instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, accountMode: String? = nil, tmpSecretId: String? = nil, tmpSecretKey: String? = nil, tmpToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrateDBInstancesResponse {
        try await self.describeMigrateDBInstances(.init(databaseType: databaseType, migrateRole: migrateRole, instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, accountMode: accountMode, tmpSecretId: tmpSecretId, tmpSecretKey: tmpSecretKey, tmpToken: tmpToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    @inlinable
    public func describeMigrateDBInstancesPaginated(_ input: DescribeMigrateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MigrateDBItem])> {
        self.client.paginate(input: input, region: region, command: self.describeMigrateDBInstances, logger: logger, on: eventLoop)
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    @inlinable @discardableResult
    public func describeMigrateDBInstancesPaginated(_ input: DescribeMigrateDBInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMigrateDBInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMigrateDBInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询可迁移的实例列表
    ///
    /// 本接口用于查询支持迁移的云数据库实例
    ///
    /// - Returns: `AsyncSequence`s of ``MigrateDBItem`` and ``DescribeMigrateDBInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMigrateDBInstancesPaginator(_ input: DescribeMigrateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMigrateDBInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMigrateDBInstances, logger: logger, on: eventLoop)
    }
}
