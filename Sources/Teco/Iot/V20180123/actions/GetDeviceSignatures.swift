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

extension Iot {
    /// GetDeviceSignatures请求参数结构体
    public struct GetDeviceSignaturesRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 设备名称列表（单次限制1000个设备）
        public let deviceNames: [String]

        /// 过期时间
        public let expire: UInt64?

        public init(productId: String, deviceNames: [String], expire: UInt64? = nil) {
            self.productId = productId
            self.deviceNames = deviceNames
            self.expire = expire
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
            case expire = "Expire"
        }
    }

    /// GetDeviceSignatures返回参数结构体
    public struct GetDeviceSignaturesResponse: TCResponse {
        /// 设备绑定签名列表
        public let deviceSignatures: [DeviceSignature]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceSignatures = "DeviceSignatures"
            case requestId = "RequestId"
        }
    }

    /// 获取设备绑定签名
    ///
    /// 获取设备绑定签名，用于用户绑定某个设备的应用场景
    @inlinable
    public func getDeviceSignatures(_ input: GetDeviceSignaturesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceSignaturesResponse> {
        self.client.execute(action: "GetDeviceSignatures", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备绑定签名
    ///
    /// 获取设备绑定签名，用于用户绑定某个设备的应用场景
    @inlinable
    public func getDeviceSignatures(_ input: GetDeviceSignaturesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceSignaturesResponse {
        try await self.client.execute(action: "GetDeviceSignatures", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备绑定签名
    ///
    /// 获取设备绑定签名，用于用户绑定某个设备的应用场景
    @inlinable
    public func getDeviceSignatures(productId: String, deviceNames: [String], expire: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceSignaturesResponse> {
        self.getDeviceSignatures(.init(productId: productId, deviceNames: deviceNames, expire: expire), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备绑定签名
    ///
    /// 获取设备绑定签名，用于用户绑定某个设备的应用场景
    @inlinable
    public func getDeviceSignatures(productId: String, deviceNames: [String], expire: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceSignaturesResponse {
        try await self.getDeviceSignatures(.init(productId: productId, deviceNames: deviceNames, expire: expire), region: region, logger: logger, on: eventLoop)
    }
}
