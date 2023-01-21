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

extension Tcb {
    /// CreateCloudBaseRunServerVersion请求参数结构体
    public struct CreateCloudBaseRunServerVersionRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 枚举（package/repository/image/jar/war)
        public let uploadType: String

        /// 流量占比
        public let flowRatio: Int64

        /// Cpu的大小，单位：核
        public let cpu: Float

        /// Mem的大小，单位：G
        public let mem: Float

        /// 最小副本数，最小值：0
        public let minNum: Int64

        /// 副本最大数，最大值：50
        public let maxNum: Int64

        /// 策略类型(枚举值：比如cpu)
        public let policyType: String

        /// 策略阈值
        public let policyThreshold: Int64

        /// 服务端口
        public let containerPort: Int64

        /// 服务名称
        public let serverName: String

        /// repository的类型(coding/gitlab/github/coding)
        public let repositoryType: String?

        /// Dockerfile地址
        public let dockerfilePath: String?

        /// 构建目录
        public let buildDir: String?

        /// 环境变量
        public let envParams: String?

        /// repository地址
        public let repository: String?

        /// 分支
        public let branch: String?

        /// 版本备注
        public let versionRemark: String?

        /// 代码包名字
        public let packageName: String?

        /// 代码包的版本
        public let packageVersion: String?

        /// Image的详情
        public let imageInfo: CloudBaseRunImageInfo?

        /// Github等拉取代码的详情
        public let codeDetail: CloudBaseCodeRepoDetail?

        /// 私有镜像秘钥信息
        public let imageSecretInfo: CloudBaseRunImageSecretInfo?

        /// 私有镜像 认证名称
        public let imagePullSecret: String?

        /// 用户自定义采集日志路径
        public let customLogs: String?

        /// 延迟多长时间开始健康检查（单位s）
        public let initialDelaySeconds: Int64?

        /// cfs挂载信息
        public let mountVolumeInfo: [CloudBaseRunVolumeMount]?

        /// 4 代表只能微信链路访问
        public let accessType: Int64?

        /// es信息
        public let esInfo: CloudBaseEsInfo?

        /// 是否使用统一域名
        public let enableUnion: Bool?

        /// 操作备注
        public let operatorRemark: String?

        /// 服务路径
        public let serverPath: String?

        /// 镜像复用的key
        public let imageReuseKey: String?

        /// 容器的描述文件
        public let sidecarSpecs: [CloudBaseRunSideSpec]?

        /// 安全特性
        public let security: CloudBaseSecurityContext?

        /// 服务磁盘挂载
        public let serviceVolumes: [CloudRunServiceVolume]?

        /// 是否创建JnsGw 0未传默认创建 1创建 2不创建
        public let isCreateJnsGw: Int64?

        /// 数据卷挂载参数
        public let serviceVolumeMounts: [CloudBaseRunServiceVolumeMount]?

        /// 是否有Dockerfile：0-default has, 1-has, 2-has not
        public let hasDockerfile: Int64?

        /// 基础镜像
        public let baseImage: String?

        /// 容器启动入口命令
        public let entryPoint: String?

        /// 仓库语言
        public let repoLanguage: String?

        /// 用户实际上传文件名（仅UploadType为jar/war时必填）
        public let uploadFilename: String?

        /// 自动扩缩容策略组
        public let policyDetail: [HpaPolicy]?

        public init(envId: String, uploadType: String, flowRatio: Int64, cpu: Float, mem: Float, minNum: Int64, maxNum: Int64, policyType: String, policyThreshold: Int64, containerPort: Int64, serverName: String, repositoryType: String? = nil, dockerfilePath: String? = nil, buildDir: String? = nil, envParams: String? = nil, repository: String? = nil, branch: String? = nil, versionRemark: String? = nil, packageName: String? = nil, packageVersion: String? = nil, imageInfo: CloudBaseRunImageInfo? = nil, codeDetail: CloudBaseCodeRepoDetail? = nil, imageSecretInfo: CloudBaseRunImageSecretInfo? = nil, imagePullSecret: String? = nil, customLogs: String? = nil, initialDelaySeconds: Int64? = nil, mountVolumeInfo: [CloudBaseRunVolumeMount]? = nil, accessType: Int64? = nil, esInfo: CloudBaseEsInfo? = nil, enableUnion: Bool? = nil, operatorRemark: String? = nil, serverPath: String? = nil, imageReuseKey: String? = nil, sidecarSpecs: [CloudBaseRunSideSpec]? = nil, security: CloudBaseSecurityContext? = nil, serviceVolumes: [CloudRunServiceVolume]? = nil, isCreateJnsGw: Int64? = nil, serviceVolumeMounts: [CloudBaseRunServiceVolumeMount]? = nil, hasDockerfile: Int64? = nil, baseImage: String? = nil, entryPoint: String? = nil, repoLanguage: String? = nil, uploadFilename: String? = nil, policyDetail: [HpaPolicy]? = nil) {
            self.envId = envId
            self.uploadType = uploadType
            self.flowRatio = flowRatio
            self.cpu = cpu
            self.mem = mem
            self.minNum = minNum
            self.maxNum = maxNum
            self.policyType = policyType
            self.policyThreshold = policyThreshold
            self.containerPort = containerPort
            self.serverName = serverName
            self.repositoryType = repositoryType
            self.dockerfilePath = dockerfilePath
            self.buildDir = buildDir
            self.envParams = envParams
            self.repository = repository
            self.branch = branch
            self.versionRemark = versionRemark
            self.packageName = packageName
            self.packageVersion = packageVersion
            self.imageInfo = imageInfo
            self.codeDetail = codeDetail
            self.imageSecretInfo = imageSecretInfo
            self.imagePullSecret = imagePullSecret
            self.customLogs = customLogs
            self.initialDelaySeconds = initialDelaySeconds
            self.mountVolumeInfo = mountVolumeInfo
            self.accessType = accessType
            self.esInfo = esInfo
            self.enableUnion = enableUnion
            self.operatorRemark = operatorRemark
            self.serverPath = serverPath
            self.imageReuseKey = imageReuseKey
            self.sidecarSpecs = sidecarSpecs
            self.security = security
            self.serviceVolumes = serviceVolumes
            self.isCreateJnsGw = isCreateJnsGw
            self.serviceVolumeMounts = serviceVolumeMounts
            self.hasDockerfile = hasDockerfile
            self.baseImage = baseImage
            self.entryPoint = entryPoint
            self.repoLanguage = repoLanguage
            self.uploadFilename = uploadFilename
            self.policyDetail = policyDetail
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case uploadType = "UploadType"
            case flowRatio = "FlowRatio"
            case cpu = "Cpu"
            case mem = "Mem"
            case minNum = "MinNum"
            case maxNum = "MaxNum"
            case policyType = "PolicyType"
            case policyThreshold = "PolicyThreshold"
            case containerPort = "ContainerPort"
            case serverName = "ServerName"
            case repositoryType = "RepositoryType"
            case dockerfilePath = "DockerfilePath"
            case buildDir = "BuildDir"
            case envParams = "EnvParams"
            case repository = "Repository"
            case branch = "Branch"
            case versionRemark = "VersionRemark"
            case packageName = "PackageName"
            case packageVersion = "PackageVersion"
            case imageInfo = "ImageInfo"
            case codeDetail = "CodeDetail"
            case imageSecretInfo = "ImageSecretInfo"
            case imagePullSecret = "ImagePullSecret"
            case customLogs = "CustomLogs"
            case initialDelaySeconds = "InitialDelaySeconds"
            case mountVolumeInfo = "MountVolumeInfo"
            case accessType = "AccessType"
            case esInfo = "EsInfo"
            case enableUnion = "EnableUnion"
            case operatorRemark = "OperatorRemark"
            case serverPath = "ServerPath"
            case imageReuseKey = "ImageReuseKey"
            case sidecarSpecs = "SidecarSpecs"
            case security = "Security"
            case serviceVolumes = "ServiceVolumes"
            case isCreateJnsGw = "IsCreateJnsGw"
            case serviceVolumeMounts = "ServiceVolumeMounts"
            case hasDockerfile = "HasDockerfile"
            case baseImage = "BaseImage"
            case entryPoint = "EntryPoint"
            case repoLanguage = "RepoLanguage"
            case uploadFilename = "UploadFilename"
            case policyDetail = "PolicyDetail"
        }
    }

    /// CreateCloudBaseRunServerVersion返回参数结构体
    public struct CreateCloudBaseRunServerVersionResponse: TCResponseModel {
        /// 状态(creating/succ)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 版本名称（只有Result为succ的时候，才会返回VersionName)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionName: String?

        /// 操作记录id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case versionName = "VersionName"
            case runId = "RunId"
            case requestId = "RequestId"
        }
    }

    /// 创建服务版本
    @inlinable
    public func createCloudBaseRunServerVersion(_ input: CreateCloudBaseRunServerVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudBaseRunServerVersionResponse> {
        self.client.execute(action: "CreateCloudBaseRunServerVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建服务版本
    @inlinable
    public func createCloudBaseRunServerVersion(_ input: CreateCloudBaseRunServerVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudBaseRunServerVersionResponse {
        try await self.client.execute(action: "CreateCloudBaseRunServerVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建服务版本
    @inlinable
    public func createCloudBaseRunServerVersion(envId: String, uploadType: String, flowRatio: Int64, cpu: Float, mem: Float, minNum: Int64, maxNum: Int64, policyType: String, policyThreshold: Int64, containerPort: Int64, serverName: String, repositoryType: String? = nil, dockerfilePath: String? = nil, buildDir: String? = nil, envParams: String? = nil, repository: String? = nil, branch: String? = nil, versionRemark: String? = nil, packageName: String? = nil, packageVersion: String? = nil, imageInfo: CloudBaseRunImageInfo? = nil, codeDetail: CloudBaseCodeRepoDetail? = nil, imageSecretInfo: CloudBaseRunImageSecretInfo? = nil, imagePullSecret: String? = nil, customLogs: String? = nil, initialDelaySeconds: Int64? = nil, mountVolumeInfo: [CloudBaseRunVolumeMount]? = nil, accessType: Int64? = nil, esInfo: CloudBaseEsInfo? = nil, enableUnion: Bool? = nil, operatorRemark: String? = nil, serverPath: String? = nil, imageReuseKey: String? = nil, sidecarSpecs: [CloudBaseRunSideSpec]? = nil, security: CloudBaseSecurityContext? = nil, serviceVolumes: [CloudRunServiceVolume]? = nil, isCreateJnsGw: Int64? = nil, serviceVolumeMounts: [CloudBaseRunServiceVolumeMount]? = nil, hasDockerfile: Int64? = nil, baseImage: String? = nil, entryPoint: String? = nil, repoLanguage: String? = nil, uploadFilename: String? = nil, policyDetail: [HpaPolicy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudBaseRunServerVersionResponse> {
        self.createCloudBaseRunServerVersion(CreateCloudBaseRunServerVersionRequest(envId: envId, uploadType: uploadType, flowRatio: flowRatio, cpu: cpu, mem: mem, minNum: minNum, maxNum: maxNum, policyType: policyType, policyThreshold: policyThreshold, containerPort: containerPort, serverName: serverName, repositoryType: repositoryType, dockerfilePath: dockerfilePath, buildDir: buildDir, envParams: envParams, repository: repository, branch: branch, versionRemark: versionRemark, packageName: packageName, packageVersion: packageVersion, imageInfo: imageInfo, codeDetail: codeDetail, imageSecretInfo: imageSecretInfo, imagePullSecret: imagePullSecret, customLogs: customLogs, initialDelaySeconds: initialDelaySeconds, mountVolumeInfo: mountVolumeInfo, accessType: accessType, esInfo: esInfo, enableUnion: enableUnion, operatorRemark: operatorRemark, serverPath: serverPath, imageReuseKey: imageReuseKey, sidecarSpecs: sidecarSpecs, security: security, serviceVolumes: serviceVolumes, isCreateJnsGw: isCreateJnsGw, serviceVolumeMounts: serviceVolumeMounts, hasDockerfile: hasDockerfile, baseImage: baseImage, entryPoint: entryPoint, repoLanguage: repoLanguage, uploadFilename: uploadFilename, policyDetail: policyDetail), region: region, logger: logger, on: eventLoop)
    }

    /// 创建服务版本
    @inlinable
    public func createCloudBaseRunServerVersion(envId: String, uploadType: String, flowRatio: Int64, cpu: Float, mem: Float, minNum: Int64, maxNum: Int64, policyType: String, policyThreshold: Int64, containerPort: Int64, serverName: String, repositoryType: String? = nil, dockerfilePath: String? = nil, buildDir: String? = nil, envParams: String? = nil, repository: String? = nil, branch: String? = nil, versionRemark: String? = nil, packageName: String? = nil, packageVersion: String? = nil, imageInfo: CloudBaseRunImageInfo? = nil, codeDetail: CloudBaseCodeRepoDetail? = nil, imageSecretInfo: CloudBaseRunImageSecretInfo? = nil, imagePullSecret: String? = nil, customLogs: String? = nil, initialDelaySeconds: Int64? = nil, mountVolumeInfo: [CloudBaseRunVolumeMount]? = nil, accessType: Int64? = nil, esInfo: CloudBaseEsInfo? = nil, enableUnion: Bool? = nil, operatorRemark: String? = nil, serverPath: String? = nil, imageReuseKey: String? = nil, sidecarSpecs: [CloudBaseRunSideSpec]? = nil, security: CloudBaseSecurityContext? = nil, serviceVolumes: [CloudRunServiceVolume]? = nil, isCreateJnsGw: Int64? = nil, serviceVolumeMounts: [CloudBaseRunServiceVolumeMount]? = nil, hasDockerfile: Int64? = nil, baseImage: String? = nil, entryPoint: String? = nil, repoLanguage: String? = nil, uploadFilename: String? = nil, policyDetail: [HpaPolicy]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudBaseRunServerVersionResponse {
        try await self.createCloudBaseRunServerVersion(CreateCloudBaseRunServerVersionRequest(envId: envId, uploadType: uploadType, flowRatio: flowRatio, cpu: cpu, mem: mem, minNum: minNum, maxNum: maxNum, policyType: policyType, policyThreshold: policyThreshold, containerPort: containerPort, serverName: serverName, repositoryType: repositoryType, dockerfilePath: dockerfilePath, buildDir: buildDir, envParams: envParams, repository: repository, branch: branch, versionRemark: versionRemark, packageName: packageName, packageVersion: packageVersion, imageInfo: imageInfo, codeDetail: codeDetail, imageSecretInfo: imageSecretInfo, imagePullSecret: imagePullSecret, customLogs: customLogs, initialDelaySeconds: initialDelaySeconds, mountVolumeInfo: mountVolumeInfo, accessType: accessType, esInfo: esInfo, enableUnion: enableUnion, operatorRemark: operatorRemark, serverPath: serverPath, imageReuseKey: imageReuseKey, sidecarSpecs: sidecarSpecs, security: security, serviceVolumes: serviceVolumes, isCreateJnsGw: isCreateJnsGw, serviceVolumeMounts: serviceVolumeMounts, hasDockerfile: hasDockerfile, baseImage: baseImage, entryPoint: entryPoint, repoLanguage: repoLanguage, uploadFilename: uploadFilename, policyDetail: policyDetail), region: region, logger: logger, on: eventLoop)
    }
}
