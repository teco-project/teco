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
    /// GenSingleDeviceSignatureOfPublic请求参数结构体
    public struct GenSingleDeviceSignatureOfPublicRequest: TCRequest {
        /// 设备所属的产品ID
        public let productId: String

        /// 需要绑定的设备
        public let deviceName: String

        /// 设备绑定签名的有效时间,以秒为单位。取值范围：0 < Expire <= 86400，Expire == -1（十年）
        public let expire: Int64

        public init(productId: String, deviceName: String, expire: Int64) {
            self.productId = productId
            self.deviceName = deviceName
            self.expire = expire
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case expire = "Expire"
        }
    }

    /// GenSingleDeviceSignatureOfPublic返回参数结构体
    public struct GenSingleDeviceSignatureOfPublicResponse: TCResponse {
        /// 设备签名信息
        public let deviceSignature: DeviceSignatureInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceSignature = "DeviceSignature"
            case requestId = "RequestId"
        }
    }

    /// 生成单个设备绑定的签名
    ///
    /// 获取设备的绑定签名
    @inlinable
    public func genSingleDeviceSignatureOfPublic(_ input: GenSingleDeviceSignatureOfPublicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenSingleDeviceSignatureOfPublicResponse> {
        self.client.execute(action: "GenSingleDeviceSignatureOfPublic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成单个设备绑定的签名
    ///
    /// 获取设备的绑定签名
    @inlinable
    public func genSingleDeviceSignatureOfPublic(_ input: GenSingleDeviceSignatureOfPublicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenSingleDeviceSignatureOfPublicResponse {
        try await self.client.execute(action: "GenSingleDeviceSignatureOfPublic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成单个设备绑定的签名
    ///
    /// 获取设备的绑定签名
    @inlinable
    public func genSingleDeviceSignatureOfPublic(productId: String, deviceName: String, expire: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenSingleDeviceSignatureOfPublicResponse> {
        self.genSingleDeviceSignatureOfPublic(.init(productId: productId, deviceName: deviceName, expire: expire), region: region, logger: logger, on: eventLoop)
    }

    /// 生成单个设备绑定的签名
    ///
    /// 获取设备的绑定签名
    @inlinable
    public func genSingleDeviceSignatureOfPublic(productId: String, deviceName: String, expire: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenSingleDeviceSignatureOfPublicResponse {
        try await self.genSingleDeviceSignatureOfPublic(.init(productId: productId, deviceName: deviceName, expire: expire), region: region, logger: logger, on: eventLoop)
    }
}
