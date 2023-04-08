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

extension Dayu {
    /// CreateL7HealthConfig请求参数结构体
    public struct CreateL7HealthConfigRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 七层健康检查配置数组
        public let healthConfig: [L7HealthConfig]

        public init(business: String, id: String, healthConfig: [L7HealthConfig]) {
            self.business = business
            self.id = id
            self.healthConfig = healthConfig
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case healthConfig = "HealthConfig"
        }
    }

    /// CreateL7HealthConfig返回参数结构体
    public struct CreateL7HealthConfigResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 上传七层健康检查配置
    @inlinable
    public func createL7HealthConfig(_ input: CreateL7HealthConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7HealthConfigResponse> {
        self.client.execute(action: "CreateL7HealthConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传七层健康检查配置
    @inlinable
    public func createL7HealthConfig(_ input: CreateL7HealthConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7HealthConfigResponse {
        try await self.client.execute(action: "CreateL7HealthConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传七层健康检查配置
    @inlinable
    public func createL7HealthConfig(business: String, id: String, healthConfig: [L7HealthConfig], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7HealthConfigResponse> {
        self.createL7HealthConfig(.init(business: business, id: id, healthConfig: healthConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 上传七层健康检查配置
    @inlinable
    public func createL7HealthConfig(business: String, id: String, healthConfig: [L7HealthConfig], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7HealthConfigResponse {
        try await self.createL7HealthConfig(.init(business: business, id: id, healthConfig: healthConfig), region: region, logger: logger, on: eventLoop)
    }
}
