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
    /// DeployApplication请求参数结构体
    public struct DeployApplicationRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String

        /// 初始化 pod 数
        public let initPodNum: UInt64

        /// cpu规格
        public let cpuSpec: Float

        /// 内存规格
        public let memorySpec: Float

        /// 环境ID
        public let environmentId: String

        /// 镜像仓库
        public let imgRepo: String?

        /// 版本描述信息
        public let versionDesc: String?

        /// 启动参数
        public let jvmOpts: String?

        /// 弹性伸缩配置（已废弃，请使用HorizontalAutoscaler设置弹性策略）
        public let esInfo: EsInfo?

        /// 环境变量配置
        public let envConf: [Pair]?

        /// 日志配置
        public let logConfs: [String]?

        /// 数据卷配置
        public let storageConfs: [StorageConf]?

        /// 数据卷挂载配置
        public let storageMountConfs: [StorageMountConf]?

        /// 部署类型。
        /// - JAR：通过 jar 包部署
        /// - WAR：通过 war 包部署
        /// - IMAGE：通过镜像部署
        public let deployMode: String?

        /// 部署类型为 IMAGE 时，该参数表示镜像 tag。
        /// 部署类型为 JAR/WAR 时，该参数表示包版本号。
        public let deployVersion: String?

        /// 包名。使用 JAR 包或者 WAR 包部署的时候必填。
        public let pkgName: String?

        /// JDK 版本。
        /// - KONA:8：使用 kona jdk 8。
        /// - OPEN:8：使用 open jdk 8。
        /// - KONA:11：使用 kona jdk 11。
        /// - OPEN:11：使用 open jdk 11。
        public let jdkVersion: String?

        /// 安全组ID s
        public let securityGroupIds: [String]?

        /// 日志输出配置
        public let logOutputConf: LogOutputConf?

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 版本描述
        public let description: String?

        /// 镜像命令
        public let imageCommand: String?

        /// 镜像命令参数
        public let imageArgs: [String]?

        /// 是否添加默认注册中心配置
        public let useRegistryDefaultConfig: Bool?

        /// 挂载配置信息
        public let settingConfs: [MountedSettingConf]?

        /// 应用访问设置
        public let service: EksService?

        /// 要回滚到的历史版本id
        public let versionId: String?

        /// 启动后执行的脚本
        public let postStart: String?

        /// 停止前执行的脚本
        public let preStop: String?

        /// 存活探针配置
        public let liveness: HealthCheckConfig?

        /// 就绪探针配置
        public let readiness: HealthCheckConfig?

        /// 分批发布策略配置
        public let deployStrategyConf: DeployStrategyConf?

        /// 弹性策略（已弃用，请使用弹性伸缩策略组合相关接口）
        public let horizontalAutoscaler: [HorizontalAutoscaler]?

        /// 定时弹性策略（已弃用，请使用弹性伸缩策略组合相关接口）
        public let cronHorizontalAutoscaler: [CronHorizontalAutoscaler]?

        /// 是否启用log，1为启用，0为不启用
        public let logEnable: Int64?

        /// （除开镜像配置）配置是否修改
        public let confEdited: Bool?

        /// 是否开启应用加速
        public let speedUp: Bool?

        /// 启动探针配置
        public let startupProbe: HealthCheckConfig?

        /// 操作系统版本；
        /// 当选择openjdk时，可选参数：
        /// - ALPINE
        /// - CENTOS
        /// 当选择konajdk时，可选参数：
        /// - ALPINE
        /// - TENCENTOS
        public let osFlavour: String?

        /// metrics业务指标监控配置
        public let enablePrometheusConf: EnablePrometheusConf?

        /// 1：开始自动apm采集（skywalking）；
        /// 0：关闭apm采集；
        public let enableTracing: Int64?

        /// 1：开始自动metrics采集（open-telemetry）；
        /// 0：关闭metrics采集；
        public let enableMetrics: Int64?

        /// 镜像部署时，选择的tcr实例id
        public let tcrInstanceId: String?

        /// 镜像部署时，选择的镜像服务器地址
        public let repoServer: String?

        /// 镜像部署时，仓库类型：0：个人仓库；1：企业版；2：公共仓库；3：tem托管仓库；4：demo仓库
        public let repoType: Int64?

        public init(applicationId: String, initPodNum: UInt64, cpuSpec: Float, memorySpec: Float, environmentId: String, imgRepo: String? = nil, versionDesc: String? = nil, jvmOpts: String? = nil, esInfo: EsInfo? = nil, envConf: [Pair]? = nil, logConfs: [String]? = nil, storageConfs: [StorageConf]? = nil, storageMountConfs: [StorageMountConf]? = nil, deployMode: String? = nil, deployVersion: String? = nil, pkgName: String? = nil, jdkVersion: String? = nil, securityGroupIds: [String]? = nil, logOutputConf: LogOutputConf? = nil, sourceChannel: Int64? = nil, description: String? = nil, imageCommand: String? = nil, imageArgs: [String]? = nil, useRegistryDefaultConfig: Bool? = nil, settingConfs: [MountedSettingConf]? = nil, service: EksService? = nil, versionId: String? = nil, postStart: String? = nil, preStop: String? = nil, liveness: HealthCheckConfig? = nil, readiness: HealthCheckConfig? = nil, deployStrategyConf: DeployStrategyConf? = nil, horizontalAutoscaler: [HorizontalAutoscaler]? = nil, cronHorizontalAutoscaler: [CronHorizontalAutoscaler]? = nil, logEnable: Int64? = nil, confEdited: Bool? = nil, speedUp: Bool? = nil, startupProbe: HealthCheckConfig? = nil, osFlavour: String? = nil, enablePrometheusConf: EnablePrometheusConf? = nil, enableTracing: Int64? = nil, enableMetrics: Int64? = nil, tcrInstanceId: String? = nil, repoServer: String? = nil, repoType: Int64? = nil) {
            self.applicationId = applicationId
            self.initPodNum = initPodNum
            self.cpuSpec = cpuSpec
            self.memorySpec = memorySpec
            self.environmentId = environmentId
            self.imgRepo = imgRepo
            self.versionDesc = versionDesc
            self.jvmOpts = jvmOpts
            self.esInfo = esInfo
            self.envConf = envConf
            self.logConfs = logConfs
            self.storageConfs = storageConfs
            self.storageMountConfs = storageMountConfs
            self.deployMode = deployMode
            self.deployVersion = deployVersion
            self.pkgName = pkgName
            self.jdkVersion = jdkVersion
            self.securityGroupIds = securityGroupIds
            self.logOutputConf = logOutputConf
            self.sourceChannel = sourceChannel
            self.description = description
            self.imageCommand = imageCommand
            self.imageArgs = imageArgs
            self.useRegistryDefaultConfig = useRegistryDefaultConfig
            self.settingConfs = settingConfs
            self.service = service
            self.versionId = versionId
            self.postStart = postStart
            self.preStop = preStop
            self.liveness = liveness
            self.readiness = readiness
            self.deployStrategyConf = deployStrategyConf
            self.horizontalAutoscaler = horizontalAutoscaler
            self.cronHorizontalAutoscaler = cronHorizontalAutoscaler
            self.logEnable = logEnable
            self.confEdited = confEdited
            self.speedUp = speedUp
            self.startupProbe = startupProbe
            self.osFlavour = osFlavour
            self.enablePrometheusConf = enablePrometheusConf
            self.enableTracing = enableTracing
            self.enableMetrics = enableMetrics
            self.tcrInstanceId = tcrInstanceId
            self.repoServer = repoServer
            self.repoType = repoType
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case initPodNum = "InitPodNum"
            case cpuSpec = "CpuSpec"
            case memorySpec = "MemorySpec"
            case environmentId = "EnvironmentId"
            case imgRepo = "ImgRepo"
            case versionDesc = "VersionDesc"
            case jvmOpts = "JvmOpts"
            case esInfo = "EsInfo"
            case envConf = "EnvConf"
            case logConfs = "LogConfs"
            case storageConfs = "StorageConfs"
            case storageMountConfs = "StorageMountConfs"
            case deployMode = "DeployMode"
            case deployVersion = "DeployVersion"
            case pkgName = "PkgName"
            case jdkVersion = "JdkVersion"
            case securityGroupIds = "SecurityGroupIds"
            case logOutputConf = "LogOutputConf"
            case sourceChannel = "SourceChannel"
            case description = "Description"
            case imageCommand = "ImageCommand"
            case imageArgs = "ImageArgs"
            case useRegistryDefaultConfig = "UseRegistryDefaultConfig"
            case settingConfs = "SettingConfs"
            case service = "Service"
            case versionId = "VersionId"
            case postStart = "PostStart"
            case preStop = "PreStop"
            case liveness = "Liveness"
            case readiness = "Readiness"
            case deployStrategyConf = "DeployStrategyConf"
            case horizontalAutoscaler = "HorizontalAutoscaler"
            case cronHorizontalAutoscaler = "CronHorizontalAutoscaler"
            case logEnable = "LogEnable"
            case confEdited = "ConfEdited"
            case speedUp = "SpeedUp"
            case startupProbe = "StartupProbe"
            case osFlavour = "OsFlavour"
            case enablePrometheusConf = "EnablePrometheusConf"
            case enableTracing = "EnableTracing"
            case enableMetrics = "EnableMetrics"
            case tcrInstanceId = "TcrInstanceId"
            case repoServer = "RepoServer"
            case repoType = "RepoType"
        }
    }

    /// DeployApplication返回参数结构体
    public struct DeployApplicationResponse: TCResponseModel {
        /// 版本ID（前端可忽略）
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 应用部署
    @inlinable
    public func deployApplication(_ input: DeployApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeployApplicationResponse> {
        self.client.execute(action: "DeployApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用部署
    @inlinable
    public func deployApplication(_ input: DeployApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeployApplicationResponse {
        try await self.client.execute(action: "DeployApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用部署
    @inlinable
    public func deployApplication(applicationId: String, initPodNum: UInt64, cpuSpec: Float, memorySpec: Float, environmentId: String, imgRepo: String? = nil, versionDesc: String? = nil, jvmOpts: String? = nil, esInfo: EsInfo? = nil, envConf: [Pair]? = nil, logConfs: [String]? = nil, storageConfs: [StorageConf]? = nil, storageMountConfs: [StorageMountConf]? = nil, deployMode: String? = nil, deployVersion: String? = nil, pkgName: String? = nil, jdkVersion: String? = nil, securityGroupIds: [String]? = nil, logOutputConf: LogOutputConf? = nil, sourceChannel: Int64? = nil, description: String? = nil, imageCommand: String? = nil, imageArgs: [String]? = nil, useRegistryDefaultConfig: Bool? = nil, settingConfs: [MountedSettingConf]? = nil, service: EksService? = nil, versionId: String? = nil, postStart: String? = nil, preStop: String? = nil, liveness: HealthCheckConfig? = nil, readiness: HealthCheckConfig? = nil, deployStrategyConf: DeployStrategyConf? = nil, horizontalAutoscaler: [HorizontalAutoscaler]? = nil, cronHorizontalAutoscaler: [CronHorizontalAutoscaler]? = nil, logEnable: Int64? = nil, confEdited: Bool? = nil, speedUp: Bool? = nil, startupProbe: HealthCheckConfig? = nil, osFlavour: String? = nil, enablePrometheusConf: EnablePrometheusConf? = nil, enableTracing: Int64? = nil, enableMetrics: Int64? = nil, tcrInstanceId: String? = nil, repoServer: String? = nil, repoType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeployApplicationResponse> {
        self.deployApplication(DeployApplicationRequest(applicationId: applicationId, initPodNum: initPodNum, cpuSpec: cpuSpec, memorySpec: memorySpec, environmentId: environmentId, imgRepo: imgRepo, versionDesc: versionDesc, jvmOpts: jvmOpts, esInfo: esInfo, envConf: envConf, logConfs: logConfs, storageConfs: storageConfs, storageMountConfs: storageMountConfs, deployMode: deployMode, deployVersion: deployVersion, pkgName: pkgName, jdkVersion: jdkVersion, securityGroupIds: securityGroupIds, logOutputConf: logOutputConf, sourceChannel: sourceChannel, description: description, imageCommand: imageCommand, imageArgs: imageArgs, useRegistryDefaultConfig: useRegistryDefaultConfig, settingConfs: settingConfs, service: service, versionId: versionId, postStart: postStart, preStop: preStop, liveness: liveness, readiness: readiness, deployStrategyConf: deployStrategyConf, horizontalAutoscaler: horizontalAutoscaler, cronHorizontalAutoscaler: cronHorizontalAutoscaler, logEnable: logEnable, confEdited: confEdited, speedUp: speedUp, startupProbe: startupProbe, osFlavour: osFlavour, enablePrometheusConf: enablePrometheusConf, enableTracing: enableTracing, enableMetrics: enableMetrics, tcrInstanceId: tcrInstanceId, repoServer: repoServer, repoType: repoType), region: region, logger: logger, on: eventLoop)
    }

    /// 应用部署
    @inlinable
    public func deployApplication(applicationId: String, initPodNum: UInt64, cpuSpec: Float, memorySpec: Float, environmentId: String, imgRepo: String? = nil, versionDesc: String? = nil, jvmOpts: String? = nil, esInfo: EsInfo? = nil, envConf: [Pair]? = nil, logConfs: [String]? = nil, storageConfs: [StorageConf]? = nil, storageMountConfs: [StorageMountConf]? = nil, deployMode: String? = nil, deployVersion: String? = nil, pkgName: String? = nil, jdkVersion: String? = nil, securityGroupIds: [String]? = nil, logOutputConf: LogOutputConf? = nil, sourceChannel: Int64? = nil, description: String? = nil, imageCommand: String? = nil, imageArgs: [String]? = nil, useRegistryDefaultConfig: Bool? = nil, settingConfs: [MountedSettingConf]? = nil, service: EksService? = nil, versionId: String? = nil, postStart: String? = nil, preStop: String? = nil, liveness: HealthCheckConfig? = nil, readiness: HealthCheckConfig? = nil, deployStrategyConf: DeployStrategyConf? = nil, horizontalAutoscaler: [HorizontalAutoscaler]? = nil, cronHorizontalAutoscaler: [CronHorizontalAutoscaler]? = nil, logEnable: Int64? = nil, confEdited: Bool? = nil, speedUp: Bool? = nil, startupProbe: HealthCheckConfig? = nil, osFlavour: String? = nil, enablePrometheusConf: EnablePrometheusConf? = nil, enableTracing: Int64? = nil, enableMetrics: Int64? = nil, tcrInstanceId: String? = nil, repoServer: String? = nil, repoType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeployApplicationResponse {
        try await self.deployApplication(DeployApplicationRequest(applicationId: applicationId, initPodNum: initPodNum, cpuSpec: cpuSpec, memorySpec: memorySpec, environmentId: environmentId, imgRepo: imgRepo, versionDesc: versionDesc, jvmOpts: jvmOpts, esInfo: esInfo, envConf: envConf, logConfs: logConfs, storageConfs: storageConfs, storageMountConfs: storageMountConfs, deployMode: deployMode, deployVersion: deployVersion, pkgName: pkgName, jdkVersion: jdkVersion, securityGroupIds: securityGroupIds, logOutputConf: logOutputConf, sourceChannel: sourceChannel, description: description, imageCommand: imageCommand, imageArgs: imageArgs, useRegistryDefaultConfig: useRegistryDefaultConfig, settingConfs: settingConfs, service: service, versionId: versionId, postStart: postStart, preStop: preStop, liveness: liveness, readiness: readiness, deployStrategyConf: deployStrategyConf, horizontalAutoscaler: horizontalAutoscaler, cronHorizontalAutoscaler: cronHorizontalAutoscaler, logEnable: logEnable, confEdited: confEdited, speedUp: speedUp, startupProbe: startupProbe, osFlavour: osFlavour, enablePrometheusConf: enablePrometheusConf, enableTracing: enableTracing, enableMetrics: enableMetrics, tcrInstanceId: tcrInstanceId, repoServer: repoServer, repoType: repoType), region: region, logger: logger, on: eventLoop)
    }
}
