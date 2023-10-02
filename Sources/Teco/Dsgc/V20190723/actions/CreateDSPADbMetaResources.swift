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

extension Dsgc {
    /// CreateDSPADbMetaResources请求参数结构体
    public struct CreateDSPADbMetaResourcesRequest: TCRequest {
        /// DSPA实例ID。
        public let dspaId: String

        /// 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        public let metaType: String

        /// 资源所处地域。
        public let resourceRegion: String

        /// 用来标记本次更新是否已经是最后一次，可选值：continue（后续还需要更新）、finished（本次是最后一次更新）。
        public let updateStatus: String

        /// 本次更新的ID号，用来标记一次完整的更新过程。
        public let updateId: String

        /// 云上资源列表。
        public let items: [DspaCloudResourceMeta]

        public init(dspaId: String, metaType: String, resourceRegion: String, updateStatus: String, updateId: String, items: [DspaCloudResourceMeta]) {
            self.dspaId = dspaId
            self.metaType = metaType
            self.resourceRegion = resourceRegion
            self.updateStatus = updateStatus
            self.updateId = updateId
            self.items = items
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case metaType = "MetaType"
            case resourceRegion = "ResourceRegion"
            case updateStatus = "UpdateStatus"
            case updateId = "UpdateId"
            case items = "Items"
        }
    }

    /// CreateDSPADbMetaResources返回参数结构体
    public struct CreateDSPADbMetaResourcesResponse: TCResponse {
        /// 本次更新的ID号，用来标记一次完整的更新过程。
        public let updateId: String

        /// 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        public let metaType: String

        /// DSPA实例ID。
        public let dspaId: String

        /// 资源所处地域。
        public let resourceRegion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case updateId = "UpdateId"
            case metaType = "MetaType"
            case dspaId = "DspaId"
            case resourceRegion = "ResourceRegion"
            case requestId = "RequestId"
        }
    }

    /// 添加用户云上数据库资源
    ///
    /// 添加用户云上数据库类型资源
    @inlinable
    public func createDSPADbMetaResources(_ input: CreateDSPADbMetaResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPADbMetaResourcesResponse> {
        self.client.execute(action: "CreateDSPADbMetaResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加用户云上数据库资源
    ///
    /// 添加用户云上数据库类型资源
    @inlinable
    public func createDSPADbMetaResources(_ input: CreateDSPADbMetaResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPADbMetaResourcesResponse {
        try await self.client.execute(action: "CreateDSPADbMetaResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加用户云上数据库资源
    ///
    /// 添加用户云上数据库类型资源
    @inlinable
    public func createDSPADbMetaResources(dspaId: String, metaType: String, resourceRegion: String, updateStatus: String, updateId: String, items: [DspaCloudResourceMeta], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPADbMetaResourcesResponse> {
        self.createDSPADbMetaResources(.init(dspaId: dspaId, metaType: metaType, resourceRegion: resourceRegion, updateStatus: updateStatus, updateId: updateId, items: items), region: region, logger: logger, on: eventLoop)
    }

    /// 添加用户云上数据库资源
    ///
    /// 添加用户云上数据库类型资源
    @inlinable
    public func createDSPADbMetaResources(dspaId: String, metaType: String, resourceRegion: String, updateStatus: String, updateId: String, items: [DspaCloudResourceMeta], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPADbMetaResourcesResponse {
        try await self.createDSPADbMetaResources(.init(dspaId: dspaId, metaType: metaType, resourceRegion: resourceRegion, updateStatus: updateStatus, updateId: updateId, items: items), region: region, logger: logger, on: eventLoop)
    }
}