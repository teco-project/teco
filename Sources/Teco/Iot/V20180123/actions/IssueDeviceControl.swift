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

extension Iot {
    /// IssueDeviceControl请求参数结构体
    public struct IssueDeviceControlRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 控制数据（json）
        public let controlData: String

        /// 是否发送metadata字段
        public let metadata: Bool?

        public init(productId: String, deviceName: String, controlData: String, metadata: Bool? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.controlData = controlData
            self.metadata = metadata
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case controlData = "ControlData"
            case metadata = "Metadata"
        }
    }

    /// IssueDeviceControl返回参数结构体
    public struct IssueDeviceControlResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 下发设备控制指令
    ///
    /// 提供下发控制指令到指定设备的能力，该接口适用于使用高级版类型的产品。
    @inlinable @discardableResult
    public func issueDeviceControl(_ input: IssueDeviceControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IssueDeviceControlResponse> {
        self.client.execute(action: "IssueDeviceControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下发设备控制指令
    ///
    /// 提供下发控制指令到指定设备的能力，该接口适用于使用高级版类型的产品。
    @inlinable @discardableResult
    public func issueDeviceControl(_ input: IssueDeviceControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IssueDeviceControlResponse {
        try await self.client.execute(action: "IssueDeviceControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下发设备控制指令
    ///
    /// 提供下发控制指令到指定设备的能力，该接口适用于使用高级版类型的产品。
    @inlinable @discardableResult
    public func issueDeviceControl(productId: String, deviceName: String, controlData: String, metadata: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IssueDeviceControlResponse> {
        let input = IssueDeviceControlRequest(productId: productId, deviceName: deviceName, controlData: controlData, metadata: metadata)
        return self.client.execute(action: "IssueDeviceControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下发设备控制指令
    ///
    /// 提供下发控制指令到指定设备的能力，该接口适用于使用高级版类型的产品。
    @inlinable @discardableResult
    public func issueDeviceControl(productId: String, deviceName: String, controlData: String, metadata: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IssueDeviceControlResponse {
        let input = IssueDeviceControlRequest(productId: productId, deviceName: deviceName, controlData: controlData, metadata: metadata)
        return try await self.client.execute(action: "IssueDeviceControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
