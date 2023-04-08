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
    /// UnassignPrivateIpAddresses请求参数结构体
    public struct UnassignPrivateIpAddressesRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// 指定的内网IP信息，单次最多指定10个。
        public let privateIpAddresses: [PrivateIpAddressSpecification]

        /// 网卡绑定的子机实例ID，该参数仅用于指定网卡退还IP并解绑子机的场景，如果不涉及解绑子机，请勿填写。
        public let instanceId: String?

        public init(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification], instanceId: String? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.privateIpAddresses = privateIpAddresses
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case privateIpAddresses = "PrivateIpAddresses"
            case instanceId = "InstanceId"
        }
    }

    /// UnassignPrivateIpAddresses返回参数结构体
    public struct UnassignPrivateIpAddressesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡退还内网 IP
    ///
    /// 本接口（UnassignPrivateIpAddresses）用于弹性网卡退还内网 IP。
    /// * 退还弹性网卡上的辅助内网IP，接口自动解关联弹性公网 IP。不能退还弹性网卡的主内网IP。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func unassignPrivateIpAddresses(_ input: UnassignPrivateIpAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassignPrivateIpAddressesResponse> {
        self.client.execute(action: "UnassignPrivateIpAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡退还内网 IP
    ///
    /// 本接口（UnassignPrivateIpAddresses）用于弹性网卡退还内网 IP。
    /// * 退还弹性网卡上的辅助内网IP，接口自动解关联弹性公网 IP。不能退还弹性网卡的主内网IP。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func unassignPrivateIpAddresses(_ input: UnassignPrivateIpAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignPrivateIpAddressesResponse {
        try await self.client.execute(action: "UnassignPrivateIpAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡退还内网 IP
    ///
    /// 本接口（UnassignPrivateIpAddresses）用于弹性网卡退还内网 IP。
    /// * 退还弹性网卡上的辅助内网IP，接口自动解关联弹性公网 IP。不能退还弹性网卡的主内网IP。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func unassignPrivateIpAddresses(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification], instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassignPrivateIpAddressesResponse> {
        self.unassignPrivateIpAddresses(.init(networkInterfaceId: networkInterfaceId, privateIpAddresses: privateIpAddresses, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡退还内网 IP
    ///
    /// 本接口（UnassignPrivateIpAddresses）用于弹性网卡退还内网 IP。
    /// * 退还弹性网卡上的辅助内网IP，接口自动解关联弹性公网 IP。不能退还弹性网卡的主内网IP。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func unassignPrivateIpAddresses(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification], instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignPrivateIpAddressesResponse {
        try await self.unassignPrivateIpAddresses(.init(networkInterfaceId: networkInterfaceId, privateIpAddresses: privateIpAddresses, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
