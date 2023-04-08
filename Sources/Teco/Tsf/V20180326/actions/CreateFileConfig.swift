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
    /// CreateFileConfig请求参数结构体
    public struct CreateFileConfigRequest: TCRequestModel {
        /// 配置项名称
        public let configName: String

        /// 配置项版本
        public let configVersion: String

        /// 配置项文件名
        public let configFileName: String

        /// 配置项文件内容（原始内容编码需要 utf-8 格式，如果 ConfigFileCode 为 gbk，后台会进行转换）
        public let configFileValue: String

        /// 配置项关联应用ID
        public let applicationId: String

        /// 发布路径
        public let configFilePath: String

        /// 配置项版本描述
        public let configVersionDesc: String?

        /// 配置项文件编码，utf-8 或 gbk。注：如果选择 gbk，需要新版本 tsf-consul-template （公有云虚拟机需要使用 1.32 tsf-agent，容器需要从文档中获取最新的 tsf-consul-template-docker.tar.gz）的支持
        public let configFileCode: String?

        /// 后置命令
        public let configPostCmd: String?

        /// Base64编码的配置项
        public let encodeWithBase64: Bool?

        /// 无
        public let programIdList: [String]?

        public init(configName: String, configVersion: String, configFileName: String, configFileValue: String, applicationId: String, configFilePath: String, configVersionDesc: String? = nil, configFileCode: String? = nil, configPostCmd: String? = nil, encodeWithBase64: Bool? = nil, programIdList: [String]? = nil) {
            self.configName = configName
            self.configVersion = configVersion
            self.configFileName = configFileName
            self.configFileValue = configFileValue
            self.applicationId = applicationId
            self.configFilePath = configFilePath
            self.configVersionDesc = configVersionDesc
            self.configFileCode = configFileCode
            self.configPostCmd = configPostCmd
            self.encodeWithBase64 = encodeWithBase64
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case configName = "ConfigName"
            case configVersion = "ConfigVersion"
            case configFileName = "ConfigFileName"
            case configFileValue = "ConfigFileValue"
            case applicationId = "ApplicationId"
            case configFilePath = "ConfigFilePath"
            case configVersionDesc = "ConfigVersionDesc"
            case configFileCode = "ConfigFileCode"
            case configPostCmd = "ConfigPostCmd"
            case encodeWithBase64 = "EncodeWithBase64"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateFileConfig返回参数结构体
    public struct CreateFileConfigResponse: TCResponseModel {
        /// true：创建成功；false：创建失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建文件配置项
    @inlinable
    public func createFileConfig(_ input: CreateFileConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFileConfigResponse> {
        self.client.execute(action: "CreateFileConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文件配置项
    @inlinable
    public func createFileConfig(_ input: CreateFileConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileConfigResponse {
        try await self.client.execute(action: "CreateFileConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文件配置项
    @inlinable
    public func createFileConfig(configName: String, configVersion: String, configFileName: String, configFileValue: String, applicationId: String, configFilePath: String, configVersionDesc: String? = nil, configFileCode: String? = nil, configPostCmd: String? = nil, encodeWithBase64: Bool? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFileConfigResponse> {
        self.createFileConfig(.init(configName: configName, configVersion: configVersion, configFileName: configFileName, configFileValue: configFileValue, applicationId: applicationId, configFilePath: configFilePath, configVersionDesc: configVersionDesc, configFileCode: configFileCode, configPostCmd: configPostCmd, encodeWithBase64: encodeWithBase64, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建文件配置项
    @inlinable
    public func createFileConfig(configName: String, configVersion: String, configFileName: String, configFileValue: String, applicationId: String, configFilePath: String, configVersionDesc: String? = nil, configFileCode: String? = nil, configPostCmd: String? = nil, encodeWithBase64: Bool? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileConfigResponse {
        try await self.createFileConfig(.init(configName: configName, configVersion: configVersion, configFileName: configFileName, configFileValue: configFileValue, applicationId: applicationId, configFilePath: configFilePath, configVersionDesc: configVersionDesc, configFileCode: configFileCode, configPostCmd: configPostCmd, encodeWithBase64: encodeWithBase64, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
