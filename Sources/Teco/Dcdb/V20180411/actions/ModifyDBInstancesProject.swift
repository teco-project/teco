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

extension Dcdb {
    /// ModifyDBInstancesProject请求参数结构体
    public struct ModifyDBInstancesProjectRequest: TCRequest {
        /// 待修改的实例ID列表。实例 ID 形如：dcdbt-ow728lmc。
        public let instanceIds: [String]

        /// 要分配的项目 ID，可以通过 DescribeProjects 查询项目列表接口获取。
        public let projectId: Int64

        public init(instanceIds: [String], projectId: Int64) {
            self.instanceIds = instanceIds
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case projectId = "ProjectId"
        }
    }

    /// ModifyDBInstancesProject返回参数结构体
    public struct ModifyDBInstancesProjectResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例所属项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于修改云数据库实例所属项目。
    @inlinable @discardableResult
    public func modifyDBInstancesProject(_ input: ModifyDBInstancesProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstancesProjectResponse> {
        self.client.execute(action: "ModifyDBInstancesProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例所属项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于修改云数据库实例所属项目。
    @inlinable @discardableResult
    public func modifyDBInstancesProject(_ input: ModifyDBInstancesProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstancesProjectResponse {
        try await self.client.execute(action: "ModifyDBInstancesProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例所属项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于修改云数据库实例所属项目。
    @inlinable @discardableResult
    public func modifyDBInstancesProject(instanceIds: [String], projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstancesProjectResponse> {
        self.modifyDBInstancesProject(.init(instanceIds: instanceIds, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例所属项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于修改云数据库实例所属项目。
    @inlinable @discardableResult
    public func modifyDBInstancesProject(instanceIds: [String], projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstancesProjectResponse {
        try await self.modifyDBInstancesProject(.init(instanceIds: instanceIds, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
