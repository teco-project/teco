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
    /// CreateService请求参数结构体
    public struct CreateServiceRequest: TCRequestModel {
        /// 扩缩容配置
        public let scaler: Scaler

        /// 服务配置Id
        public let serviceConfigId: String

        /// 服务名称
        public let name: String

        /// 扩缩容方式，支持AUTO, MANUAL，分别表示自动扩缩容和手动扩缩容
        public let scaleMode: String

        /// 部署要使用的资源组Id，默认为共享资源组
        public let resourceGroupId: String

        /// 处理器配置, 单位为1/1000核；范围[100, 256000]
        public let cpu: UInt64

        /// 内存配置, 单位为1M；范围[100, 256000]
        public let memory: UInt64

        /// 集群，不填则使用默认集群
        public let cluster: String?

        /// 默认为空，表示不需要鉴权，TOKEN 表示选择 Token 鉴权方式
        public let authentication: String?

        /// GPU算力配置，单位为1/1000 卡，范围 [0, 256000]
        public let gpu: UInt64?

        /// 显存配置, 单位为1M，范围 [0, 256000]
        public let gpuMemory: UInt64?

        /// 备注
        public let description: String?

        /// GPU类型
        public let gpuType: String?

        /// Cls日志主题ID
        public let logTopicId: String?

        public init(scaler: Scaler, serviceConfigId: String, name: String, scaleMode: String, resourceGroupId: String, cpu: UInt64, memory: UInt64, cluster: String? = nil, authentication: String? = nil, gpu: UInt64? = nil, gpuMemory: UInt64? = nil, description: String? = nil, gpuType: String? = nil, logTopicId: String? = nil) {
            self.scaler = scaler
            self.serviceConfigId = serviceConfigId
            self.name = name
            self.scaleMode = scaleMode
            self.resourceGroupId = resourceGroupId
            self.cpu = cpu
            self.memory = memory
            self.cluster = cluster
            self.authentication = authentication
            self.gpu = gpu
            self.gpuMemory = gpuMemory
            self.description = description
            self.gpuType = gpuType
            self.logTopicId = logTopicId
        }

        enum CodingKeys: String, CodingKey {
            case scaler = "Scaler"
            case serviceConfigId = "ServiceConfigId"
            case name = "Name"
            case scaleMode = "ScaleMode"
            case resourceGroupId = "ResourceGroupId"
            case cpu = "Cpu"
            case memory = "Memory"
            case cluster = "Cluster"
            case authentication = "Authentication"
            case gpu = "Gpu"
            case gpuMemory = "GpuMemory"
            case description = "Description"
            case gpuType = "GpuType"
            case logTopicId = "LogTopicId"
        }
    }

    /// CreateService返回参数结构体
    public struct CreateServiceResponse: TCResponseModel {
        /// 服务
        public let service: ModelService

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case requestId = "RequestId"
        }
    }

    /// 创建服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createService(_ input: CreateServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceResponse> {
        self.client.execute(action: "CreateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createService(_ input: CreateServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        try await self.client.execute(action: "CreateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createService(scaler: Scaler, serviceConfigId: String, name: String, scaleMode: String, resourceGroupId: String, cpu: UInt64, memory: UInt64, cluster: String? = nil, authentication: String? = nil, gpu: UInt64? = nil, gpuMemory: UInt64? = nil, description: String? = nil, gpuType: String? = nil, logTopicId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceResponse> {
        let input = CreateServiceRequest(scaler: scaler, serviceConfigId: serviceConfigId, name: name, scaleMode: scaleMode, resourceGroupId: resourceGroupId, cpu: cpu, memory: memory, cluster: cluster, authentication: authentication, gpu: gpu, gpuMemory: gpuMemory, description: description, gpuType: gpuType, logTopicId: logTopicId)
        return self.client.execute(action: "CreateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func createService(scaler: Scaler, serviceConfigId: String, name: String, scaleMode: String, resourceGroupId: String, cpu: UInt64, memory: UInt64, cluster: String? = nil, authentication: String? = nil, gpu: UInt64? = nil, gpuMemory: UInt64? = nil, description: String? = nil, gpuType: String? = nil, logTopicId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        let input = CreateServiceRequest(scaler: scaler, serviceConfigId: serviceConfigId, name: name, scaleMode: scaleMode, resourceGroupId: resourceGroupId, cpu: cpu, memory: memory, cluster: cluster, authentication: authentication, gpu: gpu, gpuMemory: gpuMemory, description: description, gpuType: gpuType, logTopicId: logTopicId)
        return try await self.client.execute(action: "CreateService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
