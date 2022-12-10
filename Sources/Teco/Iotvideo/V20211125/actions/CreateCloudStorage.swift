//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 开通云存服务
    @inlinable
    public func createCloudStorage(_ input: CreateCloudStorageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCloudStorageResponse > {
        self.client.execute(action: "CreateCloudStorage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 开通云存服务
    @inlinable
    public func createCloudStorage(_ input: CreateCloudStorageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudStorageResponse {
        try await self.client.execute(action: "CreateCloudStorage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
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
        /// lye1m3d：低功耗事件3天月套餐。
        /// lye1m7d：低功耗事件7天月套餐。
        /// lye1m30d：低功耗事件30天月套餐。
        /// lye1y3d：低功耗事件3天年套餐。
        /// lye1y7d：低功耗事件7天年套餐。
        /// lye1y30d：低功耗事件30天年套餐。
        public let packageId: String
        
        /// 如果当前设备已开启云存套餐，Override=1会使用新套餐覆盖原有套餐。不传此参数则默认为0。
        public let override: UInt64?
        
        /// 套餐列表顺序：PackageQueue=front会立即使用新购买的套餐，新购套餐结束后，列表中下一个未过期的套餐继续生效；PackageQueue=end会等设备当前所有已购买套餐过期后才会生效新购套餐。与Override参数不能同时使用。
        public let packageQueue: String?
        
        public init (productId: String, deviceName: String, packageId: String, override: UInt64?, packageQueue: String?) {
            self.productId = productId
            self.deviceName = deviceName
            self.packageId = packageId
            self.override = override
            self.packageQueue = packageQueue
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case packageId = "PackageId"
            case override = "Override"
            case packageQueue = "PackageQueue"
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
}
