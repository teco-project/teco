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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Mariadb {
    /// ModifyDBInstanceName请求参数结构体
    public struct ModifyDBInstanceNameRequest: TCRequestModel {
        /// 待修改的实例 ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 新的实例名称。允许的字符为字母、数字、下划线、连字符和中文。
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
        /// 实例ID
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例名称
    ///
    /// 本接口（ModifyDBInstanceName）用于修改云数据库实例的名称。
    @inlinable
    public func modifyDBInstanceName(_ input: ModifyDBInstanceNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNameResponse> {
        self.client.execute(action: "ModifyDBInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例名称
    ///
    /// 本接口（ModifyDBInstanceName）用于修改云数据库实例的名称。
    @inlinable
    public func modifyDBInstanceName(_ input: ModifyDBInstanceNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNameResponse {
        try await self.client.execute(action: "ModifyDBInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例名称
    ///
    /// 本接口（ModifyDBInstanceName）用于修改云数据库实例的名称。
    @inlinable
    public func modifyDBInstanceName(instanceId: String, instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNameResponse> {
        self.modifyDBInstanceName(.init(instanceId: instanceId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例名称
    ///
    /// 本接口（ModifyDBInstanceName）用于修改云数据库实例的名称。
    @inlinable
    public func modifyDBInstanceName(instanceId: String, instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNameResponse {
        try await self.modifyDBInstanceName(.init(instanceId: instanceId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }
}
