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

extension Iotvideo {
    /// DeleteDevice请求参数结构体
    public struct DeleteDeviceRequest: TCRequestModel {
        /// 设备TID列表
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// DeleteDevice返回参数结构体
    public struct DeleteDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除设备
    ///
    /// 本接口（DeleteDevice）用于删除设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func deleteDevice(_ input: DeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        self.client.execute(action: "DeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 本接口（DeleteDevice）用于删除设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func deleteDevice(_ input: DeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        try await self.client.execute(action: "DeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除设备
    ///
    /// 本接口（DeleteDevice）用于删除设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func deleteDevice(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        self.deleteDevice(DeleteDeviceRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 本接口（DeleteDevice）用于删除设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func deleteDevice(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        try await self.deleteDevice(DeleteDeviceRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
