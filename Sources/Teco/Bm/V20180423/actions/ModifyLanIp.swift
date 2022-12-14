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

extension Bm {
    /// ModifyLanIp请求参数结构体
    public struct ModifyLanIpRequest: TCRequestModel {
        /// 物理机ID
        public let instanceId: String

        /// 指定新VPC
        public let vpcId: String

        /// 指定新子网
        public let subnetId: String

        /// 指定新内网IP
        public let lanIp: String?

        /// 是否需要重启机器，取值 1(需要) 0(不需要)，默认取值0
        public let rebootDevice: UInt64?

        public init(instanceId: String, vpcId: String, subnetId: String, lanIp: String? = nil, rebootDevice: UInt64? = nil) {
            self.instanceId = instanceId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.lanIp = lanIp
            self.rebootDevice = rebootDevice
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case lanIp = "LanIp"
            case rebootDevice = "RebootDevice"
        }
    }

    /// ModifyLanIp返回参数结构体
    public struct ModifyLanIpResponse: TCResponseModel {
        /// 黑石异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改物理机内网IP（不重装系统）
    @inlinable
    public func modifyLanIp(_ input: ModifyLanIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLanIpResponse > {
        self.client.execute(action: "ModifyLanIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改物理机内网IP（不重装系统）
    @inlinable
    public func modifyLanIp(_ input: ModifyLanIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLanIpResponse {
        try await self.client.execute(action: "ModifyLanIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改物理机内网IP（不重装系统）
    @inlinable
    public func modifyLanIp(instanceId: String, vpcId: String, subnetId: String, lanIp: String? = nil, rebootDevice: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLanIpResponse > {
        self.modifyLanIp(ModifyLanIpRequest(instanceId: instanceId, vpcId: vpcId, subnetId: subnetId, lanIp: lanIp, rebootDevice: rebootDevice), logger: logger, on: eventLoop)
    }

    /// 修改物理机内网IP（不重装系统）
    @inlinable
    public func modifyLanIp(instanceId: String, vpcId: String, subnetId: String, lanIp: String? = nil, rebootDevice: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLanIpResponse {
        try await self.modifyLanIp(ModifyLanIpRequest(instanceId: instanceId, vpcId: vpcId, subnetId: subnetId, lanIp: lanIp, rebootDevice: rebootDevice), logger: logger, on: eventLoop)
    }
}
