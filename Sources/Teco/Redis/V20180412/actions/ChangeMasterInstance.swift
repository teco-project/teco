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

import Logging
import NIOCore
import TecoCore

extension Redis {
    /// ChangeMasterInstance请求参数结构体
    public struct ChangeMasterInstanceRequest: TCRequest {
        /// 复制组ID。创建复制组时，系统自动分配的 ID，是复制组的唯一标识。例如：crs-rpl-m3zt****，请登录[Redis 控制台](https://console.cloud.tencent.com/redis/replication)的全球复制组列表获取复制组 ID。
        public let groupId: String

        /// 指定待提升为主实例的只读实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        public let instanceId: String

        /// 标识是否强制提主。
        /// - true：强制提主。
        /// - false：不强制提主。
        public let forceSwitch: Bool?

        public init(groupId: String, instanceId: String, forceSwitch: Bool? = nil) {
            self.groupId = groupId
            self.instanceId = instanceId
            self.forceSwitch = forceSwitch
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case instanceId = "InstanceId"
            case forceSwitch = "ForceSwitch"
        }
    }

    /// ChangeMasterInstance返回参数结构体
    public struct ChangeMasterInstanceResponse: TCResponse {
        /// 异步流程ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 复制组实例切主
    ///
    /// 该接口（ChangeMasterInstance）用于将复制组内只读实例设置为主实例。
    @inlinable
    public func changeMasterInstance(_ input: ChangeMasterInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeMasterInstanceResponse> {
        self.client.execute(action: "ChangeMasterInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制组实例切主
    ///
    /// 该接口（ChangeMasterInstance）用于将复制组内只读实例设置为主实例。
    @inlinable
    public func changeMasterInstance(_ input: ChangeMasterInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeMasterInstanceResponse {
        try await self.client.execute(action: "ChangeMasterInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制组实例切主
    ///
    /// 该接口（ChangeMasterInstance）用于将复制组内只读实例设置为主实例。
    @inlinable
    public func changeMasterInstance(groupId: String, instanceId: String, forceSwitch: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeMasterInstanceResponse> {
        self.changeMasterInstance(.init(groupId: groupId, instanceId: instanceId, forceSwitch: forceSwitch), region: region, logger: logger, on: eventLoop)
    }

    /// 复制组实例切主
    ///
    /// 该接口（ChangeMasterInstance）用于将复制组内只读实例设置为主实例。
    @inlinable
    public func changeMasterInstance(groupId: String, instanceId: String, forceSwitch: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeMasterInstanceResponse {
        try await self.changeMasterInstance(.init(groupId: groupId, instanceId: instanceId, forceSwitch: forceSwitch), region: region, logger: logger, on: eventLoop)
    }
}
