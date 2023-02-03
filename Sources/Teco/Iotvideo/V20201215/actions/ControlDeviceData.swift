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
    /// ControlDeviceData请求参数结构体
    public struct ControlDeviceDataRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 属性数据, JSON格式字符串, 注意字段需要在物模型属性里定义
        public let data: String

        /// 请求类型 , 不填该参数或者 desired 表示下发属性给设备,  reported 表示模拟设备上报属性
        public let method: String?

        /// 上报数据UNIX时间戳(毫秒), 仅对Method:reported有效
        public let dataTimestamp: Int64?

        public init(productId: String, deviceName: String, data: String, method: String? = nil, dataTimestamp: Int64? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.data = data
            self.method = method
            self.dataTimestamp = dataTimestamp
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case data = "Data"
            case method = "Method"
            case dataTimestamp = "DataTimestamp"
        }
    }

    /// ControlDeviceData返回参数结构体
    public struct ControlDeviceDataResponse: TCResponseModel {
        /// 返回信息
        public let data: String

        /// JSON字符串， 返回下发控制的结果信息,
        /// Sent = 1 表示设备已经在线并且订阅了控制下发的mqtt topic
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 设备远程控制
    ///
    /// 根据设备产品ID、设备名称，设置控制设备的属性数据。
    @inlinable
    public func controlDeviceData(_ input: ControlDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlDeviceDataResponse> {
        self.client.execute(action: "ControlDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备远程控制
    ///
    /// 根据设备产品ID、设备名称，设置控制设备的属性数据。
    @inlinable
    public func controlDeviceData(_ input: ControlDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlDeviceDataResponse {
        try await self.client.execute(action: "ControlDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设备远程控制
    ///
    /// 根据设备产品ID、设备名称，设置控制设备的属性数据。
    @inlinable
    public func controlDeviceData(productId: String, deviceName: String, data: String, method: String? = nil, dataTimestamp: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ControlDeviceDataResponse> {
        let input = ControlDeviceDataRequest(productId: productId, deviceName: deviceName, data: data, method: method, dataTimestamp: dataTimestamp)
        return self.client.execute(action: "ControlDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备远程控制
    ///
    /// 根据设备产品ID、设备名称，设置控制设备的属性数据。
    @inlinable
    public func controlDeviceData(productId: String, deviceName: String, data: String, method: String? = nil, dataTimestamp: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ControlDeviceDataResponse {
        let input = ControlDeviceDataRequest(productId: productId, deviceName: deviceName, data: data, method: method, dataTimestamp: dataTimestamp)
        return try await self.client.execute(action: "ControlDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
