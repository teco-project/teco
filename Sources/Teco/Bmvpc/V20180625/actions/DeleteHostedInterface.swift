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

extension Bmvpc {
    /// DeleteHostedInterface请求参数结构体
    public struct DeleteHostedInterfaceRequest: TCRequest {
        /// 托管机器唯一ID 数组
        public let instanceIds: [String]

        /// 私有网络ID或者私有网络统一ID，建议使用统一ID
        public let vpcId: String

        /// 子网ID或者子网统一ID，建议使用统一ID
        public let subnetId: String

        public init(instanceIds: [String], vpcId: String, subnetId: String) {
            self.instanceIds = instanceIds
            self.vpcId = vpcId
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }

    /// DeleteHostedInterface返回参数结构体
    public struct DeleteHostedInterfaceResponse: TCResponse {
        /// 异步任务ID
        public let taskId: UInt64

        /// 黑石托管机器ID
        public let resourceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case resourceIds = "ResourceIds"
            case requestId = "RequestId"
        }
    }

    /// 黑石托管机器移除子网
    ///
    /// 本接口用于托管机器从VLANID不为5的子网中移除。
    /// 1) 不能从vlanId 为5的子网中移除。
    /// 2) 每次调用最多能支持传入10台物理机。
    @inlinable
    public func deleteHostedInterface(_ input: DeleteHostedInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHostedInterfaceResponse> {
        self.client.execute(action: "DeleteHostedInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 黑石托管机器移除子网
    ///
    /// 本接口用于托管机器从VLANID不为5的子网中移除。
    /// 1) 不能从vlanId 为5的子网中移除。
    /// 2) 每次调用最多能支持传入10台物理机。
    @inlinable
    public func deleteHostedInterface(_ input: DeleteHostedInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHostedInterfaceResponse {
        try await self.client.execute(action: "DeleteHostedInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 黑石托管机器移除子网
    ///
    /// 本接口用于托管机器从VLANID不为5的子网中移除。
    /// 1) 不能从vlanId 为5的子网中移除。
    /// 2) 每次调用最多能支持传入10台物理机。
    @inlinable
    public func deleteHostedInterface(instanceIds: [String], vpcId: String, subnetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHostedInterfaceResponse> {
        self.deleteHostedInterface(.init(instanceIds: instanceIds, vpcId: vpcId, subnetId: subnetId), region: region, logger: logger, on: eventLoop)
    }

    /// 黑石托管机器移除子网
    ///
    /// 本接口用于托管机器从VLANID不为5的子网中移除。
    /// 1) 不能从vlanId 为5的子网中移除。
    /// 2) 每次调用最多能支持传入10台物理机。
    @inlinable
    public func deleteHostedInterface(instanceIds: [String], vpcId: String, subnetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHostedInterfaceResponse {
        try await self.deleteHostedInterface(.init(instanceIds: instanceIds, vpcId: vpcId, subnetId: subnetId), region: region, logger: logger, on: eventLoop)
    }
}
