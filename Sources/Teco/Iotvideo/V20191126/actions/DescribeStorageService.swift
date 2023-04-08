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

extension Iotvideo {
    /// DescribeStorageService请求参数结构体
    public struct DescribeStorageServiceRequest: TCRequestModel {
        /// 云存服务ID
        public let serviceId: String

        /// 是否返回已结束的订单信息(已过期/已退订/已转移)
        public let getFinishedOrder: Bool?

        public init(serviceId: String, getFinishedOrder: Bool? = nil) {
            self.serviceId = serviceId
            self.getFinishedOrder = getFinishedOrder
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case getFinishedOrder = "GetFinishedOrder"
        }
    }

    /// DescribeStorageService返回参数结构体
    public struct DescribeStorageServiceResponse: TCResponseModel {
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

        /// 云存定单列表
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

    /// 查询云存服务
    @inlinable
    public func describeStorageService(_ input: DescribeStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStorageServiceResponse> {
        self.client.execute(action: "DescribeStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云存服务
    @inlinable
    public func describeStorageService(_ input: DescribeStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStorageServiceResponse {
        try await self.client.execute(action: "DescribeStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云存服务
    @inlinable
    public func describeStorageService(serviceId: String, getFinishedOrder: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStorageServiceResponse> {
        self.describeStorageService(.init(serviceId: serviceId, getFinishedOrder: getFinishedOrder), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云存服务
    @inlinable
    public func describeStorageService(serviceId: String, getFinishedOrder: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStorageServiceResponse {
        try await self.describeStorageService(.init(serviceId: serviceId, getFinishedOrder: getFinishedOrder), region: region, logger: logger, on: eventLoop)
    }
}
