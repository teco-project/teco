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
    /// ReleaseFileConfig请求参数结构体
    public struct ReleaseFileConfigRequest: TCRequestModel {
        /// 配置ID
        public let configId: String

        /// 部署组ID
        public let groupId: String

        /// 发布描述
        public let releaseDesc: String?

        public init(configId: String, groupId: String, releaseDesc: String? = nil) {
            self.configId = configId
            self.groupId = groupId
            self.releaseDesc = releaseDesc
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case groupId = "GroupId"
            case releaseDesc = "ReleaseDesc"
        }
    }

    /// ReleaseFileConfig返回参数结构体
    public struct ReleaseFileConfigResponse: TCResponseModel {
        /// 发布结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 发布文件配置
    @inlinable
    public func releaseFileConfig(_ input: ReleaseFileConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseFileConfigResponse> {
        self.client.execute(action: "ReleaseFileConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布文件配置
    @inlinable
    public func releaseFileConfig(_ input: ReleaseFileConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseFileConfigResponse {
        try await self.client.execute(action: "ReleaseFileConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布文件配置
    @inlinable
    public func releaseFileConfig(configId: String, groupId: String, releaseDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseFileConfigResponse> {
        self.releaseFileConfig(ReleaseFileConfigRequest(configId: configId, groupId: groupId, releaseDesc: releaseDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 发布文件配置
    @inlinable
    public func releaseFileConfig(configId: String, groupId: String, releaseDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseFileConfigResponse {
        try await self.releaseFileConfig(ReleaseFileConfigRequest(configId: configId, groupId: groupId, releaseDesc: releaseDesc), region: region, logger: logger, on: eventLoop)
    }
}
