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
    /// CreateStorageService请求参数结构体
    public struct CreateStorageServiceRequest: TCRequestModel {
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
        public let pkgId: String

        /// 设备TID
        public let tid: String

        /// 订单数量,可一次性创建多个订单
        public let orderCount: Int64

        /// 云存服务所在的区域,如ap-guangzhou,ap-singapore, na-siliconvalley, eu-frankfurt
        public let storageRegion: String

        /// 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        public let chnNum: Int64?

        /// 设备主人用户在IoT Video平台的注册ID。该参数用于验证Paas/Saas平台的设备/用户关系链是否一致
        public let accessId: String?

        /// 服务生效时间,若不指定此参数，服务立即生效
        public let enableTime: Int64?

        public init(pkgId: String, tid: String, orderCount: Int64, storageRegion: String, chnNum: Int64? = nil, accessId: String? = nil, enableTime: Int64? = nil) {
            self.pkgId = pkgId
            self.tid = tid
            self.orderCount = orderCount
            self.storageRegion = storageRegion
            self.chnNum = chnNum
            self.accessId = accessId
            self.enableTime = enableTime
        }

        enum CodingKeys: String, CodingKey {
            case pkgId = "PkgId"
            case tid = "Tid"
            case orderCount = "OrderCount"
            case storageRegion = "StorageRegion"
            case chnNum = "ChnNum"
            case accessId = "AccessId"
            case enableTime = "EnableTime"
        }
    }

    /// CreateStorageService返回参数结构体
    public struct CreateStorageServiceResponse: TCResponseModel {
        /// 标志是否为续订
        public let isRenew: Bool

        /// 云存服务ID
        public let serviceId: String

        /// 云存服务所在的区域
        public let storageRegion: String

        /// 设备TID
        public let tid: String

        /// 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        public let chnNum: Int64

        /// 终端用户在IoT Video平台的注册ID
        public let accessId: String

        /// 服务开始时间
        public let startTime: Int64

        /// 服务失效时间
        public let endTime: Int64

        /// 服务状态
        /// 1：正常使用中
        /// 2：待续费。设备云存服务已到期，但是历史云存数据未过期。续费后仍可查看这些历史数据。
        /// 3：已过期。查询不到设备保存在云端的数据。
        /// 4：等待服务生效。
        public let status: Int64

        /// 新增的云存定单列表
        public let data: [StorageOrder]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isRenew = "IsRenew"
            case serviceId = "ServiceId"
            case storageRegion = "StorageRegion"
            case tid = "Tid"
            case chnNum = "ChnNum"
            case accessId = "AccessId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 购买云存服务
    @inlinable
    public func createStorageService(_ input: CreateStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageServiceResponse> {
        self.client.execute(action: "CreateStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买云存服务
    @inlinable
    public func createStorageService(_ input: CreateStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStorageServiceResponse {
        try await self.client.execute(action: "CreateStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买云存服务
    @inlinable
    public func createStorageService(pkgId: String, tid: String, orderCount: Int64, storageRegion: String, chnNum: Int64? = nil, accessId: String? = nil, enableTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageServiceResponse> {
        let input = CreateStorageServiceRequest(pkgId: pkgId, tid: tid, orderCount: orderCount, storageRegion: storageRegion, chnNum: chnNum, accessId: accessId, enableTime: enableTime)
        return self.client.execute(action: "CreateStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买云存服务
    @inlinable
    public func createStorageService(pkgId: String, tid: String, orderCount: Int64, storageRegion: String, chnNum: Int64? = nil, accessId: String? = nil, enableTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStorageServiceResponse {
        let input = CreateStorageServiceRequest(pkgId: pkgId, tid: tid, orderCount: orderCount, storageRegion: storageRegion, chnNum: chnNum, accessId: accessId, enableTime: enableTime)
        return try await self.client.execute(action: "CreateStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
