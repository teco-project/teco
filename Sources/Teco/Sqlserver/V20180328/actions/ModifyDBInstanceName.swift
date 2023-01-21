//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Sqlserver {
    /// ModifyDBInstanceName请求参数结构体
    public struct ModifyDBInstanceNameRequest: TCRequestModel {
        /// 数据库实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 新的数据库实例名字
        public let instanceName: String

        public init(instanceId: String, instanceName: String) {
            self.instanceId = instanceId
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
        }
    }

    /// ModifyDBInstanceName返回参数结构体
    public struct ModifyDBInstanceNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例名字
    ///
    /// 本接口（ModifyDBInstanceName）用于修改实例名字。
    @inlinable @discardableResult
    public func modifyDBInstanceName(_ input: ModifyDBInstanceNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNameResponse> {
        self.client.execute(action: "ModifyDBInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例名字
    ///
    /// 本接口（ModifyDBInstanceName）用于修改实例名字。
    @inlinable @discardableResult
    public func modifyDBInstanceName(_ input: ModifyDBInstanceNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNameResponse {
        try await self.client.execute(action: "ModifyDBInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例名字
    ///
    /// 本接口（ModifyDBInstanceName）用于修改实例名字。
    @inlinable @discardableResult
    public func modifyDBInstanceName(instanceId: String, instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNameResponse> {
        self.modifyDBInstanceName(ModifyDBInstanceNameRequest(instanceId: instanceId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例名字
    ///
    /// 本接口（ModifyDBInstanceName）用于修改实例名字。
    @inlinable @discardableResult
    public func modifyDBInstanceName(instanceId: String, instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNameResponse {
        try await self.modifyDBInstanceName(ModifyDBInstanceNameRequest(instanceId: instanceId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }
}
