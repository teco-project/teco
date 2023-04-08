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

import TecoCore

extension Tione {
    /// UpdateNotebookInstance请求参数结构体
    public struct UpdateNotebookInstanceRequest: TCRequestModel {
        /// Notebook实例名称
        /// 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        public let notebookInstanceName: String

        /// 角色的资源描述
        public let roleArn: String?

        /// Root访问权限
        public let rootAccess: String?

        /// 数据卷大小(GB)
        public let volumeSizeInGB: UInt64?

        /// 算力资源类型
        public let instanceType: String?

        /// notebook生命周期脚本名称
        public let lifecycleScriptsName: String?

        /// 是否解绑生命周期脚本，默认 false。
        /// 该值为true时，LifecycleScriptsName将被忽略
        public let disassociateLifecycleScript: Bool?

        /// 默认存储库名称
        /// 可以是已创建的存储库名称或者已https://开头的公共git库
        public let defaultCodeRepository: String?

        /// 其他存储库列表
        /// 每个元素可以是已创建的存储库名称或者已https://开头的公共git库
        public let additionalCodeRepositories: [String]?

        /// 是否取消关联默认存储库，默认false
        /// 该值为true时，DefaultCodeRepository将被忽略
        public let disassociateDefaultCodeRepository: Bool?

        /// 是否取消关联其他存储库，默认false
        /// 该值为true时，AdditionalCodeRepositories将被忽略
        public let disassociateAdditionalCodeRepositories: Bool?

        /// 已弃用，请使用ClsConfig配置。是否开启CLS日志服务，可取值Enabled/Disabled
        public let clsAccess: String?

        /// 自动停止，可取值Enabled/Disabled
        /// 取值为Disabled的时候StoppingCondition将被忽略
        /// 取值为Enabled的时候读取StoppingCondition作为自动停止的配置
        public let autoStopping: String?

        /// 自动停止配置，只在AutoStopping为Enabled的时候生效
        public let stoppingCondition: StoppingCondition?

        /// 接入日志的配置，默认使用免费日志服务。
        public let clsConfig: ClsConfig?

        public init(notebookInstanceName: String, roleArn: String? = nil, rootAccess: String? = nil, volumeSizeInGB: UInt64? = nil, instanceType: String? = nil, lifecycleScriptsName: String? = nil, disassociateLifecycleScript: Bool? = nil, defaultCodeRepository: String? = nil, additionalCodeRepositories: [String]? = nil, disassociateDefaultCodeRepository: Bool? = nil, disassociateAdditionalCodeRepositories: Bool? = nil, clsAccess: String? = nil, autoStopping: String? = nil, stoppingCondition: StoppingCondition? = nil, clsConfig: ClsConfig? = nil) {
            self.notebookInstanceName = notebookInstanceName
            self.roleArn = roleArn
            self.rootAccess = rootAccess
            self.volumeSizeInGB = volumeSizeInGB
            self.instanceType = instanceType
            self.lifecycleScriptsName = lifecycleScriptsName
            self.disassociateLifecycleScript = disassociateLifecycleScript
            self.defaultCodeRepository = defaultCodeRepository
            self.additionalCodeRepositories = additionalCodeRepositories
            self.disassociateDefaultCodeRepository = disassociateDefaultCodeRepository
            self.disassociateAdditionalCodeRepositories = disassociateAdditionalCodeRepositories
            self.clsAccess = clsAccess
            self.autoStopping = autoStopping
            self.stoppingCondition = stoppingCondition
            self.clsConfig = clsConfig
        }

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
            case roleArn = "RoleArn"
            case rootAccess = "RootAccess"
            case volumeSizeInGB = "VolumeSizeInGB"
            case instanceType = "InstanceType"
            case lifecycleScriptsName = "LifecycleScriptsName"
            case disassociateLifecycleScript = "DisassociateLifecycleScript"
            case defaultCodeRepository = "DefaultCodeRepository"
            case additionalCodeRepositories = "AdditionalCodeRepositories"
            case disassociateDefaultCodeRepository = "DisassociateDefaultCodeRepository"
            case disassociateAdditionalCodeRepositories = "DisassociateAdditionalCodeRepositories"
            case clsAccess = "ClsAccess"
            case autoStopping = "AutoStopping"
            case stoppingCondition = "StoppingCondition"
            case clsConfig = "ClsConfig"
        }
    }

    /// UpdateNotebookInstance返回参数结构体
    public struct UpdateNotebookInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新Notebook实例
    @inlinable @discardableResult
    public func updateNotebookInstance(_ input: UpdateNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNotebookInstanceResponse> {
        self.client.execute(action: "UpdateNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新Notebook实例
    @inlinable @discardableResult
    public func updateNotebookInstance(_ input: UpdateNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNotebookInstanceResponse {
        try await self.client.execute(action: "UpdateNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新Notebook实例
    @inlinable @discardableResult
    public func updateNotebookInstance(notebookInstanceName: String, roleArn: String? = nil, rootAccess: String? = nil, volumeSizeInGB: UInt64? = nil, instanceType: String? = nil, lifecycleScriptsName: String? = nil, disassociateLifecycleScript: Bool? = nil, defaultCodeRepository: String? = nil, additionalCodeRepositories: [String]? = nil, disassociateDefaultCodeRepository: Bool? = nil, disassociateAdditionalCodeRepositories: Bool? = nil, clsAccess: String? = nil, autoStopping: String? = nil, stoppingCondition: StoppingCondition? = nil, clsConfig: ClsConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNotebookInstanceResponse> {
        self.updateNotebookInstance(.init(notebookInstanceName: notebookInstanceName, roleArn: roleArn, rootAccess: rootAccess, volumeSizeInGB: volumeSizeInGB, instanceType: instanceType, lifecycleScriptsName: lifecycleScriptsName, disassociateLifecycleScript: disassociateLifecycleScript, defaultCodeRepository: defaultCodeRepository, additionalCodeRepositories: additionalCodeRepositories, disassociateDefaultCodeRepository: disassociateDefaultCodeRepository, disassociateAdditionalCodeRepositories: disassociateAdditionalCodeRepositories, clsAccess: clsAccess, autoStopping: autoStopping, stoppingCondition: stoppingCondition, clsConfig: clsConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 更新Notebook实例
    @inlinable @discardableResult
    public func updateNotebookInstance(notebookInstanceName: String, roleArn: String? = nil, rootAccess: String? = nil, volumeSizeInGB: UInt64? = nil, instanceType: String? = nil, lifecycleScriptsName: String? = nil, disassociateLifecycleScript: Bool? = nil, defaultCodeRepository: String? = nil, additionalCodeRepositories: [String]? = nil, disassociateDefaultCodeRepository: Bool? = nil, disassociateAdditionalCodeRepositories: Bool? = nil, clsAccess: String? = nil, autoStopping: String? = nil, stoppingCondition: StoppingCondition? = nil, clsConfig: ClsConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNotebookInstanceResponse {
        try await self.updateNotebookInstance(.init(notebookInstanceName: notebookInstanceName, roleArn: roleArn, rootAccess: rootAccess, volumeSizeInGB: volumeSizeInGB, instanceType: instanceType, lifecycleScriptsName: lifecycleScriptsName, disassociateLifecycleScript: disassociateLifecycleScript, defaultCodeRepository: defaultCodeRepository, additionalCodeRepositories: additionalCodeRepositories, disassociateDefaultCodeRepository: disassociateDefaultCodeRepository, disassociateAdditionalCodeRepositories: disassociateAdditionalCodeRepositories, clsAccess: clsAccess, autoStopping: autoStopping, stoppingCondition: stoppingCondition, clsConfig: clsConfig), region: region, logger: logger, on: eventLoop)
    }
}
