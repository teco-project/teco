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

extension Redis {
    /// ModifyConnectionConfig请求参数结构体
    public struct ModifyConnectionConfigRequest: TCRequestModel {
        /// 实例的ID，长度在12-36之间。
        public let instanceId: String

        /// 附加带宽，大于0，单位MB。
        public let bandwidth: Int64?

        /// 单分片的总连接数。
        /// 未开启副本只读时，下限为10000，上限为40000；
        /// 开启副本只读时，下限为10000，上限为10000×(只读副本数+3)。
        public let clientLimit: Int64?

        public init(instanceId: String, bandwidth: Int64? = nil, clientLimit: Int64? = nil) {
            self.instanceId = instanceId
            self.bandwidth = bandwidth
            self.clientLimit = clientLimit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case bandwidth = "Bandwidth"
            case clientLimit = "ClientLimit"
        }
    }

    /// ModifyConnectionConfig返回参数结构体
    public struct ModifyConnectionConfigResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例连接配置
    ///
    /// 修改实例的连接配置，包括带宽和最大连接数。
    @inlinable
    public func modifyConnectionConfig(_ input: ModifyConnectionConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConnectionConfigResponse> {
        self.client.execute(action: "ModifyConnectionConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例连接配置
    ///
    /// 修改实例的连接配置，包括带宽和最大连接数。
    @inlinable
    public func modifyConnectionConfig(_ input: ModifyConnectionConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConnectionConfigResponse {
        try await self.client.execute(action: "ModifyConnectionConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例连接配置
    ///
    /// 修改实例的连接配置，包括带宽和最大连接数。
    @inlinable
    public func modifyConnectionConfig(instanceId: String, bandwidth: Int64? = nil, clientLimit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConnectionConfigResponse> {
        self.modifyConnectionConfig(ModifyConnectionConfigRequest(instanceId: instanceId, bandwidth: bandwidth, clientLimit: clientLimit), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例连接配置
    ///
    /// 修改实例的连接配置，包括带宽和最大连接数。
    @inlinable
    public func modifyConnectionConfig(instanceId: String, bandwidth: Int64? = nil, clientLimit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConnectionConfigResponse {
        try await self.modifyConnectionConfig(ModifyConnectionConfigRequest(instanceId: instanceId, bandwidth: bandwidth, clientLimit: clientLimit), region: region, logger: logger, on: eventLoop)
    }
}
