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

extension Mongodb {
    /// KillOps请求参数结构体
    public struct KillOpsRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 待终止的操作
        public let operations: [Operation]

        public init(instanceId: String, operations: [Operation]) {
            self.instanceId = instanceId
            self.operations = operations
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case operations = "Operations"
        }
    }

    /// KillOps返回参数结构体
    public struct KillOpsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止数据库实例特定操作
    ///
    /// 本接口(KillOps)用于终止MongoDB云数据库实例上执行的特定操作。
    @inlinable
    public func killOps(_ input: KillOpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillOpsResponse> {
        self.client.execute(action: "KillOps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止数据库实例特定操作
    ///
    /// 本接口(KillOps)用于终止MongoDB云数据库实例上执行的特定操作。
    @inlinable
    public func killOps(_ input: KillOpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillOpsResponse {
        try await self.client.execute(action: "KillOps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止数据库实例特定操作
    ///
    /// 本接口(KillOps)用于终止MongoDB云数据库实例上执行的特定操作。
    @inlinable
    public func killOps(instanceId: String, operations: [Operation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillOpsResponse> {
        self.killOps(KillOpsRequest(instanceId: instanceId, operations: operations), region: region, logger: logger, on: eventLoop)
    }

    /// 终止数据库实例特定操作
    ///
    /// 本接口(KillOps)用于终止MongoDB云数据库实例上执行的特定操作。
    @inlinable
    public func killOps(instanceId: String, operations: [Operation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillOpsResponse {
        try await self.killOps(KillOpsRequest(instanceId: instanceId, operations: operations), region: region, logger: logger, on: eventLoop)
    }
}
