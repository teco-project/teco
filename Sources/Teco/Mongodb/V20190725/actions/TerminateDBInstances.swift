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

extension Mongodb {
    /// TerminateDBInstances请求参数结构体
    public struct TerminateDBInstancesRequest: TCRequestModel {
        /// 指定预隔离实例ID。格式如：cmgo-p8vnipr5。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// TerminateDBInstances返回参数结构体
    public struct TerminateDBInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 包年包月隔离接口
    ///
    /// 本接口（TerminateDBInstances）可将包年包月实例退还隔离。
    @inlinable
    public func terminateDBInstances(_ input: TerminateDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TerminateDBInstancesResponse > {
        self.client.execute(action: "TerminateDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 包年包月隔离接口
    ///
    /// 本接口（TerminateDBInstances）可将包年包月实例退还隔离。
    @inlinable
    public func terminateDBInstances(_ input: TerminateDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDBInstancesResponse {
        try await self.client.execute(action: "TerminateDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 包年包月隔离接口
    ///
    /// 本接口（TerminateDBInstances）可将包年包月实例退还隔离。
    @inlinable
    public func terminateDBInstances(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TerminateDBInstancesResponse > {
        self.terminateDBInstances(TerminateDBInstancesRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }

    /// 包年包月隔离接口
    ///
    /// 本接口（TerminateDBInstances）可将包年包月实例退还隔离。
    @inlinable
    public func terminateDBInstances(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDBInstancesResponse {
        try await self.terminateDBInstances(TerminateDBInstancesRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }
}
