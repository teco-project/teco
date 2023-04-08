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
    /// CallTRTCDevice请求参数结构体
    public struct CallTRTCDeviceRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        public init(productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }

    /// CallTRTCDevice返回参数结构体
    public struct CallTRTCDeviceResponse: TCResponseModel {
        /// TRTC SDK房间参数
        public let trtcParams: TRTCParams

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trtcParams = "TRTCParams"
            case requestId = "RequestId"
        }
    }

    /// 呼叫TRTC设备
    @inlinable
    public func callTRTCDevice(_ input: CallTRTCDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CallTRTCDeviceResponse> {
        self.client.execute(action: "CallTRTCDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 呼叫TRTC设备
    @inlinable
    public func callTRTCDevice(_ input: CallTRTCDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallTRTCDeviceResponse {
        try await self.client.execute(action: "CallTRTCDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 呼叫TRTC设备
    @inlinable
    public func callTRTCDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CallTRTCDeviceResponse> {
        self.callTRTCDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 呼叫TRTC设备
    @inlinable
    public func callTRTCDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallTRTCDeviceResponse {
        try await self.callTRTCDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
