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

extension Sqlserver {
    /// ModifyDBInstanceProject请求参数结构体
    public struct ModifyDBInstanceProjectRequest: TCRequest {
        /// 实例ID数组，形如mssql-j8kv137v
        public let instanceIdSet: [String]

        /// 项目ID，为0的话表示默认项目
        public let projectId: Int64

        public init(instanceIdSet: [String], projectId: Int64) {
            self.instanceIdSet = instanceIdSet
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case projectId = "ProjectId"
        }
    }

    /// ModifyDBInstanceProject返回参数结构体
    public struct ModifyDBInstanceProjectResponse: TCResponse {
        /// 修改成功的实例个数
        public let count: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case requestId = "RequestId"
        }
    }

    /// 修改数据库实例所属项目
    ///
    /// 本接口（ModifyDBInstanceProject）用于修改数据库实例所属项目。
    @inlinable
    public func modifyDBInstanceProject(_ input: ModifyDBInstanceProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceProjectResponse> {
        self.client.execute(action: "ModifyDBInstanceProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库实例所属项目
    ///
    /// 本接口（ModifyDBInstanceProject）用于修改数据库实例所属项目。
    @inlinable
    public func modifyDBInstanceProject(_ input: ModifyDBInstanceProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceProjectResponse {
        try await self.client.execute(action: "ModifyDBInstanceProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据库实例所属项目
    ///
    /// 本接口（ModifyDBInstanceProject）用于修改数据库实例所属项目。
    @inlinable
    public func modifyDBInstanceProject(instanceIdSet: [String], projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceProjectResponse> {
        self.modifyDBInstanceProject(.init(instanceIdSet: instanceIdSet, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据库实例所属项目
    ///
    /// 本接口（ModifyDBInstanceProject）用于修改数据库实例所属项目。
    @inlinable
    public func modifyDBInstanceProject(instanceIdSet: [String], projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceProjectResponse {
        try await self.modifyDBInstanceProject(.init(instanceIdSet: instanceIdSet, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
