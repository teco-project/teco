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

import Logging
import NIOCore
import TecoCore

extension Iotcloud {
    /// BatchUpdateFirmware请求参数结构体
    public struct BatchUpdateFirmwareRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 固件新版本号
        public let firmwareVersion: String

        /// 固件原版本号，根据文件列表升级固件不需要填写此参数
        public let firmwareOriVersion: String?

        /// 升级方式，0 静默升级  1 用户确认升级。 不填默认为静默升级方式
        public let upgradeMethod: UInt64?

        /// 设备列表文件名称，根据文件列表升级固件需要填写此参数
        public let fileName: String?

        /// 设备列表的文件md5值
        public let fileMd5: String?

        /// 设备列表的文件大小值
        public let fileSize: UInt64?

        /// 需要升级的设备名称列表
        public let deviceNames: [String]?

        /// 固件升级任务，默认超时时间。 最小取值60秒，最大为3600秒
        public let timeoutInterval: UInt64?

        public init(productId: String, firmwareVersion: String, firmwareOriVersion: String? = nil, upgradeMethod: UInt64? = nil, fileName: String? = nil, fileMd5: String? = nil, fileSize: UInt64? = nil, deviceNames: [String]? = nil, timeoutInterval: UInt64? = nil) {
            self.productId = productId
            self.firmwareVersion = firmwareVersion
            self.firmwareOriVersion = firmwareOriVersion
            self.upgradeMethod = upgradeMethod
            self.fileName = fileName
            self.fileMd5 = fileMd5
            self.fileSize = fileSize
            self.deviceNames = deviceNames
            self.timeoutInterval = timeoutInterval
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case firmwareVersion = "FirmwareVersion"
            case firmwareOriVersion = "FirmwareOriVersion"
            case upgradeMethod = "UpgradeMethod"
            case fileName = "FileName"
            case fileMd5 = "FileMd5"
            case fileSize = "FileSize"
            case deviceNames = "DeviceNames"
            case timeoutInterval = "TimeoutInterval"
        }
    }

    /// BatchUpdateFirmware返回参数结构体
    public struct BatchUpdateFirmwareResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 批量更新固件
    ///
    /// 本接口（BatchUpdateFirmware）用于批量更新设备固件
    @inlinable
    public func batchUpdateFirmware(_ input: BatchUpdateFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateFirmwareResponse> {
        self.client.execute(action: "BatchUpdateFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量更新固件
    ///
    /// 本接口（BatchUpdateFirmware）用于批量更新设备固件
    @inlinable
    public func batchUpdateFirmware(_ input: BatchUpdateFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateFirmwareResponse {
        try await self.client.execute(action: "BatchUpdateFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量更新固件
    ///
    /// 本接口（BatchUpdateFirmware）用于批量更新设备固件
    @inlinable
    public func batchUpdateFirmware(productId: String, firmwareVersion: String, firmwareOriVersion: String? = nil, upgradeMethod: UInt64? = nil, fileName: String? = nil, fileMd5: String? = nil, fileSize: UInt64? = nil, deviceNames: [String]? = nil, timeoutInterval: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateFirmwareResponse> {
        self.batchUpdateFirmware(.init(productId: productId, firmwareVersion: firmwareVersion, firmwareOriVersion: firmwareOriVersion, upgradeMethod: upgradeMethod, fileName: fileName, fileMd5: fileMd5, fileSize: fileSize, deviceNames: deviceNames, timeoutInterval: timeoutInterval), region: region, logger: logger, on: eventLoop)
    }

    /// 批量更新固件
    ///
    /// 本接口（BatchUpdateFirmware）用于批量更新设备固件
    @inlinable
    public func batchUpdateFirmware(productId: String, firmwareVersion: String, firmwareOriVersion: String? = nil, upgradeMethod: UInt64? = nil, fileName: String? = nil, fileMd5: String? = nil, fileSize: UInt64? = nil, deviceNames: [String]? = nil, timeoutInterval: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateFirmwareResponse {
        try await self.batchUpdateFirmware(.init(productId: productId, firmwareVersion: firmwareVersion, firmwareOriVersion: firmwareOriVersion, upgradeMethod: upgradeMethod, fileName: fileName, fileMd5: fileMd5, fileSize: fileSize, deviceNames: deviceNames, timeoutInterval: timeoutInterval), region: region, logger: logger, on: eventLoop)
    }
}
