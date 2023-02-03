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

extension Postgres {
    /// ModifyDBInstancesProject请求参数结构体
    public struct ModifyDBInstancesProjectRequest: TCRequestModel {
        /// 实例ID集合。注意：当前已不支持同时操作多个实例，这里只能传入单个实例ID。
        public let dbInstanceIdSet: [String]

        /// 所属新项目的ID
        public let projectId: String

        public init(dbInstanceIdSet: [String], projectId: String) {
            self.dbInstanceIdSet = dbInstanceIdSet
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceIdSet = "DBInstanceIdSet"
            case projectId = "ProjectId"
        }
    }

    /// ModifyDBInstancesProject返回参数结构体
    public struct ModifyDBInstancesProjectResponse: TCResponseModel {
        /// 转移项目成功的实例个数
        public let count: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case requestId = "RequestId"
        }
    }

    /// 将实例转至其他项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于将实例转至其他项目。
    @inlinable
    public func modifyDBInstancesProject(_ input: ModifyDBInstancesProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstancesProjectResponse> {
        self.client.execute(action: "ModifyDBInstancesProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将实例转至其他项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于将实例转至其他项目。
    @inlinable
    public func modifyDBInstancesProject(_ input: ModifyDBInstancesProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstancesProjectResponse {
        try await self.client.execute(action: "ModifyDBInstancesProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 将实例转至其他项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于将实例转至其他项目。
    @inlinable
    public func modifyDBInstancesProject(dbInstanceIdSet: [String], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstancesProjectResponse> {
        let input = ModifyDBInstancesProjectRequest(dbInstanceIdSet: dbInstanceIdSet, projectId: projectId)
        return self.client.execute(action: "ModifyDBInstancesProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将实例转至其他项目
    ///
    /// 本接口（ModifyDBInstancesProject）用于将实例转至其他项目。
    @inlinable
    public func modifyDBInstancesProject(dbInstanceIdSet: [String], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstancesProjectResponse {
        let input = ModifyDBInstancesProjectRequest(dbInstanceIdSet: dbInstanceIdSet, projectId: projectId)
        return try await self.client.execute(action: "ModifyDBInstancesProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
