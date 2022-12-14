//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeletePacketFilterConfig请求参数结构体
    public struct DeletePacketFilterConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// 特征过滤配置
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

    /// DeletePacketFilterConfig返回参数结构体
    public struct DeletePacketFilterConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除DDoS防护的特征过滤规则
    @inlinable
    public func deletePacketFilterConfig(_ input: DeletePacketFilterConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePacketFilterConfigResponse > {
        self.client.execute(action: "DeletePacketFilterConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除DDoS防护的特征过滤规则
    @inlinable
    public func deletePacketFilterConfig(_ input: DeletePacketFilterConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePacketFilterConfigResponse {
        try await self.client.execute(action: "DeletePacketFilterConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除DDoS防护的特征过滤规则
    @inlinable
    public func deletePacketFilterConfig(instanceId: String, packetFilterConfig: PacketFilterConfig, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePacketFilterConfigResponse > {
        self.deletePacketFilterConfig(DeletePacketFilterConfigRequest(instanceId: instanceId, packetFilterConfig: packetFilterConfig), logger: logger, on: eventLoop)
    }

    /// 删除DDoS防护的特征过滤规则
    @inlinable
    public func deletePacketFilterConfig(instanceId: String, packetFilterConfig: PacketFilterConfig, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePacketFilterConfigResponse {
        try await self.deletePacketFilterConfig(DeletePacketFilterConfigRequest(instanceId: instanceId, packetFilterConfig: packetFilterConfig), logger: logger, on: eventLoop)
    }
}
