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

extension Cls {
    /// CreateConfigExtra请求参数结构体
    public struct CreateConfigExtraRequest: TCRequest {
        /// 采集配置规程名称，最长63个字符，只能包含小写字符、数字及分隔符（“-”），且必须以小写字符开头，数字或小写字符结尾
        public let name: String

        /// 日志主题id
        public let topicId: String

        /// 类型：container_stdout、container_file、host_file
        public let type: String

        /// 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表极简日志，multiline_log代表多行日志，fullregex_log代表完整正则，默认为minimalist_log
        public let logType: String

        /// 采集配置标
        public let configFlag: String

        /// 日志集id
        public let logsetId: String

        /// 日志集name
        public let logsetName: String

        /// 日志主题名称
        public let topicName: String

        /// 节点文件配置信息
        public let hostFile: HostFileInfo?

        /// 容器文件路径信息
        public let containerFile: ContainerFileInfo?

        /// 容器标准输出信息
        public let containerStdout: ContainerStdoutInfo?

        /// 日志格式化方式
        public let logFormat: String?

        /// 提取规则，如果设置了ExtractRule，则必须设置LogType
        public let extractRule: ExtractRuleInfo?

        /// 采集黑名单路径列表
        public let excludePaths: [ExcludePathInfo]?

        /// 用户自定义采集规则，Json格式序列化的字符串
        public let userDefineRule: String?

        /// 绑定的机器组id
        public let groupId: String?

        /// 绑定的机器组id列表
        public let groupIds: [String]?

        /// 高级采集配置。 Json字符串， Key/Value定义为如下：
        /// - ClsAgentFileTimeout(超时属性), 取值范围: 大于等于0的整数， 0为不超时
        /// - ClsAgentMaxDepth(最大目录深度)，取值范围: 大于等于0的整数
        /// - ClsAgentParseFailMerge(合并解析失败日志)，取值范围: true或false
        /// 样例：{"ClsAgentFileTimeout":0,"ClsAgentMaxDepth":10,"ClsAgentParseFailMerge":true}
        public let advancedConfig: String?

        public init(name: String, topicId: String, type: String, logType: String, configFlag: String, logsetId: String, logsetName: String, topicName: String, hostFile: HostFileInfo? = nil, containerFile: ContainerFileInfo? = nil, containerStdout: ContainerStdoutInfo? = nil, logFormat: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, userDefineRule: String? = nil, groupId: String? = nil, groupIds: [String]? = nil, advancedConfig: String? = nil) {
            self.name = name
            self.topicId = topicId
            self.type = type
            self.logType = logType
            self.configFlag = configFlag
            self.logsetId = logsetId
            self.logsetName = logsetName
            self.topicName = topicName
            self.hostFile = hostFile
            self.containerFile = containerFile
            self.containerStdout = containerStdout
            self.logFormat = logFormat
            self.extractRule = extractRule
            self.excludePaths = excludePaths
            self.userDefineRule = userDefineRule
            self.groupId = groupId
            self.groupIds = groupIds
            self.advancedConfig = advancedConfig
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case topicId = "TopicId"
            case type = "Type"
            case logType = "LogType"
            case configFlag = "ConfigFlag"
            case logsetId = "LogsetId"
            case logsetName = "LogsetName"
            case topicName = "TopicName"
            case hostFile = "HostFile"
            case containerFile = "ContainerFile"
            case containerStdout = "ContainerStdout"
            case logFormat = "LogFormat"
            case extractRule = "ExtractRule"
            case excludePaths = "ExcludePaths"
            case userDefineRule = "UserDefineRule"
            case groupId = "GroupId"
            case groupIds = "GroupIds"
            case advancedConfig = "AdvancedConfig"
        }
    }

    /// CreateConfigExtra返回参数结构体
    public struct CreateConfigExtraResponse: TCResponse {
        /// 采集配置扩展信息ID
        public let configExtraId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configExtraId = "ConfigExtraId"
            case requestId = "RequestId"
        }
    }

    /// 创建特殊采集配置任务
    ///
    /// 本接口用于创建特殊采集配置任务，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func createConfigExtra(_ input: CreateConfigExtraRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigExtraResponse> {
        self.client.execute(action: "CreateConfigExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建特殊采集配置任务
    ///
    /// 本接口用于创建特殊采集配置任务，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func createConfigExtra(_ input: CreateConfigExtraRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigExtraResponse {
        try await self.client.execute(action: "CreateConfigExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建特殊采集配置任务
    ///
    /// 本接口用于创建特殊采集配置任务，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func createConfigExtra(name: String, topicId: String, type: String, logType: String, configFlag: String, logsetId: String, logsetName: String, topicName: String, hostFile: HostFileInfo? = nil, containerFile: ContainerFileInfo? = nil, containerStdout: ContainerStdoutInfo? = nil, logFormat: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, userDefineRule: String? = nil, groupId: String? = nil, groupIds: [String]? = nil, advancedConfig: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigExtraResponse> {
        self.createConfigExtra(.init(name: name, topicId: topicId, type: type, logType: logType, configFlag: configFlag, logsetId: logsetId, logsetName: logsetName, topicName: topicName, hostFile: hostFile, containerFile: containerFile, containerStdout: containerStdout, logFormat: logFormat, extractRule: extractRule, excludePaths: excludePaths, userDefineRule: userDefineRule, groupId: groupId, groupIds: groupIds, advancedConfig: advancedConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建特殊采集配置任务
    ///
    /// 本接口用于创建特殊采集配置任务，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func createConfigExtra(name: String, topicId: String, type: String, logType: String, configFlag: String, logsetId: String, logsetName: String, topicName: String, hostFile: HostFileInfo? = nil, containerFile: ContainerFileInfo? = nil, containerStdout: ContainerStdoutInfo? = nil, logFormat: String? = nil, extractRule: ExtractRuleInfo? = nil, excludePaths: [ExcludePathInfo]? = nil, userDefineRule: String? = nil, groupId: String? = nil, groupIds: [String]? = nil, advancedConfig: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigExtraResponse {
        try await self.createConfigExtra(.init(name: name, topicId: topicId, type: type, logType: logType, configFlag: configFlag, logsetId: logsetId, logsetName: logsetName, topicName: topicName, hostFile: hostFile, containerFile: containerFile, containerStdout: containerStdout, logFormat: logFormat, extractRule: extractRule, excludePaths: excludePaths, userDefineRule: userDefineRule, groupId: groupId, groupIds: groupIds, advancedConfig: advancedConfig), region: region, logger: logger, on: eventLoop)
    }
}
