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
    /// DescribeCloudBaseRunServerVersion请求参数结构体
    public struct DescribeCloudBaseRunServerVersionRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 服务名称
        public let serverName: String

        /// 版本名称
        public let versionName: String

        public init(envId: String, serverName: String, versionName: String) {
            self.envId = envId
            self.serverName = serverName
            self.versionName = versionName
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
            case versionName = "VersionName"
        }
    }

    /// DescribeCloudBaseRunServerVersion返回参数结构体
    public struct DescribeCloudBaseRunServerVersionResponse: TCResponseModel {
        /// 版本名称
        public let versionName: String

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// Dockefile的路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dockerfilePath: String?

        /// DockerBuild的目录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let buildDir: String?

        /// 请使用CPUSize
        public let cpu: Int64

        /// 请使用MemSize
        public let mem: Int64

        /// 副本最小值
        public let minNum: Int64

        /// 副本最大值
        public let maxNum: Int64

        /// 策略类型
        public let policyType: String

        /// 策略阈值
        public let policyThreshold: Float

        /// 环境变量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let envParams: String?

        /// 创建时间
        public let createdTime: String

        /// 更新时间
        public let updatedTime: String

        /// 版本的IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionIP: String?

        /// 版本的端口号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionPort: Int64?

        /// 版本状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 代码包的名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageName: String?

        /// 代码版本的名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageVersion: String?

        /// 枚举（package/repository/image)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uploadType: String?

        /// Repo的类型(gitlab/github/coding)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repoType: String?

        /// 地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repo: String?

        /// 分支
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let branch: String?

        /// 服务名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serverName: String?

        /// 是否对于外网开放
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isPublic: Bool?

        /// vpc id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 子网实例id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetIds: [String]?

        /// 日志采集路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customLogs: String?

        /// 监听端口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerPort: Int64?

        /// 延迟多长时间开始健康检查（单位s）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let initialDelaySeconds: Int64?

        /// 镜像地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageUrl: String?

        /// CPU 大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cpuSize: Float?

        /// MEM 大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memSize: Float?

        /// 是否有Dockerfile：0-default has, 1-has, 2-has not
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hasDockerfile: Int64?

        /// 基础镜像
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baseImage: String?

        /// 容器启动入口命令
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let entryPoint: String?

        /// 仓库语言
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repoLanguage: String?

        /// 自动扩缩容策略组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyDetail: [HpaPolicy]?

        /// Tke集群信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tkeClusterInfo: TkeClusterInfo?

        /// 版本工作负载类型；deployment/deamonset
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tkeWorkloadType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versionName = "VersionName"
            case remark = "Remark"
            case dockerfilePath = "DockerfilePath"
            case buildDir = "BuildDir"
            case cpu = "Cpu"
            case mem = "Mem"
            case minNum = "MinNum"
            case maxNum = "MaxNum"
            case policyType = "PolicyType"
            case policyThreshold = "PolicyThreshold"
            case envParams = "EnvParams"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
            case versionIP = "VersionIP"
            case versionPort = "VersionPort"
            case status = "Status"
            case packageName = "PackageName"
            case packageVersion = "PackageVersion"
            case uploadType = "UploadType"
            case repoType = "RepoType"
            case repo = "Repo"
            case branch = "Branch"
            case serverName = "ServerName"
            case isPublic = "IsPublic"
            case vpcId = "VpcId"
            case subnetIds = "SubnetIds"
            case customLogs = "CustomLogs"
            case containerPort = "ContainerPort"
            case initialDelaySeconds = "InitialDelaySeconds"
            case imageUrl = "ImageUrl"
            case cpuSize = "CpuSize"
            case memSize = "MemSize"
            case hasDockerfile = "HasDockerfile"
            case baseImage = "BaseImage"
            case entryPoint = "EntryPoint"
            case repoLanguage = "RepoLanguage"
            case policyDetail = "PolicyDetail"
            case tkeClusterInfo = "TkeClusterInfo"
            case tkeWorkloadType = "TkeWorkloadType"
            case requestId = "RequestId"
        }
    }

    /// 查询服务版本的详情
    ///
    /// 查询服务版本的详情，CPU和MEM  请使用CPUSize和MemSize
    @inlinable
    public func describeCloudBaseRunServerVersion(_ input: DescribeCloudBaseRunServerVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunServerVersionResponse> {
        self.client.execute(action: "DescribeCloudBaseRunServerVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务版本的详情
    ///
    /// 查询服务版本的详情，CPU和MEM  请使用CPUSize和MemSize
    @inlinable
    public func describeCloudBaseRunServerVersion(_ input: DescribeCloudBaseRunServerVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunServerVersionResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunServerVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务版本的详情
    ///
    /// 查询服务版本的详情，CPU和MEM  请使用CPUSize和MemSize
    @inlinable
    public func describeCloudBaseRunServerVersion(envId: String, serverName: String, versionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunServerVersionResponse> {
        self.describeCloudBaseRunServerVersion(DescribeCloudBaseRunServerVersionRequest(envId: envId, serverName: serverName, versionName: versionName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务版本的详情
    ///
    /// 查询服务版本的详情，CPU和MEM  请使用CPUSize和MemSize
    @inlinable
    public func describeCloudBaseRunServerVersion(envId: String, serverName: String, versionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunServerVersionResponse {
        try await self.describeCloudBaseRunServerVersion(DescribeCloudBaseRunServerVersionRequest(envId: envId, serverName: serverName, versionName: versionName), region: region, logger: logger, on: eventLoop)
    }
}
