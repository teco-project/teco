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
    /// DescribeNetworkInterfaceLimit请求参数结构体
    public struct DescribeNetworkInterfaceLimitRequest: TCRequest {
        /// 要查询的CVM实例ID或弹性网卡ID。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeNetworkInterfaceLimit返回参数结构体
    public struct DescribeNetworkInterfaceLimitResponse: TCResponse {
        /// 标准型弹性网卡配额。
        public let eniQuantity: Int64

        /// 每个标准型弹性网卡可以分配的IP配额。
        public let eniPrivateIpAddressQuantity: Int64

        /// 扩展型网卡配额。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extendEniQuantity: Int64?

        /// 每个扩展型弹性网卡可以分配的IP配额。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extendEniPrivateIpAddressQuantity: Int64?

        /// 中继网卡配额。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subEniQuantity: Int64?

        /// 每个中继网卡可以分配的IP配额。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subEniPrivateIpAddressQuantity: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eniQuantity = "EniQuantity"
            case eniPrivateIpAddressQuantity = "EniPrivateIpAddressQuantity"
            case extendEniQuantity = "ExtendEniQuantity"
            case extendEniPrivateIpAddressQuantity = "ExtendEniPrivateIpAddressQuantity"
            case subEniQuantity = "SubEniQuantity"
            case subEniPrivateIpAddressQuantity = "SubEniPrivateIpAddressQuantity"
            case requestId = "RequestId"
        }
    }

    /// 查询弹性网卡配额
    ///
    /// 本接口（DescribeNetworkInterfaceLimit）根据CVM实例ID或弹性网卡ID查询弹性网卡配额，返回该CVM实例或弹性网卡能绑定的弹性网卡配额，以及弹性网卡可以分配的IP配额。
    @inlinable
    public func describeNetworkInterfaceLimit(_ input: DescribeNetworkInterfaceLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkInterfaceLimitResponse> {
        self.client.execute(action: "DescribeNetworkInterfaceLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡配额
    ///
    /// 本接口（DescribeNetworkInterfaceLimit）根据CVM实例ID或弹性网卡ID查询弹性网卡配额，返回该CVM实例或弹性网卡能绑定的弹性网卡配额，以及弹性网卡可以分配的IP配额。
    @inlinable
    public func describeNetworkInterfaceLimit(_ input: DescribeNetworkInterfaceLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfaceLimitResponse {
        try await self.client.execute(action: "DescribeNetworkInterfaceLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性网卡配额
    ///
    /// 本接口（DescribeNetworkInterfaceLimit）根据CVM实例ID或弹性网卡ID查询弹性网卡配额，返回该CVM实例或弹性网卡能绑定的弹性网卡配额，以及弹性网卡可以分配的IP配额。
    @inlinable
    public func describeNetworkInterfaceLimit(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkInterfaceLimitResponse> {
        self.describeNetworkInterfaceLimit(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡配额
    ///
    /// 本接口（DescribeNetworkInterfaceLimit）根据CVM实例ID或弹性网卡ID查询弹性网卡配额，返回该CVM实例或弹性网卡能绑定的弹性网卡配额，以及弹性网卡可以分配的IP配额。
    @inlinable
    public func describeNetworkInterfaceLimit(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfaceLimitResponse {
        try await self.describeNetworkInterfaceLimit(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
