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
    /// CreateCloudStorage请求参数结构体
    public struct CreateCloudStorageRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 云存套餐ID：
        /// yc1m3d ： 全时3天存储月套餐。
        /// yc1m7d ： 全时7天存储月套餐。
        /// yc1m30d ：全时30天存储月套餐。
        /// yc1y3d ：全时3天存储年套餐。
        /// yc1y7d ：全时7天存储年套餐。
        /// yc1y30d ：全时30天存储年套餐。
        /// ye1m3d ：事件3天存储月套餐。
        /// ye1m7d ：事件7天存储月套餐。
        /// ye1m30d ：事件30天存储月套餐 。
        /// ye1y3d ：事件3天存储年套餐。
        /// ye1y7d ：事件7天存储年套餐。
        /// ye1y30d ：事件30天存储年套餐。
        /// yc1w7d : 全时7天存储周套餐。
        /// ye1w7d : 事件7天存储周套餐。
        public let packageId: String

        /// 如果当前设备已开启云存套餐，Override=1会使用新套餐覆盖原有套餐。不传此参数则默认为0。
        public let override: UInt64?

        public init(productId: String, deviceName: String, packageId: String, override: UInt64? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.packageId = packageId
            self.override = override
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case packageId = "PackageId"
            case override = "Override"
        }
    }

    /// CreateCloudStorage返回参数结构体
    public struct CreateCloudStorageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开通云存服务
    @inlinable @discardableResult
    public func createCloudStorage(_ input: CreateCloudStorageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudStorageResponse> {
        self.client.execute(action: "CreateCloudStorage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通云存服务
    @inlinable @discardableResult
    public func createCloudStorage(_ input: CreateCloudStorageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudStorageResponse {
        try await self.client.execute(action: "CreateCloudStorage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通云存服务
    @inlinable @discardableResult
    public func createCloudStorage(productId: String, deviceName: String, packageId: String, override: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudStorageResponse> {
        self.createCloudStorage(CreateCloudStorageRequest(productId: productId, deviceName: deviceName, packageId: packageId, override: override), region: region, logger: logger, on: eventLoop)
    }

    /// 开通云存服务
    @inlinable @discardableResult
    public func createCloudStorage(productId: String, deviceName: String, packageId: String, override: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudStorageResponse {
        try await self.createCloudStorage(CreateCloudStorageRequest(productId: productId, deviceName: deviceName, packageId: packageId, override: override), region: region, logger: logger, on: eventLoop)
    }
}
