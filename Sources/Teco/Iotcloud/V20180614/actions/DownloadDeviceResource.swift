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

extension Iotcloud {
    /// DownloadDeviceResource请求参数结构体
    public struct DownloadDeviceResourceRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 资源名称
        public let name: String

        /// 设备名称
        public let deviceName: String

        public init(productID: String, name: String, deviceName: String) {
            self.productID = productID
            self.name = name
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case name = "Name"
            case deviceName = "DeviceName"
        }
    }

    /// DownloadDeviceResource返回参数结构体
    public struct DownloadDeviceResourceResponse: TCResponseModel {
        /// 设备资源的cos链接
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 下载设备资源
    ///
    /// 本接口（DownloadDeviceResource）用于下载设备资源
    @inlinable
    public func downloadDeviceResource(_ input: DownloadDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadDeviceResourceResponse> {
        self.client.execute(action: "DownloadDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载设备资源
    ///
    /// 本接口（DownloadDeviceResource）用于下载设备资源
    @inlinable
    public func downloadDeviceResource(_ input: DownloadDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadDeviceResourceResponse {
        try await self.client.execute(action: "DownloadDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载设备资源
    ///
    /// 本接口（DownloadDeviceResource）用于下载设备资源
    @inlinable
    public func downloadDeviceResource(productID: String, name: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadDeviceResourceResponse> {
        self.downloadDeviceResource(.init(productID: productID, name: name, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 下载设备资源
    ///
    /// 本接口（DownloadDeviceResource）用于下载设备资源
    @inlinable
    public func downloadDeviceResource(productID: String, name: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadDeviceResourceResponse {
        try await self.downloadDeviceResource(.init(productID: productID, name: name, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
