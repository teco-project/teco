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
    /// DeleteDDoSSpeedLimitConfig请求参数结构体
    public struct DeleteDDoSSpeedLimitConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// 访问限速配置，填写参数时配置ID不能为空
        public let dDoSSpeedLimitConfig: DDoSSpeedLimitConfig

        public init(instanceId: String, dDoSSpeedLimitConfig: DDoSSpeedLimitConfig) {
            self.instanceId = instanceId
            self.dDoSSpeedLimitConfig = dDoSSpeedLimitConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dDoSSpeedLimitConfig = "DDoSSpeedLimitConfig"
        }
    }

    /// DeleteDDoSSpeedLimitConfig返回参数结构体
    public struct DeleteDDoSSpeedLimitConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除DDoS防护的访问限速配置
    @inlinable @discardableResult
    public func deleteDDoSSpeedLimitConfig(_ input: DeleteDDoSSpeedLimitConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDDoSSpeedLimitConfigResponse> {
        self.client.execute(action: "DeleteDDoSSpeedLimitConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除DDoS防护的访问限速配置
    @inlinable @discardableResult
    public func deleteDDoSSpeedLimitConfig(_ input: DeleteDDoSSpeedLimitConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDDoSSpeedLimitConfigResponse {
        try await self.client.execute(action: "DeleteDDoSSpeedLimitConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除DDoS防护的访问限速配置
    @inlinable @discardableResult
    public func deleteDDoSSpeedLimitConfig(instanceId: String, dDoSSpeedLimitConfig: DDoSSpeedLimitConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDDoSSpeedLimitConfigResponse> {
        self.deleteDDoSSpeedLimitConfig(.init(instanceId: instanceId, dDoSSpeedLimitConfig: dDoSSpeedLimitConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 删除DDoS防护的访问限速配置
    @inlinable @discardableResult
    public func deleteDDoSSpeedLimitConfig(instanceId: String, dDoSSpeedLimitConfig: DDoSSpeedLimitConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDDoSSpeedLimitConfigResponse {
        try await self.deleteDDoSSpeedLimitConfig(.init(instanceId: instanceId, dDoSSpeedLimitConfig: dDoSSpeedLimitConfig), region: region, logger: logger, on: eventLoop)
    }
}
