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

extension Iotvideo {
    /// EditFirmware请求参数结构体
    public struct EditFirmwareRequest: TCRequestModel {
        /// 产品ID。
        public let productID: String

        /// 固件版本号。
        public let firmwareVersion: String

        /// 固件名称。
        public let firmwareName: String

        /// 固件描述。
        public let firmwareDescription: String?

        public init(productID: String, firmwareVersion: String, firmwareName: String, firmwareDescription: String? = nil) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.firmwareName = firmwareName
            self.firmwareDescription = firmwareDescription
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case firmwareName = "FirmwareName"
            case firmwareDescription = "FirmwareDescription"
        }
    }

    /// EditFirmware返回参数结构体
    public struct EditFirmwareResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑固件信息
    ///
    /// 本接口用于编辑固件信息
    @inlinable @discardableResult
    public func editFirmware(_ input: EditFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditFirmwareResponse> {
        self.client.execute(action: "EditFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑固件信息
    ///
    /// 本接口用于编辑固件信息
    @inlinable @discardableResult
    public func editFirmware(_ input: EditFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditFirmwareResponse {
        try await self.client.execute(action: "EditFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑固件信息
    ///
    /// 本接口用于编辑固件信息
    @inlinable @discardableResult
    public func editFirmware(productID: String, firmwareVersion: String, firmwareName: String, firmwareDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditFirmwareResponse> {
        self.editFirmware(EditFirmwareRequest(productID: productID, firmwareVersion: firmwareVersion, firmwareName: firmwareName, firmwareDescription: firmwareDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑固件信息
    ///
    /// 本接口用于编辑固件信息
    @inlinable @discardableResult
    public func editFirmware(productID: String, firmwareVersion: String, firmwareName: String, firmwareDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditFirmwareResponse {
        try await self.editFirmware(EditFirmwareRequest(productID: productID, firmwareVersion: firmwareVersion, firmwareName: firmwareName, firmwareDescription: firmwareDescription), region: region, logger: logger, on: eventLoop)
    }
}
