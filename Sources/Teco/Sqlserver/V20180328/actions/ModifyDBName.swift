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

extension Sqlserver {
    /// ModifyDBName请求参数结构体
    public struct ModifyDBNameRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 旧数据库名
        public let oldDBName: String

        /// 新数据库名
        public let newDBName: String

        public init(instanceId: String, oldDBName: String, newDBName: String) {
            self.instanceId = instanceId
            self.oldDBName = oldDBName
            self.newDBName = newDBName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case oldDBName = "OldDBName"
            case newDBName = "NewDBName"
        }
    }

    /// ModifyDBName返回参数结构体
    public struct ModifyDBNameResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 更新数据库名
    ///
    /// 本接口（ModifyDBName）用于更新数据库名。
    @inlinable
    public func modifyDBName(_ input: ModifyDBNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBNameResponse > {
        self.client.execute(action: "ModifyDBName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新数据库名
    ///
    /// 本接口（ModifyDBName）用于更新数据库名。
    @inlinable
    public func modifyDBName(_ input: ModifyDBNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBNameResponse {
        try await self.client.execute(action: "ModifyDBName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新数据库名
    ///
    /// 本接口（ModifyDBName）用于更新数据库名。
    @inlinable
    public func modifyDBName(instanceId: String, oldDBName: String, newDBName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBNameResponse > {
        self.modifyDBName(ModifyDBNameRequest(instanceId: instanceId, oldDBName: oldDBName, newDBName: newDBName), logger: logger, on: eventLoop)
    }

    /// 更新数据库名
    ///
    /// 本接口（ModifyDBName）用于更新数据库名。
    @inlinable
    public func modifyDBName(instanceId: String, oldDBName: String, newDBName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBNameResponse {
        try await self.modifyDBName(ModifyDBNameRequest(instanceId: instanceId, oldDBName: oldDBName, newDBName: newDBName), logger: logger, on: eventLoop)
    }
}
