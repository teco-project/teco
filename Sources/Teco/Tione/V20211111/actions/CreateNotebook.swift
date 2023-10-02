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

extension Tione {
    /// CreateNotebook请求参数结构体
    public struct CreateNotebookRequest: TCRequest {
        /// 名称。不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        public let name: String

        /// 计算资源付费模式 ，可选值为：
        /// PREPAID：预付费，即包年包月
        /// POSTPAID_BY_HOUR：按小时后付费
        public let chargeType: String

        /// 计算资源配置
        public let resourceConf: ResourceConf

        /// 是否上报日志
        public let logEnable: Bool

        /// 是否ROOT权限
        public let rootAccess: Bool

        /// 是否自动停止
        public let autoStopping: Bool

        /// 是否访问公网
        public let directInternetAccess: Bool

        /// 资源组ID(for预付费)
        public let resourceGroupId: String?

        /// Vpc-Id
        public let vpcId: String?

        /// 子网Id
        public let subnetId: String?

        /// 存储的类型。取值包含：
        ///     FREE:    预付费的免费存储
        ///     CLOUD_PREMIUM： 高性能云硬盘
        ///     CLOUD_SSD： SSD云硬盘
        ///     CFS:     CFS存储，包含NFS和turbo
        public let volumeSourceType: String?

        /// 存储卷大小，单位GB
        public let volumeSizeInGB: UInt64?

        /// CFS存储的配置
        public let volumeSourceCFS: CFSConfig?

        /// 日志配置
        public let logConfig: LogConfig?

        /// 生命周期脚本的ID
        public let lifecycleScriptId: String?

        /// 默认GIT存储库的ID
        public let defaultCodeRepoId: String?

        /// 其他GIT存储库的ID，最多3个
        public let additionalCodeRepoIds: [String]?

        /// 自动停止时间，单位小时
        public let automaticStopTime: UInt64?

        /// 标签配置
        public let tags: [Tag]?

        /// 数据配置
        public let dataConfigs: [DataConfig]?

        /// 镜像信息
        public let imageInfo: ImageInfo?

        /// 镜像类型
        public let imageType: String?

        /// SSH配置信息
        public let sshConfig: SSHConfig?

        public init(name: String, chargeType: String, resourceConf: ResourceConf, logEnable: Bool, rootAccess: Bool, autoStopping: Bool, directInternetAccess: Bool, resourceGroupId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, volumeSourceType: String? = nil, volumeSizeInGB: UInt64? = nil, volumeSourceCFS: CFSConfig? = nil, logConfig: LogConfig? = nil, lifecycleScriptId: String? = nil, defaultCodeRepoId: String? = nil, additionalCodeRepoIds: [String]? = nil, automaticStopTime: UInt64? = nil, tags: [Tag]? = nil, dataConfigs: [DataConfig]? = nil, imageInfo: ImageInfo? = nil, imageType: String? = nil, sshConfig: SSHConfig? = nil) {
            self.name = name
            self.chargeType = chargeType
            self.resourceConf = resourceConf
            self.logEnable = logEnable
            self.rootAccess = rootAccess
            self.autoStopping = autoStopping
            self.directInternetAccess = directInternetAccess
            self.resourceGroupId = resourceGroupId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.volumeSourceType = volumeSourceType
            self.volumeSizeInGB = volumeSizeInGB
            self.volumeSourceCFS = volumeSourceCFS
            self.logConfig = logConfig
            self.lifecycleScriptId = lifecycleScriptId
            self.defaultCodeRepoId = defaultCodeRepoId
            self.additionalCodeRepoIds = additionalCodeRepoIds
            self.automaticStopTime = automaticStopTime
            self.tags = tags
            self.dataConfigs = dataConfigs
            self.imageInfo = imageInfo
            self.imageType = imageType
            self.sshConfig = sshConfig
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case chargeType = "ChargeType"
            case resourceConf = "ResourceConf"
            case logEnable = "LogEnable"
            case rootAccess = "RootAccess"
            case autoStopping = "AutoStopping"
            case directInternetAccess = "DirectInternetAccess"
            case resourceGroupId = "ResourceGroupId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case volumeSourceType = "VolumeSourceType"
            case volumeSizeInGB = "VolumeSizeInGB"
            case volumeSourceCFS = "VolumeSourceCFS"
            case logConfig = "LogConfig"
            case lifecycleScriptId = "LifecycleScriptId"
            case defaultCodeRepoId = "DefaultCodeRepoId"
            case additionalCodeRepoIds = "AdditionalCodeRepoIds"
            case automaticStopTime = "AutomaticStopTime"
            case tags = "Tags"
            case dataConfigs = "DataConfigs"
            case imageInfo = "ImageInfo"
            case imageType = "ImageType"
            case sshConfig = "SSHConfig"
        }
    }

    /// CreateNotebook返回参数结构体
    public struct CreateNotebookResponse: TCResponse {
        /// notebook标志
        public let id: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 创建Notebook
    @inlinable
    public func createNotebook(_ input: CreateNotebookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotebookResponse> {
        self.client.execute(action: "CreateNotebook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Notebook
    @inlinable
    public func createNotebook(_ input: CreateNotebookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookResponse {
        try await self.client.execute(action: "CreateNotebook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Notebook
    @inlinable
    public func createNotebook(name: String, chargeType: String, resourceConf: ResourceConf, logEnable: Bool, rootAccess: Bool, autoStopping: Bool, directInternetAccess: Bool, resourceGroupId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, volumeSourceType: String? = nil, volumeSizeInGB: UInt64? = nil, volumeSourceCFS: CFSConfig? = nil, logConfig: LogConfig? = nil, lifecycleScriptId: String? = nil, defaultCodeRepoId: String? = nil, additionalCodeRepoIds: [String]? = nil, automaticStopTime: UInt64? = nil, tags: [Tag]? = nil, dataConfigs: [DataConfig]? = nil, imageInfo: ImageInfo? = nil, imageType: String? = nil, sshConfig: SSHConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotebookResponse> {
        self.createNotebook(.init(name: name, chargeType: chargeType, resourceConf: resourceConf, logEnable: logEnable, rootAccess: rootAccess, autoStopping: autoStopping, directInternetAccess: directInternetAccess, resourceGroupId: resourceGroupId, vpcId: vpcId, subnetId: subnetId, volumeSourceType: volumeSourceType, volumeSizeInGB: volumeSizeInGB, volumeSourceCFS: volumeSourceCFS, logConfig: logConfig, lifecycleScriptId: lifecycleScriptId, defaultCodeRepoId: defaultCodeRepoId, additionalCodeRepoIds: additionalCodeRepoIds, automaticStopTime: automaticStopTime, tags: tags, dataConfigs: dataConfigs, imageInfo: imageInfo, imageType: imageType, sshConfig: sshConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Notebook
    @inlinable
    public func createNotebook(name: String, chargeType: String, resourceConf: ResourceConf, logEnable: Bool, rootAccess: Bool, autoStopping: Bool, directInternetAccess: Bool, resourceGroupId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, volumeSourceType: String? = nil, volumeSizeInGB: UInt64? = nil, volumeSourceCFS: CFSConfig? = nil, logConfig: LogConfig? = nil, lifecycleScriptId: String? = nil, defaultCodeRepoId: String? = nil, additionalCodeRepoIds: [String]? = nil, automaticStopTime: UInt64? = nil, tags: [Tag]? = nil, dataConfigs: [DataConfig]? = nil, imageInfo: ImageInfo? = nil, imageType: String? = nil, sshConfig: SSHConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookResponse {
        try await self.createNotebook(.init(name: name, chargeType: chargeType, resourceConf: resourceConf, logEnable: logEnable, rootAccess: rootAccess, autoStopping: autoStopping, directInternetAccess: directInternetAccess, resourceGroupId: resourceGroupId, vpcId: vpcId, subnetId: subnetId, volumeSourceType: volumeSourceType, volumeSizeInGB: volumeSizeInGB, volumeSourceCFS: volumeSourceCFS, logConfig: logConfig, lifecycleScriptId: lifecycleScriptId, defaultCodeRepoId: defaultCodeRepoId, additionalCodeRepoIds: additionalCodeRepoIds, automaticStopTime: automaticStopTime, tags: tags, dataConfigs: dataConfigs, imageInfo: imageInfo, imageType: imageType, sshConfig: sshConfig), region: region, logger: logger, on: eventLoop)
    }
}
