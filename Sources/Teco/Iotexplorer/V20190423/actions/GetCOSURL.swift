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

import TecoCore

extension Iotexplorer {
    /// GetCOSURL请求参数结构体
    public struct GetCOSURLRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本
        public let firmwareVersion: String

        /// 文件大小
        public let fileSize: UInt64?

        public init(productID: String, firmwareVersion: String, fileSize: UInt64? = nil) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.fileSize = fileSize
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case fileSize = "FileSize"
        }
    }

    /// GetCOSURL返回参数结构体
    public struct GetCOSURLResponse: TCResponseModel {
        /// 固件URL
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 获取固件存储请求地址
    ///
    /// 本接口（GetCOSURL）用于获取固件COS存储的上传请求URL地址
    @inlinable
    public func getCOSURL(_ input: GetCOSURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCOSURLResponse> {
        self.client.execute(action: "GetCOSURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取固件存储请求地址
    ///
    /// 本接口（GetCOSURL）用于获取固件COS存储的上传请求URL地址
    @inlinable
    public func getCOSURL(_ input: GetCOSURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCOSURLResponse {
        try await self.client.execute(action: "GetCOSURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取固件存储请求地址
    ///
    /// 本接口（GetCOSURL）用于获取固件COS存储的上传请求URL地址
    @inlinable
    public func getCOSURL(productID: String, firmwareVersion: String, fileSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCOSURLResponse> {
        self.getCOSURL(.init(productID: productID, firmwareVersion: firmwareVersion, fileSize: fileSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取固件存储请求地址
    ///
    /// 本接口（GetCOSURL）用于获取固件COS存储的上传请求URL地址
    @inlinable
    public func getCOSURL(productID: String, firmwareVersion: String, fileSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCOSURLResponse {
        try await self.getCOSURL(.init(productID: productID, firmwareVersion: firmwareVersion, fileSize: fileSize), region: region, logger: logger, on: eventLoop)
    }
}
