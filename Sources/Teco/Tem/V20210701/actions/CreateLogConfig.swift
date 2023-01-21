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

extension Tem {
    /// CreateLogConfig请求参数结构体
    public struct CreateLogConfigRequest: TCRequestModel {
        /// 环境 ID
        public let environmentId: String

        /// 配置名
        public let name: String

        /// 收集类型，container_stdout 为标准输出；container_file 为文件；
        public let inputType: String

        /// 应用 ID
        public let applicationId: String?

        /// 日志集 ID
        public let logsetId: String?

        /// 日志主题 ID
        public let topicId: String?

        /// 日志提取模式，minimalist_log 为单行全文；multiline_log 为多行全文；json_log 为 json格式；fullregex_log 为单行正则；multiline_fullregex_log 为多行正则
        public let logType: String?

        /// 首行正则表达式，当LogType=multiline_log 时生效
        public let beginningRegex: String?

        /// 收集文件目录，当 InputType=container_file 时生效
        public let logPath: String?

        /// 收集文件名模式，当 InputType=container_file 时生效
        public let filePattern: String?

        /// 导出规则
        public let extractRule: LogConfigExtractRule?

        public init(environmentId: String, name: String, inputType: String, applicationId: String? = nil, logsetId: String? = nil, topicId: String? = nil, logType: String? = nil, beginningRegex: String? = nil, logPath: String? = nil, filePattern: String? = nil, extractRule: LogConfigExtractRule? = nil) {
            self.environmentId = environmentId
            self.name = name
            self.inputType = inputType
            self.applicationId = applicationId
            self.logsetId = logsetId
            self.topicId = topicId
            self.logType = logType
            self.beginningRegex = beginningRegex
            self.logPath = logPath
            self.filePattern = filePattern
            self.extractRule = extractRule
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case inputType = "InputType"
            case applicationId = "ApplicationId"
            case logsetId = "LogsetId"
            case topicId = "TopicId"
            case logType = "LogType"
            case beginningRegex = "BeginningRegex"
            case logPath = "LogPath"
            case filePattern = "FilePattern"
            case extractRule = "ExtractRule"
        }
    }

    /// CreateLogConfig返回参数结构体
    public struct CreateLogConfigResponse: TCResponseModel {
        /// 创建是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建日志收集配置
    @inlinable
    public func createLogConfig(_ input: CreateLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogConfigResponse> {
        self.client.execute(action: "CreateLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建日志收集配置
    @inlinable
    public func createLogConfig(_ input: CreateLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogConfigResponse {
        try await self.client.execute(action: "CreateLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建日志收集配置
    @inlinable
    public func createLogConfig(environmentId: String, name: String, inputType: String, applicationId: String? = nil, logsetId: String? = nil, topicId: String? = nil, logType: String? = nil, beginningRegex: String? = nil, logPath: String? = nil, filePattern: String? = nil, extractRule: LogConfigExtractRule? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogConfigResponse> {
        self.createLogConfig(CreateLogConfigRequest(environmentId: environmentId, name: name, inputType: inputType, applicationId: applicationId, logsetId: logsetId, topicId: topicId, logType: logType, beginningRegex: beginningRegex, logPath: logPath, filePattern: filePattern, extractRule: extractRule), region: region, logger: logger, on: eventLoop)
    }

    /// 创建日志收集配置
    @inlinable
    public func createLogConfig(environmentId: String, name: String, inputType: String, applicationId: String? = nil, logsetId: String? = nil, topicId: String? = nil, logType: String? = nil, beginningRegex: String? = nil, logPath: String? = nil, filePattern: String? = nil, extractRule: LogConfigExtractRule? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogConfigResponse {
        try await self.createLogConfig(CreateLogConfigRequest(environmentId: environmentId, name: name, inputType: inputType, applicationId: applicationId, logsetId: logsetId, topicId: topicId, logType: logType, beginningRegex: beginningRegex, logPath: logPath, filePattern: filePattern, extractRule: extractRule), region: region, logger: logger, on: eventLoop)
    }
}
