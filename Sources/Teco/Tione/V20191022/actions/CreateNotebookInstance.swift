//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tione {
    /// 创建Notebook实例
    @inlinable
    public func createNotebookInstance(_ input: CreateNotebookInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateNotebookInstanceResponse > {
        self.client.execute(action: "CreateNotebookInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建Notebook实例
    @inlinable
    public func createNotebookInstance(_ input: CreateNotebookInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookInstanceResponse {
        try await self.client.execute(action: "CreateNotebookInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateNotebookInstance请求参数结构体
    public struct CreateNotebookInstanceRequest: TCRequestModel {
        /// Notebook实例名称，不能超过63个字符
        /// 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        public let notebookInstanceName: String
        
        /// Notebook算力类型
        /// 参考https://cloud.tencent.com/document/product/851/41239
        public let instanceType: String
        
        /// 数据卷大小(GB)
        /// 用户持久化Notebook实例的数据
        public let volumeSizeInGB: UInt64
        
        /// 外网访问权限，可取值Enabled/Disabled
        /// 开启后，Notebook实例可以具有访问外网80，443端口的权限
        public let directInternetAccess: String?
        
        /// Root用户权限，可取值Enabled/Disabled
        /// 开启后，Notebook实例可以切换至root用户执行命令
        public let rootAccess: String?
        
        /// 子网ID
        /// 如果需要Notebook实例访问VPC内的资源，则需要选择对应的子网
        public let subnetId: String?
        
        /// 生命周期脚本名称
        /// 必须是已存在的生命周期脚本，具体参考https://cloud.tencent.com/document/product/851/43140
        public let lifecycleScriptsName: String?
        
        /// 默认存储库名称
        /// 可以是已创建的存储库名称或者已https://开头的公共git库
        /// 参考https://cloud.tencent.com/document/product/851/43139
        public let defaultCodeRepository: String?
        
        /// 其他存储库列表
        /// 每个元素可以是已创建的存储库名称或者已https://开头的公共git库
        /// 参考https://cloud.tencent.com/document/product/851/43139
        public let additionalCodeRepositories: [String]?
        
        /// 已弃用，请使用ClsConfig配置。
        /// 是否开启CLS日志服务，可取值Enabled/Disabled，默认为Disabled
        /// 开启后，Notebook运行的日志会收集到CLS中，CLS会产生费用，请根据需要选择
        public let clsAccess: String?
        
        /// 自动停止配置
        /// 选择定时停止Notebook实例
        public let stoppingCondition: StoppingCondition
        
        /// 自动停止，可取值Enabled/Disabled
        /// 取值为Disabled的时候StoppingCondition将被忽略
        /// 取值为Enabled的时候读取StoppingCondition作为自动停止的配置
        public let autoStopping: String?
        
        /// 接入日志的配置，默认接入免费日志
        public let clsConfig: ClsConfig
        
        public init (notebookInstanceName: String, instanceType: String, volumeSizeInGB: UInt64, directInternetAccess: String?, rootAccess: String?, subnetId: String?, lifecycleScriptsName: String?, defaultCodeRepository: String?, additionalCodeRepositories: [String]?, clsAccess: String?, stoppingCondition: StoppingCondition, autoStopping: String?, clsConfig: ClsConfig) {
            self.notebookInstanceName = notebookInstanceName
            self.instanceType = instanceType
            self.volumeSizeInGB = volumeSizeInGB
            self.directInternetAccess = directInternetAccess
            self.rootAccess = rootAccess
            self.subnetId = subnetId
            self.lifecycleScriptsName = lifecycleScriptsName
            self.defaultCodeRepository = defaultCodeRepository
            self.additionalCodeRepositories = additionalCodeRepositories
            self.clsAccess = clsAccess
            self.stoppingCondition = stoppingCondition
            self.autoStopping = autoStopping
            self.clsConfig = clsConfig
        }
        
        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
            case instanceType = "InstanceType"
            case volumeSizeInGB = "VolumeSizeInGB"
            case directInternetAccess = "DirectInternetAccess"
            case rootAccess = "RootAccess"
            case subnetId = "SubnetId"
            case lifecycleScriptsName = "LifecycleScriptsName"
            case defaultCodeRepository = "DefaultCodeRepository"
            case additionalCodeRepositories = "AdditionalCodeRepositories"
            case clsAccess = "ClsAccess"
            case stoppingCondition = "StoppingCondition"
            case autoStopping = "AutoStopping"
            case clsConfig = "ClsConfig"
        }
    }
    
    /// CreateNotebookInstance返回参数结构体
    public struct CreateNotebookInstanceResponse: TCResponseModel {
        /// Notebook实例名字
        public let notebookInstanceName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
            case requestId = "RequestId"
        }
    }
}
