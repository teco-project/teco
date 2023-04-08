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

extension Iotvideo {
    /// CancelDeviceFirmwareTask请求参数结构体
    public struct CancelDeviceFirmwareTaskRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 设备名称
        public let deviceName: String

        /// 固件版本号
        public let firmwareVersion: String

        /// 固件升级任务ID
        public let taskId: UInt64

        public init(productID: String, deviceName: String, firmwareVersion: String, taskId: UInt64) {
            self.productID = productID
            self.deviceName = deviceName
            self.firmwareVersion = firmwareVersion
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case deviceName = "DeviceName"
            case firmwareVersion = "FirmwareVersion"
            case taskId = "TaskId"
        }
    }

    /// CancelDeviceFirmwareTask返回参数结构体
    public struct CancelDeviceFirmwareTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消设备升级任务
    ///
    /// 本接口用于取消设备升级任务
    @inlinable @discardableResult
    public func cancelDeviceFirmwareTask(_ input: CancelDeviceFirmwareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDeviceFirmwareTaskResponse> {
        self.client.execute(action: "CancelDeviceFirmwareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消设备升级任务
    ///
    /// 本接口用于取消设备升级任务
    @inlinable @discardableResult
    public func cancelDeviceFirmwareTask(_ input: CancelDeviceFirmwareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDeviceFirmwareTaskResponse {
        try await self.client.execute(action: "CancelDeviceFirmwareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消设备升级任务
    ///
    /// 本接口用于取消设备升级任务
    @inlinable @discardableResult
    public func cancelDeviceFirmwareTask(productID: String, deviceName: String, firmwareVersion: String, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDeviceFirmwareTaskResponse> {
        self.cancelDeviceFirmwareTask(.init(productID: productID, deviceName: deviceName, firmwareVersion: firmwareVersion, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消设备升级任务
    ///
    /// 本接口用于取消设备升级任务
    @inlinable @discardableResult
    public func cancelDeviceFirmwareTask(productID: String, deviceName: String, firmwareVersion: String, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDeviceFirmwareTaskResponse {
        try await self.cancelDeviceFirmwareTask(.init(productID: productID, deviceName: deviceName, firmwareVersion: firmwareVersion, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
