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
    /// DeliverStorageService请求参数结构体
    public struct DeliverStorageServiceRequest: TCRequestModel {
        /// 待转移的源云存服务ID
        public let srcServiceId: String

        /// 设备TID
        public let tid: String

        /// 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        public let chnNum: Int64?

        /// 设备主人用户在IoT Video平台的注册ID。该参数用于验证Paas/Saas平台的设备/用户关系链是否一致
        public let accessId: String?

        public init(srcServiceId: String, tid: String, chnNum: Int64? = nil, accessId: String? = nil) {
            self.srcServiceId = srcServiceId
            self.tid = tid
            self.chnNum = chnNum
            self.accessId = accessId
        }

        enum CodingKeys: String, CodingKey {
            case srcServiceId = "SrcServiceId"
            case tid = "Tid"
            case chnNum = "ChnNum"
            case accessId = "AccessId"
        }
    }

    /// DeliverStorageService返回参数结构体
    public struct DeliverStorageServiceResponse: TCResponseModel {
        /// 被转出的云存服务ID
        public let srcServiceId: String

        /// 被转入的云存服务ID
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
            case srcServiceId = "SrcServiceId"
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

    /// 将已购买的云存服务转移到另一设备
    @inlinable
    public func deliverStorageService(_ input: DeliverStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeliverStorageServiceResponse> {
        self.client.execute(action: "DeliverStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将已购买的云存服务转移到另一设备
    @inlinable
    public func deliverStorageService(_ input: DeliverStorageServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeliverStorageServiceResponse {
        try await self.client.execute(action: "DeliverStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 将已购买的云存服务转移到另一设备
    @inlinable
    public func deliverStorageService(srcServiceId: String, tid: String, chnNum: Int64? = nil, accessId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeliverStorageServiceResponse> {
        let input = DeliverStorageServiceRequest(srcServiceId: srcServiceId, tid: tid, chnNum: chnNum, accessId: accessId)
        return self.client.execute(action: "DeliverStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将已购买的云存服务转移到另一设备
    @inlinable
    public func deliverStorageService(srcServiceId: String, tid: String, chnNum: Int64? = nil, accessId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeliverStorageServiceResponse {
        let input = DeliverStorageServiceRequest(srcServiceId: srcServiceId, tid: tid, chnNum: chnNum, accessId: accessId)
        return try await self.client.execute(action: "DeliverStorageService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
