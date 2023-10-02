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

extension Cfw {
    /// ModifyNatInstance请求参数结构体
    public struct ModifyNatInstanceRequest: TCRequest {
        /// NAT防火墙实例名称
        public let instanceName: String

        /// NAT防火墙实例ID
        public let natInstanceId: String?

        public init(instanceName: String, natInstanceId: String? = nil) {
            self.instanceName = instanceName
            self.natInstanceId = natInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case natInstanceId = "NatInstanceId"
        }
    }

    /// ModifyNatInstance返回参数结构体
    public struct ModifyNatInstanceResponse: TCResponse {
        /// 0 正常
        /// -1 异常
        public let status: Int64?

        /// nat实例唯一ID
        public let natInstanceId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case natInstanceId = "NatInstanceId"
            case requestId = "RequestId"
        }
    }

    /// 编辑NAT防火墙
    @inlinable
    public func modifyNatInstance(_ input: ModifyNatInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatInstanceResponse> {
        self.client.execute(action: "ModifyNatInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑NAT防火墙
    @inlinable
    public func modifyNatInstance(_ input: ModifyNatInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatInstanceResponse {
        try await self.client.execute(action: "ModifyNatInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑NAT防火墙
    @inlinable
    public func modifyNatInstance(instanceName: String, natInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatInstanceResponse> {
        self.modifyNatInstance(.init(instanceName: instanceName, natInstanceId: natInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑NAT防火墙
    @inlinable
    public func modifyNatInstance(instanceName: String, natInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatInstanceResponse {
        try await self.modifyNatInstance(.init(instanceName: instanceName, natInstanceId: natInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
