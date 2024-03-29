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

extension Vpc {
    /// ModifyNetworkInterfaceQos请求参数结构体
    public struct ModifyNetworkInterfaceQosRequest: TCRequest {
        /// 弹性网卡ID，支持批量修改。
        public let networkInterfaceIds: [String]

        /// 服务质量，可选值：PT、AU、AG、DEFAULT，分别代表云金、云银、云铜、默认四个等级。
        public let qosLevel: String

        /// DirectSend端口范围最大值。
        public let directSendMaxPort: UInt64?

        public init(networkInterfaceIds: [String], qosLevel: String, directSendMaxPort: UInt64? = nil) {
            self.networkInterfaceIds = networkInterfaceIds
            self.qosLevel = qosLevel
            self.directSendMaxPort = directSendMaxPort
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceIds = "NetworkInterfaceIds"
            case qosLevel = "QosLevel"
            case directSendMaxPort = "DirectSendMaxPort"
        }
    }

    /// ModifyNetworkInterfaceQos返回参数结构体
    public struct ModifyNetworkInterfaceQosResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改弹性网卡服务质量
    ///
    /// 本接口（ModifyNetworkInterfaceQos）用于修改弹性网卡服务质量。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceQos(_ input: ModifyNetworkInterfaceQosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkInterfaceQosResponse> {
        self.client.execute(action: "ModifyNetworkInterfaceQos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性网卡服务质量
    ///
    /// 本接口（ModifyNetworkInterfaceQos）用于修改弹性网卡服务质量。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceQos(_ input: ModifyNetworkInterfaceQosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkInterfaceQosResponse {
        try await self.client.execute(action: "ModifyNetworkInterfaceQos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性网卡服务质量
    ///
    /// 本接口（ModifyNetworkInterfaceQos）用于修改弹性网卡服务质量。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceQos(networkInterfaceIds: [String], qosLevel: String, directSendMaxPort: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkInterfaceQosResponse> {
        self.modifyNetworkInterfaceQos(.init(networkInterfaceIds: networkInterfaceIds, qosLevel: qosLevel, directSendMaxPort: directSendMaxPort), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性网卡服务质量
    ///
    /// 本接口（ModifyNetworkInterfaceQos）用于修改弹性网卡服务质量。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceQos(networkInterfaceIds: [String], qosLevel: String, directSendMaxPort: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkInterfaceQosResponse {
        try await self.modifyNetworkInterfaceQos(.init(networkInterfaceIds: networkInterfaceIds, qosLevel: qosLevel, directSendMaxPort: directSendMaxPort), region: region, logger: logger, on: eventLoop)
    }
}
