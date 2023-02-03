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

extension Cls {
    /// CreateConfig请求参数结构体
    public struct CreateConfigRequest: TCRequestModel {
        /// 采集配置名称
        public let name: String

        /// 采集配置所属日志主题ID即TopicId
        public let output: String

        /// 日志采集路径,包含文件名
        public let path: String?

        /// 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        public let logType: String?

        /// 提取规则，如果设置了ExtractRule，则必须设置LogType
        public let extractRule: ExtractRuleInfo?

        /// 采集黑名单路径列表
        public let excludePaths: [ExcludePathInfo]?

        /// 用户自定义采集规则，Json格式序列化的字符串
        public let userDefineRule: String?

        public init(name: String, output: String, path: String? = nil, logType: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, userDefineRule: String? = nil) {
            self.name = name
            self.output = output
            self.path = path
            self.logType = logType
            self.extractRule = extractRule
            self.excludePaths = excludePaths
            self.userDefineRule = userDefineRule
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case output = "Output"
            case path = "Path"
            case logType = "LogType"
            case extractRule = "ExtractRule"
            case excludePaths = "ExcludePaths"
            case userDefineRule = "UserDefineRule"
        }
    }

    /// CreateConfig返回参数结构体
    public struct CreateConfigResponse: TCResponseModel {
        /// 采集配置ID
        public let configId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case requestId = "RequestId"
        }
    }

    /// 创建采集规则配置
    @inlinable
    public func createConfig(_ input: CreateConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigResponse> {
        self.client.execute(action: "CreateConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建采集规则配置
    @inlinable
    public func createConfig(_ input: CreateConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigResponse {
        try await self.client.execute(action: "CreateConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建采集规则配置
    @inlinable
    public func createConfig(name: String, output: String, path: String? = nil, logType: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, userDefineRule: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigResponse> {
        let input = CreateConfigRequest(name: name, output: output, path: path, logType: logType, extractRule: extractRule, excludePaths: excludePaths, userDefineRule: userDefineRule)
        return self.client.execute(action: "CreateConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建采集规则配置
    @inlinable
    public func createConfig(name: String, output: String, path: String? = nil, logType: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, userDefineRule: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigResponse {
        let input = CreateConfigRequest(name: name, output: output, path: path, logType: logType, extractRule: extractRule, excludePaths: excludePaths, userDefineRule: userDefineRule)
        return try await self.client.execute(action: "CreateConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
