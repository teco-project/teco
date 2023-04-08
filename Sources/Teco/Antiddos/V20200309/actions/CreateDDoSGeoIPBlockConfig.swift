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

extension Antiddos {
    /// CreateDDoSGeoIPBlockConfig请求参数结构体
    public struct CreateDDoSGeoIPBlockConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// DDoS区域封禁配置，填写参数时配置ID请为空
        public let dDoSGeoIPBlockConfig: DDoSGeoIPBlockConfig

        public init(instanceId: String, dDoSGeoIPBlockConfig: DDoSGeoIPBlockConfig) {
            self.instanceId = instanceId
            self.dDoSGeoIPBlockConfig = dDoSGeoIPBlockConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dDoSGeoIPBlockConfig = "DDoSGeoIPBlockConfig"
        }
    }

    /// CreateDDoSGeoIPBlockConfig返回参数结构体
    public struct CreateDDoSGeoIPBlockConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加DDoS防护的区域封禁配置
    @inlinable @discardableResult
    public func createDDoSGeoIPBlockConfig(_ input: CreateDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDDoSGeoIPBlockConfigResponse> {
        self.client.execute(action: "CreateDDoSGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加DDoS防护的区域封禁配置
    @inlinable @discardableResult
    public func createDDoSGeoIPBlockConfig(_ input: CreateDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDDoSGeoIPBlockConfigResponse {
        try await self.client.execute(action: "CreateDDoSGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加DDoS防护的区域封禁配置
    @inlinable @discardableResult
    public func createDDoSGeoIPBlockConfig(instanceId: String, dDoSGeoIPBlockConfig: DDoSGeoIPBlockConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDDoSGeoIPBlockConfigResponse> {
        self.createDDoSGeoIPBlockConfig(.init(instanceId: instanceId, dDoSGeoIPBlockConfig: dDoSGeoIPBlockConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 添加DDoS防护的区域封禁配置
    @inlinable @discardableResult
    public func createDDoSGeoIPBlockConfig(instanceId: String, dDoSGeoIPBlockConfig: DDoSGeoIPBlockConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDDoSGeoIPBlockConfigResponse {
        try await self.createDDoSGeoIPBlockConfig(.init(instanceId: instanceId, dDoSGeoIPBlockConfig: dDoSGeoIPBlockConfig), region: region, logger: logger, on: eventLoop)
    }
}
