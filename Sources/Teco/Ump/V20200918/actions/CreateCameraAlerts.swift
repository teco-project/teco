//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ump {
    /// CreateCameraAlerts请求参数结构体
    public struct CreateCameraAlertsRequest: TCRequestModel {
        /// 告警信息列表
        public let alerts: [CreateCameraAlertAlert]?

        public init(alerts: [CreateCameraAlertAlert]? = nil) {
            self.alerts = alerts
        }

        enum CodingKeys: String, CodingKey {
            case alerts = "Alerts"
        }
    }

    /// CreateCameraAlerts返回参数结构体
    public struct CreateCameraAlertsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报相机告警信息
    ///
    /// 上报相机移动、遮挡等告警信息
    @inlinable
    public func createCameraAlerts(_ input: CreateCameraAlertsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCameraAlertsResponse> {
        self.client.execute(action: "CreateCameraAlerts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报相机告警信息
    ///
    /// 上报相机移动、遮挡等告警信息
    @inlinable
    public func createCameraAlerts(_ input: CreateCameraAlertsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCameraAlertsResponse {
        try await self.client.execute(action: "CreateCameraAlerts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报相机告警信息
    ///
    /// 上报相机移动、遮挡等告警信息
    @inlinable
    public func createCameraAlerts(alerts: [CreateCameraAlertAlert]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCameraAlertsResponse> {
        self.createCameraAlerts(CreateCameraAlertsRequest(alerts: alerts), region: region, logger: logger, on: eventLoop)
    }

    /// 上报相机告警信息
    ///
    /// 上报相机移动、遮挡等告警信息
    @inlinable
    public func createCameraAlerts(alerts: [CreateCameraAlertAlert]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCameraAlertsResponse {
        try await self.createCameraAlerts(CreateCameraAlertsRequest(alerts: alerts), region: region, logger: logger, on: eventLoop)
    }
}
