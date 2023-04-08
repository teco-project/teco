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
    /// DeleteNetworkInterface请求参数结构体
    public struct DeleteNetworkInterfaceRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// ECM 地域，形如ap-xian-ecm。
        public let ecmRegion: String

        public init(networkInterfaceId: String, ecmRegion: String) {
            self.networkInterfaceId = networkInterfaceId
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case ecmRegion = "EcmRegion"
        }
    }

    /// DeleteNetworkInterface返回参数结构体
    public struct DeleteNetworkInterfaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除弹性网卡
    @inlinable @discardableResult
    public func deleteNetworkInterface(_ input: DeleteNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNetworkInterfaceResponse> {
        self.client.execute(action: "DeleteNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除弹性网卡
    @inlinable @discardableResult
    public func deleteNetworkInterface(_ input: DeleteNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNetworkInterfaceResponse {
        try await self.client.execute(action: "DeleteNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除弹性网卡
    @inlinable @discardableResult
    public func deleteNetworkInterface(networkInterfaceId: String, ecmRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNetworkInterfaceResponse> {
        self.deleteNetworkInterface(.init(networkInterfaceId: networkInterfaceId, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 删除弹性网卡
    @inlinable @discardableResult
    public func deleteNetworkInterface(networkInterfaceId: String, ecmRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNetworkInterfaceResponse {
        try await self.deleteNetworkInterface(.init(networkInterfaceId: networkInterfaceId, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }
}
