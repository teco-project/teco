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
    /// RevocationPublicConfig请求参数结构体
    public struct RevocationPublicConfigRequest: TCRequestModel {
        /// 配置项发布ID
        public let configReleaseId: String

        public init(configReleaseId: String) {
            self.configReleaseId = configReleaseId
        }

        enum CodingKeys: String, CodingKey {
            case configReleaseId = "ConfigReleaseId"
        }
    }

    /// RevocationPublicConfig返回参数结构体
    public struct RevocationPublicConfigResponse: TCResponseModel {
        /// true：撤销成功；false：撤销失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 撤回已发布的公共配置
    @inlinable
    public func revocationPublicConfig(_ input: RevocationPublicConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevocationPublicConfigResponse> {
        self.client.execute(action: "RevocationPublicConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤回已发布的公共配置
    @inlinable
    public func revocationPublicConfig(_ input: RevocationPublicConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevocationPublicConfigResponse {
        try await self.client.execute(action: "RevocationPublicConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤回已发布的公共配置
    @inlinable
    public func revocationPublicConfig(configReleaseId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevocationPublicConfigResponse> {
        self.revocationPublicConfig(.init(configReleaseId: configReleaseId), region: region, logger: logger, on: eventLoop)
    }

    /// 撤回已发布的公共配置
    @inlinable
    public func revocationPublicConfig(configReleaseId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevocationPublicConfigResponse {
        try await self.revocationPublicConfig(.init(configReleaseId: configReleaseId), region: region, logger: logger, on: eventLoop)
    }
}
