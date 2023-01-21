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

extension Antiddos {
    /// CreatePacketFilterConfig请求参数结构体
    public struct CreatePacketFilterConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// 特征过滤规则
        public let packetFilterConfig: PacketFilterConfig

        public init(instanceId: String, packetFilterConfig: PacketFilterConfig) {
            self.instanceId = instanceId
            self.packetFilterConfig = packetFilterConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case packetFilterConfig = "PacketFilterConfig"
        }
    }

    /// CreatePacketFilterConfig返回参数结构体
    public struct CreatePacketFilterConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加DDoS防护的特征过滤规则
    @inlinable @discardableResult
    public func createPacketFilterConfig(_ input: CreatePacketFilterConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePacketFilterConfigResponse> {
        self.client.execute(action: "CreatePacketFilterConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加DDoS防护的特征过滤规则
    @inlinable @discardableResult
    public func createPacketFilterConfig(_ input: CreatePacketFilterConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePacketFilterConfigResponse {
        try await self.client.execute(action: "CreatePacketFilterConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加DDoS防护的特征过滤规则
    @inlinable @discardableResult
    public func createPacketFilterConfig(instanceId: String, packetFilterConfig: PacketFilterConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePacketFilterConfigResponse> {
        self.createPacketFilterConfig(CreatePacketFilterConfigRequest(instanceId: instanceId, packetFilterConfig: packetFilterConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 添加DDoS防护的特征过滤规则
    @inlinable @discardableResult
    public func createPacketFilterConfig(instanceId: String, packetFilterConfig: PacketFilterConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePacketFilterConfigResponse {
        try await self.createPacketFilterConfig(CreatePacketFilterConfigRequest(instanceId: instanceId, packetFilterConfig: packetFilterConfig), region: region, logger: logger, on: eventLoop)
    }
}
