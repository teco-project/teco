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

extension Ecm {
    /// DetachNetworkInterface请求参数结构体
    public struct DetachNetworkInterfaceRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// 实例ID。形如：ein-hcs7jkg4
        public let instanceId: String

        /// ECM 地域，形如ap-xian-ecm。
        public let ecmRegion: String

        public init(networkInterfaceId: String, instanceId: String, ecmRegion: String) {
            self.networkInterfaceId = networkInterfaceId
            self.instanceId = instanceId
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case instanceId = "InstanceId"
            case ecmRegion = "EcmRegion"
        }
    }

    /// DetachNetworkInterface返回参数结构体
    public struct DetachNetworkInterfaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡解绑云主机
    @inlinable @discardableResult
    public func detachNetworkInterface(_ input: DetachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachNetworkInterfaceResponse> {
        self.client.execute(action: "DetachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡解绑云主机
    @inlinable @discardableResult
    public func detachNetworkInterface(_ input: DetachNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachNetworkInterfaceResponse {
        try await self.client.execute(action: "DetachNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡解绑云主机
    @inlinable @discardableResult
    public func detachNetworkInterface(networkInterfaceId: String, instanceId: String, ecmRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachNetworkInterfaceResponse> {
        self.detachNetworkInterface(.init(networkInterfaceId: networkInterfaceId, instanceId: instanceId, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡解绑云主机
    @inlinable @discardableResult
    public func detachNetworkInterface(networkInterfaceId: String, instanceId: String, ecmRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachNetworkInterfaceResponse {
        try await self.detachNetworkInterface(.init(networkInterfaceId: networkInterfaceId, instanceId: instanceId, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }
}
