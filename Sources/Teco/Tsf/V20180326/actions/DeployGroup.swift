//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// 部署虚拟机部署组应用
    ///
    /// 部署虚拟机部署组应用
    @inlinable
    public func deployGroup(_ input: DeployGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeployGroupResponse > {
        self.client.execute(action: "DeployGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 部署虚拟机部署组应用
    ///
    /// 部署虚拟机部署组应用
    @inlinable
    public func deployGroup(_ input: DeployGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeployGroupResponse {
        try await self.client.execute(action: "DeployGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeployGroup请求参数结构体
    public struct DeployGroupRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String
        
        /// 程序包ID
        public let pkgId: String
        
        /// 部署组启动参数
        public let startupParameters: String?
        
        /// 部署应用描述信息
        public let deployDesc: String?
        
        /// 是否允许强制启动
        public let forceStart: Bool?
        
        /// 是否开启健康检查
        public let enableHealthCheck: Bool?
        
        /// 开启健康检查时，配置健康检查
        public let healthCheckSettings: HealthCheckSettings
        
        /// 部署方式，0表示快速更新，1表示滚动更新
        public let updateType: UInt64?
        
        /// 是否启用beta批次
        public let deployBetaEnable: Bool?
        
        /// 滚动发布每个批次参与的实例比率
        public let deployBatch: [Float]?
        
        /// 滚动发布的执行方式
        public let deployExeMode: String?
        
        /// 滚动发布每个批次的时间间隔
        public let deployWaitTime: UInt64?
        
        /// 启动脚本 base64编码
        public let startScript: String?
        
        /// 停止脚本 base64编码
        public let stopScript: String?
        
        /// 是否进行增量部署，默认为false，全量更新
        public let incrementalDeployment: Bool?
        
        /// JDK名称: konaJDK或openJDK
        public let jdkName: String?
        
        /// JDK版本: 8或11 (openJDK只支持8)
        public let jdkVersion: String?
        
        /// 部署agent的类型、版本
        public let agentProfileList: [AgentProfile]?
        
        /// 预热参数配置
        public let warmupSetting: WarmupSetting
        
        public init (groupId: String, pkgId: String, startupParameters: String?, deployDesc: String?, forceStart: Bool?, enableHealthCheck: Bool?, healthCheckSettings: HealthCheckSettings, updateType: UInt64?, deployBetaEnable: Bool?, deployBatch: [Float]?, deployExeMode: String?, deployWaitTime: UInt64?, startScript: String?, stopScript: String?, incrementalDeployment: Bool?, jdkName: String?, jdkVersion: String?, agentProfileList: [AgentProfile]?, warmupSetting: WarmupSetting) {
            self.groupId = groupId
            self.pkgId = pkgId
            self.startupParameters = startupParameters
            self.deployDesc = deployDesc
            self.forceStart = forceStart
            self.enableHealthCheck = enableHealthCheck
            self.healthCheckSettings = healthCheckSettings
            self.updateType = updateType
            self.deployBetaEnable = deployBetaEnable
            self.deployBatch = deployBatch
            self.deployExeMode = deployExeMode
            self.deployWaitTime = deployWaitTime
            self.startScript = startScript
            self.stopScript = stopScript
            self.incrementalDeployment = incrementalDeployment
            self.jdkName = jdkName
            self.jdkVersion = jdkVersion
            self.agentProfileList = agentProfileList
            self.warmupSetting = warmupSetting
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case pkgId = "PkgId"
            case startupParameters = "StartupParameters"
            case deployDesc = "DeployDesc"
            case forceStart = "ForceStart"
            case enableHealthCheck = "EnableHealthCheck"
            case healthCheckSettings = "HealthCheckSettings"
            case updateType = "UpdateType"
            case deployBetaEnable = "DeployBetaEnable"
            case deployBatch = "DeployBatch"
            case deployExeMode = "DeployExeMode"
            case deployWaitTime = "DeployWaitTime"
            case startScript = "StartScript"
            case stopScript = "StopScript"
            case incrementalDeployment = "IncrementalDeployment"
            case jdkName = "JdkName"
            case jdkVersion = "JdkVersion"
            case agentProfileList = "AgentProfileList"
            case warmupSetting = "WarmupSetting"
        }
    }
    
    /// DeployGroup返回参数结构体
    public struct DeployGroupResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TaskId
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}