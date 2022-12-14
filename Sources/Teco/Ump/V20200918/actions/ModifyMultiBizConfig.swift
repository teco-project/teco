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

extension Ump {
    /// ModifyMultiBizConfig请求参数结构体
    public struct ModifyMultiBizConfigRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 点位ID
        public let zoneId: UInt64

        /// 摄像头ID
        public let cameraId: UInt64

        /// 监控区域
        public let monitoringAreas: [Polygon]

        public init(groupCode: String, mallId: UInt64, zoneId: UInt64, cameraId: UInt64, monitoringAreas: [Polygon]) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.zoneId = zoneId
            self.cameraId = cameraId
            self.monitoringAreas = monitoringAreas
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case zoneId = "ZoneId"
            case cameraId = "CameraId"
            case monitoringAreas = "MonitoringAreas"
        }
    }

    /// ModifyMultiBizConfig返回参数结构体
    public struct ModifyMultiBizConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 多经点位配置更新
    ///
    /// 集团广场的多经点位配置更新
    @inlinable
    public func modifyMultiBizConfig(_ input: ModifyMultiBizConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMultiBizConfigResponse > {
        self.client.execute(action: "ModifyMultiBizConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 多经点位配置更新
    ///
    /// 集团广场的多经点位配置更新
    @inlinable
    public func modifyMultiBizConfig(_ input: ModifyMultiBizConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMultiBizConfigResponse {
        try await self.client.execute(action: "ModifyMultiBizConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 多经点位配置更新
    ///
    /// 集团广场的多经点位配置更新
    @inlinable
    public func modifyMultiBizConfig(groupCode: String, mallId: UInt64, zoneId: UInt64, cameraId: UInt64, monitoringAreas: [Polygon], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMultiBizConfigResponse > {
        self.modifyMultiBizConfig(ModifyMultiBizConfigRequest(groupCode: groupCode, mallId: mallId, zoneId: zoneId, cameraId: cameraId, monitoringAreas: monitoringAreas), logger: logger, on: eventLoop)
    }

    /// 多经点位配置更新
    ///
    /// 集团广场的多经点位配置更新
    @inlinable
    public func modifyMultiBizConfig(groupCode: String, mallId: UInt64, zoneId: UInt64, cameraId: UInt64, monitoringAreas: [Polygon], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMultiBizConfigResponse {
        try await self.modifyMultiBizConfig(ModifyMultiBizConfigRequest(groupCode: groupCode, mallId: mallId, zoneId: zoneId, cameraId: cameraId, monitoringAreas: monitoringAreas), logger: logger, on: eventLoop)
    }
}
