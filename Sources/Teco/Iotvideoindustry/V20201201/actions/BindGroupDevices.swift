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

extension Iotvideoindustry {
    /// BindGroupDevices请求参数结构体
    public struct BindGroupDevicesRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String

        /// 设备唯一标识列表
        public let deviceList: [String]

        public init(groupId: String, deviceList: [String]) {
            self.groupId = groupId
            self.deviceList = deviceList
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case deviceList = "DeviceList"
        }
    }

    /// BindGroupDevices返回参数结构体
    public struct BindGroupDevicesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定设备到分组
    ///
    /// 本接口(BindGroupDevices) 用于绑定设备到分组。
    @inlinable
    public func bindGroupDevices(_ input: BindGroupDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindGroupDevicesResponse> {
        self.client.execute(action: "BindGroupDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定设备到分组
    ///
    /// 本接口(BindGroupDevices) 用于绑定设备到分组。
    @inlinable
    public func bindGroupDevices(_ input: BindGroupDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindGroupDevicesResponse {
        try await self.client.execute(action: "BindGroupDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定设备到分组
    ///
    /// 本接口(BindGroupDevices) 用于绑定设备到分组。
    @inlinable
    public func bindGroupDevices(groupId: String, deviceList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindGroupDevicesResponse> {
        self.bindGroupDevices(BindGroupDevicesRequest(groupId: groupId, deviceList: deviceList), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定设备到分组
    ///
    /// 本接口(BindGroupDevices) 用于绑定设备到分组。
    @inlinable
    public func bindGroupDevices(groupId: String, deviceList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindGroupDevicesResponse {
        try await self.bindGroupDevices(BindGroupDevicesRequest(groupId: groupId, deviceList: deviceList), region: region, logger: logger, on: eventLoop)
    }
}
