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

extension Iotexplorer {
    /// UploadFirmware请求参数结构体
    public struct UploadFirmwareRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本号
        public let firmwareVersion: String

        /// 固件的MD5值
        public let md5sum: String

        /// 固件的大小
        public let fileSize: UInt64

        /// 固件名称
        public let firmwareName: String?

        /// 固件描述
        public let firmwareDescription: String?

        /// 固件升级模块；可选值 mcu|moudule
        public let fwType: String?

        public init(productID: String, firmwareVersion: String, md5sum: String, fileSize: UInt64, firmwareName: String? = nil, firmwareDescription: String? = nil, fwType: String? = nil) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.md5sum = md5sum
            self.fileSize = fileSize
            self.firmwareName = firmwareName
            self.firmwareDescription = firmwareDescription
            self.fwType = fwType
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case md5sum = "Md5sum"
            case fileSize = "FileSize"
            case firmwareName = "FirmwareName"
            case firmwareDescription = "FirmwareDescription"
            case fwType = "FwType"
        }
    }

    /// UploadFirmware返回参数结构体
    public struct UploadFirmwareResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建固件版本信息
    ///
    /// 本接口（UploadFirmware）用于创建设备固件版本信息，在平台用于固件版本升级、固件资源下发等。
    @inlinable @discardableResult
    public func uploadFirmware(_ input: UploadFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFirmwareResponse> {
        self.client.execute(action: "UploadFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建固件版本信息
    ///
    /// 本接口（UploadFirmware）用于创建设备固件版本信息，在平台用于固件版本升级、固件资源下发等。
    @inlinable @discardableResult
    public func uploadFirmware(_ input: UploadFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFirmwareResponse {
        try await self.client.execute(action: "UploadFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建固件版本信息
    ///
    /// 本接口（UploadFirmware）用于创建设备固件版本信息，在平台用于固件版本升级、固件资源下发等。
    @inlinable @discardableResult
    public func uploadFirmware(productID: String, firmwareVersion: String, md5sum: String, fileSize: UInt64, firmwareName: String? = nil, firmwareDescription: String? = nil, fwType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFirmwareResponse> {
        let input = UploadFirmwareRequest(productID: productID, firmwareVersion: firmwareVersion, md5sum: md5sum, fileSize: fileSize, firmwareName: firmwareName, firmwareDescription: firmwareDescription, fwType: fwType)
        return self.client.execute(action: "UploadFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建固件版本信息
    ///
    /// 本接口（UploadFirmware）用于创建设备固件版本信息，在平台用于固件版本升级、固件资源下发等。
    @inlinable @discardableResult
    public func uploadFirmware(productID: String, firmwareVersion: String, md5sum: String, fileSize: UInt64, firmwareName: String? = nil, firmwareDescription: String? = nil, fwType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFirmwareResponse {
        let input = UploadFirmwareRequest(productID: productID, firmwareVersion: firmwareVersion, md5sum: md5sum, fileSize: fileSize, firmwareName: firmwareName, firmwareDescription: firmwareDescription, fwType: fwType)
        return try await self.client.execute(action: "UploadFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
