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

import Logging
import NIOCore
import TecoCore

extension Tsf {
    /// CreatePublicConfigWithDetailResp请求参数结构体
    public struct CreatePublicConfigWithDetailRespRequest: TCRequest {
        /// 配置项名称
        public let configName: String

        /// 配置项版本
        public let configVersion: String

        /// 配置项值，总是接收yaml格式的内容
        public let configValue: String

        /// 配置项版本描述
        public let configVersionDesc: String?

        /// 配置项类型
        public let configType: String?

        /// Base64编码的配置项
        public let encodeWithBase64: Bool?

        public let programIdList: [String]?

        public init(configName: String, configVersion: String, configValue: String, configVersionDesc: String? = nil, configType: String? = nil, encodeWithBase64: Bool? = nil, programIdList: [String]? = nil) {
            self.configName = configName
            self.configVersion = configVersion
            self.configValue = configValue
            self.configVersionDesc = configVersionDesc
            self.configType = configType
            self.encodeWithBase64 = encodeWithBase64
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case configName = "ConfigName"
            case configVersion = "ConfigVersion"
            case configValue = "ConfigValue"
            case configVersionDesc = "ConfigVersionDesc"
            case configType = "ConfigType"
            case encodeWithBase64 = "EncodeWithBase64"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreatePublicConfigWithDetailResp返回参数结构体
    public struct CreatePublicConfigWithDetailRespResponse: TCResponse {
        /// 公共配置项 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Config?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建公共配置项返回详细信息
    ///
    /// 创建公共配置项，并返回配置项详细信息
    @inlinable
    public func createPublicConfigWithDetailResp(_ input: CreatePublicConfigWithDetailRespRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublicConfigWithDetailRespResponse> {
        self.client.execute(action: "CreatePublicConfigWithDetailResp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建公共配置项返回详细信息
    ///
    /// 创建公共配置项，并返回配置项详细信息
    @inlinable
    public func createPublicConfigWithDetailResp(_ input: CreatePublicConfigWithDetailRespRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePublicConfigWithDetailRespResponse {
        try await self.client.execute(action: "CreatePublicConfigWithDetailResp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建公共配置项返回详细信息
    ///
    /// 创建公共配置项，并返回配置项详细信息
    @inlinable
    public func createPublicConfigWithDetailResp(configName: String, configVersion: String, configValue: String, configVersionDesc: String? = nil, configType: String? = nil, encodeWithBase64: Bool? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublicConfigWithDetailRespResponse> {
        self.createPublicConfigWithDetailResp(.init(configName: configName, configVersion: configVersion, configValue: configValue, configVersionDesc: configVersionDesc, configType: configType, encodeWithBase64: encodeWithBase64, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建公共配置项返回详细信息
    ///
    /// 创建公共配置项，并返回配置项详细信息
    @inlinable
    public func createPublicConfigWithDetailResp(configName: String, configVersion: String, configValue: String, configVersionDesc: String? = nil, configType: String? = nil, encodeWithBase64: Bool? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePublicConfigWithDetailRespResponse {
        try await self.createPublicConfigWithDetailResp(.init(configName: configName, configVersion: configVersion, configValue: configValue, configVersionDesc: configVersionDesc, configType: configType, encodeWithBase64: encodeWithBase64, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
