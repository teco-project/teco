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

extension Redis {
    /// ClearInstance请求参数结构体
    public struct ClearInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// redis的实例密码（免密实例不需要传密码，非免密实例必传）
        public let password: String?

        public init(instanceId: String, password: String? = nil) {
            self.instanceId = instanceId
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case password = "Password"
        }
    }

    /// ClearInstance返回参数结构体
    public struct ClearInstanceResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 清空Redis实例
    ///
    /// 清空Redis实例的实例数据。
    @inlinable
    public func clearInstance(_ input: ClearInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearInstanceResponse> {
        self.client.execute(action: "ClearInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清空Redis实例
    ///
    /// 清空Redis实例的实例数据。
    @inlinable
    public func clearInstance(_ input: ClearInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearInstanceResponse {
        try await self.client.execute(action: "ClearInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清空Redis实例
    ///
    /// 清空Redis实例的实例数据。
    @inlinable
    public func clearInstance(instanceId: String, password: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearInstanceResponse> {
        self.clearInstance(ClearInstanceRequest(instanceId: instanceId, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 清空Redis实例
    ///
    /// 清空Redis实例的实例数据。
    @inlinable
    public func clearInstance(instanceId: String, password: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearInstanceResponse {
        try await self.clearInstance(ClearInstanceRequest(instanceId: instanceId, password: password), region: region, logger: logger, on: eventLoop)
    }
}
