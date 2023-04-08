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
    /// RunDevice请求参数结构体
    public struct RunDeviceRequest: TCRequestModel {
        /// TID列表 ≤100
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// RunDevice返回参数结构体
    public struct RunDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用设备
    ///
    /// 本接口（RunDevice）用于启用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDevice(_ input: RunDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunDeviceResponse> {
        self.client.execute(action: "RunDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用设备
    ///
    /// 本接口（RunDevice）用于启用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDevice(_ input: RunDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunDeviceResponse {
        try await self.client.execute(action: "RunDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用设备
    ///
    /// 本接口（RunDevice）用于启用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDevice(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunDeviceResponse> {
        self.runDevice(.init(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 启用设备
    ///
    /// 本接口（RunDevice）用于启用设备，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDevice(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunDeviceResponse {
        try await self.runDevice(.init(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
