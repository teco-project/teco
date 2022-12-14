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

extension Iecp {
    /// CreateIotDevice请求参数结构体
    public struct CreateIotDeviceRequest: TCRequestModel {
        /// 设备名称
        public let deviceName: String

        /// 设备所属的产品id
        public let productId: String

        /// 描述
        public let description: String?

        /// 无
        public let unitID: Int64?

        public init(deviceName: String, productId: String, description: String? = nil, unitID: Int64? = nil) {
            self.deviceName = deviceName
            self.productId = productId
            self.description = description
            self.unitID = unitID
        }

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case productId = "ProductId"
            case description = "Description"
            case unitID = "UnitID"
        }
    }

    /// CreateIotDevice返回参数结构体
    public struct CreateIotDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建子设备
    @inlinable
    public func createIotDevice(_ input: CreateIotDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIotDeviceResponse > {
        self.client.execute(action: "CreateIotDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建子设备
    @inlinable
    public func createIotDevice(_ input: CreateIotDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIotDeviceResponse {
        try await self.client.execute(action: "CreateIotDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建子设备
    @inlinable
    public func createIotDevice(deviceName: String, productId: String, description: String? = nil, unitID: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIotDeviceResponse > {
        self.createIotDevice(CreateIotDeviceRequest(deviceName: deviceName, productId: productId, description: description, unitID: unitID), logger: logger, on: eventLoop)
    }

    /// 创建子设备
    @inlinable
    public func createIotDevice(deviceName: String, productId: String, description: String? = nil, unitID: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIotDeviceResponse {
        try await self.createIotDevice(CreateIotDeviceRequest(deviceName: deviceName, productId: productId, description: description, unitID: unitID), logger: logger, on: eventLoop)
    }
}
