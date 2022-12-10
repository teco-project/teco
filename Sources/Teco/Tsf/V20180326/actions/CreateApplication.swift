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

extension Tsf {
    /// 创建应用
    @inlinable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApplicationResponse > {
        self.client.execute(action: "CreateApplication", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建应用
    @inlinable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResponse {
        try await self.client.execute(action: "CreateApplication", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateApplication请求参数结构体
    public struct CreateApplicationRequest: TCRequestModel {
        /// 应用名称
        public let applicationName: String
        
        /// 应用类型，V：虚拟机应用；C：容器应用；S：serverless应用
        public let applicationType: String
        
        /// 应用微服务类型，M：service mesh应用；N：普通应用；G：网关应用
        public let microserviceType: String
        
        /// 应用描述
        public let applicationDesc: String?
        
        /// 应用日志配置项，废弃参数
        public let applicationLogConfig: String?
        
        /// 应用资源类型，废弃参数
        public let applicationResourceType: String?
        
        /// 应用runtime类型
        public let applicationRuntimeType: String?
        
        /// 需要绑定的数据集ID
        public let programId: String?
        
        /// 服务配置信息列表
        public let serviceConfigList: [ServiceConfig]?
        
        /// 忽略创建镜像仓库
        public let ignoreCreateImageRepository: Bool?
        
        /// 无
        public let programIdList: [String]?
        
        public init (applicationName: String, applicationType: String, microserviceType: String, applicationDesc: String?, applicationLogConfig: String?, applicationResourceType: String?, applicationRuntimeType: String?, programId: String?, serviceConfigList: [ServiceConfig]?, ignoreCreateImageRepository: Bool?, programIdList: [String]?) {
            self.applicationName = applicationName
            self.applicationType = applicationType
            self.microserviceType = microserviceType
            self.applicationDesc = applicationDesc
            self.applicationLogConfig = applicationLogConfig
            self.applicationResourceType = applicationResourceType
            self.applicationRuntimeType = applicationRuntimeType
            self.programId = programId
            self.serviceConfigList = serviceConfigList
            self.ignoreCreateImageRepository = ignoreCreateImageRepository
            self.programIdList = programIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationName = "ApplicationName"
            case applicationType = "ApplicationType"
            case microserviceType = "MicroserviceType"
            case applicationDesc = "ApplicationDesc"
            case applicationLogConfig = "ApplicationLogConfig"
            case applicationResourceType = "ApplicationResourceType"
            case applicationRuntimeType = "ApplicationRuntimeType"
            case programId = "ProgramId"
            case serviceConfigList = "ServiceConfigList"
            case ignoreCreateImageRepository = "IgnoreCreateImageRepository"
            case programIdList = "ProgramIdList"
        }
    }
    
    /// CreateApplication返回参数结构体
    public struct CreateApplicationResponse: TCResponseModel {
        /// 应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
