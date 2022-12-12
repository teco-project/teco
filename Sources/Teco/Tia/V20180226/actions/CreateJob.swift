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

extension Tia {
    /// CreateJob请求参数结构体
    public struct CreateJobRequest: TCRequestModel {
        /// 任务名称
        public let name: String
        
        /// 运行任务的集群，详见 [使用集群](https://cloud.tencent.com/document/product/851/17317)
        public let cluster: String
        
        /// 运行任务的环境，详见 [运行环境](https://cloud.tencent.com/document/product/851/17320)
        public let runtimeVersion: String
        
        /// 挂载的路径，支持 NFS，[CFS](https://cloud.tencent.com/product/cfs) 和 [COS](https://cloud.tencent.com/product/cos)，其中 COS 只在 [TI-A 定制环境](https://cloud.tencent.com/document/product/851/17320#ti-a-.E5.AE.9A.E5.88.B6.E7.8E.AF.E5.A2.83) 中支持
        public let packageDir: [String]?
        
        /// 任务启动命令
        public let command: [String]?
        
        /// 任务启动参数
        public let args: [String]?
        
        /// 运行任务的配置信息，详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        public let scaleTier: String?
        
        /// Master 机器类型，ScaleTier 取值为 `CUSTOM` 时必填，详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        public let masterType: String?
        
        /// Worker 机器类型，ScaleTier 取值为 `CUSTOM` 时必填，详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        public let workerType: String?
        
        /// Parameter server 机器类型，ScaleTier 取值为 `CUSTOM` 时必填,详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        public let parameterServerType: String?
        
        /// Worker 机器数量，ScaleTier 取值为 `CUSTOM` 时必填,详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        public let workerCount: UInt64?
        
        /// Parameter server 机器数量，ScaleTier 取值为 `CUSTOM` 时必填,详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        public let parameterServerCount: UInt64?
        
        /// 启动 debug 模式，默认为 false
        public let debug: Bool?
        
        /// 运行任务的其他配置信息
        public let runtimeConf: [String]?
        
        public init (name: String, cluster: String, runtimeVersion: String, packageDir: [String]? = nil, command: [String]? = nil, args: [String]? = nil, scaleTier: String? = nil, masterType: String? = nil, workerType: String? = nil, parameterServerType: String? = nil, workerCount: UInt64? = nil, parameterServerCount: UInt64? = nil, debug: Bool? = nil, runtimeConf: [String]? = nil) {
            self.name = name
            self.cluster = cluster
            self.runtimeVersion = runtimeVersion
            self.packageDir = packageDir
            self.command = command
            self.args = args
            self.scaleTier = scaleTier
            self.masterType = masterType
            self.workerType = workerType
            self.parameterServerType = parameterServerType
            self.workerCount = workerCount
            self.parameterServerCount = parameterServerCount
            self.debug = debug
            self.runtimeConf = runtimeConf
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case cluster = "Cluster"
            case runtimeVersion = "RuntimeVersion"
            case packageDir = "PackageDir"
            case command = "Command"
            case args = "Args"
            case scaleTier = "ScaleTier"
            case masterType = "MasterType"
            case workerType = "WorkerType"
            case parameterServerType = "ParameterServerType"
            case workerCount = "WorkerCount"
            case parameterServerCount = "ParameterServerCount"
            case debug = "Debug"
            case runtimeConf = "RuntimeConf"
        }
    }
    
    /// CreateJob返回参数结构体
    public struct CreateJobResponse: TCResponseModel {
        /// 训练任务信息
        public let job: Job
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case job = "Job"
            case requestId = "RequestId"
        }
    }
    
    /// 创建Job
    ///
    /// 创建训练任务
    @inlinable
    public func createJob(_ input: CreateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateJobResponse > {
        self.client.execute(action: "CreateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建Job
    ///
    /// 创建训练任务
    @inlinable
    public func createJob(_ input: CreateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobResponse {
        try await self.client.execute(action: "CreateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
