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
    /// MigratePrivateIpAddress请求参数结构体
    public struct MigratePrivateIpAddressRequest: TCRequestModel {
        /// ECM 地域，形如ap-xian-ecm。
        public let ecmRegion: String

        /// 当前内网IP绑定的弹性网卡实例ID，例如：eni-11112222。
        public let sourceNetworkInterfaceId: String

        /// 待迁移的目的弹性网卡实例ID。
        public let destinationNetworkInterfaceId: String

        /// 迁移的内网IP地址，例如：10.0.0.6。
        public let privateIpAddress: String

        public init(ecmRegion: String, sourceNetworkInterfaceId: String, destinationNetworkInterfaceId: String, privateIpAddress: String) {
            self.ecmRegion = ecmRegion
            self.sourceNetworkInterfaceId = sourceNetworkInterfaceId
            self.destinationNetworkInterfaceId = destinationNetworkInterfaceId
            self.privateIpAddress = privateIpAddress
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case sourceNetworkInterfaceId = "SourceNetworkInterfaceId"
            case destinationNetworkInterfaceId = "DestinationNetworkInterfaceId"
            case privateIpAddress = "PrivateIpAddress"
        }
    }

    /// MigratePrivateIpAddress返回参数结构体
    public struct MigratePrivateIpAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡内网IP迁移
    ///
    /// 弹性网卡内网IP迁移。
    /// 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
    /// 迁移前后的弹性网卡必须在同一个子网内。
    @inlinable @discardableResult
    public func migratePrivateIpAddress(_ input: MigratePrivateIpAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigratePrivateIpAddressResponse> {
        self.client.execute(action: "MigratePrivateIpAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡内网IP迁移
    ///
    /// 弹性网卡内网IP迁移。
    /// 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
    /// 迁移前后的弹性网卡必须在同一个子网内。
    @inlinable @discardableResult
    public func migratePrivateIpAddress(_ input: MigratePrivateIpAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigratePrivateIpAddressResponse {
        try await self.client.execute(action: "MigratePrivateIpAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡内网IP迁移
    ///
    /// 弹性网卡内网IP迁移。
    /// 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
    /// 迁移前后的弹性网卡必须在同一个子网内。
    @inlinable @discardableResult
    public func migratePrivateIpAddress(ecmRegion: String, sourceNetworkInterfaceId: String, destinationNetworkInterfaceId: String, privateIpAddress: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigratePrivateIpAddressResponse> {
        self.migratePrivateIpAddress(.init(ecmRegion: ecmRegion, sourceNetworkInterfaceId: sourceNetworkInterfaceId, destinationNetworkInterfaceId: destinationNetworkInterfaceId, privateIpAddress: privateIpAddress), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡内网IP迁移
    ///
    /// 弹性网卡内网IP迁移。
    /// 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
    /// 迁移前后的弹性网卡必须在同一个子网内。
    @inlinable @discardableResult
    public func migratePrivateIpAddress(ecmRegion: String, sourceNetworkInterfaceId: String, destinationNetworkInterfaceId: String, privateIpAddress: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigratePrivateIpAddressResponse {
        try await self.migratePrivateIpAddress(.init(ecmRegion: ecmRegion, sourceNetworkInterfaceId: sourceNetworkInterfaceId, destinationNetworkInterfaceId: destinationNetworkInterfaceId, privateIpAddress: privateIpAddress), region: region, logger: logger, on: eventLoop)
    }
}
