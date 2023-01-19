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

extension Iotvideo {
    /// ReportAliveDevice请求参数结构体
    public struct ReportAliveDeviceRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        public init(productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }

    /// ReportAliveDevice返回参数结构体
    public struct ReportAliveDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报活跃设备
    @inlinable
    public func reportAliveDevice(_ input: ReportAliveDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportAliveDeviceResponse> {
        self.client.execute(action: "ReportAliveDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报活跃设备
    @inlinable
    public func reportAliveDevice(_ input: ReportAliveDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportAliveDeviceResponse {
        try await self.client.execute(action: "ReportAliveDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报活跃设备
    @inlinable
    public func reportAliveDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportAliveDeviceResponse> {
        self.reportAliveDevice(ReportAliveDeviceRequest(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 上报活跃设备
    @inlinable
    public func reportAliveDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportAliveDeviceResponse {
        try await self.reportAliveDevice(ReportAliveDeviceRequest(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
