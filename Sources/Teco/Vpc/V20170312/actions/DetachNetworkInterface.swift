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
    /// DetachNetworkInterface请求参数结构体
    public struct DetachNetworkInterfaceRequest: TCRequest {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// CVM实例ID。形如：ins-r8hr2upy。
        public let instanceId: String

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        public init(networkInterfaceId: String, instanceId: String, clientToken: String? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.instanceId = instanceId
            self.clientToken = clientToken
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case instanceId = "InstanceId"
            case clientToken = "ClientToken"
        }
    }

    /// DetachNetworkInterface返回参数结构体
    public struct DetachNetworkInterfaceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡解绑云服务器
    ///
    /// 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func detachNetworkInterface(_ input: DetachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachNetworkInterfaceResponse> {
        self.client.execute(action: "DetachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡解绑云服务器
    ///
    /// 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func detachNetworkInterface(_ input: DetachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachNetworkInterfaceResponse {
        try await self.client.execute(action: "DetachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡解绑云服务器
    ///
    /// 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func detachNetworkInterface(networkInterfaceId: String, instanceId: String, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachNetworkInterfaceResponse> {
        self.detachNetworkInterface(.init(networkInterfaceId: networkInterfaceId, instanceId: instanceId, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡解绑云服务器
    ///
    /// 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func detachNetworkInterface(networkInterfaceId: String, instanceId: String, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachNetworkInterfaceResponse {
        try await self.detachNetworkInterface(.init(networkInterfaceId: networkInterfaceId, instanceId: instanceId, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }
}
