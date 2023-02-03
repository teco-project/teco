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

extension Mongodb {
    /// OfflineIsolatedDBInstance请求参数结构体
    public struct OfflineIsolatedDBInstanceRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// OfflineIsolatedDBInstance返回参数结构体
    public struct OfflineIsolatedDBInstanceResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 下线隔离状态的云数据库实例
    ///
    /// 本接口(OfflineIsolatedDBInstance)用于立即下线隔离状态的云数据库实例。进行操作的实例状态必须为隔离状态。
    @inlinable
    public func offlineIsolatedDBInstance(_ input: OfflineIsolatedDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OfflineIsolatedDBInstanceResponse> {
        self.client.execute(action: "OfflineIsolatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下线隔离状态的云数据库实例
    ///
    /// 本接口(OfflineIsolatedDBInstance)用于立即下线隔离状态的云数据库实例。进行操作的实例状态必须为隔离状态。
    @inlinable
    public func offlineIsolatedDBInstance(_ input: OfflineIsolatedDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineIsolatedDBInstanceResponse {
        try await self.client.execute(action: "OfflineIsolatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下线隔离状态的云数据库实例
    ///
    /// 本接口(OfflineIsolatedDBInstance)用于立即下线隔离状态的云数据库实例。进行操作的实例状态必须为隔离状态。
    @inlinable
    public func offlineIsolatedDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OfflineIsolatedDBInstanceResponse> {
        let input = OfflineIsolatedDBInstanceRequest(instanceId: instanceId)
        return self.client.execute(action: "OfflineIsolatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下线隔离状态的云数据库实例
    ///
    /// 本接口(OfflineIsolatedDBInstance)用于立即下线隔离状态的云数据库实例。进行操作的实例状态必须为隔离状态。
    @inlinable
    public func offlineIsolatedDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineIsolatedDBInstanceResponse {
        let input = OfflineIsolatedDBInstanceRequest(instanceId: instanceId)
        return try await self.client.execute(action: "OfflineIsolatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
