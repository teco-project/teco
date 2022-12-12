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

extension Tcb {
    /// EstablishCloudBaseRunServer请求参数结构体
    public struct EstablishCloudBaseRunServerRequest: TCRequestModel {
        /// 环境id
        public let envId: String
        
        /// 服务名称
        public let serviceName: String
        
        /// 是否开通外网访问
        public let isPublic: Bool
        
        /// 镜像仓库
        public let imageRepo: String?
        
        /// 服务描述
        public let remark: String?
        
        /// es信息
        public let esInfo: CloudBaseEsInfo?
        
        /// 日志类型; es/cls
        public let logType: String?
        
        /// 操作备注
        public let operatorRemark: String?
        
        /// 来源方（默认值：qcloud，微信侧来源miniapp)
        public let source: String?
        
        /// vpc信息
        public let vpcInfo: CloudBaseRunVpcInfo?
        
        /// 0/1=允许公网访问;2=关闭公网访问
        public let publicAccess: Int64?
        
        /// OA PUBLIC MINIAPP VPC
        public let openAccessTypes: [String]?
        
        /// 是否创建Path 0未传默认创建 1创建 2不创建
        public let isCreatePath: Int64?
        
        /// 指定创建路径（如不存在，则创建。存在，则忽略）
        public let serverPath: String?
        
        public init (envId: String, serviceName: String, isPublic: Bool, imageRepo: String? = nil, remark: String? = nil, esInfo: CloudBaseEsInfo? = nil, logType: String? = nil, operatorRemark: String? = nil, source: String? = nil, vpcInfo: CloudBaseRunVpcInfo? = nil, publicAccess: Int64? = nil, openAccessTypes: [String]? = nil, isCreatePath: Int64? = nil, serverPath: String? = nil) {
            self.envId = envId
            self.serviceName = serviceName
            self.isPublic = isPublic
            self.imageRepo = imageRepo
            self.remark = remark
            self.esInfo = esInfo
            self.logType = logType
            self.operatorRemark = operatorRemark
            self.source = source
            self.vpcInfo = vpcInfo
            self.publicAccess = publicAccess
            self.openAccessTypes = openAccessTypes
            self.isCreatePath = isCreatePath
            self.serverPath = serverPath
        }
        
        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serviceName = "ServiceName"
            case isPublic = "IsPublic"
            case imageRepo = "ImageRepo"
            case remark = "Remark"
            case esInfo = "EsInfo"
            case logType = "LogType"
            case operatorRemark = "OperatorRemark"
            case source = "Source"
            case vpcInfo = "VpcInfo"
            case publicAccess = "PublicAccess"
            case openAccessTypes = "OpenAccessTypes"
            case isCreatePath = "IsCreatePath"
            case serverPath = "ServerPath"
        }
    }
    
    /// EstablishCloudBaseRunServer返回参数结构体
    public struct EstablishCloudBaseRunServerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建云应用服务
    @inlinable
    public func establishCloudBaseRunServer(_ input: EstablishCloudBaseRunServerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EstablishCloudBaseRunServerResponse > {
        self.client.execute(action: "EstablishCloudBaseRunServer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建云应用服务
    @inlinable
    public func establishCloudBaseRunServer(_ input: EstablishCloudBaseRunServerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EstablishCloudBaseRunServerResponse {
        try await self.client.execute(action: "EstablishCloudBaseRunServer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
