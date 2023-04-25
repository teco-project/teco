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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// GetFirmwareURL请求参数结构体
    public struct GetFirmwareURLRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本
        public let firmwareVersion: String

        public init(productID: String, firmwareVersion: String) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
        }
    }

    /// GetFirmwareURL返回参数结构体
    public struct GetFirmwareURLResponse: TCResponseModel {
        /// 固件URL
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 获取固件下载地址
    ///
    /// 本接口（GetFirmwareURL）用于获取固件存储的URL
    @inlinable
    public func getFirmwareURL(_ input: GetFirmwareURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirmwareURLResponse> {
        self.client.execute(action: "GetFirmwareURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取固件下载地址
    ///
    /// 本接口（GetFirmwareURL）用于获取固件存储的URL
    @inlinable
    public func getFirmwareURL(_ input: GetFirmwareURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirmwareURLResponse {
        try await self.client.execute(action: "GetFirmwareURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取固件下载地址
    ///
    /// 本接口（GetFirmwareURL）用于获取固件存储的URL
    @inlinable
    public func getFirmwareURL(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirmwareURLResponse> {
        self.getFirmwareURL(.init(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取固件下载地址
    ///
    /// 本接口（GetFirmwareURL）用于获取固件存储的URL
    @inlinable
    public func getFirmwareURL(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirmwareURLResponse {
        try await self.getFirmwareURL(.init(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }
}
