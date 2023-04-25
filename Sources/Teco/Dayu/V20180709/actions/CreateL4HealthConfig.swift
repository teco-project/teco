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

extension Dayu {
    /// CreateL4HealthConfig请求参数结构体
    public struct CreateL4HealthConfigRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 四层健康检查配置数组
        public let healthConfig: [L4HealthConfig]

        public init(business: String, id: String, healthConfig: [L4HealthConfig]) {
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

    /// CreateL4HealthConfig返回参数结构体
    public struct CreateL4HealthConfigResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 上传四层健康检查配置
    @inlinable
    public func createL4HealthConfig(_ input: CreateL4HealthConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL4HealthConfigResponse> {
        self.client.execute(action: "CreateL4HealthConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传四层健康检查配置
    @inlinable
    public func createL4HealthConfig(_ input: CreateL4HealthConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL4HealthConfigResponse {
        try await self.client.execute(action: "CreateL4HealthConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传四层健康检查配置
    @inlinable
    public func createL4HealthConfig(business: String, id: String, healthConfig: [L4HealthConfig], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL4HealthConfigResponse> {
        self.createL4HealthConfig(.init(business: business, id: id, healthConfig: healthConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 上传四层健康检查配置
    @inlinable
    public func createL4HealthConfig(business: String, id: String, healthConfig: [L4HealthConfig], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL4HealthConfigResponse {
        try await self.createL4HealthConfig(.init(business: business, id: id, healthConfig: healthConfig), region: region, logger: logger, on: eventLoop)
    }
}
