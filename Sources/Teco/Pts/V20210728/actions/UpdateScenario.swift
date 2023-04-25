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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Pts {
    /// UpdateScenario请求参数结构体
    public struct UpdateScenarioRequest: TCRequestModel {
        /// 场景ID
        public let scenarioId: String

        /// 场景名
        public let name: String?

        /// 场景描述
        public let description: String?

        /// 压测引擎类型
        public let type: String?

        /// 施压配置
        public let load: Load?

        /// deprecated
        public let encodedScripts: String?

        /// deprecated
        public let configs: [String]?

        /// 测试数据集
        public let datasets: [TestData]?

        /// deprecated
        public let extensions: [String]?

        /// SLA规则ID
        public let slaId: String?

        /// cron job ID
        public let cronId: String?

        /// 场景状态（注：现已无需传递该参数）
        public let status: Int64?

        /// 项目ID
        public let projectId: String?

        /// 测试脚本路径
        public let testScripts: [ScriptInfo]?

        /// 协议文件路径
        public let protocols: [ProtocolInfo]?

        /// 请求文件路径
        public let requestFiles: [FileInfo]?

        /// SLA 策略
        public let slaPolicy: SLAPolicy?

        /// 拓展包文件路径
        public let plugins: [FileInfo]?

        /// 域名解析配置
        public let domainNameConfig: DomainNameConfig?

        /// WebHook请求配置
        public let notificationHooks: [Notification]?

        /// 创建人名
        public let owner: String?

        public init(scenarioId: String, name: String? = nil, description: String? = nil, type: String? = nil, load: Load? = nil, encodedScripts: String? = nil, configs: [String]? = nil, datasets: [TestData]? = nil, extensions: [String]? = nil, slaId: String? = nil, cronId: String? = nil, status: Int64? = nil, projectId: String? = nil, testScripts: [ScriptInfo]? = nil, protocols: [ProtocolInfo]? = nil, requestFiles: [FileInfo]? = nil, slaPolicy: SLAPolicy? = nil, plugins: [FileInfo]? = nil, domainNameConfig: DomainNameConfig? = nil, notificationHooks: [Notification]? = nil, owner: String? = nil) {
            self.scenarioId = scenarioId
            self.name = name
            self.description = description
            self.type = type
            self.load = load
            self.encodedScripts = encodedScripts
            self.configs = configs
            self.datasets = datasets
            self.extensions = extensions
            self.slaId = slaId
            self.cronId = cronId
            self.status = status
            self.projectId = projectId
            self.testScripts = testScripts
            self.protocols = protocols
            self.requestFiles = requestFiles
            self.slaPolicy = slaPolicy
            self.plugins = plugins
            self.domainNameConfig = domainNameConfig
            self.notificationHooks = notificationHooks
            self.owner = owner
        }

        enum CodingKeys: String, CodingKey {
            case scenarioId = "ScenarioId"
            case name = "Name"
            case description = "Description"
            case type = "Type"
            case load = "Load"
            case encodedScripts = "EncodedScripts"
            case configs = "Configs"
            case datasets = "Datasets"
            case extensions = "Extensions"
            case slaId = "SLAId"
            case cronId = "CronId"
            case status = "Status"
            case projectId = "ProjectId"
            case testScripts = "TestScripts"
            case protocols = "Protocols"
            case requestFiles = "RequestFiles"
            case slaPolicy = "SLAPolicy"
            case plugins = "Plugins"
            case domainNameConfig = "DomainNameConfig"
            case notificationHooks = "NotificationHooks"
            case owner = "Owner"
        }
    }

    /// UpdateScenario返回参数结构体
    public struct UpdateScenarioResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新场景
    @inlinable @discardableResult
    public func updateScenario(_ input: UpdateScenarioRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateScenarioResponse> {
        self.client.execute(action: "UpdateScenario", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新场景
    @inlinable @discardableResult
    public func updateScenario(_ input: UpdateScenarioRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScenarioResponse {
        try await self.client.execute(action: "UpdateScenario", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新场景
    @inlinable @discardableResult
    public func updateScenario(scenarioId: String, name: String? = nil, description: String? = nil, type: String? = nil, load: Load? = nil, encodedScripts: String? = nil, configs: [String]? = nil, datasets: [TestData]? = nil, extensions: [String]? = nil, slaId: String? = nil, cronId: String? = nil, status: Int64? = nil, projectId: String? = nil, testScripts: [ScriptInfo]? = nil, protocols: [ProtocolInfo]? = nil, requestFiles: [FileInfo]? = nil, slaPolicy: SLAPolicy? = nil, plugins: [FileInfo]? = nil, domainNameConfig: DomainNameConfig? = nil, notificationHooks: [Notification]? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateScenarioResponse> {
        self.updateScenario(.init(scenarioId: scenarioId, name: name, description: description, type: type, load: load, encodedScripts: encodedScripts, configs: configs, datasets: datasets, extensions: extensions, slaId: slaId, cronId: cronId, status: status, projectId: projectId, testScripts: testScripts, protocols: protocols, requestFiles: requestFiles, slaPolicy: slaPolicy, plugins: plugins, domainNameConfig: domainNameConfig, notificationHooks: notificationHooks, owner: owner), region: region, logger: logger, on: eventLoop)
    }

    /// 更新场景
    @inlinable @discardableResult
    public func updateScenario(scenarioId: String, name: String? = nil, description: String? = nil, type: String? = nil, load: Load? = nil, encodedScripts: String? = nil, configs: [String]? = nil, datasets: [TestData]? = nil, extensions: [String]? = nil, slaId: String? = nil, cronId: String? = nil, status: Int64? = nil, projectId: String? = nil, testScripts: [ScriptInfo]? = nil, protocols: [ProtocolInfo]? = nil, requestFiles: [FileInfo]? = nil, slaPolicy: SLAPolicy? = nil, plugins: [FileInfo]? = nil, domainNameConfig: DomainNameConfig? = nil, notificationHooks: [Notification]? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScenarioResponse {
        try await self.updateScenario(.init(scenarioId: scenarioId, name: name, description: description, type: type, load: load, encodedScripts: encodedScripts, configs: configs, datasets: datasets, extensions: extensions, slaId: slaId, cronId: cronId, status: status, projectId: projectId, testScripts: testScripts, protocols: protocols, requestFiles: requestFiles, slaPolicy: slaPolicy, plugins: plugins, domainNameConfig: domainNameConfig, notificationHooks: notificationHooks, owner: owner), region: region, logger: logger, on: eventLoop)
    }
}
