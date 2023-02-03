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

extension Tsf {
    /// UpdateHealthCheckSettings请求参数结构体
    public struct UpdateHealthCheckSettingsRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String

        /// 是否能使健康检查
        public let enableHealthCheck: Bool?

        /// 健康检查配置
        public let healthCheckSettings: HealthCheckSettings?

        public init(groupId: String, enableHealthCheck: Bool? = nil, healthCheckSettings: HealthCheckSettings? = nil) {
            self.groupId = groupId
            self.enableHealthCheck = enableHealthCheck
            self.healthCheckSettings = healthCheckSettings
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case enableHealthCheck = "EnableHealthCheck"
            case healthCheckSettings = "HealthCheckSettings"
        }
    }

    /// UpdateHealthCheckSettings返回参数结构体
    public struct UpdateHealthCheckSettingsResponse: TCResponseModel {
        /// 更新健康检查配置操作是否成功。
        /// true：操作成功。
        /// false：操作失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新健康检查配置
    @inlinable
    public func updateHealthCheckSettings(_ input: UpdateHealthCheckSettingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateHealthCheckSettingsResponse> {
        self.client.execute(action: "UpdateHealthCheckSettings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新健康检查配置
    @inlinable
    public func updateHealthCheckSettings(_ input: UpdateHealthCheckSettingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateHealthCheckSettingsResponse {
        try await self.client.execute(action: "UpdateHealthCheckSettings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新健康检查配置
    @inlinable
    public func updateHealthCheckSettings(groupId: String, enableHealthCheck: Bool? = nil, healthCheckSettings: HealthCheckSettings? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateHealthCheckSettingsResponse> {
        let input = UpdateHealthCheckSettingsRequest(groupId: groupId, enableHealthCheck: enableHealthCheck, healthCheckSettings: healthCheckSettings)
        return self.client.execute(action: "UpdateHealthCheckSettings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新健康检查配置
    @inlinable
    public func updateHealthCheckSettings(groupId: String, enableHealthCheck: Bool? = nil, healthCheckSettings: HealthCheckSettings? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateHealthCheckSettingsResponse {
        let input = UpdateHealthCheckSettingsRequest(groupId: groupId, enableHealthCheck: enableHealthCheck, healthCheckSettings: healthCheckSettings)
        return try await self.client.execute(action: "UpdateHealthCheckSettings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
