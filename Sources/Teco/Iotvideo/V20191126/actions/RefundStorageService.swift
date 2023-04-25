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
    /// RefundStorageService请求参数结构体
    public struct RefundStorageServiceRequest: TCRequestModel {
        /// 云存服务ID
        public let serviceId: String

        /// 云存子订单ID。如果指定子订单ID,则仅退订该子订单，如果未指定子定单ID，则退订所有子订单
        public let orderId: String?

        public init(serviceId: String, orderId: String? = nil) {
            self.serviceId = serviceId
            self.orderId = orderId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case orderId = "OrderId"
        }
    }

    /// RefundStorageService返回参数结构体
    public struct RefundStorageServiceResponse: TCResponseModel {
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

        /// 有效云存定单列表
        public let data: [StorageOrder]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
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

    /// 退订已购买的云存服务
    ///
    /// 本接口（RefundStorageService）用于退订已购买的云存服务。
    /// 退订时，云存服务对应订单的处理方式 :
    /// 1. 未开始的订单自动回到已付费订单池
    /// 2. 已开始的订单自动失效
    /// 3. 购买云存接口,优先从已付费订单池中分配订单
    @inlinable
    public func refundStorageService(_ input: RefundStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundStorageServiceResponse> {
        self.client.execute(action: "RefundStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退订已购买的云存服务
    ///
    /// 本接口（RefundStorageService）用于退订已购买的云存服务。
    /// 退订时，云存服务对应订单的处理方式 :
    /// 1. 未开始的订单自动回到已付费订单池
    /// 2. 已开始的订单自动失效
    /// 3. 购买云存接口,优先从已付费订单池中分配订单
    @inlinable
    public func refundStorageService(_ input: RefundStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundStorageServiceResponse {
        try await self.client.execute(action: "RefundStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退订已购买的云存服务
    ///
    /// 本接口（RefundStorageService）用于退订已购买的云存服务。
    /// 退订时，云存服务对应订单的处理方式 :
    /// 1. 未开始的订单自动回到已付费订单池
    /// 2. 已开始的订单自动失效
    /// 3. 购买云存接口,优先从已付费订单池中分配订单
    @inlinable
    public func refundStorageService(serviceId: String, orderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundStorageServiceResponse> {
        self.refundStorageService(.init(serviceId: serviceId, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }

    /// 退订已购买的云存服务
    ///
    /// 本接口（RefundStorageService）用于退订已购买的云存服务。
    /// 退订时，云存服务对应订单的处理方式 :
    /// 1. 未开始的订单自动回到已付费订单池
    /// 2. 已开始的订单自动失效
    /// 3. 购买云存接口,优先从已付费订单池中分配订单
    @inlinable
    public func refundStorageService(serviceId: String, orderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundStorageServiceResponse {
        try await self.refundStorageService(.init(serviceId: serviceId, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }
}
