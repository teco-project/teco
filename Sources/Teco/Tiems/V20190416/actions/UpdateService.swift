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

extension Tiems {
    /// UpdateService请求参数结构体
    public struct UpdateServiceRequest: TCRequestModel {
        /// 服务Id
        public let serviceId: String

        /// 扩缩容配置
        public let scaler: Scaler?

        /// 服务配置Id
        public let serviceConfigId: String?

        /// 支持AUTO, MANUAL，分别表示自动扩缩容，手动扩缩容
        public let scaleMode: String?

        /// 支持STOP(停止) RESUME(重启)
        public let serviceAction: String?

        /// 备注
        public let description: String?

        /// GPU卡类型
        public let gpuType: String?

        /// 处理器配置，单位为 1/1000 核
        public let cpu: UInt64?

        /// 内存配置，单位为1M
        public let memory: UInt64?

        /// 显卡配置，单位为 1/1000 卡
        public let gpu: UInt64?

        /// Cls日志主题ID
        public let logTopicId: String?

        public init(serviceId: String, scaler: Scaler? = nil, serviceConfigId: String? = nil, scaleMode: String? = nil, serviceAction: String? = nil, description: String? = nil, gpuType: String? = nil, cpu: UInt64? = nil, memory: UInt64? = nil, gpu: UInt64? = nil, logTopicId: String? = nil) {
            self.serviceId = serviceId
            self.scaler = scaler
            self.serviceConfigId = serviceConfigId
            self.scaleMode = scaleMode
            self.serviceAction = serviceAction
            self.description = description
            self.gpuType = gpuType
            self.cpu = cpu
            self.memory = memory
            self.gpu = gpu
            self.logTopicId = logTopicId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case scaler = "Scaler"
            case serviceConfigId = "ServiceConfigId"
            case scaleMode = "ScaleMode"
            case serviceAction = "ServiceAction"
            case description = "Description"
            case gpuType = "GpuType"
            case cpu = "Cpu"
            case memory = "Memory"
            case gpu = "Gpu"
            case logTopicId = "LogTopicId"
        }
    }

    /// UpdateService返回参数结构体
    public struct UpdateServiceResponse: TCResponseModel {
        /// 服务
        public let service: ModelService

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case requestId = "RequestId"
        }
    }

    /// 更新服务
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 更新服务
    @inlinable
    public func updateService(_ input: UpdateServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServiceResponse> {
        self.client.execute(action: "UpdateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新服务
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 更新服务
    @inlinable
    public func updateService(_ input: UpdateServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceResponse {
        try await self.client.execute(action: "UpdateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新服务
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 更新服务
    @inlinable
    public func updateService(serviceId: String, scaler: Scaler? = nil, serviceConfigId: String? = nil, scaleMode: String? = nil, serviceAction: String? = nil, description: String? = nil, gpuType: String? = nil, cpu: UInt64? = nil, memory: UInt64? = nil, gpu: UInt64? = nil, logTopicId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServiceResponse> {
        self.updateService(UpdateServiceRequest(serviceId: serviceId, scaler: scaler, serviceConfigId: serviceConfigId, scaleMode: scaleMode, serviceAction: serviceAction, description: description, gpuType: gpuType, cpu: cpu, memory: memory, gpu: gpu, logTopicId: logTopicId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新服务
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 更新服务
    @inlinable
    public func updateService(serviceId: String, scaler: Scaler? = nil, serviceConfigId: String? = nil, scaleMode: String? = nil, serviceAction: String? = nil, description: String? = nil, gpuType: String? = nil, cpu: UInt64? = nil, memory: UInt64? = nil, gpu: UInt64? = nil, logTopicId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceResponse {
        try await self.updateService(UpdateServiceRequest(serviceId: serviceId, scaler: scaler, serviceConfigId: serviceConfigId, scaleMode: scaleMode, serviceAction: serviceAction, description: description, gpuType: gpuType, cpu: cpu, memory: memory, gpu: gpu, logTopicId: logTopicId), region: region, logger: logger, on: eventLoop)
    }
}
