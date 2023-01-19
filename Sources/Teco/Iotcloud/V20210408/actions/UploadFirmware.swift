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

extension Iotcloud {
    /// UploadFirmware请求参数结构体
    public struct UploadFirmwareRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

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

        public init(productId: String, firmwareVersion: String, md5sum: String, fileSize: UInt64, firmwareName: String? = nil, firmwareDescription: String? = nil) {
            self.productId = productId
            self.firmwareVersion = firmwareVersion
            self.md5sum = md5sum
            self.fileSize = fileSize
            self.firmwareName = firmwareName
            self.firmwareDescription = firmwareDescription
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case firmwareVersion = "FirmwareVersion"
            case md5sum = "Md5sum"
            case fileSize = "FileSize"
            case firmwareName = "FirmwareName"
            case firmwareDescription = "FirmwareDescription"
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

    /// 上传固件信息
    ///
    /// 本接口（UploadFirmware）用于上传设备固件信息
    @inlinable
    public func uploadFirmware(_ input: UploadFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFirmwareResponse> {
        self.client.execute(action: "UploadFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传固件信息
    ///
    /// 本接口（UploadFirmware）用于上传设备固件信息
    @inlinable
    public func uploadFirmware(_ input: UploadFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFirmwareResponse {
        try await self.client.execute(action: "UploadFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传固件信息
    ///
    /// 本接口（UploadFirmware）用于上传设备固件信息
    @inlinable
    public func uploadFirmware(productId: String, firmwareVersion: String, md5sum: String, fileSize: UInt64, firmwareName: String? = nil, firmwareDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFirmwareResponse> {
        self.uploadFirmware(UploadFirmwareRequest(productId: productId, firmwareVersion: firmwareVersion, md5sum: md5sum, fileSize: fileSize, firmwareName: firmwareName, firmwareDescription: firmwareDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 上传固件信息
    ///
    /// 本接口（UploadFirmware）用于上传设备固件信息
    @inlinable
    public func uploadFirmware(productId: String, firmwareVersion: String, md5sum: String, fileSize: UInt64, firmwareName: String? = nil, firmwareDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFirmwareResponse {
        try await self.uploadFirmware(UploadFirmwareRequest(productId: productId, firmwareVersion: firmwareVersion, md5sum: md5sum, fileSize: fileSize, firmwareName: firmwareName, firmwareDescription: firmwareDescription), region: region, logger: logger, on: eventLoop)
    }
}
