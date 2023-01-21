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
    /// ModifyConfig请求参数结构体
    public struct ModifyConfigRequest: TCRequestModel {
        /// 采集规则配置ID
        public let configId: String

        /// 采集规则配置名称
        public let name: String?

        /// 日志采集路径，包含文件名
        public let path: String?

        /// 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        public let logType: String?

        /// 提取规则，如果设置了ExtractRule，则必须设置LogType
        public let extractRule: ExtractRuleInfo?

        /// 采集黑名单路径列表
        public let excludePaths: [ExcludePathInfo]?

        /// 采集配置关联的日志主题（TopicId）
        public let output: String?

        /// 用户自定义解析字符串，Json格式序列化的字符串
        public let userDefineRule: String?

        public init(configId: String, name: String? = nil, path: String? = nil, logType: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, output: String? = nil, userDefineRule: String? = nil) {
            self.configId = configId
            self.name = name
            self.path = path
            self.logType = logType
            self.extractRule = extractRule
            self.excludePaths = excludePaths
            self.output = output
            self.userDefineRule = userDefineRule
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case name = "Name"
            case path = "Path"
            case logType = "LogType"
            case extractRule = "ExtractRule"
            case excludePaths = "ExcludePaths"
            case output = "Output"
            case userDefineRule = "UserDefineRule"
        }
    }

    /// ModifyConfig返回参数结构体
    public struct ModifyConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改采集规则配置
    @inlinable @discardableResult
    public func modifyConfig(_ input: ModifyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigResponse> {
        self.client.execute(action: "ModifyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改采集规则配置
    @inlinable @discardableResult
    public func modifyConfig(_ input: ModifyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigResponse {
        try await self.client.execute(action: "ModifyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改采集规则配置
    @inlinable @discardableResult
    public func modifyConfig(configId: String, name: String? = nil, path: String? = nil, logType: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, output: String? = nil, userDefineRule: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigResponse> {
        self.modifyConfig(ModifyConfigRequest(configId: configId, name: name, path: path, logType: logType, extractRule: extractRule, excludePaths: excludePaths, output: output, userDefineRule: userDefineRule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改采集规则配置
    @inlinable @discardableResult
    public func modifyConfig(configId: String, name: String? = nil, path: String? = nil, logType: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, output: String? = nil, userDefineRule: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigResponse {
        try await self.modifyConfig(ModifyConfigRequest(configId: configId, name: name, path: path, logType: logType, extractRule: extractRule, excludePaths: excludePaths, output: output, userDefineRule: userDefineRule), region: region, logger: logger, on: eventLoop)
    }
}
