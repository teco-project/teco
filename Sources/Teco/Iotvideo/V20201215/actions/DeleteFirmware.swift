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
    /// DeleteFirmware请求参数结构体
    public struct DeleteFirmwareRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本
        public let firmwareVersion: String

        public init(productID: String, firmwareVersion: String) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
        }
    }

    /// DeleteFirmware返回参数结构体
    public struct DeleteFirmwareResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除固件
    ///
    /// 本接口（DeleteFirmware）用于删除固件
    @inlinable
    public func deleteFirmware(_ input: DeleteFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirmwareResponse> {
        self.client.execute(action: "DeleteFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除固件
    ///
    /// 本接口（DeleteFirmware）用于删除固件
    @inlinable
    public func deleteFirmware(_ input: DeleteFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirmwareResponse {
        try await self.client.execute(action: "DeleteFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除固件
    ///
    /// 本接口（DeleteFirmware）用于删除固件
    @inlinable
    public func deleteFirmware(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirmwareResponse> {
        self.deleteFirmware(DeleteFirmwareRequest(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 删除固件
    ///
    /// 本接口（DeleteFirmware）用于删除固件
    @inlinable
    public func deleteFirmware(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirmwareResponse {
        try await self.deleteFirmware(DeleteFirmwareRequest(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }
}
