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
    /// KillMasterGroup请求参数结构体
    public struct KillMasterGroupRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 1.长度8-30位,推荐使用12位以上的密码
        /// 2.不能以"/"开头
        /// 3.至少包含两项
        ///     a.小写字母a-z
        ///     b.大写字母A-Z
        ///     c.数字0-9
        ///     d.()`~!@#$%^&*-+=_|{}[]:;<>,.?/
        public let password: String

        /// 单AZ实例节点信息
        public let shardIds: [Int64]?

        public init(instanceId: String, password: String, shardIds: [Int64]? = nil) {
            self.instanceId = instanceId
            self.password = password
            self.shardIds = shardIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case password = "Password"
            case shardIds = "ShardIds"
        }
    }

    /// KillMasterGroup返回参数结构体
    public struct KillMasterGroupResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 模拟故障接口
    ///
    /// 模拟故障
    @inlinable
    public func killMasterGroup(_ input: KillMasterGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillMasterGroupResponse> {
        self.client.execute(action: "KillMasterGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 模拟故障接口
    ///
    /// 模拟故障
    @inlinable
    public func killMasterGroup(_ input: KillMasterGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillMasterGroupResponse {
        try await self.client.execute(action: "KillMasterGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 模拟故障接口
    ///
    /// 模拟故障
    @inlinable
    public func killMasterGroup(instanceId: String, password: String, shardIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillMasterGroupResponse> {
        self.killMasterGroup(KillMasterGroupRequest(instanceId: instanceId, password: password, shardIds: shardIds), region: region, logger: logger, on: eventLoop)
    }

    /// 模拟故障接口
    ///
    /// 模拟故障
    @inlinable
    public func killMasterGroup(instanceId: String, password: String, shardIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillMasterGroupResponse {
        try await self.killMasterGroup(KillMasterGroupRequest(instanceId: instanceId, password: password, shardIds: shardIds), region: region, logger: logger, on: eventLoop)
    }
}
