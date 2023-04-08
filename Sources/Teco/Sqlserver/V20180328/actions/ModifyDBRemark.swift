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

extension Sqlserver {
    /// ModifyDBRemark请求参数结构体
    public struct ModifyDBRemarkRequest: TCRequestModel {
        /// 实例ID，形如mssql-rljoi3bf
        public let instanceId: String

        /// 数据库名称及备注数组，每个元素包含数据库名和对应的备注
        public let dbRemarks: [DBRemark]

        public init(instanceId: String, dbRemarks: [DBRemark]) {
            self.instanceId = instanceId
            self.dbRemarks = dbRemarks
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dbRemarks = "DBRemarks"
        }
    }

    /// ModifyDBRemark返回参数结构体
    public struct ModifyDBRemarkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据库备注
    ///
    /// 本接口（ModifyDBRemark）用于修改数据库备注。
    @inlinable @discardableResult
    public func modifyDBRemark(_ input: ModifyDBRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBRemarkResponse> {
        self.client.execute(action: "ModifyDBRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库备注
    ///
    /// 本接口（ModifyDBRemark）用于修改数据库备注。
    @inlinable @discardableResult
    public func modifyDBRemark(_ input: ModifyDBRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBRemarkResponse {
        try await self.client.execute(action: "ModifyDBRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据库备注
    ///
    /// 本接口（ModifyDBRemark）用于修改数据库备注。
    @inlinable @discardableResult
    public func modifyDBRemark(instanceId: String, dbRemarks: [DBRemark], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBRemarkResponse> {
        self.modifyDBRemark(.init(instanceId: instanceId, dbRemarks: dbRemarks), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据库备注
    ///
    /// 本接口（ModifyDBRemark）用于修改数据库备注。
    @inlinable @discardableResult
    public func modifyDBRemark(instanceId: String, dbRemarks: [DBRemark], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBRemarkResponse {
        try await self.modifyDBRemark(.init(instanceId: instanceId, dbRemarks: dbRemarks), region: region, logger: logger, on: eventLoop)
    }
}
