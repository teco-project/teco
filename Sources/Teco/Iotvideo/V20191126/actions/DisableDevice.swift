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
    /// DisableDevice请求参数结构体
    public struct DisableDeviceRequest: TCRequestModel {
        /// 设备TID ≤100
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// DisableDevice返回参数结构体
    public struct DisableDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用设备
    ///
    /// 本接口（DisableDevice）用于禁用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDevice(_ input: DisableDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDeviceResponse> {
        self.client.execute(action: "DisableDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用设备
    ///
    /// 本接口（DisableDevice）用于禁用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDevice(_ input: DisableDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDeviceResponse {
        try await self.client.execute(action: "DisableDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用设备
    ///
    /// 本接口（DisableDevice）用于禁用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDevice(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDeviceResponse> {
        self.disableDevice(DisableDeviceRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用设备
    ///
    /// 本接口（DisableDevice）用于禁用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDevice(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDeviceResponse {
        try await self.disableDevice(DisableDeviceRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
