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
    /// DeleteCloudBaseRunServerVersion请求参数结构体
    public struct DeleteCloudBaseRunServerVersionRequest: TCRequestModel {
        /// 环境ID
        public let envId: String
        
        /// 服务名称
        public let serverName: String
        
        /// 版本名称
        public let versionName: String
        
        /// 是否删除服务，只有最后一个版本的时候，才生效。
        public let isDeleteServer: Bool?
        
        /// 只有删除服务的时候，才会起作用
        public let isDeleteImage: Bool?
        
        /// 操作备注
        public let operatorRemark: String?
        
        public init (envId: String, serverName: String, versionName: String, isDeleteServer: Bool? = nil, isDeleteImage: Bool? = nil, operatorRemark: String? = nil) {
            self.envId = envId
            self.serverName = serverName
            self.versionName = versionName
            self.isDeleteServer = isDeleteServer
            self.isDeleteImage = isDeleteImage
            self.operatorRemark = operatorRemark
        }
        
        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
            case versionName = "VersionName"
            case isDeleteServer = "IsDeleteServer"
            case isDeleteImage = "IsDeleteImage"
            case operatorRemark = "OperatorRemark"
        }
    }
    
    /// DeleteCloudBaseRunServerVersion返回参数结构体
    public struct DeleteCloudBaseRunServerVersionResponse: TCResponseModel {
        /// 返回结果，succ为成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 删除服务版本
    @inlinable
    public func deleteCloudBaseRunServerVersion(_ input: DeleteCloudBaseRunServerVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCloudBaseRunServerVersionResponse > {
        self.client.execute(action: "DeleteCloudBaseRunServerVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除服务版本
    @inlinable
    public func deleteCloudBaseRunServerVersion(_ input: DeleteCloudBaseRunServerVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCloudBaseRunServerVersionResponse {
        try await self.client.execute(action: "DeleteCloudBaseRunServerVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
