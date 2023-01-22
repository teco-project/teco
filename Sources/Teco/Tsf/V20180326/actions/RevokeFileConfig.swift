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
    /// RevokeFileConfig请求参数结构体
    public struct RevokeFileConfigRequest: TCRequestModel {
        /// 配置项发布ID
        public let configReleaseId: String

        public init(configReleaseId: String) {
            self.configReleaseId = configReleaseId
        }

        enum CodingKeys: String, CodingKey {
            case configReleaseId = "ConfigReleaseId"
        }
    }

    /// RevokeFileConfig返回参数结构体
    public struct RevokeFileConfigResponse: TCResponseModel {
        /// 撤回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 撤回已发布的文件配置
    @inlinable
    public func revokeFileConfig(_ input: RevokeFileConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeFileConfigResponse> {
        self.client.execute(action: "RevokeFileConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤回已发布的文件配置
    @inlinable
    public func revokeFileConfig(_ input: RevokeFileConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeFileConfigResponse {
        try await self.client.execute(action: "RevokeFileConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤回已发布的文件配置
    @inlinable
    public func revokeFileConfig(configReleaseId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeFileConfigResponse> {
        self.revokeFileConfig(RevokeFileConfigRequest(configReleaseId: configReleaseId), region: region, logger: logger, on: eventLoop)
    }

    /// 撤回已发布的文件配置
    @inlinable
    public func revokeFileConfig(configReleaseId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeFileConfigResponse {
        try await self.revokeFileConfig(RevokeFileConfigRequest(configReleaseId: configReleaseId), region: region, logger: logger, on: eventLoop)
    }
}