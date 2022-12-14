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

extension Iotexplorer {
    /// GetDeviceList请求参数结构体
    public struct GetDeviceListRequest: TCRequestModel {
        /// 需要查看设备列表的产品ID, -1代表ProjectId来筛选
        public let productId: String

        /// 分页偏移
        public let offset: Int64?

        /// 分页的大小，数值范围 10-100
        public let limit: Int64?

        /// 设备固件版本号，若不带此参数会返回所有固件版本的设备。传"None-FirmwareVersion"查询无版本号的设备
        public let firmwareVersion: String?

        /// 需要过滤的设备名称
        public let deviceName: String?

        /// 项目ID。产品 ID 为 -1 时，该参数必填
        public let projectId: String?

        public init(productId: String, offset: Int64? = nil, limit: Int64? = nil, firmwareVersion: String? = nil, deviceName: String? = nil, projectId: String? = nil) {
            self.productId = productId
            self.offset = offset
            self.limit = limit
            self.firmwareVersion = firmwareVersion
            self.deviceName = deviceName
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case limit = "Limit"
            case firmwareVersion = "FirmwareVersion"
            case deviceName = "DeviceName"
            case projectId = "ProjectId"
        }
    }

    /// GetDeviceList返回参数结构体
    public struct GetDeviceListResponse: TCResponseModel {
        /// 返回的设备列表, 注意列表设备的 DevicePsk 为空, 要获取设备的 DevicePsk 请使用 DescribeDevice
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devices: [DeviceInfo]?

        /// 产品下的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case devices = "Devices"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取产品的设备列表
    ///
    /// 用于查询某个产品下的设备列表
    @inlinable
    public func getDeviceList(_ input: GetDeviceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeviceListResponse > {
        self.client.execute(action: "GetDeviceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品的设备列表
    ///
    /// 用于查询某个产品下的设备列表
    @inlinable
    public func getDeviceList(_ input: GetDeviceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceListResponse {
        try await self.client.execute(action: "GetDeviceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品的设备列表
    ///
    /// 用于查询某个产品下的设备列表
    @inlinable
    public func getDeviceList(productId: String, offset: Int64? = nil, limit: Int64? = nil, firmwareVersion: String? = nil, deviceName: String? = nil, projectId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeviceListResponse > {
        self.getDeviceList(GetDeviceListRequest(productId: productId, offset: offset, limit: limit, firmwareVersion: firmwareVersion, deviceName: deviceName, projectId: projectId), logger: logger, on: eventLoop)
    }

    /// 获取产品的设备列表
    ///
    /// 用于查询某个产品下的设备列表
    @inlinable
    public func getDeviceList(productId: String, offset: Int64? = nil, limit: Int64? = nil, firmwareVersion: String? = nil, deviceName: String? = nil, projectId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceListResponse {
        try await self.getDeviceList(GetDeviceListRequest(productId: productId, offset: offset, limit: limit, firmwareVersion: firmwareVersion, deviceName: deviceName, projectId: projectId), logger: logger, on: eventLoop)
    }
}
